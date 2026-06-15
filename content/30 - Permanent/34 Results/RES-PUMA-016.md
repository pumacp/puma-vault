---
id: RES-PUMA-016
title: "RES — Reproducibility is achieved by design with seed=42 and temperature=0.0…"
type: result-note
status: draft
source_unit: PUMA-016
confidence: repo-backed
tags: [result-note, puma, engine, reproducibility, metrics]
created: 2026-06-15
---

# RES — Reproducibility is achieved by design with seed=42 and temperature=0.0…

Reproducibility is achieved by design with seed=42 and temperature=0.0 (greedy decoding); under greedy decoding the RNG is never consulted, so classification metrics are bit-identical across different seed values.

> **Source:** puma docs/results/multi_seed_baseline.md · **Traceability:** corpus unit `PUMA-016` · **Confidence:** repo-backed

## Related
- [[PN-PUMA-008]]
- [[RES-PUMA-020]]
