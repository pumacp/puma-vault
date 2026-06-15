---
id: RES-PUMA-037
title: "RES — Cross-architecture (x86_64 vs arm64 Apple Silicon) bit-exactness of F1/MAE…"
type: result-note
status: draft
source_unit: PUMA-037
confidence: repo-backed
tags: [result-note, puma, engine, mae, architecture]
created: 2026-06-15
---

# RES — Cross-architecture (x86_64 vs arm64 Apple Silicon) bit-exactness of F1/MAE…

Cross-architecture (x86_64 vs arm64 Apple Silicon) bit-exactness of F1/MAE is theoretically expected under T=0.0 + seed=42 + same model digest (Q4_K_M greedy decoding), with logprobs differing only by FP rounding ~1e-5..1e-3; this remains empirically unverified for lack of Apple-Silicon hardware.

> **Source:** puma docs/CROSS_ARCH_REPRODUCIBILITY.md · **Traceability:** corpus unit `PUMA-037` · **Confidence:** repo-backed

## Related
- [[RES-PUMA-016]]
