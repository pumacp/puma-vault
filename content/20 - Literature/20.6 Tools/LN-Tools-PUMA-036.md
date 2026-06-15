---
id: LN-Tools-PUMA-036
title: "LN-Tools — Reproducibility is enforced by puma validate-baseline, which re-runs a…"
type: literature-tools
status: draft
source_unit: PUMA-036
confidence: repo-backed
tags: [literature-tools, puma, engine, mae, reproducibility, baseline, release]
created: 2026-06-15
---

# LN-Tools — Reproducibility is enforced by puma validate-baseline, which re-runs a…

Reproducibility is enforced by puma validate-baseline, which re-runs a canonical spec and exits non-zero if F1/MAE drift outside tolerance (+/-0.01 F1, +/-0.05 MAE), turning determinism into a release-blocking gate.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `PUMA-036` · **Confidence:** repo-backed

## Related
- [[RES-PUMA-017]]
- [[RES-PUMA-018]]
