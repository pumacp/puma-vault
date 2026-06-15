---
id: PN-PUMA-024
title: "PN — Model scaling is non-monotonic on these PMO tasks: in 4 of 6 (family x…"
type: permanent-note
status: draft
source_unit: PUMA-024
confidence: repo-backed
tags: [permanent-note, puma, engine, triage, local-llm]
created: 2026-06-15
---

# PN — Model scaling is non-monotonic on these PMO tasks: in 4 of 6 (family x…

Model scaling is non-monotonic on these PMO tasks: in 4 of 6 (family x scenario) cells larger models did not improve results (e.g. gemma3:1b beats gemma3:12b on prioritization 0.87 vs 0.57; qwen2.5:3b beats 7b on triage), supporting that small local LLMs are competitive on narrow domain tasks.

> **Source:** puma docs/results/phase_b_analysis.md · **Traceability:** corpus unit `PUMA-024` · **Confidence:** repo-backed

## Related
- [[RES-PUMA-023]]
- [[RES-MEM-043]]
