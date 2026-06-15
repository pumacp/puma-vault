---
id: PN-PUMA-032
title: "PN — CodeCarbon runs in tracking_mode='machine' so whole-machine accounting…"
type: permanent-note
status: draft
source_unit: PUMA-032
confidence: repo-backed
tags: [permanent-note, puma, engine, carbon, codecarbon, architecture]
created: 2026-06-15
---

# PN — CodeCarbon runs in tracking_mode="machine" so whole-machine accounting…

CodeCarbon runs in tracking_mode="machine" so whole-machine accounting correctly attributes GPU/CPU/RAM energy of the inference host in PUMA's split-container architecture; a process-scoped mode would miss GPU work entirely.

> **Source:** puma docs/sustainability.md · **Traceability:** corpus unit `PUMA-032` · **Confidence:** repo-backed

## Related
- [[PN-PUMA-030]]
