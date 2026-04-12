---
id: PT-METH-003
title: "Design Science Research — Artifact Design Prompts for PUMA"
type: prompt-note
tool: claude
phase: Phase1-Research
step: "06-Experimental-Design"
methodology: [DSR, Hevner, Peffers]
tags: [prompt, dsr, hevner, peffers, artifact-design, puma]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 🔬 Design Science Research — Artifact Design Prompts for PUMA

**Tool**: Claude
**Phase**: Phase 1 — Research + Phase 2 — Development
**Methodology**: DSR (Hevner et al. 2004 + Peffers et al. 2007)

---

## DSR Activity 1 — Problem Identification and Motivation

```
Role: DSR researcher applying Hevner's framework.

Context: PUMA addresses the problem of: (1) no reproducible benchmark exists for evaluating local LLM agents on PM tasks, (2) existing PM tools handle triage manually (high latency, human bias), (3) estimation is subject to planning fallacy (Flyvbjerg's Uniqueness Trap).

Objective: Formalize the problem statement in DSR terms.

Instructions:
1. STATE the problem precisely: what is the gap between current state and desired state?
2. JUSTIFY the value of a solution: what organizational impact would PUMA have?
3. SCOPE the problem: what is IN scope and what is explicitly OUT of scope for PUMA?
4. IDENTIFY the knowledge base: what theories, methods, and artifacts does PUMA build on?
5. FORMULATE the research question in DSR format: "What artifact [PUMA benchmark] can be designed to [evaluate local LLM agents for PM triage and estimation] that [achieves F1-macro ≥ 0.55 and MAE ≤ 3.0 SP] with [reproducibility, local inference, sustainability measurement]?"

Format: DSR problem statement (200 words). Scoping table. Research question.
```

## DSR Activity 2 — Solution Objectives

```
Role: DSR artifact designer.

Context: PUMA's artifact is a benchmark system with: (1) data pipeline (Jira SR + TAWOS), (2) experiment runner (4 strategies × 2 models), (3) validation layer (Pydantic AI), (4) observability (Arize Phoenix), (5) sustainability measurement (CodeCarbon), (6) statistical analysis (Wilcoxon).

Objective: Define measurable objectives of the solution following DSR Activity 2.

Instructions:
1. Functional requirements (RF): what PUMA MUST do. List 8–10 FRs.
2. Non-functional requirements (RNF): performance, reproducibility, sustainability, usability. List 5–7 RNFs.
3. Success criteria: what measurable outcome demonstrates PUMA's utility? (F1-macro threshold, MAE threshold, reproducibility: second researcher achieves identical results from scratch).
4. Evaluation criteria: how will each FR and RNF be verified?

Format: RF table (ID | Description | Priority | Verification). RNF table. Success criteria.
```

## DSR Activity 4 — Demonstration

```
Role: DSR evaluator designing the demonstration phase.

Context: PUMA demonstrates its artifact by running the experiment on the 200-issue Jira SR sample and the TAWOS story point dataset.

Design the demonstration protocol:
1. What data will be used (sample composition, stratification)?
2. What conditions will be run (4 strategies × 2 models = 8 conditions)?
3. What metrics will be reported per condition?
4. What visualizations will demonstrate the artifact's utility (confusion matrices, F1 comparison bar charts, latency box plots, carbon comparison table)?
5. What baseline will be used for comparison (majority class for triage, historical average for estimation)?

Format: Demonstration protocol document. Planned figures list with descriptions.
```

## DSR Activity 5 — Evaluation

```
Role: DSR evaluation designer.

Context: PUMA must evaluate whether the benchmark artifact is USEFUL — does it provide actionable evidence about LLM agent capabilities for PM tasks?

Design the evaluation:
1. Utility claim: PUMA is useful if it produces statistically significant results (Wilcoxon p<0.05) that identify the best prompting strategy for at least one task.
2. Rigor claim: PUMA is rigorous if: (a) results are reproducible by a second researcher, (b) statistical tests are appropriate, (c) limitations are honestly documented.
3. Novelty claim: PUMA is novel if: (a) it uses local LLMs (no prior benchmark does this for PM), (b) it measures carbon footprint per PM task (first in the literature), (c) it combines both triage and estimation in one benchmark.
4. Counterarguments: what would invalidate each claim? How does PUMA address each counterargument?

Format: Evaluation matrix (Claim | Evidence | Counterargument | Mitigation).
```

---

## PUMA Relevance

These DSR prompts structure PUMA's research in a way that is academically defensible at UOC. The activity structure maps directly to [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] and provides the argumentative skeleton for PUMA Section 2 (Materials and Methods).

---

## Related Notes

- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]]
- [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
