---
id: PN-PUMA-013
title: "PN — Failed response parses are recorded as None, excluded from metric…"
type: permanent-note
status: draft
source_unit: PUMA-013
confidence: repo-backed
tags: [permanent-note, puma, engine]
created: 2026-06-15
---

# PN — Failed response parses are recorded as None, excluded from metric…

Failed response parses are recorded as None, excluded from metric computation, and counted in a parse_failure_rate metric rather than polluting the label space with an "unknown" class.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `PUMA-013` · **Confidence:** repo-backed

## Related
- [[ARCH-PUMA-004]]
- [[PN-ANXAG-049]]
