---
id: PT-P1S2-005
title: "Gemini — Broad Corpus Synthesis for PUMA Scientific Mapping"
type: prompt-note
tool: gemini
phase: Phase1-Research
step: "02-Scientific-Mapping"
methodology: [Deep-Research, Multi-Document-Synthesis]
tags: [prompt, gemini, deep-research, corpus-synthesis, puma]
rating: 4
created: 2026-04-07
updated: 2026-04-07
---

# 🌐 Gemini — Broad Corpus Synthesis for PUMA Scientific Mapping

**Tool**: Gemini (Google) — Deep Research mode preferred
**Phase**: Phase 1 — Research
**Step**: 02 — Scientific Mapping

---

## Prompt A — Research Landscape Mapping

```
Using deep research capabilities, synthesize the academic literature on AI agents applied to software project management published between 2023 and 2026. Identify: (1) the five main research streams, (2) the most important datasets used across all streams, (3) the dominant evaluation methods and metrics, (4) unresolved problems and open challenges, (5) the strongest implications for designing a reproducible benchmark for local LLM agents.
```

## Prompt B — Paper Comparison Matrix

```
Compare the following papers on AI agents for project management across these dimensions: task type, dataset used, model type (local/API/fine-tuned), evaluation metric, prompt strategy (zero-shot/few-shot/CoT), reproducibility level (code available/data available/fully reproducible), limitations, and direct relevance to PUMA. Return as a structured comparison table and include a concise comparative analysis paragraph.
```

## Prompt C — Research Gap Generation

```
From the literature on AI agents for project management (2023–2026), identify and classify research gaps into: (1) explicit gaps stated by authors, (2) implicit gaps from methodological limitations, (3) dataset gaps (no dataset for this combination), (4) evaluation gaps (no established metric), (5) deployment gaps (no study in real-world PM settings). For each gap, explain: why it matters for PUMA, why it has not been solved, and how PUMA addresses it. Rank by scientific importance.
```

## Prompt D — Alternative Futures for PUMA Robustness

```
The AI agents for project management field is evolving rapidly. Project 3–5 years forward: (1) identify 3 research directions that will likely dominate, (2) identify 3 risks that could make PUMA's benchmark design obsolete, (3) identify 3 features PUMA should build in to remain future-proof. For each item, provide the design implication for PUMA's current architecture.
```

---

## PUMA Relevance

Gemini Deep Research can process large document collections simultaneously, making it ideal for the scientific mapping step where 40+ papers need to be compared. The comparison matrix output directly populates PUMA's Section 2 methodology tables.

---

## Related Notes

- [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]]
- [[PT-P1S2-003-Claude-LiteratureSynthesis-RCOIF]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
