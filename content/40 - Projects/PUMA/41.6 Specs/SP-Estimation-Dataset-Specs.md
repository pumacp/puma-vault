---
id: SP-Estimation-Agent-v1
title: PUMA Estimation Agent — OpenSpec v1.0
type: spec
tags:
  - spec
  - estimation
  - agent
  - openspec
  - sdd
  - bdd
  - puma
  - story-points
  - agile
  - architecture
  - carbon-footprint
  - chain-of-thought
  - codecarbon
  - cot
  - data-formats
  - dataset
  - effort-estimation
  - few-shot
  - github
  - index
  - issue-triage
  - jira
  - json
  - llm
  - local-llm
  - mistral
  - ollama
  - pipeline
  - python
  - reasoning
  - spec-driven-development
  - sustainability
  - tawos
  - triage
  - zero-shot
version: "1.0"
status: draft
created: 2026-04-10
parent_spec: "[[SP-Architecture]]"
---

# PUMA Estimation Agent — OpenSpec v1.0

> **Spec for Stage 2** — effort estimation in story points.
> Follows same structural pattern as [[SP-Triage-Agent]].

---

## OpenSpec Definition

```yaml
spec_id: SP-Estimation-Agent-v1
component: EstimationAgent
version: "1.0"
status: draft

purpose: |
  Estimate the story point value (Fibonacci scale) of an Agile user story
  using a local LLM and configurable prompting strategy, with deterministic
  inference and carbon tracking.

inputs:
  - name: story
    type: dict
    fields:
      title: {type: str, required: true, max_length: 500}
      description: {type: str, required: false, default: ""}
      acceptance_criteria: {type: str, required: false, default: ""}
      project: {type: str, required: false, description: "Project name for context"}
      story_id: {type: str, required: false}

  - name: model
    type: str
    values: [llama3.2:8b, mistral:7b, phi3.5:3.8b]

  - name: strategy
    type: str
    values: [zero-shot, few-shot-3, cot]

outputs:
  - name: result
    type: dict
    fields:
      predicted_sp: {type: int, values: [1,2,3,5,8,13,21], description: "Fibonacci SP estimate"}
      raw_response: {type: str}
      reasoning: {type: str, description: "CoT reasoning if strategy=cot"}
      confidence: {type: str, values: [high, medium, low]}
      latency_s: {type: float}
      emissions_gco2: {type: float}
      model: {type: str}
      strategy: {type: str}
      story_id: {type: str}

constraints:
  - "Output MUST be a valid Fibonacci value from {1,2,3,5,8,13,21}"
  - "If parsing fails, return median value (5) and confidence='low'"
  - "seed=42, temperature=0 on every Ollama call"
  - "Never raises — all errors return predicted_sp=5, confidence='low'"
  - "CodeCarbon tracker wraps every inference call"

acceptance_criteria:
  - id: AC-01
    description: "Output predicted_sp is always in {1,2,3,5,8,13,21}"
    test: tests/test_estimation_agent.py::test_fibonacci_constraint
  - id: AC-02
    description: "Model returning '4' returns the nearest Fibonacci value (3 or 5)"
    test: tests/test_estimation_agent.py::test_non_fibonacci_rounding
  - id: AC-03
    description: "Deterministic output for identical input + seed=42"
    test: tests/test_estimation_agent.py::test_determinism
  - id: AC-04
    description: "CoT strategy populates reasoning field"
    test: tests/test_estimation_agent.py::test_cot_reasoning
  - id: AC-05
    description: "Empty description and acceptance criteria processed without error"
    test: tests/test_estimation_agent.py::test_empty_fields
```

---

## BDD Scenarios

```gherkin
Feature: EstimationAgent Story Point Estimation

  Scenario: Estimate a small, well-defined story
    Given a story "Add forgot password link to login page"
    And acceptance: "Email sent in 30s, link expires 24h"
    And model "llama3.2:8b" and strategy "few-shot-3"
    When EstimationAgent processes the story
    Then predicted_sp should be 2 or 3
    And emissions_gco2 should be greater than 0

  Scenario: Estimate a complex story with uncertainty
    Given a story "Implement real-time notifications via WebSockets"
    And acceptance: "< 200ms delivery, 10K concurrent users, fallback to polling"
    And model "llama3.2:8b" and strategy "cot"
    When EstimationAgent processes the story
    Then predicted_sp should be 8 or 13
    And reasoning should contain at least 50 characters

  Scenario: Non-Fibonacci output is corrected
    Given the model returns "4 story points"
    When the label parser processes the response
    Then predicted_sp should be 3 or 5 (nearest Fibonacci)

  Scenario: Unparseable output returns fallback
    Given the model returns "I cannot estimate this story"
    When the label parser processes the response
    Then predicted_sp should equal 5 (median fallback)
    And confidence should equal "low"
```

---

## Reference Skeleton

```python
# src/agents/estimation_agent.py

FIBONACCI = [1, 2, 3, 5, 8, 13, 21]

class EstimationAgent:
    """PUMA EstimationAgent — predicts story points on Fibonacci scale."""

    def __init__(self, model: str, strategy: str, timeout_s: int = 120):
        self.model = model
        self.strategy = strategy
        self._client = OllamaClient(seed=42, temperature=0)

    def estimate(self, story: dict) -> EstimationResult:
        # ... (same CodeCarbon + Ollama pattern as TriageAgent)
        pass

    def _parse_sp(self, raw: str) -> tuple[int, str, str]:
        import re
        numbers = re.findall(r'\b(\d+)\b', raw)
        for n_str in numbers:
            n = int(n_str)
            if n in FIBONACCI:
                return n, "", "medium"
            # Snap to nearest Fibonacci
            if 1 <= n <= 21:
                nearest = min(FIBONACCI, key=lambda x: abs(x - n))
                return nearest, "", "low"
        return 5, "", "low"  # median fallback
```

---

## 🔗 Related Notes

[[SP-Triage-Agent]] · [[SP-Architecture]] · [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]
[[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]]

---
---
id: SP-Dataset-Preparation
title: "PUMA Dataset Preparation — OpenSpec v1.0"
type: spec
tags: [spec, dataset, jira-sr, tawos, preprocessing, reproducibility]
version: "1.0"
status: approved
created: 2026-03-15
---

# PUMA Dataset Preparation — OpenSpec v1.0

---

## Purpose

Define the exact, reproducible pipeline for preparing the Jira SR and TAWOS evaluation subsets used in all PUMA experiments.

---

## Jira SR Preparation

```yaml
spec_id: SP-DataPrep-JiraSR-v1
input: jira_sr_full.csv   # from Zenodo DOI 10.5281/zenodo.5901893
output: data/processed/jira_sr_subset_seed42.csv

steps:
  1_load:
    action: Load CSV, drop rows missing 'priority' or 'summary'
    
  2_filter:
    action: Keep only rows where priority IN (Critical, High, Medium, Low)
    note: Drop any 'Blocker' or 'Trivial' entries for clean 4-class schema
    
  3_sample:
    action: Stratified sample — 50 per class
    seed: 42
    method: groupby('priority').apply(lambda x: x.sample(n=50, random_state=42))
    
  4_validate:
    checks:
      - len(df) == 200
      - df['priority'].value_counts().to_dict() == {'Critical':50,'High':50,'Medium':50,'Low':50}
      - df['summary'].notna().all()
      
  5_export:
    columns: [issue_id, summary, description, priority]
    encoding: utf-8
    index: false
    
  6_hash:
    action: Compute SHA256 of output file → store in data/processed/checksums.txt
```

## TAWOS Preparation

```yaml
spec_id: SP-DataPrep-TAWOS-v1
input: TAWOS/stories.csv   # from GitHub SOLAR-group/TAWOS
output: data/processed/tawos_subset_seed42.csv

steps:
  1_load:
    action: Load, drop rows missing 'story_points' or 'title'
    
  2_filter:
    action: Keep only rows where story_points IN (1,2,3,5,8,13,21)
    
  3_sample:
    action: Stratified sample — 50 per SP class × 7 classes = 350 stories
    seed: 42
    note: For imbalanced classes (<50 available), use all available
    
  4_validate:
    checks:
      - All story_points values in {1,2,3,5,8,13,21}
      - title and description non-null for ≥90% of rows
      
  5_export:
    columns: [story_id, title, description, acceptance_criteria, story_points, project]
    encoding: utf-8
    
  6_hash:
    action: Compute SHA256 → checksums.txt
```

## Reproducibility Verification Script

```python
# src/data/verify_datasets.py
import hashlib, pandas as pd

EXPECTED_HASHES = {
    "jira_sr_subset_seed42.csv": "{{SHA256 computed after first run}}",
    "tawos_subset_seed42.csv":   "{{SHA256 computed after first run}}"
}

def verify():
    for filename, expected_hash in EXPECTED_HASHES.items():
        path = f"data/processed/{filename}"
        with open(path, "rb") as f:
            actual = hashlib.sha256(f.read()).hexdigest()
        status = "✅ PASS" if actual == expected_hash else "❌ FAIL"
        print(f"{status}  {filename}")

if __name__ == "__main__":
    verify()
```

---

## 🔗 Related Notes

[[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] · [[SP-Architecture]]
[[60 - Resources/63 Checklists/CL-Quality-Checklists]]
