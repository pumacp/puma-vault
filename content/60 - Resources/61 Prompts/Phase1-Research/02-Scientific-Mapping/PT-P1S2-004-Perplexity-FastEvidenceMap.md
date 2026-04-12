---
id: PT-P1S2-004
title: "Perplexity — Fast Evidence Map for PUMA"
type: prompt-note
tool: perplexity
phase: Phase1-Research
step: "02-Scientific-Mapping"
methodology: [Evidence-Mapping]
tags: [prompt, perplexity, evidence-map, scientific-mapping, puma]
rating: 4
created: 2026-04-07
updated: 2026-04-07
---

# ⚡ Perplexity — Fast Evidence Map for PUMA

**Tool**: Perplexity AI (Academic mode preferred)
**Phase**: Phase 1 — Research
**Step**: 02 — Scientific Mapping

---

## Prompt A — State-of-the-Art Scan

```
What is the current state of the art on using large language models and AI agents for software project management tasks such as issue triage, effort estimation, and project risk detection? Focus on empirical studies published between 2023 and 2026. List the most cited papers, their key findings, and which datasets they used.
```

## Prompt B — MIT-Style Evidence Check

```
For the following papers on AI agents in project management: [paste paper list]. Answer these questions for each: (1) How can I use this in PUMA's benchmark design? (2) Does the paper actually do what it claims, or are the results confounded? (3) What if the results don't hold for local LLMs like Llama 3.2 8B on Jira data? Classify each claim as: Strong Evidence / Moderate Evidence / Weak Evidence / Needs Replication.
```

## Prompt C — Boolean Query Generator

```
Generate optimized boolean search queries for finding empirical papers on these five PUMA topics: (1) issue triage with LLMs, (2) effort estimation with language models, (3) multi-agent orchestration for project management, (4) benchmark evaluation of AI agents for software engineering, (5) reproducibility in LLM-based studies. Include both high-recall and high-precision variants. Apply year filter 2023–2026.
```

## Prompt D — Gap Extraction from Abstracts

```
I have a list of papers and abstracts on AI agents for project management. From these abstracts, extract the main research gaps. Classify each gap as: (a) methodological gap, (b) dataset gap, (c) evaluation gap, (d) reproducibility gap, (e) sustainability gap. Rank by relevance to a benchmark study using local LLMs.
```

---

## Usage Notes

Perplexity with Academic mode provides citation-aware responses. Always verify citations via the provided links before importing to Zotero. Perplexity is best for fast initial mapping; use Undermind for deeper synthesis.

---

## PUMA Relevance

Perplexity serves as the rapid validation layer for PUMA — used to quickly check if a research direction has sufficient literature before investing time in a deep Undermind dive. Also useful for verifying specific claims from the synthesis in real time.

---

## Related Notes

- [[PT-P1S2-003-Claude-LiteratureSynthesis-RCOIF]]
- [[PT-P1S1-006-Undermind-HighPrecision]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
