---
id: PT-METH-001
title: "PRISMA Protocol — Systematic Literature Review for PUMA"
type: prompt-note
tool: claude-elicit-zotero
phase: Phase1-Research
step: "All-Steps"
methodology: [PRISMA, SLR, Kitchenham]
tags: [prompt, prisma, slr, methodology, puma]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 📋 PRISMA Protocol — Systematic Literature Review for PUMA

**Tool**: Claude + Elicit + Zotero (combined workflow)
**Phase**: Phase 1 — Research (all steps)
**Methodology**: PRISMA 2020 + Kitchenham SLR guidelines

---

## PRISMA Phase 1 — Identification

### Search String Generation

```
Role: Systematic literature review specialist with expertise in Kitchenham SLR methodology.

Context: I am conducting an SLR for PUMA on AI agents applied to software project management. Target databases: Semantic Scholar, arXiv, IEEE Xplore, ACM Digital Library, Google Scholar. Period: 2023–2026.

Objective: Generate a reproducible multi-database search strategy.

Instructions:
1. Identify the 3 main concepts of the PUMA SLR: (A) AI Agents/LLMs, (B) Project Management tasks, (C) Benchmarking/Evaluation.
2. For each concept, list at least 4 synonym variants and relevant acronyms.
3. Construct the Boolean logic block: OR within concepts, AND across concepts.
4. Adapt the syntax for each database (IEEE, ACM, Google Scholar use different operators).
5. Generate: (a) high-recall variant, (b) high-precision variant.

Format: Table per database with exact search string and estimated recall.
```

## PRISMA Phase 2 — Screening (Title + Abstract)

```
Role: PRISMA 2020 systematic reviewer applying exclusion criteria.

Context: I have [N] records from my PUMA search. Apply these criteria:

Inclusion Criteria:
IC1: Empirical study with quantitative results OR benchmark paper
IC2: Published 2023–2026 (inclusive)
IC3: In English or Spanish
IC4: Studies LLM agents, multi-agent systems, or ML applied to PM tasks (triage, estimation, risk detection, planning)

Exclusion Criteria:
EC1: Opinion, position, or editorial paper without data
EC2: Conference without peer review
EC3: Studies only classical ML without connection to LLM agents
EC4: Domain outside software/ICT project management

For each record: Decision (INCLUDE/EXCLUDE/UNCERTAIN) | Criterion applied | Confidence (High/Medium/Low).

Format: Screening table. Summary statistics: N included, N excluded per criterion, N uncertain.
```

## PRISMA Flowchart Documentation

```
Generate the PRISMA 2020 flowchart description for PUMA's SLR:
- Identification: N records from Semantic Scholar + Google Scholar + arXiv + IEEE/ACM
- Deduplication: N duplicates removed = N unique records
- Screening (title+abstract): N excluded with reasons (EC1: X, EC2: Y, EC3: Z, EC4: W)
- Eligibility (full text): N assessed, N excluded after full-text review
- Included: N studies in final synthesis

Return as: (a) Mermaid diagram code, (b) Table with N values per stage.
```

---

## PUMA Relevance

The PRISMA protocol is PUMA's official SLR methodology as required by UOC's academic standards. All numbers go into [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]. The flowchart appears in PUMA Section 2 as Figure 1.

---

## Related Notes

- [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]
- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
- [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]]
