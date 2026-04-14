---
name: puma-sdd
description: Spec-Driven Development (SDD) conventions for PUMA — specs as the source of truth for all agent design, experiments, and architecture decisions. Use when writing, reviewing, or validating specs (SP-), when designing agents or system components, or when ensuring spec-first workflow compliance. Integrates OpenSpec, Spec Kit, and BMAD methodologies. Load whenever creating or modifying any SP- file or designing agent behavior.
---

# PUMA SDD — Spec-Driven Development

## Core Principle

**The spec is the source of truth.** Code, prompts, and experiments are downstream artifacts of the spec. No component is built without a spec. No spec is changed after an experiment locks it.

> "Spec-Driven Development treats formal specifications as the source of truth, ensuring that implementation and evaluation are always aligned with documented intent." — PUMA Vault

## SDD Framework Comparison

| Framework | Purpose in PUMA | When to Use |
|-----------|-----------------|-------------|
| **Spec Kit** | Lightweight spec templates for components | Quick specs for tools, datasets, APIs |
| **OpenSpec** | Machine-readable, structured specs | Agent interfaces, evaluation protocols |
| **BMAD** | Full AI-native project management | Complete agent team orchestration |

## Spec Types in PUMA

| Spec Type | Prefix | Location | Example |
|-----------|--------|----------|---------|
| Architecture spec | `SP-Arch-` | `41.6-Specs/` | `SP-Architecture-v1.md` |
| Agent spec | `SP-Agent-` | `41.6-Specs/` | `SP-Triage-Agent-v1.md` |
| Dataset spec | `SP-Data-` | `41.6-Specs/` | `SP-Estimation-Dataset-Specs.md` |
| Experiment spec | `SP-EX-` | `41.6-Specs/` | `SP-EX-ZeroShot-Triage.md` |
| Constitution | `SP-PUMA-Constitution` | `41.6-Specs/` | Single file — master authority |

## Spec File Structure (OpenSpec format)

```markdown
---
title: "SP - [Component Name] v[N]"
type: SP
version: "1.0"
status: "draft | review | approved | locked | deprecated"
author: "PUMA"
created: YYYY-MM-DD
updated: YYYY-MM-DD
supersedes: "SP-Component-v[N-1].md"  # if applicable
related_experiments: ["EX-001", "EX-002"]
---

# [Component Name] Specification v[N]

## 1. Overview
[One-paragraph description of what this component does]

## 2. Problem Statement
[What problem does this solve? Why is this spec needed?]

## 3. Requirements

### 3.1 Functional Requirements
- FR-01: [Requirement in "shall" language]
- FR-02: ...

### 3.2 Non-Functional Requirements
- NFR-01: Reproducibility — results must be 100% reproducible with seed=42
- NFR-02: Latency — inference must complete within [N] seconds
- NFR-03: Carbon — must log emissions via CodeCarbon

## 4. Interface

### 4.1 Input Schema
```json
{
  "field": "type (description)"
}
```

### 4.2 Output Schema
```json
{
  "field": "type (description)"
}
```

## 5. Implementation

### 5.1 Model Config
- Model: qwen2.5:3b (Ollama local)
- Temperature: 0.0
- Seed: 42

### 5.2 Prompt Template Reference
- Prompt: `PT-[name].md` in `60-Resources/61-Prompts/`

### 5.3 Prompting Strategy
- Strategy: [RCOIF | Few-Shot | Zero-Shot CoT | CoT | ...]
- k-shot: [N examples if few-shot]

## 6. Evaluation

### 6.1 Metrics
- Primary: [F1-macro | MAE | ...]
- Secondary: [precision, recall, ...]

### 6.2 Baselines
- Baseline 1: [description]
- Baseline 2: [description]

### 6.3 Statistical Test
- Test: Wilcoxon signed-rank (non-parametric)
- α = 0.05

## 7. Constraints
- Must comply with `SP-PUMA-Constitution.md`
- All experiments reference this spec by version
- Spec is LOCKED once experiment EX-NNN begins

## 8. Change Log
| Version | Date | Change |
|---------|------|--------|
| 1.0 | YYYY-MM-DD | Initial spec |
```

## Spec-First Workflow

```
1. Identify need → create SP- draft
2. Review against SP-PUMA-Constitution.md
3. AMI loop: self-critique spec for gaps
4. Status: draft → review
5. Human approval → status: approved
6. Experiment begins → status: locked
7. Experiment completes → link results in spec
8. If deprecated: status: deprecated, superseded_by: SP-v[N+1]
```

## Spec Validation Checklist

Before marking spec as `approved`:
- [ ] All functional requirements use "shall" language
- [ ] Input/output schemas are complete and unambiguous
- [ ] Model config is fully specified (model, temp, seed)
- [ ] Prompt template reference exists in `60-Resources/61-Prompts/`
- [ ] Evaluation metrics are measurable
- [ ] Baselines are defined
- [ ] Statistical test is specified
- [ ] Complies with SP-PUMA-Constitution.md
- [ ] Version number is correct
- [ ] Related experiments list is populated

## Context-Driven Spec Writing (CDD Integration)

When writing specs for local models (qwen2.5:3b):

```
Context budget (4096 tokens total):
├── System prompt / RCOIF header: 300–500 tokens
├── Few-shot examples (if k=3): 400–600 tokens
├── Task input (issue title + description): 100–300 tokens
├── Output generation: 500–1000 tokens
└── Safety buffer: 500 tokens

Target: total prompt ≤ 2500 tokens for qwen2.5:3b
```

Spec must declare token budget explicitly in Section 5.

## Spec Kit Integration

For quick component specs, use Spec Kit pattern:
1. Component name + one-line purpose
2. Input/output in 5 lines
3. Model config
4. Success criterion (single measurable threshold)

## BMAD Integration

Full agent specs use BMAD structure:
- PRD (Product Requirements Document): `BMAD-PRD-PUMA.md`
- Agent roles defined in: `BMAD-Agent-Roster.md`
- Each role maps to a SP-Agent- spec

See `puma-bmad` skill for BMAD details.
