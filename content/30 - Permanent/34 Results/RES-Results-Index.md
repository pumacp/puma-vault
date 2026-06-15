---
id: RES-Results-Index
title: "RES — PUMA empirical results (canonical index)"
type: result-note
status: draft
source_unit: EXPAND-results-fill
confidence: verified-at-primary-source
tags: [result, puma, benchmark, f1-macro, mae, sustainability]
created: 2026-06-15
---

# RES — PUMA empirical results (canonical index)

Headline reconciled figures (reference hardware = NVIDIA RTX 2060, seed=42, temp=0.0):

| quantity | canonical value | note |
|---|---|---|
| Triage F1-macro | **0.5867** (N=200) | qwen2.5:3b, contextual-anchoring; zero-shot = 0.3898 |
| Best estimation MAE | **1.86 SP** @ qwen2.5:7b | qwen2.5:3b = 2.91; zero-shot baseline = 5.7150 |
| H2 baseline MAE | **2.03 SP** | predictor constant = 4.04 SP (mean SP, **not** a MAE) |
| H1 Wilcoxon | **p ≈ 6.9×10⁻¹³, r = −0.51** | reject H0₁ |
| H2 Wilcoxon | **p = 0.104, r = −0.16** | fail to reject H0₂ |
| Executed sweep | **27 configs / 2,700 inferences** | 9 models × 3 scenarios × 1 strategy, N=100 |
| Energy / carbon | **≈68 Wh / ≈11.75 gCO₂eq** | full 27-run sweep |

> **Source:** PUMA project documentation + reconciliation verdict · **Confidence:** verified-at-primary-source

## Related
- [[HY-H1-Triage]]
- [[HY-H2-Estimation]]
- [[RES-PUMA-017]]
- [[RES-PUMA-019]]
