---
id: DEBT-ANXHN-035
title: "DEBT — D29 (deferred to Horizon H5): the estimation prediction-hash is…"
type: decision-note
status: draft
source_unit: ANXHN-035
confidence: verified-at-primary-source
tags: [decision-note, puma, reference, estimation, mae]
created: 2026-06-15
---

# DEBT — D29 (deferred to Horizon H5): the estimation prediction-hash is…

D29 (deferred to Horizon H5): the estimation prediction-hash is non-deterministic run-to-run (three distinct hashes over byte-identical code) although MAE is bit-exact, because parsed labels hash as raw strings ("5" vs "5.0"); fix is to canonicalise parsed_label numerically before hashing, coordinated with the D23 decision.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `ANXHN-035` · **Confidence:** verified-at-primary-source

## Related
- [[DEBT-ANXHN-031]]
