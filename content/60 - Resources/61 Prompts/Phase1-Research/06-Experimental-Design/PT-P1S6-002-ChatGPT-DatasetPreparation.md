---
id: PT-P1S6-002
title: "ChatGPT — Dataset Preparation Protocol for PUMA"
type: prompt-note
tool: chatgpt
phase: Phase1-Research
step: "06-Experimental-Design"
methodology: [DSR, Reproducibility, Data-Engineering]
tags: [prompt, chatgpt, dataset, jira-sr, tawos, puma, reproducibility]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 📦 ChatGPT — Dataset Preparation Protocol for PUMA

**Tool**: ChatGPT (OpenAI)
**Phase**: Phase 1 — Research
**Step**: 06 — Experimental Design
**Methodology**: Reproducible Data Engineering

---

## Prompt A — Jira SR Stratified Sample Design

```
Role: Data engineer designing a reproducible experiment sample.

Context: PUMA uses the Jira Social Repository (Jira SR) for issue triage. The dataset contains issues from Apache projects with priority labels: Blocker, Critical, Major, Minor, Trivial. The distribution is highly imbalanced (Trivial and Minor dominate). We need a 200-issue stratified sample for the experiment.

Objective: Design the stratified sampling procedure for PUMA's triage experiment.

Instructions:
1. Define: stratification variable (priority label), sampling method (proportional stratified random sampling), random seed (seed=42), split rationale (train context for few-shot / test for evaluation).
2. Specify: minimum class representation to ensure F1-macro is meaningful (not dominated by majority class).
3. Generate Python code using pandas + sklearn.model_selection.StratifiedShuffleSplit for: (a) loading the dataset, (b) class distribution report, (c) stratified 200-issue sample, (d) saving with reproducible seed.
4. Define ground truth: what is the "correct" priority label? Is it the assigned priority or the resolved priority?
5. Identify: potential dataset issues (issues re-prioritized after creation, issues without resolution, cross-project labeling inconsistency). State how PUMA handles each.

Format: Sampling procedure description. Python code (complete). Data quality checklist.
```

## Prompt B — TAWOS Dataset Preprocessing

```
Role: Data scientist preparing a story point estimation dataset.

Context: PUMA uses TAWOS (Tawosi et al.) for effort estimation. TAWOS contains story points from multiple Agile projects. We need to: (1) select projects with sufficient data, (2) clean outliers, (3) create a consistent input format for LLM prompting.

Objective: Design the preprocessing pipeline for PUMA's estimation experiment.

Instructions:
1. Define: project selection criteria (minimum N issues per project, story point scale consistency, time period 2016–2023).
2. Specify: outlier detection and removal method (IQR or z-score). Justify the choice.
3. Design: input prompt template for LLM — what issue fields to include (title, description, acceptance criteria, epic, sprint context) and what to exclude (assignee, resolution date, actual time spent).
4. Define: the historical average baseline (mean story points per project per issue type).
5. Generate Python code for: (a) loading TAWOS, (b) applying filters, (c) outlier removal, (d) creating prompt templates, (e) computing baseline MAE.

Format: Preprocessing pipeline description. Python code (complete). Baseline calculation.
```

## Prompt C — Few-Shot Example Selection Protocol

```
Role: Prompt engineer designing few-shot example selection.

Context: PUMA's few-shot strategies use 3 or 6 historical examples per issue. The quality of example selection significantly impacts performance. For triage, examples should represent the priority distribution. For estimation, examples should be from the same project/domain.

Objective: Design the few-shot example selection protocol for both PUMA tasks.

Instructions:
1. For triage (3 examples): specify the selection strategy — (a) random from training set, (b) stratified (1 per priority range), (c) semantically similar (nearest neighbor in embedding space). For PUMA Stage 1–2: use fixed 3-example set; for Stage 4: retrieve dynamically from Qdrant.
2. For estimation (3 examples): specify — (a) same project, (b) similar story point range, (c) temporal proximity (most recent sprints first).
3. Generate the few-shot prompt template for triage: [SYSTEM] + [3 EXAMPLES] + [CURRENT ISSUE] + [INSTRUCTION].
4. Generate the few-shot prompt template for estimation: same structure.
5. Reproducibility: how are examples frozen for the baseline experiment (Stage 1–2)?

Format: Selection protocol per task. Python code for example retrieval. Prompt templates (complete, ready to use).
```

---

## PUMA Relevance

These dataset preparation prompts generate the code and protocols used in PUMA's `scripts/prepare_experiment_dataset.py`. The few-shot templates are the actual prompts used in Stages 1–3 of the triage experiment. All outputs feed [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]].

---

## Related Notes

- [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]
- [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]]
- [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
