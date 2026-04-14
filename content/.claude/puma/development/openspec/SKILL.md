---
name: puma-openspec
description: OpenSpec standards for writing machine-readable specifications in PUMA — structured, parseable spec format for agent interfaces, evaluation protocols, and dataset definitions. Use when writing specs that will be consumed by automated pipelines, when designing agent APIs, or when the spec needs to be version-controlled and diff-friendly. Complements puma-sdd (which covers the overall SDD workflow) with the specific OpenSpec format conventions.
---

# PUMA OpenSpec — Machine-Readable Specifications

## What is OpenSpec?

OpenSpec is a structured, machine-readable specification format that makes specs processable by both humans and automated systems. In PUMA, OpenSpec governs specs consumed by the experiment pipeline, dataset loaders, and agent configurations.

> "OpenSpec is insane — Spec-Driven Development" — VID-SDD-006

## OpenSpec File Structure

```yaml
# OpenSpec header (mandatory)
openspec: "1.0"
id: "SP-[Component]-v[N]"
title: "[Human-readable title]"
version: "[Semantic version: MAJOR.MINOR.PATCH]"
status: "draft | review | approved | locked | deprecated"
created: "YYYY-MM-DD"
updated: "YYYY-MM-DD"
author: "PUMA"
supersedes: "SP-[Component]-v[N-1]"  # optional
---

# [Title]

[Human-readable description — this section for humans]
```

## PUMA OpenSpec Templates

### Agent Interface Spec

```yaml
openspec: "1.0"
id: "SP-Agent-Triage-v1"
title: "Triage Agent Interface Specification"
version: "1.0.0"
status: "locked"

interface:
  name: "TriageAgent"
  description: "Classifies software issues into type and priority"
  
  input:
    schema:
      issue_id:
        type: string
        required: true
        description: "Unique issue identifier"
      title:
        type: string
        required: true
        max_length: 500
        description: "Issue title"
      description:
        type: string
        required: false
        max_length: 2000
        description: "Issue body text"
    
    preprocessing:
      truncate_title: 200      # chars
      truncate_description: 500  # chars
      encoding: "utf-8"
  
  output:
    schema:
      issue_id:
        type: string
        description: "Echo of input ID"
      type:
        type: string
        enum: ["Bug", "Feature", "Task", "Improvement", "Sub-task"]
        description: "Classified issue type"
      priority:
        type: string
        enum: ["Blocker", "Critical", "Major", "Minor", "Trivial"]
        description: "Classified priority"
      confidence:
        type: float
        range: [0.0, 1.0]
        required: false
        description: "Model confidence (if available)"
    
    format: "json"
    on_error: "return null type and priority with error field"

model_config:
  runtime: "ollama"
  model: "qwen2.5:3b"
  temperature: 0.0
  seed: 42
  max_tokens: 100
  
prompt_ref: "PT-Triage-FewShot3-v2"  # must exist in 60-Resources/61-Prompts/

evaluation:
  primary_metric: "f1_macro"
  secondary_metrics: ["f1_micro", "f1_weighted", "precision_macro", "recall_macro"]
  dataset: "TAWOS"
  test_split: 0.2
  random_state: 42
  
reproducibility:
  required_runs: 3
  acceptance_criterion: "100% output match across all runs"
```

### Dataset Spec

```yaml
openspec: "1.0"
id: "SP-Dataset-TAWOS-v1"
title: "TAWOS Dataset Specification for H1 Triage"
version: "1.0.0"
status: "locked"

dataset:
  name: "TAWOS"
  full_name: "The Agile Wisdom of the Open Source"
  source: "https://github.com/SOLAR-group/TAWOS"
  license: "CC BY 4.0"
  
  content:
    format: "CSV"
    fields:
      - name: "issue_id"
        type: string
        description: "Unique Jira issue key"
      - name: "title"
        type: string
        description: "Issue title/summary"
      - name: "description"
        type: string
        nullable: true
        description: "Issue body"
      - name: "issue_type"
        type: string
        enum: ["Bug", "Feature", "Task", "Improvement", "Sub-task"]
        description: "Ground truth type label"
      - name: "priority"
        type: string
        enum: ["Blocker", "Critical", "Major", "Minor", "Trivial"]
        description: "Ground truth priority label"
      - name: "project"
        type: string
        description: "Source project (APSTUD, MESOS, XD, etc.)"
  
  splits:
    method: "stratified"
    train: 0.8
    test: 0.2
    random_state: 42
    stratify_on: ["issue_type", "priority"]
  
  preprocessing:
    remove_empty_descriptions: false
    fill_null_description: ""
    truncate_title: 200
    truncate_description: 500
    
  statistics:
    total_issues: null  # fill after loading
    class_distribution: null  # fill after loading
    projects: ["APSTUD", "MESOS", "XD"]
```

### Evaluation Protocol Spec

```yaml
openspec: "1.0"
id: "SP-Eval-H1-Triage-v1"
title: "H1 Triage Evaluation Protocol"
version: "1.0.0"
status: "locked"

evaluation:
  hypothesis: "H1"
  claim: "LLM agent using few-shot achieves >75% F1-macro on TAWOS"
  
  threshold:
    primary: 0.75          # F1-macro acceptance threshold
    operator: "greater_than"
  
  statistical_test:
    name: "wilcoxon_signed_rank"
    alpha: 0.05
    alternative: "greater"  # agent > baseline
    normality_check: "shapiro_wilk"
    
  effect_size:
    measure: "r"
    formula: "W / (n * (n+1) / 2)"
    interpretation:
      small: 0.1
      medium: 0.3
      large: 0.5
  
  reproducibility:
    required_runs: 3
    criterion: "exact_match"
    
  baseline:
    name: "TF-IDF + SVM"
    reference: "sklearn.pipeline.Pipeline([TfidfVectorizer, SVC])"
    
  reporting:
    required_fields:
      - f1_macro
      - f1_micro
      - f1_per_class
      - precision_macro
      - recall_macro
      - wilcoxon_p
      - effect_size_r
      - n_samples
      - model_config
      - prompt_hash
      - emissions_gco2eq
```

## OpenSpec Validation

Before marking a spec as `approved`:

```python
def validate_openspec(spec_path: str) -> dict:
    """Validate an OpenSpec YAML file."""
    import yaml
    
    with open(spec_path) as f:
        spec = yaml.safe_load(f)
    
    errors = []
    
    # Required fields
    for field in ["openspec", "id", "title", "version", "status"]:
        if field not in spec:
            errors.append(f"Missing required field: {field}")
    
    # Status must be valid
    valid_statuses = ["draft", "review", "approved", "locked", "deprecated"]
    if spec.get("status") not in valid_statuses:
        errors.append(f"Invalid status: {spec.get('status')}")
    
    # Locked specs cannot be modified
    if spec.get("status") == "locked":
        errors.append("LOCKED: Do not modify. Create v[N+1] instead.")
    
    return {"valid": len(errors) == 0, "errors": errors}
```

## Spec Versioning Rules

```
MAJOR.MINOR.PATCH
  │      │     └── Bug fixes, clarifications (no behavior change)
  │      └──────── New optional fields, backward compatible additions  
  └─────────────── Breaking changes (new required fields, changed types)

Experiment locking: Spec is locked at MAJOR.MINOR level.
PATCH changes do not require new experiment run.
MINOR/MAJOR changes → new experiment run required.
```
