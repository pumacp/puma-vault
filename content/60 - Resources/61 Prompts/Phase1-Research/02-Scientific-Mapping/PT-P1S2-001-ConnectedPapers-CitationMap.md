---
id: PT-P1S2-001
title: "Connected Papers — Citation Map for PUMA"
type: prompt-note
tool: connected-papers
phase: Phase1-Research
step: "02-Scientific-Mapping"
methodology: [Citation-Network, Bibliometrics]
tags: [prompt, connected-papers, citation-map, scientific-mapping, puma]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 🗺️ Connected Papers — Citation Map for PUMA

**Tool**: Connected Papers (https://www.connectedpapers.com)
**Phase**: Phase 1 — Research
**Step**: 02 — Scientific Mapping
**Methodology**: Citation Network Analysis

---

## Prompt A — Benchmark Foundation Map

```
Map the citation neighborhood around the seed paper on LLM agents and project management automation. Focus on: prior works that established the foundational methods, derivative works that applied them to PM, and conceptual neighbors using different terminology for the same problems. Identify the most connected hub papers.
```

**Seed**: Assalaarachchi (2026) arXiv:2601.16392 OR Cinkusz et al. (2025) arXiv:2508.16678

## Prompt B — Methodological Contrast Analysis

```
Show papers that pursue similar goals (issue triage, effort estimation, PM automation) with different methods: classical ML approaches (SVM, Random Forest) versus LLM-based agents versus multi-agent orchestration. Highlight papers that provide direct empirical comparisons between these approaches.
```

## Prompt C — Evaluation Lineage Tracing

```
Trace the evaluation lineage around this seed paper. Highlight works that introduced benchmarks, datasets, or reproducible experimental protocols usable in PUMA. Focus on: what datasets were used, what metrics reported, and whether artifacts were made publicly available.
```

## Prompt D — Governance Branch Discovery

```
Identify papers in this citation map most relevant to: governance of agentic systems, human-in-the-loop mechanisms, traceability requirements, hallucination detection in PM metrics, and safe deployment in enterprise project environments.
```

---

## Three-Step Usage Protocol

1. **Input**: Paste the DOI or exact title of a seed paper
2. **Explore**: Identify hub papers (highest edge count), prior/derivative split
3. **Export**: Download the cluster visualization → save as PNG for PUMA thesis figures
4. **Import**: Export BibTeX → Zotero collection `PUMA-Literature-2026`

---

## PUMA Relevance

Connected Papers revealed the cluster structure of the PM+AI field for PUMA: a foundational cluster (ReAct, MetaGPT, AutoGen), an applied PM cluster (Assalaarachchi, Cinkusz), and an evaluation methodology cluster (SWE-bench, MASAI). This three-cluster structure organizes PUMA's Section 2 state-of-the-art.

---

## Related Notes

- [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]
- [[PT-P1S2-002-LitMaps-TemporalEvolution]]
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Yao-2022-ReAct]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
- [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]]
