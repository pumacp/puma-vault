---
id: DEC-PUMA-039
title: "DEC — A triage run between an Ollama restart and an estimation validation…"
type: decision-note
status: draft
source_unit: PUMA-039
confidence: repo-backed
tags: [decision-note, puma, engine, triage, estimation, mae, ollama]
created: 2026-06-15
---

# DEC — A triage run between an Ollama restart and an estimation validation…

A triage run between an Ollama restart and an estimation validation perturbs KV-cache state and shifts estimation MAE by ~+0.6 SP; PUMA's protocol therefore restarts Ollama between cross-scenario validations to keep canonical baselines comparable.

> **Source:** puma docs/baseline_references.md · **Traceability:** corpus unit `PUMA-039` · **Confidence:** repo-backed

## Related
- [[RES-PUMA-018]]
