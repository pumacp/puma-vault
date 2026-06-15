---
id: PN-ANXHN-050
title: "PN — The maintenance reproducibility guarantee rests on fixed seed=42 and…"
type: permanent-note
status: draft
source_unit: ANXHN-050
confidence: verified-at-primary-source
tags: [permanent-note, puma, reference, reproducibility, carbon, codecarbon, baseline]
created: 2026-06-15
---

# PN — The maintenance reproducibility guarantee rests on fixed seed=42 and…

The maintenance reproducibility guarantee rests on fixed seed=42 and temperature=0.0 with critical pinned dependencies (scikit-learn, numpy, codecarbon, pydantic); puma validate-baseline --strict (tolerance 0.001) is the regression gate, and reproducibility-affecting changes require a MINOR/MAJOR SemVer bump.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `ANXHN-050` · **Confidence:** verified-at-primary-source

## Related
- [[LN-Tools-PUMA-036]]
- [[PN-MEM-037]]
