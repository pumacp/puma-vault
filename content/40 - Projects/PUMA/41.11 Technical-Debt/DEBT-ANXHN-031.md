---
id: DEBT-ANXHN-031
title: "DEBT — D23 (deferred): the Verifier and client hash predictions incompatibly"
type: decision-note
status: draft
source_unit: ANXHN-031
confidence: verified-at-primary-source
tags: [decision-note, puma, reference, verifier, sprint]
created: 2026-06-15
---

# DEBT — D23 (deferred): the Verifier and client hash predictions incompatibly

D23 (deferred): the Verifier and client hash predictions incompatibly — client hashes a 4-field CSV (instance_id, predicted_label, predicted_value, prompt_hash) -> plain SHA-256, the Verifier hashes a 2-field JSONL (instance_id, prediction) -> sha256:-prefixed; deferred to a post-v4.0.0 schema-decision sprint.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `ANXHN-031` · **Confidence:** verified-at-primary-source

## Related
- [[REPO-SAT-018]]
- [[DEBT-PUMA-053]]
