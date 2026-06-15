---
id: REPO-SAT-017
title: "REPO — The PUMA Verifier is a Gradio Space doing integrity-only verification: it…"
type: artifact-note
status: draft
source_unit: SAT-017
confidence: repo-backed
tags: [artifact-note, puma, community, verifier, integrity]
created: 2026-06-15
---

# REPO — The PUMA Verifier is a Gradio Space doing integrity-only verification: it…

The PUMA Verifier is a Gradio Space doing integrity-only verification: it fetches a submission's raw_predictions_url JSONL (50 MB cap, 30 s timeout), recomputes SHA-256 over a canonical form, and returns verified/mismatch/error/not_applicable; it never re-executes any model.

> **Source:** puma-verifier README.md; app.py · **Traceability:** corpus unit `SAT-017` · **Confidence:** repo-backed

## Related
- [[REPO-SAT-018]]
- [[ARCH-ANXAG-035]]
