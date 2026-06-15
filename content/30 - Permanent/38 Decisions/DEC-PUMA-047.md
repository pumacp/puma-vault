---
id: DEC-PUMA-047
title: "DEC — puma share-results is dual-mode: --dry-run validates locally, runs a PII…"
type: decision-note
status: draft
source_unit: PUMA-047
confidence: repo-backed
tags: [decision-note, puma, engine, sweep, integrity]
created: 2026-06-15
---

# DEC — puma share-results is dual-mode: --dry-run validates locally, runs a PII…

puma share-results is dual-mode: --dry-run validates locally, runs a PII sweep, computes the integrity hash and writes the payload with zero network access; default mode additionally opens a GitHub PR using a locally-stored PAT (~/.config/puma/credentials.toml, mode 0600).

> **Source:** PUMA project documentation · **Traceability:** corpus unit `PUMA-047` · **Confidence:** repo-backed

## Related
- [[DEC-PUMA-046]]
- [[PN-PUMA-038]]
