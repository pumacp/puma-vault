---
id: RES-PUMA-043
title: "RES — Gender-prefix robustness testing on triage found qwen2.5:3b shifts…"
type: result-note
status: draft
source_unit: PUMA-043
confidence: repo-backed
tags: [result-note, puma, engine, triage]
created: 2026-06-15
---

# RES — Gender-prefix robustness testing on triage found qwen2.5:3b shifts…

Gender-prefix robustness testing on triage found qwen2.5:3b shifts accuracy only 3-4pp under a gendered name prefix while qwen2.5:1.5b shifts 11-12pp (~25% of predictions flip); effects below ~5pp are not reliably distinguishable from noise at N=100.

> **Source:** puma docs/results/bias_evaluation.md · **Traceability:** corpus unit `PUMA-043` · **Confidence:** repo-backed

## Related
- [[PN-PUMA-028]]
