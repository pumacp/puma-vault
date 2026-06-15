---
type: literature
title: "Experimentation in Software Engineering"
authors: ["Wohlin, Claes", "Runeson, Per", "Höst, Martin", "Ohlsson, Magnus C.", "Regnell, Björn", "Wesslén, Anders"]
first-author: "Wohlin"
year: 2012
status: reviewed
topic: research-methodology
relevance: 5
citekey: "@Wohlin2012Experimentation"
venue: "Springer"
arxiv: ""
doi: "10.1007/978-3-642-29044-2"
url: "https://link.springer.com/book/10.1007/978-3-642-29044-2"
tags: [literature, experimentation, controlled-experiment, wilcoxon, shapiro-wilk, hypothesis-testing, effect-size, validity, puma-core, book, research-methodology, statistics, literature-note, moc]
created: 2026-04-14
updated: 2026-06-15
keshav-pass: 2
---

# LN: Wohlin et al. (2012) — Experimentation in Software Engineering

> [!cite] Bibliographic Reference
> **Citation**: Wohlin, C., Runeson, P., Höst, M., Ohlsson, M. C., Regnell, B., & Wesslén, A. (2012). *Experimentation in software engineering*. Springer. https://doi.org/10.1007/978-3-642-29044-2

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Research methodology textbook |
| **Context** | The standard SE experimentation textbook; originally published in 2000, revised 2012. Used across academic SE research |
| **Correctness** | Based on established experimental design and statistical theory; citations trace to Shadish, Cook & Campbell (validity framework) and Fisher (experimental design) |
| **Contributions** | (1) Taxonomy of SE study types (experiment, case study, survey); (2) Controlled experiment design (factor, treatment, response variable); (3) Validity threat taxonomy (internal, external, construct, conclusion); (4) Statistical analysis guidance (parametric vs. non-parametric) |
| **Clarity** | Very good — structured, with SE-specific worked examples |

> [!success] Relevance: ⭐⭐⭐⭐⭐
> PUMA's experimental design follows Wohlin et al. directly: 2-factor controlled experiment (model × prompting strategy), Wilcoxon signed-rank for non-parametric comparison, Shapiro-Wilk for normality testing, and effect size r = Z/√N.

---

## Pass 2 — Key Concepts

### SE Study Types

| Type | Control | Manipulation | Observation |
|------|---------|-------------|------------|
| **Experiment** | Controlled | Yes | Yes |
| Case study | Uncontrolled | No | Yes |
| Survey | None | No | Yes |

PUMA is an **experiment**: controlled conditions (fixed dataset, seed=42, temperature=0), manipulated factors (model choice, prompting strategy), measured response variables (F1-macro, MAE).

### Experimental Design for PUMA

Wohlin et al.'s factorial design maps directly:

| Concept | PUMA Variable |
|---------|--------------|
| **Factors** | LLM Model × Prompting Strategy |
| **Treatments** | 4 models × 4 strategies = 16 conditions |
| **Response variable** | F1-macro (H1), MAE (H2) |
| **Experimental units** | Issues in dataset (n=200 stratified) |
| **Blocking** | Stratified sampling by priority class |

### Validity Threat Framework (PUMA mapping)

| Threat Type | Definition | PUMA Mitigation |
|------------|------------|----------------|
| **Internal validity** | Confounds affect results | Fixed seed=42, temperature=0, identical prompts |
| **External validity** | Results don't generalise | Open dataset (Jira SR, TAWOS); reproducibility protocol |
| **Construct validity** | Metrics don't measure what we claim | F1-macro validated against expert labels; MAE against human SP estimates |
| **Conclusion validity** | Statistical analysis errors | Wilcoxon + BH-FDR correction; effect size reported |

### Non-Parametric Test Selection

Wohlin et al. recommend:
1. **Test normality** with Shapiro-Wilk (α=0.05)
2. **If normal**: paired t-test
3. **If not normal**: Wilcoxon signed-rank test (PUMA's choice — expected for F1 distributions)

The Wilcoxon signed-rank test does not assume normality — appropriate for bounded metrics like F1 [0,1] which tend to cluster near 1.0.

---

## PUMA Integration

- **Ch.3 Methods — Experimental Design**: Cite Wohlin et al. for the factorial design and validity threat analysis
- **Statistical Analysis**: Wohlin provides the justification for choosing Wilcoxon over t-test

## Related Notes

- [[30 - Permanent/31 Concepts/PN-StatisticalValidation-Full]] — full Wilcoxon pipeline with Python code
- [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] — Wilcoxon + FINER + PRISMA integration
- [[20 - Literature/20.1 Papers/Research-Methods/LN-Hevner-2004-DSR]] — DSR as the overarching paradigm
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] — PUMA's hypotheses framed per Wohlin

## MOCs

- [[20 - Literature/20.2 Books/MOC Books]]
- [[20 - Literature/20.1 Papers/Research-Methods/MOC Research Methods Papers]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
