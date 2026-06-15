---
id: PN-PUMA-009
title: "PN — An optional inference cache stores (model, prompt_hash, temperature, seed)…"
type: permanent-note
status: draft
source_unit: PUMA-009
confidence: repo-backed
tags: [permanent-note, puma, engine, ollama, sqlite]
created: 2026-06-15
---

# PN — An optional inference cache stores (model, prompt_hash, temperature, seed)…

An optional inference cache stores (model, prompt_hash, temperature, seed) -> response in a local SQLite file; on a cache hit the Ollama call is skipped entirely, keeping repeated runs deterministic when the user opts in.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `PUMA-009` · **Confidence:** repo-backed

## Related
- [[PN-PUMA-001]]
- [[RES-PUMA-016]]
