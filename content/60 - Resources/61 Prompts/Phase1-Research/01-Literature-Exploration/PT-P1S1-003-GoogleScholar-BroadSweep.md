---
id: PT-P1S1-003
title: "Google Scholar — Broad Sweep Queries for PUMA"
type: prompt-note
tool: google-scholar
phase: Phase1-Research
step: "01-Literature-Exploration"
methodology: [SLR, PRISMA]
tags: [prompt, google-scholar, literature-exploration, puma, boolean]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 🔍 Google Scholar — Broad Sweep Queries for PUMA

**Tool**: Google Scholar (https://scholar.google.com)
**Phase**: Phase 1 — Research
**Step**: 01 — Literature Exploration

---

## Prompt A — Core PUMA Discovery

```
"AI agents" AND "project management" after:2023
```

## Prompt B — Multi-Agent PM

```
"multi-agent" AND ("software project management" OR PMO OR DevOps) after:2023
```

## Prompt C — Benchmark Focus

```
(benchmark OR evaluation OR dataset) AND ("LLM agent" OR "agentic AI") AND "project management" after:2023
```

## Prompt D — Governance and Oversight

```
("human-in-the-loop" OR governance OR traceability OR observability) AND ("AI agents" OR "LLM") AND "project management" after:2023
```

## Prompt E — Reproducibility

```
(reproducible OR reproducibility OR "experimental protocol") AND ("project management" OR "software engineering") AND ("language model" OR agent) after:2023
```

---

## Usage Notes

- Use `after:2023` to enforce the 2023–2026 temporal filter.
- Add `filetype:pdf` for direct PDF results.
- For advanced search: use `allintitle:` to restrict to title-only matching.

---

## PUMA Relevance

Google Scholar complements Semantic Scholar with broader conference paper coverage (ICSE, MSR, EASE). Especially useful for finding gray literature and technical reports from industry.

---

## Related Notes

- [[PT-P1S1-001-SemanticScholar-CoreSearch]]
- [[60 - Resources/62 Workflows/WF-SLR-Pipeline]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
- [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]]
