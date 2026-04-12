---
id: MOC-Literature-Review
title: "📖 MOC — Literature Review (SLR)"
type: moc
tags: [moc, literature, slr, prisma, state-of-art]
created: 2026-03-01
updated: 2026-03-01
---

# 📖 MOC — Literature Review (SLR)

> **Systematic Literature Review for PUMA** following PRISMA 2020 + PRISMA-DFLLM + PRISMA-trAIce protocols.
> Target: ≥ 40 papers · Period: 2022–2026 · SLR Workflow: [[60 - Resources/62 Workflows/WF-SLR-Pipeline]]

---

## 📊 PRISMA Status

| Stage | Count | Progress |
|-------|-------|---------|
| Identified | ~[N] | ⏳ |
| Screened (title/abstract) | ~[N] | ⏳ |
| Eligible (full text) | ~[N] | ⏳ |
| **Included** | **≥40** | ⏳ |

Full log: [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]

---

## 🗂️ Papers by Topic

### Issue Triage & Priority Classification

| Paper | Year | Dataset | Metric | Notes |
|-------|------|---------|--------|-------|
| [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] | 2015 | Jira SR | — | Dataset paper (Ortu et al.) |
| [[20 - Literature/20.1 Papers/LN-Manzoor2025-AI-PM]] | 2025 | Multiple | Various | Survey |
| *[Add papers here as SLR progresses]* | | | | |

### Effort Estimation & Story Points

| Paper | Year | Dataset | Best MAE | Notes |
|-------|------|---------|----------|-------|
| [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] | 2022 | TAWOS | — | Dataset paper (Tawosi et al.) |
| [[20 - Literature/20.1 Papers/LN-KeyPapers-CoGEE-Angermeir-Flyvbjerg]] | 2024 | TAWOS | ~1.9 SP | State of art (GPT-4) — CoGEE section |
| [[20 - Literature/20.1 Papers/LN-Yonathan2025-LocalLLMs]] | 2025 | TAWOS | ~3.2 SP | Local LLMs |
| *[Add papers here]* | | | | |

### LLM Benchmarks in Software Engineering

| Paper | Year | Tasks | Reproducible? | Notes |
|-------|------|-------|--------------|-------|
| [[20 - Literature/20.1 Papers/LN-Angermeir-2025-Reproducibility]] | 2025 | SE general | Meta-study | Reproducibility gap |
| [[20 - Literature/20.1 Papers/LN-Berti2024-PM-LLM-Benchmark]] | 2024 | Process mining | Partial | PM+LLM |
| *[Add papers here]* | | | | |

### Prompting Strategies

| Paper | Year | Strategy | Task | Key finding |
|-------|------|---------|------|------------|
| [[20 - Literature/20.1 Papers/LN-Wei2022-CoT]] | 2022 | CoT | Reasoning | CoT helps ≥100B models |
| [[20 - Literature/20.1 Papers/LN-Brown2020-GPT3-FewShot]] | 2020 | Few-shot | Various | ICL discovery |
| [[20 - Literature/20.1 Papers/LN-Calikli-2025-RequestFormats]] | 2025 | Multiple | Estimation | Non-monotonic effect |
| *[Add papers here]* | | | | |

### Research Methodology

| Paper | Year | Method | Use in PUMA |
|-------|------|--------|------------|
| [[20 - Literature/20.1 Papers/LN-Hevner2004-DSR]] | 2004 | DSR | Paradigm |
| [[20 - Literature/20.1 Papers/LN-Peffers2007-DSRM]] | 2007 | DSRM | Process |
| [[20 - Literature/20.1 Papers/LN-Kitchenham2007-SLR]] | 2007 | SLR | Protocol |
| [[20 - Literature/20.1 Papers/LN-Page2021-PRISMA2020]] | 2021 | PRISMA | Reporting |
| [[20 - Literature/20.1 Papers/LN-Wohlin2012-Experimentation]] | 2012 | Experiments | Design |

---

## 🔍 Research Gap Summary

Based on SLR, three gaps define PUMA's contribution:

| Gap | Evidence | PUMA Response |
|-----|---------|--------------|
| **Reproducibility** | 5/18 artefacts executable (Angermeir et al., 2025) | 100% local, seed=42, MIT |
| **Prompting comparison** | No systematic PM prompting study found | 4 strategies × 2 models |
| **Carbon footprint** | 0/N PM+LLM papers measure CO₂ | CodeCarbon per condition |

---

## 📌 Comparison Table (Extract)

```dataview
TABLE authors, year, datasets_used, metrics, reproducible, puma_relevance
FROM "20 - Literature/20.1 Papers"
WHERE type = "literature-note" AND prisma_decision = "include"
SORT year DESC
```

---

## 🔗 Related Notes

[[60 - Resources/62 Workflows/WF-SLR-Pipeline]] | [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]
[[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-Ch2-Ch3-Ch4-Ch5]]
