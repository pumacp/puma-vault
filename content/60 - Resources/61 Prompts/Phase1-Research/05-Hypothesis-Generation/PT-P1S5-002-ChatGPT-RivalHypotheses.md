---
id: PT-P1S5-002
title: "ChatGPT — Rival Hypothesis and Falsification Analysis for PUMA"
type: prompt-note
tool: chatgpt
phase: Phase1-Research
step: "05-Hypothesis-Generation"
methodology: [IIPR, Popper-Falsifiability, RCOIF]
tags: [prompt, chatgpt, rival-hypotheses, falsification, puma, iipr]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 🎯 ChatGPT — Rival Hypothesis and Falsification Analysis for PUMA

**Tool**: ChatGPT (OpenAI)
**Phase**: Phase 1 — Research
**Step**: 05 — Hypothesis Generation
**Methodology**: IIPR (Inverse Prompt Engineering) + Popper Falsifiability

---

## Prompt A — H1 Falsification Analysis (Triage)

```
PUMA's main hypothesis for triage is: "At least one prompting strategy (zero-shot, few-shot-3, few-shot-6, or CoT) applied to Llama 3.2 8B at temperature=0 will achieve F1-macro ≥ 0.55 on the Jira Social Repository priority classification task, statistically significantly outperforming the majority-class baseline (Wilcoxon signed-rank test, α=0.05)."

Analyze this hypothesis: (1) Is it falsifiable by a single clear empirical test? (2) What specific empirical result would refute it? (3) What are the 3 most plausible reasons it could fail that have nothing to do with the underlying theory? (4) What would a positive result actually prove about LLM capabilities for PM tasks? (5) What does a negative result prove?

Format: Analysis per question. Verdict: KEEP / MODIFY / REJECT with justification.
```

## Prompt B — H2 Falsification Analysis (Estimation)

```
PUMA's second hypothesis: "A few-shot prompting strategy with historical sprint data achieves MAE ≤ 3.0 story points on TAWOS dataset using Llama 3.2 8B, outperforming the historical average baseline."

Analyze: (1) Is MAE ≤ 3.0 SP a meaningful threshold or arbitrary? What does the literature say about typical MAE for estimation? (2) What confounds could explain lower MAE without the LLM actually "understanding" the task? (3) How sensitive is the hypothesis to the choice of TAWOS as the dataset? (4) Generate 3 rival explanations for a positive result that don't require the hypothesis to be true.
```

## Prompt C — IIPR: Reconstruct Hypothesis from Literature

```
Role: Hypothesis engineer applying Inverse Prompt and Response engineering.

Context: I have the following positive empirical results from prior literature on LLM agents for issue classification: [paste 5-10 key numerical results from SLR]. I want to understand what hypotheses must have been behind these results.

Objective: Reconstruct the unstated hypotheses behind these results, then formulate PUMA's hypotheses to be compatible with but extend beyond these prior results.

Instructions:
1. For each result, infer: what hypothesis was being tested, what variables were defined, what was the intended falsification condition.
2. Identify: what gaps remain untested by the prior results.
3. Formulate PUMA-specific hypotheses that address these gaps.
4. Ensure each PUMA hypothesis is: more specific than prior work, adds the local-LLM + reproducibility dimension, and includes a sustainability component (CodeCarbon measurement).
```

## Prompt D — Hypothesis Operationalization Checklist

```
For PUMA's two main hypotheses, generate a complete operationalization checklist:

For each hypothesis:
□ Independent variable defined (name, type, range of values, how manipulated)
□ Dependent variable defined (name, measurement unit, calculation formula)
□ Control variables listed (what stays constant across conditions)
□ Sample defined (dataset, size, stratification method, split rationale)
□ Procedure specified (exact steps to run each condition)
□ Statistical test chosen (test name, assumptions, why appropriate for PUMA's data)
□ Effect size metric defined (Cohen's d / r / η² as appropriate)
□ Minimum sample size calculated (power analysis or justification)
□ Seed and randomization documented (seed=42, temperature=0)
□ Null hypothesis stated in rejectable form

Return: completed checklist for H1 (triage) and H2 (estimation).
```

---

## PUMA Relevance

This prompt package ensures PUMA's hypotheses are falsifiable, well-operationalized, and connected to the experimental design. The falsification analysis prevents the common TFG error of claiming "validation" when only one positive result is found. Output feeds [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]].

---

## Related Notes

- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]
- [[40 - Projects/PUMA/41.4 Results/PR-PUMA-Ch4-Results]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
