---
id: PN-ANXHN-004
title: "PN — Run the canonical baseline via puma run…"
type: permanent-note
status: draft
source_unit: ANXHN-004
confidence: verified-at-primary-source
tags: [permanent-note, puma, reference, triage, f1-macro, reproducibility, jira]
created: 2026-06-15
---

# PN — Run the canonical baseline via puma run…

Run the canonical baseline via puma run specs/run_specs/baseline_canonical.yaml (qwen2.5:3b, triage_jira, contextual_anchoring, seed=42, T=0.0); a correct system reports F1-macro 0.5867 (acceptable 0.576-0.597), and puma validate-baseline checks reproducibility automatically.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `ANXHN-004` · **Confidence:** verified-at-primary-source

## Related
- [[RES-PUMA-017]]
- [[LN-Tools-PUMA-036]]
