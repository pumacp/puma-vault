---
id: RES-PUMA-025
title: "RES — A parser x hardware incompatibility can waste more compute than the useful…"
type: result-note
status: draft
source_unit: PUMA-025
confidence: repo-backed
tags: [result-note, puma, engine, sweep]
created: 2026-06-15
---

# RES — A parser x hardware incompatibility can waste more compute than the useful…

A parser x hardware incompatibility can waste more compute than the useful experiment: gemma4:e2b runs consumed 60.5% of the 27-run sweep's CO2 (7.11 g of 11.75 g) at parse_failure_rate >= 0.98 with no usable output, justifying per-model 5-instance smoke tests before any full sweep.

> **Source:** puma docs/results/phase_b_analysis.md · **Traceability:** corpus unit `PUMA-025` · **Confidence:** repo-backed

## Related
- [[PN-PUMA-013]]
- [[RES-MEM-049]]
