---
id: HY-H2-Estimation
title: "HY — H2: story-point estimation vs historical-mean baseline"
type: hypothesis-note
status: draft
source_unit: MEM-018,MEM-047
confidence: verified-at-primary-source
tags: [hypothesis, puma, estimation, story-points, wilcoxon]
created: 2026-06-15
---

# HY — H2: story-point estimation vs historical-mean baseline

**H0₂:** no example-enriched configuration beats the historical-mean baseline MAE. **H1₂:** at least one configuration achieves a statistically significant MAE reduction ≥ 0.5 story points.

**Result — H0₂ NOT REJECTED.** The best configuration (qwen2.5:7b, contextual-anchoring) reaches **MAE = 1.86 SP** versus a **baseline MAE = 2.03 SP** — a 0.17 SP reduction below the 0.5 SP relevance threshold; **Wilcoxon p = 0.104, r = −0.16 (N=100)**. The confidence interval includes zero.

**Important distinction:** the baseline predictor's *constant value* is **4.04 SP** (the historical mean story point), which is **not a MAE** — the baseline's *error* is the 2.03 SP figure used in the test. On long-tailed story-point data, a constant-mean predictor is a surprisingly strong MAE baseline.

> **Source:** PUMA project documentation · **Traceability:** corpus units `MEM-018`, `MEM-047`, `PUMA-022` · reconciliation verdict G2 · **Confidence:** verified-at-primary-source

## Related
- [[RES-PUMA-019]]
- [[PN-PUMA-022]]
- [[HY-H1-Triage]]
