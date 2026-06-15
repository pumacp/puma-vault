---
id: PN-ANXHN-008
title: "PN — Backup discipline: the puma_data volume (SQLite DB of all results) is the…"
type: permanent-note
status: draft
source_unit: ANXHN-008
confidence: verified-at-primary-source
tags: [permanent-note, puma, reference, sqlite, dataset, integrity]
created: 2026-06-15
---

# PN — Backup discipline: the puma_data volume (SQLite DB of all results) is the…

Backup discipline: the puma_data volume (SQLite DB of all results) is the only irrecoverable artifact; back it up with puma backup-db (or tar) and restore via puma restore-db followed by PRAGMA integrity_check; models are re-downloadable, code in Git, datasets regenerable.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `ANXHN-008` · **Confidence:** verified-at-primary-source

## Related
- [[ARCH-PUMA-010]]
