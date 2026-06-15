---
id: PN-MEM-037
title: "PN — Reproducibility uses five mechanisms: fixed seed=42 propagated everywhere,…"
type: permanent-note
status: draft
source_unit: MEM-037
confidence: verified-at-primary-source
tags: [permanent-note, puma, methodology, reproducibility]
created: 2026-06-15
---

# PN — Reproducibility uses five mechanisms: fixed seed=42 propagated everywhere,…

Reproducibility uses five mechanisms: fixed seed=42 propagated everywhere, temperature=0.0 on all inferences, response caching by SHA-256 prompt hash, pinned software/model versions, and persisted run metadata (timestamp + run-spec hash) — achieving bit-exact warm-state reproducibility.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `MEM-037` · **Confidence:** verified-at-primary-source

## Related
- [[RES-MEM-054]]
