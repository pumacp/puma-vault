---
id: PT-P1S3-003
title: "Zotero — Bibliographic Curation Protocol for PUMA"
type: prompt-note
tool: zotero
phase: Phase1-Research
step: "03-Structured-Extraction"
methodology: [PRISMA, Marco-Veritas, APA7]
tags: [prompt, zotero, bibliography, curation, puma, apa7]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 📚 Zotero — Bibliographic Curation Protocol for PUMA

**Tool**: Zotero (https://www.zotero.org)
**Phase**: Phase 1 — Research
**Step**: 03 — Structured Extraction
**Methodology**: Marco Veritas (verify every reference) + APA7

---

## Zotero Library Structure for PUMA

```
PUMA-Literature-2026/
├── 01-Core-Papers/          # Directly cited in thesis
│   ├── LLM-Agents-General/
│   ├── Agent-Architectures/
│   ├── PM-AI-Convergence/
│   └── AIOps-DevOps/
├── 02-SLR-Corpus/           # All PRISMA-screened papers
├── 03-To-Screen/            # Pending PRISMA Phase 1
├── 04-Excluded/             # Excluded with reason noted
└── 05-Background/           # Context, not directly cited
```

## Tag System

```
#core-citation      — directly cited in PUMA thesis
#to-verify          — Marco Veritas: DOI/source not yet checked
#verified           — primary source confirmed
#excluded-EC1       — excluded: not empirical
#excluded-EC2       — excluded: out of scope
#excluded-EC3       — excluded: pre-2023
#triage-paper       — relevant to H1 (triage)
#estimation-paper   — relevant to H2 (effort estimation)
#benchmark          — describes benchmark or evaluation protocol
#dataset            — introduces or uses a relevant dataset
#hallucination-risk — flagged for potential fabricated reference
```

---

## Prompt A — AI-Assisted Metadata Verification

```
Role: Bibliographic curator applying Marco Veritas protocol.
Context: I have a Zotero library with PUMA papers. Some were discovered via AI tools (Consensus, Undermind) and may contain fabricated or incorrect metadata.
Objective: Verify and correct all metadata in the provided reference list.
Instructions: For each reference, check: (1) Does the DOI resolve to the correct paper? (2) Are author names spelled correctly? (3) Is the year and venue correct? (4) Is the arXiv ID valid? Flag any reference where metadata cannot be verified with [UNVERIFIED]. Do NOT assume a reference is correct without checking.
Format: Table with columns: Reference | Issue Found | Correction | Verification Status.
```

## Prompt B — Duplicate Detection

```
Review the following references and identify potential duplicates: same paper appearing as preprint + published version, same study under different titles, same paper with different author name spellings. For each suspected duplicate: provide the canonical reference to keep and explain why.
```

## Prompt C — APA7 Format Check

```
Verify that the following references are correctly formatted in APA 7th edition. Correct all errors and cite the specific APA 7 rule applied. Pay special attention to: DOI format (https://doi.org/ prefix), author name inversion, italics for journal/book titles, volume/issue/page formatting for journal articles, and arXiv citation format (treat as preprint).
```

## Prompt D — Annotation Generation (Zotero Notes)

```
For each paper in my corpus, generate a Zotero annotation (80–100 words) in this format:
[Central argument] | [Methodology and N-size] | [Key finding with metric] | [Direct relevance to PUMA] | [Main limitation]
These annotations will be used as literature notes in the PUMA Obsidian vault.
```

---

## Marco Veritas Protocol Integration

Every reference added to PUMA's bibliography must pass Marco Veritas:
1. Locate the primary source (arXiv page, journal website, or ACM/IEEE DL)
2. Verify: title, authors, year, venue, DOI all match the Zotero record
3. Tag as `#verified` only after step 2 is complete
4. Flag fabricated references with `#hallucination-risk` + delete from corpus

---

## PUMA Relevance

Zotero is the single source of truth for PUMA's bibliography. The Marco Veritas protocol and tagging system prevent the AI hallucination problem documented in [[20 - Literature/20.4 Videos-Podcasts/YouTube/Research-Literature/VID-RES-002-This-EMBARRASSING-AI-Generated-Paper-Exposed]].

---

## Related Notes

- [[60 - Resources/65 Bibliographies/BIB-Master-APA7]]
- [[60 - Resources/65 Bibliographies/BIB-Supplement-v3]]
- [[50 - Areas/51 Research/AI-Use-Log]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
