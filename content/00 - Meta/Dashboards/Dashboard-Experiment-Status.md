---
id: Dashboard-Experiment-Status
title: "🔬 Dashboard — Experiment Status"
type: dashboard
tags: [dashboard, experiments, puma, dataview]
created: 2026-03-01
updated: 2026-04-06
---

# 🔬 Dashboard — Experiment Status

---

## All Experiments

```dataview
TABLE experiment-id AS "ID", title AS "Experiment", status AS "Status", methodology AS "Method", tool AS "Tool", date-started AS "Started", date-completed AS "Done"
FROM #experiment
SORT date-started DESC
```

---

## By Status

```dataview
TABLE WITHOUT ID status AS "Status", length(rows) AS "Count", rows.file.link AS "Experiments"
FROM #experiment
GROUP BY status
```

---

## Pending Experiments

```dataview
TABLE experiment-id AS "ID", title AS "Experiment", methodology AS "Method"
FROM #experiment
WHERE status = "planned"
SORT file.ctime ASC
```

---

## Stage 1: Triage Results Placeholder

| Model | Strategy | F1-macro | Precision | Recall | p-value | r | gCO₂eq |
|-------|----------|---------|-----------|--------|---------|---|--------|
| Heuristic baseline | — | TBD | TBD | TBD | — | — | 0 |
| TF-IDF + SVM | — | TBD | TBD | TBD | — | — | 0 |
| Llama 3.2 8B | Zero-Shot | TBD | TBD | TBD | TBD | TBD | TBD |
| Llama 3.2 8B | Few-Shot-3 | TBD | TBD | TBD | TBD | TBD | TBD |
| Llama 3.2 8B | Few-Shot-6 | TBD | TBD | TBD | TBD | TBD | TBD |
| Llama 3.2 8B | CoT | TBD | TBD | TBD | TBD | TBD | TBD |
| Mistral 7B | Zero-Shot | TBD | TBD | TBD | TBD | TBD | TBD |
| Mistral 7B | Few-Shot-3 | TBD | TBD | TBD | TBD | TBD | TBD |
| Mistral 7B | Few-Shot-6 | TBD | TBD | TBD | TBD | TBD | TBD |
| Mistral 7B | CoT | TBD | TBD | TBD | TBD | TBD | TBD |

> **Update when PEC2 experiments complete. Replace TBD with actual values.**

---

## Stage 2: Estimation Results Placeholder

| Model | Strategy | MAE (SP) | RMSE | vs. Mean Hist. | vs. Deep-SE | vs. CoGEE |
|-------|----------|----------|------|----------------|-------------|-----------|
| Mean historical | — | TBD | TBD | baseline | — | — |
| Deep-SE | — | ~3.2 | — | — | baseline | — |
| CoGEE (GPT-4) | — | ~1.9 | — | — | — | baseline |
| Llama 3.2 8B | Zero-Shot | TBD | TBD | TBD | TBD | TBD |
| Llama 3.2 8B | Few-Shot-3 | TBD | TBD | TBD | TBD | TBD |
| Mistral 7B | CoT | TBD | TBD | TBD | TBD | TBD |

---

## Carbon Summary

| Phase | Conditions | Total gCO₂eq | Per condition | Per issue |
|-------|-----------|--------------|---------------|-----------|
| Stage 1 | 8 LLM + 2 baseline | TBD | TBD | TBD |
| Stage 2 | TBD | TBD | TBD | TBD |

> **Fill with CodeCarbon output after experiments.**
