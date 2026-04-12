---
id: README-Papers
title: "📄 Papers — How to Add a New Paper"
type: readme
tags: [readme, papers, literature, guide]
created: 2026-03-01
---

# 📄 Papers — Index & Guide

> All academic papers processed for PUMA. Use [[00 - Meta/Templates/Template-Literature-Note-Paper]] for new entries.
> Full SLR process: [[60 - Resources/62 Workflows/WF-SLR-Pipeline]]

---

## Sub-folder Organisation

| Folder | Papers |
|--------|--------|
| `Triage-Benchmarks/` | Papers on issue classification, bug triage, defect prediction |
| `Effort-Estimation/` | Papers on story points, software effort, COCOMO derivatives |
| `LLM-Agents-General/` | General LLM capabilities, agent frameworks, prompt engineering |
| `PM-AI-Convergence/` | Surveys and overviews of AI in project management |
| `Reproducibility-SE/` | Papers on reproducibility, open science, experiment design in SE |

---

## Quick Start: Adding a New Paper

```
1. Find paper via Perplexity / Semantic Scholar / IEEE / ACM
2. Verify in primary source (DOI, arXiv, or publisher)
3. Add to Zotero with tag #puma-pending
4. Use QuickAdd (Alt+L) → select "Literature Note Paper"
5. Fill YAML frontmatter (copy from template)
6. Read + Cornell notes + DRCA
7. Change tag to #puma-include or #puma-exclude
8. Link to relevant MOC: [[80 - MOC/81 Topic-Maps/MOC-Literature-Review]]
```

---

## Current Papers Index

```dataview
TABLE authors, year, read_status, prisma_decision, relevance
FROM "20 - Literature/20.1 Papers"
WHERE type = "literature-note" AND subtype = "paper"
SORT year DESC, relevance ASC
```

---
---
id: LN-Book-Flyvbjerg2023
title: "How Big Things Get Done — Flyvbjerg & Gardner (2023)"
type: literature-note
subtype: book
tags: [literature, book, project-management, uniqueness-trap, planning-fallacy]
authors: ["Flyvbjerg, Bent", "Gardner, Dan"]
year: 2023
publisher: "Crown Publishers"
isbn: "978-0593239513"
zotero_key: "Flyvbjerg2023"
chapters_read: ["Introduction", "Chapter on Uniqueness Trap"]
puma_relevance: "Provides the Uniqueness Trap concept — the third problem dimension justifying PUMA's historical-pattern learning via few-shot prompting."
read_status: processed
created: 2026-03-01
---

# How Big Things Get Done

> **One-sentence takeaway:** Project managers systematically fail to use historical data from similar projects — the Uniqueness Trap — and LLMs with few-shot historical examples are a computational implementation of the prescribed fix (Reference Class Forecasting).

## Core Argument

Flyvbjerg & Gardner analyse thousands of large projects and find systematic failure driven by: optimism bias, strategic misrepresentation, and the Uniqueness Trap. The solution is "outside view" forecasting using reference classes of similar past projects.

## Key Concepts for PUMA

| Concept | Definition | PUMA Connection |
|---------|-----------|----------------|
| **Uniqueness Trap** | Treating every project as sui generis, ignoring base rates | Few-shot prompting provides "base rates" as examples |
| **Reference Class Forecasting** | Anchor estimates to historical distribution of similar projects | Few-shot k=3/6 implements this computationally |
| **Outside view** | Using statistical evidence rather than project-specific reasoning alone | PUMA's H2: few-shot > zero-shot for estimation |

## Cornell Notes

| **Question** | **Note** |
|-------------|---------|
| What is the core prescriptive recommendation? | Use reference class forecasting before inside-view planning |
| How does PUMA implement this? | Few-shot examples = reference class; zero-shot = inside view |
| Is this empirically validated? | Yes — analysis of thousands of infrastructure projects globally |

**Summary:** Flyvbjerg demonstrates statistically that managers systematically under-use historical evidence. PUMA's few-shot prompting strategy is a direct computational implementation of the prescribed solution. This grounds PUMA's PM relevance in established management science.

## 🔗 Connections

**Permanent note:** [[30 - Permanent/31 Concepts/PN-Uniqueness-Trap]]
**Cited in:** [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] (context)
**Supports hypothesis:** [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] (H2 rationale)

---
---
id: LN-Book-Allen2001-GTD
title: "Getting Things Done — David Allen (2001)"
type: literature-note
subtype: book
tags: [literature, book, gtd, productivity, workflow]
authors: ["Allen, David"]
year: 2001
publisher: "Viking"
isbn: "978-0142000281"
zotero_key: "Allen2001"
puma_relevance: "GTD framework used for task and project management within this vault."
read_status: processed
created: 2026-03-01
---

# Getting Things Done (GTD)

> **One-sentence takeaway:** Capture everything → process ruthlessly → organise by context → review consistently → engage with trusted system.

## GTD Principles in This Vault

| Principle | Implementation |
|-----------|--------------|
| **Capture** | [[10 - Inbox/]] — everything starts here |
| **Clarify** | Daily review: what is this? What's the next action? |
| **Organise** | [[90 - GTD/91 Tasks/TASKS-Active]] by phase and context |
| **Reflect** | [[90 - GTD/95 Reviews/]] — daily + weekly templates |
| **Engage** | Do the next action, not the project |

## 🔗 Connections
**Implemented in:** [[90 - GTD/]] (entire folder) · [[00 - Home]] (daily access)
**Related:** [[20 - Literature/20.2 Books/LN-Book-Ahrens-Zettelkasten]]

---
---
id: LN-Book-Ahrens-Zettelkasten
title: "How to Take Smart Notes — Sönke Ahrens (2022)"
type: literature-note
subtype: book
tags: [literature, book, zettelkasten, note-taking, knowledge-management]
authors: ["Ahrens, Sönke"]
year: 2022
publisher: "Sönke Ahrens (self)"
isbn: "978-3982438801"
zotero_key: "Ahrens2022"
puma_relevance: "Zettelkasten method implemented in 30 - Permanent folder. Atomic permanent notes + linking = the knowledge architecture of this vault."
read_status: processed
created: 2026-03-01
---

# How to Take Smart Notes — Zettelkasten Method

> **One-sentence takeaway:** Writing one permanent, atomic, linked note per idea forces understanding at the moment of capture and builds a network of knowledge that generates insights through unexpected connections.

## Zettelkasten Principles in This Vault

| Principle | Implementation |
|-----------|--------------|
| **Atomic notes** | Each `PN-` note = exactly one idea |
| **Own words only** | Never copy quotes into permanent notes |
| **Links over folders** | Connections via `[[wikilinks]]`, not hierarchy |
| **Evergreen notes** | Notes improve over time with maturity levels |
| **Fleeting → Literature → Permanent** | Three-stage pipeline in vault structure |

## 🔗 Connections
**Implemented in:** [[30 - Permanent/]] (entire folder) · [[00 - Meta/Templates/Template-Permanent-Note]]
**Related:** [[20 - Literature/20.2 Books/LN-Book-Allen2001-GTD]]
