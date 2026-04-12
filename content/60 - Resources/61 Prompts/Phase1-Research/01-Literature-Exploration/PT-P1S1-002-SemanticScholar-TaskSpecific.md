---
id: PT-P1S1-002
title: "Semantic Scholar — Task-Specific PUMA Search"
type: prompt-note
tool: semantic-scholar
phase: Phase1-Research
step: "01-Literature-Exploration"
methodology: [SLR, PRISMA]
tags: [prompt, semantic-scholar, triage, effort-estimation, puma]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 🔍 Semantic Scholar — Task-Specific PUMA Search

**Tool**: Semantic Scholar
**Phase**: Phase 1 — Research
**Step**: 01 — Literature Exploration

---

## Prompt A — Issue Triage

```
("issue triage" OR "ticket classification" OR "bug triage" OR "defect classification") AND ("large language model" OR "LLM" OR "transformer" OR "BERT") AND ("software engineering" OR "project management" OR "Jira" OR "GitHub issues")
```

**Filters**: Year 2023–2026 | Computer Science

## Prompt B — Effort Estimation

```
("effort estimation" OR "story point estimation" OR "story point prediction" OR "software cost estimation") AND ("language model" OR "LLM" OR "neural network") AND ("Agile" OR "Scrum" OR "sprint" OR "backlog")
```

**Filters**: Year 2023–2026 | Computer Science

---

## Purpose

Narrow the search to the two specific PUMA benchmark tasks. Ensures the SLR covers ground truth for both hypotheses: H1 (triage F1-macro) and H2 (estimation MAE).

---

## PUMA Relevance

Papers found here directly inform PUMA Stages 1–4 prompt strategies and the choice of datasets (Jira Social Repository for triage, TAWOS for estimation). See [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]].

---

## Related Notes

- [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]
- [[PT-P1S1-001-SemanticScholar-CoreSearch]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
