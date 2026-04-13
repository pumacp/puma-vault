---
id: SP-Architecture-v1
title: "PUMA Architecture Specification v1.0"
type: spec
tags: [spec, architecture, puma, sdd, openspec, academic-writing, agile, ai-ethics, baseline, bdd, benchmark, bmad, carbon-footprint, chain-of-thought, codecarbon, cot, critical-thinking, data-formats, dataset, dsr, effect-size, effort-estimation, ethics, evaluation, few-shot, github, hypothesis, issue-triage, jira, json, literature-review, llama, llm, local-llm, meta, metrics, mistral, moc, multi-agent, navigation, non-parametric, ollama, precision-recall, prisma, python, red-teaming, research, research-methodology, slr, spec-driven-development, statistics, story-points, sustainability, swarm-intelligence, tawos, triage, wilcoxon, zero-shot]
version: "1.0"
status: approved
created: 2026-03-01
updated: 2026-03-01
related_bdd: "41.6 Specs/SP-Triage-Agent-v1"
---

# PUMA Architecture Specification v1.0

> [!important] Spec-First Document

> [!important] Constitutional Preamble

> [!info] Overview
> This specification is written BEFORE implementation begins. All changes require version increment.

---

## System Overview

```
┌─────────────────────────────────────────────────────────────────┐
│                        PUMA BENCHMARK                           │
├──────────┬─────────────────────────┬──────────┬────────────────┤
│  INPUT   │     AGENT SWARM         │GOVERNANCE│   OUTPUTS      │
│  DATA    │   (LOCAL LLMs)          │& CONTROL │ & ARTEFACTS    │
├──────────┼─────────────────────────┼──────────┼────────────────┤
│          │                         │          │                │
│ Jira SR  │ ┌──────────────────┐   │ Ollama   │ Performance    │
│ (CSV)    │ │  Triage Agent    │   │ Orchestr.│ Report         │
│          │ │  (Stage 1)       │   │          │                │
│ TAWOS    │ └─────────┬────────┘   │ JSON     │ Reproducible   │
│ (CSV)    │           │            │ Schema & │ Metrics        │
│          │ ┌─────────▼────────┐   │ Ethics   │ (F1, MAE)      │
│          │ │ Estimation Agent │   │ Guardr.  │                │
│          │ │  (Stage 2)       │   │          │ Open Source    │
│          │ └──────────────────┘   │ Human-   │ Code           │
│          │                        │ in-Loop  │ (MIT Licence)  │
│          │ Models:                │ Validat. │                │
│          │ • Llama 3.2 8B         │          │ Academic Paper │
│          │ • Mistral 7B           │ CodeCarb.│ (PUMA Repo)     │
│          │ • Phi-3.5 Mini*        │ Tracking │                │
└──────────┴─────────────────────────┴──────────┴────────────────┘
* Fallback model if latency > 60s
```

---

## Component Specifications

### Component 1: Data Loader

```yaml
component: DataLoader
purpose: Load, validate, and prepare evaluation subsets from raw datasets
inputs:
  - name: dataset_path
    type: str
    description: Path to raw CSV file
  - name: dataset_type
    type: str
    values: [jira-sr, tawos]
  - name: n_per_class
    type: int
    description: Number of samples per class for stratified subset
    default: 50
  - name: seed
    type: int
    default: 42
outputs:
  - name: evaluation_subset
    type: pd.DataFrame
    description: Balanced, validated evaluation dataset
  - name: metadata
    type: dict
    description: Dataset statistics and composition report
constraints:
  - "Must produce identical output for same seed across Python versions"
  - "Must validate all required columns are present"
  - "Must document class distribution in output metadata"
```

### Component 2: Triage Agent

```yaml
component: TriageAgent
purpose: Classify issue priority using configured LLM and prompting strategy
inputs:
  - name: issue
    type: dict
    fields: [title (str), description (str, optional)]
  - name: model
    type: str
    values: [llama3.2:8b, mistral:7b, phi3.5:3.8b]
  - name: strategy
    type: str
    values: [zero-shot, few-shot-3, few-shot-6, cot]
outputs:
  - name: prediction
    type: dict
    fields: 
      - predicted_priority: str (Critical|High|Medium|Low|Unknown)
      - raw_response: str
      - latency_s: float
      - emissions_gco2: float
      - model: str
      - strategy: str
acceptance_criteria:
  - "Reproducible: same input + seed=42 + temp=0 → same output"
  - "Latency < 60s on 16GB RAM CPU"
  - "Never crashes on unexpected model output — returns 'Unknown'"
  - "Logs all emissions via CodeCarbon"
```

### Component 3: Estimation Agent

```yaml
component: EstimationAgent  
purpose: Estimate story points for Agile user stories
inputs:
  - name: story
    type: dict
    fields: [title, description, acceptance_criteria (optional)]
  - name: model
    type: str
  - name: strategy
    type: str
    values: [zero-shot, few-shot-3, cot]
outputs:
  - name: prediction
    type: dict
    fields:
      - predicted_sp: int (1|2|3|5|8|13|21)
      - raw_response: str
      - latency_s: float
      - emissions_gco2: float
acceptance_criteria:
  - "Output must be a valid Fibonacci number from: 1,2,3,5,8,13,21"
  - "Invalid outputs → log + return median of training distribution (5)"
  - "Latency < 60s"
```

### Component 4: Evaluation Engine

```yaml
component: EvaluationEngine
purpose: Calculate all metrics and run statistical tests
inputs:
  - name: predictions
    type: list[dict]
  - name: ground_truth
    type: list[str|int]
  - name: task
    type: str
    values: [triage, estimation]
outputs:
  - name: metrics
    type: dict
    fields:
      triage: [f1_macro, f1_per_class, precision, recall, wilcoxon_stat, p_value, effect_r]
      estimation: [mae, rmse, wilcoxon_stat, p_value, effect_r]
  - name: report
    type: str (markdown)
acceptance_criteria:
  - "F1 calculated with sklearn.metrics.f1_score(average='macro')"
  - "Wilcoxon: scipy.stats.wilcoxon (two-sided, alpha=0.05)"
  - "Effect size: r = Z / sqrt(N) where Z from Wilcoxon"
```

---

## Technology Stack

| Layer | Tool | Version | Justification |
|-------|------|---------|--------------|
| Inference | Ollama | ≥0.5.0 | Local, deterministic, no GPU needed |
| Models | Llama 3.2 8B | latest | Strong baseline, Meta open-weights |
| Models | Mistral 7B | latest | Alternative architecture |
| Data | pandas | 2.x | Standard, well-documented |
| Metrics | scikit-learn | 1.4.x | F1, precision, recall |
| Stats | scipy | 1.12.x | Wilcoxon test |
| Carbon | CodeCarbon | 2.x | gCO₂eq per condition |
| Viz | matplotlib, seaborn | latest | Reproducible plots |
| Notebooks | Jupyter | ≥7.0 | Interactive analysis |
| Version | Git + GitHub | — | Public MIT repository |

---

## BDD Acceptance Scenarios

```gherkin
Feature: PUMA Reproducibility Guarantee
  
  Scenario: Identical results across fresh environments
    Given a clean Python 3.11 environment
    And requirements installed from requirements.txt
    And Ollama running with seed=42 configured
    When the benchmark runner executes on the evaluation subset
    Then results must match stored baseline within floating-point tolerance
    And the PRISMA/run report must be regenerated identically

Feature: MVP Success Condition
  
  Scenario: MVP threshold met (H1)
    Given the triage experiment runs on Jira SR subset
    When results are evaluated
    Then at least one configuration must achieve F1-macro >= 0.55
    And the Wilcoxon test must return p < 0.05 vs heuristic baseline
```

---

## 🔗 Related Notes

**Frameworks:**
[[30 - Permanent/33 Frameworks/PN-SDD-Framework]] | [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]]

**Project governance:**
[[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] — Non-negotiable principles | [[SP-Triage-Agent]] — Triage agent spec | [[40 - Projects/PUMA/41.6 Specs/SP-Estimation-Dataset-Specs]]

**Experiments & agents:**
[[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] | [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]]

**Core concepts:**
[[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] (Agent OS, Reproducibility) | [[30 - Permanent/31 Concepts/PN-LLM-Local-vs-Cloud]] (Local inference rationale)

**Prompts:**
[[60 - Resources/61 Prompts/61.3 Dev-Tools/PT-DevTools-Prompts]]

**Navigation:**
[[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]] | [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
