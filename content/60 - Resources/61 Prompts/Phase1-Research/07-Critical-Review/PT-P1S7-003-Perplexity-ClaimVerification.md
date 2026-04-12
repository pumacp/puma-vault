---
id: PT-P1S7-003
title: "Perplexity — Claim Verification and Fact-Checking for PUMA"
type: prompt-note
tool: perplexity
phase: Phase1-Research
step: "07-Critical-Review"
methodology: [Marco-Veritas, Evidence-Checking]
tags: [prompt, perplexity, fact-checking, verification, puma, marco-veritas]
rating: 4
created: 2026-04-07
updated: 2026-04-07
---

# ✅ Perplexity — Claim Verification and Fact-Checking for PUMA

**Tool**: Perplexity AI (Academic mode)
**Phase**: Phase 1 — Research
**Step**: 07 — Critical Review
**Methodology**: Marco Veritas protocol

---

## Prompt A — Reference Verification

```
Verify the following academic references cited in my PUMA thesis. For each reference, confirm: (1) the paper exists and was published as stated, (2) the author names are correctly spelled, (3) the year, venue, and DOI are accurate, (4) the cited claim actually appears in the paper. Flag any reference that cannot be verified with [UNVERIFIED]. Do not assume a reference is correct without evidence.

References to verify:
[PASTE LIST OF REFERENCES]
```

## Prompt B — Statistical Claim Validation

```
Validate these statistical claims from my PUMA research: (1) "Wilcoxon signed-rank test is appropriate for paired non-parametric comparison of F1-macro scores from repeated measurement on the same issues." (2) "With n=200 paired observations, the Wilcoxon test achieves 80% power at α=0.05 for a medium effect size (r=0.3)." (3) "Bonferroni correction for 6 pairwise comparisons from 4 conditions gives α_adj=0.0083."

For each claim: confirm the statistical reasoning is correct, cite a statistics textbook or authoritative source, and flag any error or oversimplification.
```

## Prompt C — Dataset Fact-Check

```
Verify the following facts about the Jira Social Repository and TAWOS dataset cited in PUMA: (1) What is the actual size of the Jira SR dataset in the most cited publication? (2) Who are the authors of TAWOS and in what venue was it published? (3) Are both datasets publicly available? Provide download URLs if they exist. (4) What are the known limitations documented by the dataset creators?
```

## Prompt D — Best-Practice Verification

```
Verify whether these methodological choices are consistent with current best practices in empirical software engineering (2023–2026): (1) Using temperature=0 and seed=42 for reproducible LLM evaluation. (2) Stratified sampling for imbalanced multi-class datasets. (3) Wilcoxon signed-rank test for non-parametric comparison in small-sample SE experiments. (4) F1-macro as the primary metric for imbalanced classification. Cite the most authoritative sources for each practice.
```

---

## Usage Notes

Use Perplexity in Academic mode for these prompts. Always click the citation links to verify the actual source. Do not accept a Perplexity response as final without checking the primary source — this is the Marco Veritas protocol requirement. Log all verification results in [[50 - Areas/51 Research/AI-Use-Log]].

---

## PUMA Relevance

Perplexity serves as the real-time fact-checker for PUMA's claims. Every quantitative claim in the thesis must pass this verification step before the PEC submission. This is directly required by PUMA's Section 1.8 (AI use declaration) — the Marco Veritas commitment.

---

## Related Notes

- [[50 - Areas/51 Research/AI-Use-Log]]
- [[60 - Resources/65 Bibliographies/BIB-Supplement-v3]]
- [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
