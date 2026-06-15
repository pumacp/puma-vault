---
id: REPO-SAT-004
title: "REPO — Each submission carries predictions_summary_hash, a deterministic…"
type: artifact-note
status: draft
source_unit: SAT-004
confidence: repo-backed
tags: [artifact-note, puma, community, metrics]
created: 2026-06-15
---

# REPO — Each submission carries predictions_summary_hash, a deterministic…

Each submission carries predictions_summary_hash, a deterministic lowercase SHA-256 over a canonical serialisation of predictions joined on instance IDs; the pipeline recomputes and rejects mismatches, so published metrics cannot be silently altered from their predictions.

> **Source:** puma-community README.md; wiki/Anonymity-And-Privacy.md · **Traceability:** corpus unit `SAT-004` · **Confidence:** repo-backed

## Related
- [[PN-PUMA-038]]
- [[REPO-SAT-018]]
