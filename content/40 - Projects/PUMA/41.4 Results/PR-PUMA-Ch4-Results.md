---
id: PR-PUMA-Ch4-Results
title: "Chapter 4 — Results"
type: project-note
tags: [project, chapter, results, puma]
status: pending
deadline: 2026-06-07
pec: PEC4
word_count_target: 4000
created: 2026-03-01
---

# Chapter 4 — Results

> **Status:** ⏳ Pending F4 (experiment completion + analysis)
> All tables generated programmatically from `results/` directory.

---

## Chapter Outline

### 4.1 Stage 1 — Issue Triage Results

**Subsections:**
- 4.1.1 Baseline performance (B1 heuristic, B2 SVM)
- 4.1.2 LLM condition results table (F1-macro × model × strategy)
- 4.1.3 Statistical analysis (Wilcoxon, p-values, effect sizes)
- 4.1.4 Per-class analysis (Critical, High, Medium, Low breakdown)
- 4.1.5 Error analysis (top failure patterns + examples)
- 4.1.6 H1 decision and interpretation

### 4.2 Stage 2 — Effort Estimation Results

**Subsections:**
- 4.2.1 Baseline performance (historical mean, Deep-SE, CoGEE reported)
- 4.2.2 LLM condition results table (MAE × model × strategy)
- 4.2.3 Statistical analysis (Wilcoxon vs historical mean)
- 4.2.4 Per-SP-class analysis
- 4.2.5 H2 decision and interpretation

### 4.3 System Performance Analysis

- 4.3.1 Latency per condition (seconds per query, aggregated)
- 4.3.2 Carbon footprint per condition (gCO₂eq, CodeCarbon)
- 4.3.3 Quality vs carbon tradeoff frontier

### 4.4 Cross-Stage Findings

- Best model overall (Stage 1 + Stage 2 combined)
- Best strategy overall
- Quality-cost frontier recommendations

---

## Draft Tables (Placeholder — fill during F4)

### Table 4.1 — Stage 1: Triage Results

| Condition | Model | Strategy | F1-macro | Prec. (macro) | Rec. (macro) | W | p | r | sig.? |
|-----------|-------|---------|---------|--------------|-------------|---|---|---|-------|
| B1 | Heuristic | — | *TBD* | — | — | — | — | — | — |
| B2 | TF-IDF+SVM | — | *TBD* | — | — | — | — | — | — |
| C1 | llama3.2:8b | zero-shot | *TBD* | | | | | | |
| C2 | llama3.2:8b | few-shot-3 | *TBD* | | | | | | |
| C3 | llama3.2:8b | few-shot-6 | *TBD* | | | | | | |
| C4 | llama3.2:8b | cot | *TBD* | | | | | | |
| C5 | mistral:7b | zero-shot | *TBD* | | | | | | |
| C6 | mistral:7b | few-shot-3 | *TBD* | | | | | | |
| C7 | mistral:7b | few-shot-6 | *TBD* | | | | | | |
| C8 | mistral:7b | cot | *TBD* | | | | | | |

*Note: Wilcoxon (W, p, r) computed vs B1 (heuristic baseline). α=0.05. Bonferroni correction applied (α_corrected = 0.05/8 = 0.00625).*

### Table 4.2 — Stage 2: Estimation Results

| Condition | Model | Strategy | MAE | RMSE | W | p | r | sig.? |
|-----------|-------|---------|-----|------|---|---|---|-------|
| B1 | Historical mean | — | *TBD* | — | — | — | — | — |
| B2 | Deep-SE | — | ~3.2 (lit.) | — | — | — | — | — |
| B3 | CoGEE (GPT-4) | — | ~1.9 (lit.) | — | — | — | — | — |
| C1 | llama3.2:8b | zero-shot | *TBD* | | | | | |
| C2 | llama3.2:8b | few-shot-3 | *TBD* | | | | | |
| C3 | llama3.2:8b | cot | *TBD* | | | | | |
| C4 | mistral:7b | zero-shot | *TBD* | | | | | |
| C5 | mistral:7b | few-shot-3 | *TBD* | | | | | |
| C6 | mistral:7b | cot | *TBD* | | | | | |

### Table 4.3 — System Performance

| Condition | Model | Strategy | Task | gCO₂eq | Latency (s/q) |
|-----------|-------|---------|------|---------|--------------|
| C1 | llama3.2:8b | zero-shot | triage | *TBD* | *TBD* |
| *[all conditions]* | | | | | |

---

## Visualisations Plan

- **Figure 4.1:** F1-macro heatmap (model × strategy)
- **Figure 4.2:** Per-class F1 grouped bar chart (best condition vs baseline)
- **Figure 4.3:** MAE comparison bar chart with error bars
- **Figure 4.4:** Carbon vs F1 scatter (quality-cost frontier)
- **Figure 4.5:** Latency distribution box plots per model

All figures: `matplotlib` + `seaborn`, reproducible from `notebooks/04_results_visualisation.ipynb`

---

## 🔗 Related Notes

**Experiments:**
[[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] · [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]]

**Methodology:**
[[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] · [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]]

**PM concepts:**
[[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] · [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]]

**Datasets:**
[[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] · [[20 - Literature/20.1 Papers/LN-KeyPapers-CoGEE-Angermeir-Flyvbjerg]] (baselines)

**Carbon:**
[[50 - Areas/54 Sustainability/Carbon-Tracking-Log]]

**Navigation:**
[[40 - Projects/PUMA/41.5 Discussion/PR-PUMA-Ch5-Discussion]] · [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]] · [[00 - Meta/Dashboards/Dashboard-Experiment-Status]]
