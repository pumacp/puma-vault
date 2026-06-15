---
id: HY-H1-Triage
title: "HY — H1: issue-triage quality vs baseline"
type: hypothesis-note
status: draft
source_unit: MEM-017,MEM-046
confidence: verified-at-primary-source
tags: [hypothesis, puma, triage, wilcoxon, falsifiability]
created: 2026-06-15
---

# HY — H1: issue-triage quality vs baseline

**H0₁:** no model/strategy configuration beats the triage baseline F1-macro. **H1₁:** at least one configuration achieves a statistically significantly higher F1-macro (Wilcoxon two-sided, α=0.05, effect size r ≥ 0.1).

**Result — H0₁ REJECTED.** The canonical configuration (qwen2.5:3b, contextual-anchoring) reaches **F1-macro = 0.5867 (N=200)** versus a no-information majority-class floor, **Wilcoxon p ≈ 6.9×10⁻¹³, r = −0.51 (large)**. Scope: this shows the model is far above chance (accuracy 0.25), not that it beats a competitive keyword heuristic (deferred — see technical debt).

> **Source:** PUMA project documentation · **Traceability:** corpus units `MEM-017`, `MEM-046`, `PUMA-021` · reconciliation verdict G-series · **Confidence:** verified-at-primary-source

## Related
- [[RES-PUMA-017]]
- [[PN-PUMA-021]]
- [[HY-H2-Estimation]]
