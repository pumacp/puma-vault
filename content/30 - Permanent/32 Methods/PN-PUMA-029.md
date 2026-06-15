---
id: PN-PUMA-029
title: "PN — Calibration metrics (ECE over 10 bins, MCE, Brier) are derived from…"
type: permanent-note
status: draft
source_unit: PUMA-029
confidence: repo-backed
tags: [permanent-note, puma, engine, calibration, ollama, metrics]
created: 2026-06-15
---

# PN — Calibration metrics (ECE over 10 bins, MCE, Brier) are derived from…

Calibration metrics (ECE over 10 bins, MCE, Brier) are derived from per-token logprobs via the Ollama logprobs API (requires logprobs:true and Ollama >= 0.12.11); class confidence uses a numerically stable softmax over first-token candidates.

> **Source:** puma docs/metrics_reference.md · **Traceability:** corpus unit `PUMA-029` · **Confidence:** repo-backed

## Related
- [[PN-PUMA-028]]
