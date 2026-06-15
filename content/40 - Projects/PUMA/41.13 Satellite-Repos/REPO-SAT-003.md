---
id: REPO-SAT-003
title: "REPO — Submission flow: a local run produces JSON; puma share-results opens a PR…"
type: artifact-note
status: draft
source_unit: SAT-003
confidence: repo-backed
tags: [artifact-note, puma, community]
created: 2026-06-15
---

# REPO — Submission flow: a local run produces JSON; puma share-results opens a PR…

Submission flow: a local run produces JSON; puma share-results opens a PR from the contributor's fork; CI validates schema + filename; valid PRs get a valid label and squash-auto-merge; invalid PRs get an invalid label and a sticky comment — fully deterministic, no human gate.

> **Source:** puma-community README.md; wiki/Validation-Process.md · **Traceability:** corpus unit `SAT-003` · **Confidence:** repo-backed

## Related
- [[DEC-PUMA-047]]
