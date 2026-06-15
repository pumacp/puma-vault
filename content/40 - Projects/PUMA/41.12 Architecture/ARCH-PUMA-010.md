---
id: ARCH-PUMA-010
title: "ARCH — Results persist to a local SQLite database with a bi-temporal schema…"
type: artifact-note
status: draft
source_unit: PUMA-010
confidence: repo-backed
tags: [artifact-note, puma, engine, sqlite, metrics]
created: 2026-06-15
---

# ARCH — Results persist to a local SQLite database with a bi-temporal schema…

Results persist to a local SQLite database with a bi-temporal schema across six tables (runs, instances, predictions, metrics, emissions, profile_snapshots) via SQLAlchemy 2.0 + Alembic; no row is mutated post-write, giving an auditable trail.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `PUMA-010` · **Confidence:** repo-backed

## Related
- [[DEC-PUMA-011]]
