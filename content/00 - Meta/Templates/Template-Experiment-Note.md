---
id: "EX-{{ModelName}}-{{Strategy}}-{{Task}}"
title: "Experiment: {{Model}} × {{Strategy}} × {{Task}}"
type: experiment
tags: [experiment, "{{task}}, {{model}}, {{strategy}}"]
stage: "{{1-triage | 2-estimation | 3-backlog}}"
model: "{{llama3.2-8b | mistral-7b | phi-3.5-mini}}"
strategy: "{{zero-shot | few-shot-3 | few-shot-6 | cot}}"
dataset: "{{jira-sr | tawos}}"
seed: 42
temperature: 0
status: "{{planned | running | completed | failed}}"
created: "{{date}}"
updated: "{{date}}"
run_date: "{{date}}"
---

# Experiment: "{{Model}}" × "{{Strategy}}" × "{{Task}}"

[[|> **Hypothesis tested:** [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]
> **Stage:** "{{Stage description}}"

---

## 🎯 Objective

"{{What specific question does this experiment answer? Be precise.}}"

---

## ⚙️ Configuration

| Parameter | Value |
|-----------|-------|
| **Model** | "{{model-name:version}}" |
| **Strategy** | "{{strategy name}}" |
| **Dataset** | "{{dataset name}}" |
| **Subset size** | "{{N}}" samples ("{{stratification details}}") |
| **Seed** | 42 |
| **Temperature** | 0 |
| **Max tokens** | "{{N}}" |
| **Hardware** | "{{CPU/RAM specs}}" |
| **Ollama version** | "{{version}}" |
| **Python version** | "{{3.11.x}}" |

---

## 📝 Prompt Used

```
"{{Paste the exact prompt template used, with [PLACEHOLDERS] for variable parts}}"
```

[[|**Prompt strategy:** [[60 - Resources/61 Prompts/PT-PUMA-"{{Strategy}}"-"{{Task}}"]]

---

## 📊 Results

### Quantitative Metrics

| Metric | Value | Baseline | Delta |
|--------|-------|----------|-------|
| "{{F1-macro}}" | "{{0.XX}}" | "{{0.XX (heuristic)}}" | "{{+/-XX}}" |
| "{{Precision}}" | "{{0.XX}}" | — | — |
| "{{Recall}}" | "{{0.XX}}" | — | — |
| "{{Latency/query (s)}}" | "{{XX}}" | — | — |
| **Carbon (gCO₂eq)** | "{{XX}}" | — | — |

### Per-Class Results (Triage only)

| Priority Class | F1 | Precision | Recall | N samples |
|---------------|-----|-----------|--------|-----------|
| Critical | "{{}}" | "{{}}" | "{{}}" | "{{}}" |
| High | "{{}}" | "{{}}" | "{{}}" | "{{}}" |
| Medium | "{{}}" | "{{}}" | "{{}}" | "{{}}" |
| Low | "{{}}" | "{{}}" | "{{}}" | "{{}}" |

### Statistical Analysis

| Test | Statistic | p-value | Effect size (r) | Significant? |
|------|-----------|---------|-----------------|-------------|
| Wilcoxon vs baseline | "{{W=XX}}" | "{{p=0.0XX}}" | "{{r=0.XX}}" | "{{Yes/No}}" |

---

## 🔍 Error Analysis

**Most common error type:** "{{Description}}"

**Sample failure cases:**

| Input (truncated) | Predicted | Ground truth | Analysis |
|-------------------|-----------|-------------|---------|
| "{{Issue title}}" | "{{High}}" | "{{Critical}}" | "{{Why it failed}}" |
| "{{Issue title}}" | "{{Low}}" | "{{Medium}}" | "{{Why it failed}}" |

---

## ♻️ Carbon Footprint

```
CodeCarbon Report:
  Duration: "{{XX}}" seconds
  Emissions: "{{XX}}" gCO₂eq
  Energy consumed: "{{XX}}" kWh
  Country: "{{Spain / EU}}"
  Provider: "{{CPU}}"
```

---

## 📝 Observations & Notes

"{{Qualitative observations from running this experiment. What surprised you? What worked or didn't?}}"

---

## 🔗 Links

[[|- **Prompt:** [[60 - Resources/61 Prompts/PT-PUMA-"{{Strategy}}"-"{{Task}}"]]
[[|- **Dataset:** [[20 - Literature/20.3 Datasets/LN-"{{Dataset}}"]]
[[|- **Results table:** [[40 - Projects/PUMA/41.4 Results/PR-PUMA-Ch4-Results]]
- **Code:** `src/experiments/"{{filename}}".py`
- **Notebook:** `notebooks/"{{filename}}".ipynb`

---

## ✅ Reproduction Checklist

- [ ] `seed=42` and `temperature=0` set
- [ ] Exact model version logged
- [ ] Dataset subset documented (stratification script)
- [ ] Prompt template saved verbatim
- [ ] `requirements.txt` updated
- [ ] CodeCarbon emissions logged
- [ ] Results committed to Git with tag
- [ ] Wilcoxon test run and recorded
