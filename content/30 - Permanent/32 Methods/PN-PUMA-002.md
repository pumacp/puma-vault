---
id: PN-PUMA-002
title: "PN — All model execution is delegated to a local Ollama daemon over HTTP at the…"
type: permanent-note
status: draft
source_unit: PUMA-002
confidence: repo-backed
tags: [permanent-note, puma, engine, ollama]
created: 2026-06-15
---

# PN — All model execution is delegated to a local Ollama daemon over HTTP at the…

All model execution is delegated to a local Ollama daemon over HTTP at the /api/generate endpoint; the client always sends temperature, seed, and num_predict options and retries 3x with exponential backoff.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `PUMA-002` · **Confidence:** repo-backed

## Related
- [[PN-PUMA-001]]
- [[RES-PUMA-016]]
