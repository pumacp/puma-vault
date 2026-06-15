---
id: REPO-SAT-005
title: "REPO — The canonical PII scan runs client-side inside puma share-results before…"
type: artifact-note
status: draft
source_unit: SAT-005
confidence: repo-backed
tags: [artifact-note, puma, community]
created: 2026-06-15
---

# REPO — The canonical PII scan runs client-side inside puma share-results before…

The canonical PII scan runs client-side inside puma share-results before payload build (emails, phones, IPs, absolute paths, GitHub PATs, AWS keys) and refuses on a match; CI defence-in-depth is intentionally narrow (schema+filename), with a server-side PII scan deferred to v2.

> **Source:** puma-community README.md; docs/maintainer-guide.md · **Traceability:** corpus unit `SAT-005` · **Confidence:** repo-backed

## Related
- [[DEC-PUMA-047]]
