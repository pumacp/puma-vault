---
id: PT-P1S1-007
title: "Research Rabbit — Seed Expansion for PUMA Corpus"
type: prompt-note
tool: research-rabbit
phase: Phase1-Research
step: "01-Literature-Exploration"
methodology: [SLR, Citation-Network]
tags: [prompt, research-rabbit, citation-network, snowballing, puma]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 🐇 Research Rabbit — Seed Expansion for PUMA Corpus

**Tool**: Research Rabbit (https://app.researchrabbit.ai)
**Phase**: Phase 1 — Research
**Step**: 01 — Literature Exploration
**Methodology**: Citation Snowballing + SLR

---

## Seed Papers (Primary Seeds for PUMA)

Use these verified papers as seeds in Research Rabbit:

1. **Assalaarachchi (2026)** — Agentic SPM (arXiv:2601.16392)
2. **Cinkusz et al. (2025)** — Cognitive Agents Agile PM (arXiv:2508.16678)
3. **Yao et al. (2022)** — ReAct (arXiv:2210.03629)
4. **Jimenez et al. (2023)** — SWE-bench (arXiv:2310.06770)
5. **MASAI (2024)** — Arora et al. (arXiv:2406.11638)

---

## Prompt A — Focused Seed Expansion

```
Build a focused research graph around AI agents for software project management, with emphasis on: issue triage, effort estimation, risk prediction, PMO automation, and evaluation benchmarks. Prioritize 2023–2026 papers, empirical studies, and reproducible frameworks. Use "Find Similar Papers" and "Who Cites This?" for all seed papers.
```

## Prompt B — Gap Discovery via Graph

```
Identify underexplored clusters in the AI agents + project management literature graph. Focus on: governance mechanisms, human-in-the-loop validation, observability tools, sustainability (carbon footprint), and reproducibility protocols. Return papers connecting weakly represented subtopics to benchmark design.
```

## Prompt C — Core Reading Set Prioritization

```
From the expanded collection, identify the 20 most central papers for a PUMA literature review. Separate into: (1) benchmark papers, (2) multi-agent orchestration papers, (3) project management applications, (4) evaluation methodology papers. Provide brief justification for each selection.
```

## Prompt D — MOC-Oriented Clustering

```
Cluster the graph into thematic groups suitable for a Map of Content: literature exploration, scientific mapping, extraction methods, synthesis frameworks, hypothesis design, experiment design, and critical review. Export as BibTeX for Zotero import.
```

---

## Workflow Integration

1. Add seed papers → generate "Similar works" and "Cited by"
2. Export graph as BibTeX/CSV → import to Zotero collection `PUMA-Literature-2026`
3. Tag results: `#multi-agent`, `#triage`, `#estimation`, `#benchmark`, `#governance`
4. Forward to PRISMA screening: [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]

---

## PUMA Relevance

Research Rabbit revealed 12 papers that keyword search missed in the initial PUMA SLR, including several Cinkusz 2025 co-citations and Assalaarachchi 2026 predecessors. Critical for PUMA's bibliometric completeness.

---

## Related Notes

- [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]
- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Assalaarachchi-2026-AgenticSPM]]
- [[60 - Resources/65 Bibliographies/BIB-Supplement-v3]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
- [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]]
