---
id: PT-P1S6-001
title: "Claude — Controlled Experiment Protocol Design for PUMA"
type: prompt-note
tool: claude
phase: Phase1-Research
step: "06-Experimental-Design"
methodology: [RCOIF, DSR, Wilcoxon, CodeCarbon]
tags: [prompt, claude, experiment-design, wilcoxon, codecarbon, puma]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 🧪 Claude — Controlled Experiment Protocol Design for PUMA

**Tool**: Claude (Anthropic)
**Phase**: Phase 1 — Research
**Step**: 06 — Experimental Design
**Methodology**: RCOIF + DSR Evaluation + Statistical Design

---

## Master Experiment Design Prompt (RCOIF)

```
Role: Experimental statistician and software engineering researcher.

Context: PUMA compares 4 prompting strategies × 2 local LLM models × 2 PM tasks in a controlled experiment. Models: Llama 3.2 8B and Mistral 7B via Ollama. Temperature: 0.0, seed: 42. Tasks: (1) issue triage on Jira Social Repository (200-issue stratified sample), (2) effort estimation on TAWOS (story point prediction). Strategies: zero-shot, few-shot-3, few-shot-6, chain-of-thought. Hardware: local CPU (16GB RAM). The study follows DSR and validates against the Wilcoxon signed-rank test.

Objective: Design a complete, reproducible experimental protocol for PUMA.

Instructions:
1. VARIABLES: Define independent variables (strategies × models), dependent variables (F1-macro for triage, MAE for estimation), control variables (temperature, seed, dataset split, hardware), and confounds to control.
2. DESIGN TYPE: Justify: within-subjects (same issues across strategies) vs. between-subjects, order randomization protocol.
3. STATISTICAL ANALYSIS: Specify: (a) primary test (Wilcoxon signed-rank — why non-parametric?), (b) effect size metric (r = Z/√N), (c) Bonferroni correction for multiple comparisons (8 conditions), (d) power analysis (minimum N for α=0.05, power=0.80), (e) Python scipy code stub.
4. PROTOCOL STEPS: Numbered reproducibility protocol so another researcher can run PUMA from scratch in 30 minutes.
5. THREATS TO VALIDITY: List internal, external, construct, and statistical threats with mitigations.

Format: Numbered sections per instruction. Variable table. Protocol steps. Threats table.
```

---

## Statistical Analysis Prompt (Wilcoxon)

```
Role: Statistician specializing in non-parametric analysis for software engineering research.

Context: PUMA cannot assume normal distribution for F1-macro scores across 200 issues because: small cell sizes per condition, bounded metric (0–1), likely skewed distribution. We compare 4 conditions in a within-subjects design.

Objective: Specify the complete statistical analysis plan and generate the Python code.

Instructions:
1. Confirm: Wilcoxon signed-rank (paired, non-parametric) is appropriate. State the 3 assumptions it requires.
2. For multiple comparisons (4 strategies → 6 pairwise comparisons): apply Bonferroni correction (α_adj = 0.05/6 = 0.0083). Justify.
3. Calculate the minimum N for: α=0.05, power=0.80, expected effect size r=0.3 (medium). Use G*Power logic.
4. Generate complete Python code using scipy.stats.wilcoxon() for: (a) each pairwise comparison, (b) effect size r calculation, (c) Bonferroni-corrected p-values, (d) result table in academic format.
5. Write the statistical result sentence template: "We found [evidence/no evidence] of a statistically significant difference between [condition A] and [condition B] (W=X, p=Y, r=Z, α=0.05/Bonferroni-corrected)."

Format: Assumptions. N calculation. Python code (complete, runnable). Result sentence template.
```

---

## CodeCarbon Integration Prompt

```
Role: Sustainability researcher integrating environmental metrics into AI experiments.

Context: PUMA measures the carbon footprint of each experimental condition as a first-class metric. We use CodeCarbon (Python library) in offline mode to avoid internet dependency. Each condition runs on CPU hardware (16GB RAM, no GPU) in the target institution's location.

Objective: Design the CodeCarbon measurement protocol and generate the integration code.

Instructions:
1. Implement: OfflineEmissionsTracker(country_iso_code="ESP") for each experimental condition.
2. Capture: kg CO2eq per condition, g CO2eq per classified issue, comparison across conditions.
3. Generate a summary table: Condition | CO2 total (g) | CO2/issue (mg) | Relative to baseline.
4. Write the sustainability narrative for PUMA Section 1.3 (Ethical-Social Impact): compare the local inference CO2 cost vs. equivalent cloud API calls.
5. Error handling: if CodeCarbon cannot measure (no hardware sensors), fall back to CountryEmissionsBySource estimation.

Format: CodeCarbon integration code (complete Python function). Summary table template. Sustainability narrative (100 words).
```

---

## PUMA Relevance

This prompt generates PUMA's full experimental protocol, which is the core of Section 3 (Results) and justifies every methodological choice. The statistical analysis code is directly used in PUMA's experiment runner. The CodeCarbon integration supports Section 1.3 (sustainability impact).

---

## Related Notes

- [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]]
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]
- [[50 - Areas/54 Sustainability/Carbon-Tracking-Log]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
