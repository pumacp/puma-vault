---
id: PN-PUMA-008
title: "PN — A benchmark run is fully spec-driven: a RunSpec YAML validated with…"
type: permanent-note
status: draft
source_unit: PUMA-008
confidence: repo-backed
tags: [permanent-note, puma, engine, benchmark]
created: 2026-06-15
---

# PN — A benchmark run is fully spec-driven: a RunSpec YAML validated with…

A benchmark run is fully spec-driven: a RunSpec YAML validated with Pydantic v2 plus a fixed seed makes every run reproducible; run_id is {spec.id}__{spec_hash}__{timestamp} where spec_hash is SHA-256[:16] of the RunSpec excluding its description.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `PUMA-008` · **Confidence:** repo-backed

## Related
- [[RES-PUMA-016]]
- [[PN-PUMA-013]]
