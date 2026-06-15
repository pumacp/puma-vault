---
id: DEC-PUMA-011
title: "DEC — Metrics are stored in a single flat (run_id, metric_name, value) table…"
type: decision-note
status: draft
source_unit: PUMA-011
confidence: repo-backed
tags: [decision-note, puma, engine, metrics]
created: 2026-06-15
---

# DEC — Metrics are stored in a single flat (run_id, metric_name, value) table…

Metrics are stored in a single flat (run_id, metric_name, value) table with dot-separated keys for nested metrics, so new metrics need no schema change and runs can be pivoted/compared directly.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `PUMA-011` · **Confidence:** repo-backed

## Related
- [[ARCH-PUMA-010]]
