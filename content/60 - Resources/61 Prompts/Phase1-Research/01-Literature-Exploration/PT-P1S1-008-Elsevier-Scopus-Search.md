---
id: PT-P1S1-008
title: "Elsevier / Scopus — Structured Database Search for PUMA"
type: prompt-note
tool: elsevier-scopus
phase: Phase1-Research
step: "01-Literature-Exploration"
methodology: [SLR, PRISMA]
tags: [prompt, elsevier, scopus, mendeley, puma, boolean]
rating: 4
created: 2026-04-07
updated: 2026-04-07
---

# 📚 Elsevier / Scopus — Structured Database Search for PUMA

**Tool**: Elsevier (https://id.elsevier.com) / Scopus / Mendeley
**Phase**: Phase 1 — Research
**Step**: 01 — Literature Exploration
**Methodology**: PRISMA-aligned SLR

---

## Prompt A — High-Precision Core Search

```
TITLE-ABS-KEY(("AI agent" OR "multi-agent" OR "LLM" OR "language model") AND ("project management" OR PMO OR "software project management" OR "issue triage" OR "effort estimation") AND (benchmark OR evaluation OR dataset OR reproducibility)) AND PUBYEAR > 2022 AND PUBYEAR < 2027
```

## Prompt B — Task-Specific Coverage

```
TITLE-ABS-KEY(("issue triage" OR "ticket classification" OR "effort estimation" OR "story point") AND ("language model" OR agent OR "machine learning")) AND PUBYEAR > 2022
```

## Prompt C — Governance and Observability

```
TITLE-ABS-KEY(("human-in-the-loop" OR governance OR observability OR traceability) AND ("AI agent" OR "LLM" OR "multi-agent")) AND PUBYEAR > 2022
```

## Prompt D — AIOps and DevOps PM

```
TITLE-ABS-KEY((AIOps OR DevOps OR "cloud operations") AND ("LLM" OR "language model" OR agent) AND (automation OR monitoring OR "incident management")) AND PUBYEAR > 2022
```

---

## Export Instructions

1. Export search results as RIS or BibTeX
2. Import into Zotero collection `PUMA-Literature-2026`
3. Apply PUMA tags: `#scopus-export`, `#to-screen`
4. Proceed to PRISMA Phase 1 screening

---

## PUMA Relevance

Scopus/Elsevier provides access to journals not indexed in Semantic Scholar, including Project Management Journal (PMJ) and Information and Software Technology (IST). Essential for completeness of PUMA's SLR and for locating empirical studies on PM AI published in established venues.

---

## Related Notes

- [[60 - Resources/65 Bibliographies/BIB-Master-APA7]]
- [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
