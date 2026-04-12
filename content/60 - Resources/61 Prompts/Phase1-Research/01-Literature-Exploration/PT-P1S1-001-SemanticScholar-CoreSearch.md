---
id: PT-P1S1-001
title: "Semantic Scholar — Core PUMA Topic Search"
type: prompt-note
tool: semantic-scholar
phase: Phase1-Research
step: "01-Literature-Exploration"
methodology: [SLR, PRISMA]
tags: [prompt, semantic-scholar, literature-exploration, puma, slr]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 🔍 Semantic Scholar — Core PUMA Topic Search

**Tool**: Semantic Scholar (https://www.semanticscholar.org/search)
**Phase**: Phase 1 — Research
**Step**: 01 — Literature Exploration
**Methodology**: SLR / PRISMA

---

## Prompt

```
("AI agents" OR "multi-agent systems" OR "agentic AI" OR "LLM agents") AND ("project management" OR "PMO" OR "software project management" OR "issue triage" OR "effort estimation") AND (benchmark OR evaluation OR reproducibility OR dataset)
```

**Filters to apply**: Year: 2023–2026 | Field: Computer Science, Software Engineering | Has PDF: True

---

## Purpose

Locate the most relevant empirical papers at the intersection of AI agents and ICT project management, covering the two PUMA core tasks: issue triage (F1-macro ≥ 0.55) and effort estimation (MAE ≤ 3.0 SP).

---

## PUMA Relevance

This is the primary discovery query for PUMA's SLR. Returns papers that directly inform the experimental design, dataset selection (Jira SR, TAWOS), and baseline comparisons. Results feed into [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]].

---

## Expected Output

A list of 20–40 papers to screen through PRISMA Phase 1. Export as BibTeX → import to Zotero collection `PUMA-Literature-2026`.

---

## Related Notes

- [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]
- [[60 - Resources/65 Bibliographies/BIB-Master-APA7]]
- [[PT-P1S1-002-SemanticScholar-TaskSpecific]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]]
- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
