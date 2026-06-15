---
id: REPO-SAT-018
title: "REPO — D23 algorithmic divergence: the verifier canonicalises predictions by…"
type: artifact-note
status: draft
source_unit: SAT-018
confidence: repo-backed
tags: [artifact-note, puma, community, verifier]
created: 2026-06-15
---

# REPO — D23 algorithmic divergence: the verifier canonicalises predictions by…

D23 algorithmic divergence: the verifier canonicalises predictions by sorting on instance_id and emitting compact {instance_id,prediction} JSON before hashing, whereas the submission docs declare the hash over a canonical CSV — the two will not agree on the same predictions.

> **Source:** puma-verifier app.py; puma-community docs/submission-format.md · **Traceability:** corpus unit `SAT-018` · **Confidence:** repo-backed

## Related
- [[DEBT-PUMA-053]]
- [[DEBT-ANXHN-031]]
