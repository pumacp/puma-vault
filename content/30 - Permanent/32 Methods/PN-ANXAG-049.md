---
id: PN-ANXAG-049
title: "PN — The canonical parser enforces a three-level policy (strict match ->…"
type: permanent-note
status: draft
source_unit: ANXAG-049
confidence: verified-at-primary-source
tags: [permanent-note, puma, reference]
created: 2026-06-15
---

# PN — The canonical parser enforces a three-level policy (strict match ->…

The canonical parser enforces a three-level policy (strict match -> tolerant normalized match -> None fallback); each None increments parse_failure_rate, deliberately preferring reported failure over heuristic label extraction.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `ANXAG-049` · **Confidence:** verified-at-primary-source

## Related
- [[PN-PUMA-013]]
