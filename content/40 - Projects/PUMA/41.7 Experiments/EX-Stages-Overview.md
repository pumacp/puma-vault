---
id: EX-Stage1-Triage-Overview
title: "Experiment Overview — Stage 1: Issue Triage"
type: experiment
tags: [experiment, triage, stage1, overview, h1, architecture, baseline, carbon-footprint, chain-of-thought, code-review, codecarbon, cot, dataset, effort-estimation, evaluation, few-shot, github, gpt, hypothesis, issue-triage, jira, llm, local-llm, metrics, mistral, moc, navigation, non-parametric, ollama, openai, precision-recall, project-management, puma, research-methodology, software-engineering, statistics, story-points, sustainability, tawos, template, wilcoxon, zero-shot]
stage: "1-triage"
status: planned
created: 2026-03-01
updated: 2026-03-01
---

# Experiment Overview — Stage 1: Issue Triage

> **Tests H1.** Full design for all 8 experimental conditions + 2 baselines.

> [!info] Overview
> Individual runs: create from [[00 - Meta/Templates/Template-Experiment-Note]]

---

## Experimental Design Matrix

| Condition | Model | Strategy | Status | Note |
|-----------|-------|---------|--------|------|
| **B1** | Heuristic keywords | — | ⏳ | Baseline 1 |
| **B2** | TF-IDF + SVM | — | ⏳ | Baseline 2 |
| **C1** | llama3.2:8b | zero-shot | ⏳ | EX-Llama32-ZeroShot-Triage |
| **C2** | llama3.2:8b | few-shot-3 | ⏳ | EX-Llama32-FewShot3-Triage |
| **C3** | llama3.2:8b | few-shot-6 | ⏳ | EX-Llama32-FewShot6-Triage |
| **C4** | llama3.2:8b | cot | ⏳ | EX-Llama32-CoT-Triage |
| **C5** | mistral:7b | zero-shot | ⏳ | EX-Mistral7B-ZeroShot-Triage |
| **C6** | mistral:7b | few-shot-3 | ⏳ | EX-Mistral7B-FewShot3-Triage |
| **C7** | mistral:7b | few-shot-6 | ⏳ | EX-Mistral7B-FewShot6-Triage |
| **C8** | mistral:7b | cot | ⏳ | EX-Mistral7B-CoT-Triage |

**Total conditions:** 10 (8 LLM + 2 baseline)
**Total inferences:** 10 × 200 issues = **2,000 calls**
**Estimated time:** ~15–40 s/call → 8–22 hours total on CPU

---

## Fixed Parameters (All Conditions)

| Parameter | Value |
|-----------|-------|
| Dataset | Jira SR — stratified subset |
| Subset size | 200 issues (50 per priority class) |
| seed | 42 |
| temperature | 0 |
| Ollama version | ≥ 0.5.0 |
| Hardware | 16 GB RAM, CPU-only |
| Carbon tracking | CodeCarbon per call |

---

## Primary Metric: F1-macro

- **Formula:** `sklearn.metrics.f1_score(y_true, y_pred, average='macro')`
- **MVP threshold:** ≥ 0.55
- **Desired threshold:** ≥ 0.70
- **Statistical test:** Wilcoxon signed-rank vs B1 (heuristic baseline), α = 0.05

---

## Prompt Templates Used

| Strategy | Template |
|----------|---------|
| zero-shot | [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]] → TRIAGE_ZERO_SHOT_TEMPLATE |
| few-shot-3 | [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]] → TRIAGE_FEW_SHOT_3_TEMPLATE |
| few-shot-6 | [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]] → TRIAGE_FEW_SHOT_6_TEMPLATE |
| cot | [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]] → TRIAGE_COT_TEMPLATE |

---

## Results Aggregation (to fill during F4)

```dataview
TABLE model, strategy, f1_macro, wilcoxon_p, effect_r, emissions_gco2
FROM "40 - Projects/PUMA/41.7 Experiments/Stage1-Triage"
WHERE type = "experiment" AND stage = "1-triage"
SORT f1_macro DESC
```

---

## Run Order & Risk Mitigation

**Recommended run order:**
1. B1 (heuristic) — fastest, establishes baseline immediately
2. C1 (llama3.2, zero-shot) — simplest LLM condition, diagnoses setup
3. C5 (mistral, zero-shot) — cross-model comparison at simplest condition
4. C2–C4 (llama3.2 remaining strategies)
5. C6–C8 (mistral remaining strategies)
6. B2 (SVM baseline) — most complex baseline, run last

**If latency > 60s/call:** Switch to Phi-3.5 Mini (3.8B) as fallback model.
**If F1 < 0.40 for all LLM conditions:** Extend error analysis; consider this a negative result (still publishable).

---

## 🔗 Related Notes

**Hypotheses & governance:**
[[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] · [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] (Art. 1, 3)

**Specs:**
[[SP-Triage-Agent]] · [[SP-Architecture]] · [[40 - Projects/PUMA/41.6 Specs/SP-Estimation-Dataset-Specs]]

**Datasets:**
[[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]

**Prompts:**
[[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]]

**PM concepts:**
[[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] · [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]]

**Navigation:**
[[40 - Projects/PUMA/41.4 Results/PR-PUMA-Ch4-Results]] · [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]

---
---
id: EX-Stage2-Effort-Overview
title: "Experiment Overview — Stage 2: Effort Estimation"
type: experiment
tags: [experiment, estimation, stage2, overview, h2, story-points]
stage: "2-estimation"
status: planned
created: 2026-04-10
---

# Experiment Overview — Stage 2: Effort Estimation

> **Tests H2.** Six LLM conditions + three baselines.
> Depends on EX-Stage1-Triage-Overview being complete (MVP validated).

---

## Experimental Design Matrix

| Condition | Model | Strategy | Status |
|-----------|-------|---------|--------|
| **B1** | Historical mean | — | ⏳ |
| **B2** | Deep-SE (reported value) | — | ⏳ (literature) |
| **B3** | CoGEE/GPT-4 (reported) | — | ⏳ (literature) |
| **C1** | llama3.2:8b | zero-shot | ⏳ |
| **C2** | llama3.2:8b | few-shot-3 | ⏳ |
| **C3** | llama3.2:8b | cot | ⏳ |
| **C4** | mistral:7b | zero-shot | ⏳ |
| **C5** | mistral:7b | few-shot-3 | ⏳ |
| **C6** | mistral:7b | cot | ⏳ |

**Total PUMA conditions:** 6 LLM (+ 3 from literature)
**Total inferences:** 6 × 350 stories = **2,100 calls**

---

## Fixed Parameters

| Parameter | Value |
|-----------|-------|
| Dataset | TAWOS — stratified subset |
| Subset size | 350 stories (50 per SP class × 7 classes) |
| seed | 42 · temperature | 0 |
| Fibonacci scale | {1, 2, 3, 5, 8, 13, 21} |
| Carbon tracking | CodeCarbon per call |

---

## Primary Metric: MAE

- **Formula:** `mean(abs(predicted_sp - actual_sp))`
- **MVP threshold:** ≤ 3.0 SP
- **Desired threshold:** ≤ 1.5 SP
- **Statistical test:** Wilcoxon vs B1 (historical mean), α = 0.05

---

## 🔗 Related Notes

**Stage 1 context:**
[[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] (H2) · [[40 - Projects/PUMA/41.6 Specs/SP-Estimation-Dataset-Specs]]

**Dataset & baseline:**
[[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] (TAWOS) · [[20 - Literature/20.1 Papers/LN-KeyPapers-CoGEE-Angermeir-Flyvbjerg]] (CoGEE baseline)

**PM concepts:**
[[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] (MAE, Fibonacci scale) · [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] (strategies S1–S3)

**Navigation:**
[[40 - Projects/PUMA/41.4 Results/PR-PUMA-Ch4-Results]] · [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
