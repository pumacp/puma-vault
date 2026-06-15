---
id: DEC-PUMA-012
title: "DEC — SQLite was chosen over Postgres for zero-infrastructure single-file storage"
type: decision-note
status: draft
source_unit: PUMA-012
confidence: repo-backed
tags: [decision-note, puma, engine, sqlite, integrity]
created: 2026-06-15
---

# DEC — SQLite was chosen over Postgres for zero-infrastructure single-file storage

SQLite was chosen over Postgres for zero-infrastructure single-file storage; the Streamlit dashboard is read-only and never writes to the DB, preserving result integrity.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `PUMA-012` · **Confidence:** repo-backed

## Related
- [[ARCH-PUMA-010]]
- [[LN-Tools-PUMA-027]]
