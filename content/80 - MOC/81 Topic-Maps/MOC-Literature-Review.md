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
| [[20 - Literature/20.1 Papers/AIOps-DevOps/LN-Chen-2025-AIOpsLab]] | 2025 | AIOps | F1 | AIOps benchmark lab |
| [[20 - Literature/20.1 Papers/Agent-Architectures/LN-MAGIS-2024-GitHubIssues]] | 2024 | GitHub | F1 | GitHub issue resolution via MAS |
| [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Arora-2024-MASAI]] | 2024 | SWE-bench | Resolve% | Modular agent for SE |
| [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Wang-2024-OpenHands]] | 2024 | SWE-bench | Resolve% | OpenHands coding agent |
| 20 - Literature/20.1 Papers/LN-Manzoor2025-AI-PM | 2025 | Multiple | Various | Survey (note not yet created) |
| *[Add papers here as SLR progresses]* | | | | |

### Effort Estimation & Story Points

| Paper | Year | Dataset | Best MAE | Notes |
|-------|------|---------|----------|-------|
| [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] | 2022 | TAWOS | — | Dataset paper (Tawosi et al.) |
| [[20 - Literature/20.1 Papers/LN-KeyPapers-CoGEE-Angermeir-Flyvbjerg]] | 2024 | TAWOS | ~1.9 SP | State of art (GPT-4) — CoGEE section |
| [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Assalaarachchi-2026-AgenticSPM]] | 2026 | Various | — | Agentic SPM vision |
| [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Cinkusz-2025-CognitiveAgentsAgilePM]] | 2025 | Various | — | Cognitive agents in Agile PM |
| [[20 - Literature/20.1 Papers/Scheduling-MAS/LN-Li-2018-MultiProjectScheduling]] | 2018 | MRCPSP | — | Multi-project scheduling |
| 20 - Literature/20.1 Papers/LN-Yonathan2025-LocalLLMs | 2025 | TAWOS | ~3.2 SP | Local LLMs (note not yet created) |
| *[Add papers here]* | | | | |

### LLM Benchmarks in Software Engineering

| Paper | Year | Tasks | Reproducible? | Notes |
|-------|------|-------|--------------|-------|
| [[20 - Literature/20.1 Papers/LN-Angermeir-2025-Reproducibility]] | 2025 | SE general | Meta-study | Reproducibility gap |
| [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Jimenez-2023-SWEbench]] | 2023 | SWE-bench | Partial | SE coding benchmark |
| [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Mialon-2023-GAIA]] | 2023 | GAIA | Partial | General AI assistant benchmark |
| [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Hong-2023-MetaGPT]] | 2023 | HumanEval+ | Yes | Multi-role SE agents |
| 20 - Literature/20.1 Papers/LN-Berti2024-PM-LLM-Benchmark | 2024 | Process mining | Partial | PM+LLM (note not yet created) |
| *[Add papers here]* | | | | |

### Prompting Strategies

| Paper | Year | Strategy | Task | Key finding |
|-------|------|---------|------|------------|
| [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Yao-2022-ReAct]] | 2022 | ReAct | Reasoning+Act | Combines reasoning with action |
| [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Zelikman-2024-QuietSTaR]] | 2024 | Chain-of-thought | Reasoning | Implicit CoT rationales |
| [[20 - Literature/20.1 Papers/LN-Calikli-2025-RequestFormats]] | 2025 | Multiple | Estimation | Non-monotonic effect |
| 20 - Literature/20.1 Papers/LN-Wei2022-CoT | 2022 | CoT | Reasoning | CoT helps ≥100B models (note not yet created) |
| 20 - Literature/20.1 Papers/LN-Brown2020-GPT3-FewShot | 2020 | Few-shot | Various | ICL discovery (note not yet created) |
| *[Add papers here]* | | | | |

### Research Methodology

| Paper | Year | Method | Use in PUMA |
|-------|------|--------|------------|
| [[20 - Literature/20.1 Papers/Research-Methods/LN-MITAILab-WP316-HowToDoResearch]] | 1988 | AI Lab method | Active reading + Q1/Q2/Q3 |
| [[20 - Literature/20.1 Papers/LN-Spichkova-2025-CognitiveAgents]] | 2025 | Cognitive agents | Agent design patterns |
| 20 - Literature/20.1 Papers/LN-Hevner2004-DSR | 2004 | DSR | Paradigm (note not yet created) |
| 20 - Literature/20.1 Papers/LN-Peffers2007-DSRM | 2007 | DSRM | Process (note not yet created) |
| 20 - Literature/20.1 Papers/LN-Kitchenham2007-SLR | 2007 | SLR | Protocol (note not yet created) |
| 20 - Literature/20.1 Papers/LN-Page2021-PRISMA2020 | 2021 | PRISMA | Reporting (note not yet created) |
| 20 - Literature/20.1 Papers/LN-Wohlin2012-Experimentation | 2012 | Experiments | Design (note not yet created) |

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
