---
id: DEBT-PUMA-056
title: "DEBT — Reasoning-style output is handled by a strip_reasoning helper that removes…"
type: decision-note
status: draft
source_unit: PUMA-056
confidence: repo-backed
tags: [decision-note, puma, engine, triage, ollama]
created: 2026-06-15
---

# DEBT — Reasoning-style output is handled by a strip_reasoning helper that removes…

Reasoning-style output is handled by a strip_reasoning helper that removes <think>...</think> blocks before label extraction (closing debt D17, where deepseek-r1 previously showed ~0.8 parse-failure on triage); per-model timeouts are now threaded from the catalog into the Ollama client (D21).

> **Source:** puma docs/known_debt.md D17,D21 · **Traceability:** corpus unit `PUMA-056` · **Confidence:** repo-backed

## Related
- [[PN-PUMA-013]]
- [[DEBT-PUMA-053]]
