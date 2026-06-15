---
id: PN-ANXHN-009
title: "PN — SQLite maintenance SOPs: integrity via PRAGMA integrity_check, space…"
type: permanent-note
status: draft
source_unit: ANXHN-009
confidence: verified-at-primary-source
tags: [permanent-note, puma, reference, sqlite, integrity]
created: 2026-06-15
---

# PN — SQLite maintenance SOPs: integrity via PRAGMA integrity_check, space…

SQLite maintenance SOPs: integrity via PRAGMA integrity_check, space recovery via VACUUM, WAL consolidation via PRAGMA wal_checkpoint(FULL); schema changes are Alembic-versioned and applied with puma migrate up; the DB is a bi-temporal write-once schema enabling audit of which experiment ran when.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `ANXHN-009` · **Confidence:** verified-at-primary-source

## Related
- [[ARCH-PUMA-010]]
