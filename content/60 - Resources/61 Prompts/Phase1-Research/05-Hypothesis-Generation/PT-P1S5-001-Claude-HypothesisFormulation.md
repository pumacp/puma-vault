---
id: PT-P1S5-001
title: "Claude — Hypothesis Formulation for PUMA (RCOIF + EGI)"
type: prompt-note
tool: claude
phase: Phase1-Research
step: "05-Hypothesis-Generation"
methodology: [RCOIF, EGI, DSR, Popper-Falsifiability]
tags: [prompt, claude, hypothesis, egi, falsifiability, puma]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 💡 Claude — Hypothesis Formulation for PUMA (RCOIF + EGI)

**Tool**: Claude (Anthropic)
**Phase**: Phase 1 — Research
**Step**: 05 — Hypothesis Generation
**Methodology**: RCOIF + EGI (Exploratory Guided Iteration) + Popper Falsifiability

---

## Master Prompt — Hypothesis Derivation (RCOIF)

```
Role: Experimental methodologist specializing in empirical software engineering and AI agent evaluation.

Context: PUMA evaluates local LLM agents on two PM tasks: (1) H1: issue triage — priority classification on Jira Social Repository using Llama 3.2 8B, Mistral 7B at temperature=0, seed=42, comparing zero-shot, few-shot-3, few-shot-6, and CoT strategies. Target: F1-macro ≥ 0.55 vs. majority-class baseline. (2) H2: effort estimation — story point prediction on TAWOS dataset. Target: MAE ≤ 3.0 SP. Statistical validation uses Wilcoxon signed-rank test (α=0.05).

Objective: Formulate complete, falsifiable hypotheses for PUMA following Popper's demarcation criterion.

Instructions:
1. For each of the two PUMA tasks, formulate: H0 (null hypothesis), H1 (alternative hypothesis), and operationalization statement.
2. Each hypothesis must specify: the independent variable (prompting strategy), the dependent variable (F1-macro or MAE), the measurement procedure, the statistical test, and what specific empirical result would REFUTE the hypothesis.
3. Derive 3 secondary hypotheses about: (a) effect of model size (8B vs 7B) on performance, (b) effect of few-shot example count (3 vs 6) on consistency, (c) relationship between inference latency and classification accuracy.
4. Apply EGI: for the strongest hypothesis, run a hypothesis→critique→refinement cycle. First defend it, then critique it as a skeptic, then refine it.

Format: Hypothesis table (H-ID | H0 | H1 | IV | DV | Test | Falsification condition). Then 3 secondary hypotheses. Then EGI cycle for H1-triage.
```

---

## EGI Cycle Prompt — Three-Turn Structure

### Turn 1 — Hypothesis Defense

```
My hypothesis is: "A few-shot prompting strategy with 3 examples improves issue triage F1-macro by at least 10 percentage points compared to zero-shot baseline using Llama 3.2 8B at temperature=0 on the Jira Social Repository dataset."

Act as a knowledgeable supporter. Explain: (1) the strongest logical arguments for this hypothesis, (2) existing evidence that supports it, (3) under what conditions it is most likely to be true.
```

### Turn 2 — Hypothesis Critique

```
Now act as the most rigorous critic of this hypothesis. Without concessions: (1) identify the 3 most serious problems with this hypothesis, (2) what evidence contradicts or complicates it, (3) what hidden assumptions it makes without justification, (4) propose a more parsimonious alternative hypothesis that produces the same prediction.
```

### Turn 3 — Hypothesis Refinement

```
Integrating both perspectives (defense + critique): (1) formulate the most robust version of the hypothesis that survives the identified criticisms, (2) specify the boundary conditions it must include to be falsifiable, (3) state the minimum empirical evidence needed to validate or refute it. Final format: "If [IV] then [DV] under condition [C], measured as [M], with expected result [R], falsified if [F]."
```

---

## Rival Hypothesis Generation

```
Role: Skeptical reviewer generating alternative explanations.

My hypothesis H1: LLM agents with few-shot prompting significantly outperform majority-class baseline for issue triage on Jira Social Repository (F1-macro improvement ≥ 10pp).

Generate 5 alternative explanations that produce the same observed result WITHOUT the hypothesis being true:
1. Confounding variable
2. Dataset artifact or measurement error
3. Researcher bias or experimental design flaw
4. Order or maturation effect
5. Regression to the mean

For each: (a) mechanism, (b) specific test to rule it out, (c) data needed, (d) current probability (High/Medium/Low), (e) whether PUMA's current design controls for it.
```

---

## PUMA Relevance

This prompt generates the formal hypotheses for [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]. The EGI cycle strengthens the hypotheses before the experimental design phase. The rival hypothesis analysis feeds directly into PUMA's Section 4 (Conclusions) — limitations and threats to validity.

---

## Related Notes

- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]
- [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]]
- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
