---
id: Keshav-Reading-Log
title: "📖 Keshav Three-Pass Reading Log"
type: reading-log
tags: [keshav, literature, reading, systematic]
created: 2026-03-01
updated: 2026-04-06
---

# 📖 Keshav Three-Pass Reading Log

> **Keshav's Three-Pass Method** (S. Keshav, University of Waterloo, 2007):
> - **Pass 1** (5–10 min): bird's-eye view using title, abstract, intro, headings, conclusions
> - **Pass 2** (≤1h): grasp content, note figures, mark unread references
> - **Pass 3** (4–5h): re-implement / virtually reconstruct the paper
>
> *Used in MIT AI Lab Working Paper 316 ("How to Do Research") as reading guidance for graduate students.*
> *Integrated here as the PUMA paper-reading framework.*

---

## Reading Queue (Pass 1 pending)

```dataview
TABLE title AS "Title", first-author AS "Author", year AS "Year", relevance AS "⭐"
FROM #literature
WHERE status = "to-read"
SORT relevance DESC
```

---

## In Progress (Pass 2)

```dataview
TABLE title AS "Title", first-author AS "Author", year AS "Year"
FROM #literature
WHERE status = "reading"
```

---

## Completed — Ready for Permanent Notes (Pass 3 done)

```dataview
TABLE title AS "Title", first-author AS "Author", year AS "Year", topic AS "Topic"
FROM #literature
WHERE status = "reviewed"
SORT year DESC
```

---

## All Literature

```dataview
TABLE title AS "Title", first-author AS "Author", year AS "Year", status AS "Status", relevance AS "⭐", topic AS "Topic"
FROM #literature
SORT relevance DESC, year DESC
```

---

## Manual Log (for papers not yet in Dataview)

| Paper | Author | Year | Pass 1 | Pass 2 | Pass 3 | Permanent Note |
|-------|--------|------|--------|--------|--------|----------------|
| Reproducibility of LLM Studies in SE | Angermeir | 2025 | ✅ | ✅ | ✅ | [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] |
| CoGEE: Story Point Estimation | Tawosi | 2024 | ✅ | ✅ | 🔄 | [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] |
| How Big Things Get Done | Flyvbjerg | 2023 | ✅ | ✅ | ✅ | [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] |
| Chain-of-Thought Prompting | Wei | 2022 | ✅ | ✅ | ✅ | [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] |
| TAWOS Dataset | Tawosi | 2022 | ✅ | ✅ | ✅ | [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] |
| Design Science in IS Research | Hevner | 2004 | ✅ | ✅ | ✅ | [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] |
| Cognitive Agents for Agile PM | Spichkova | 2025 | ✅ | 🔄 | ⬜ | — |
| Jira SR Dataset | Ortu | 2015 | ✅ | ✅ | ✅ | [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] |
| PM-LLM-Benchmark | Berti | 2024 | ✅ | 🔄 | ⬜ | — |
| AI in Project Management 2019–2024 | Manzoor | 2025 | ✅ | ✅ | 🔄 | — |
| Request Formats and Effort Estimation | Calikli | 2025 | ✅ | ✅ | ✅ | [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] |
| Energy and Policy for Deep Learning | Strubell | 2019 | ✅ | ✅ | ✅ | [[50 - Areas/54 Sustainability/Carbon-Tracking-Log]] |
| Experimentation in SE | Wohlin | 2012 | ✅ | ✅ | ✅ | [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] |
| Local LLMs for Sprint Estimation | Yonathan | 2025 | ✅ | 🔄 | ⬜ | — |
| Language Models are Few-Shot Learners | Brown | 2020 | ✅ | ✅ | ✅ | [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] |

**Legend**: ✅ Done · 🔄 In Progress · ⬜ Not started

---

## Keshav Pass-1 Quick Template

For fast capture during Pass 1, use:

```
**Paper**: [Title]
**Author**: [Last name, Year]
**Category**: measurement | analysis | description | proposal
**Context**: Related to [papers/theories]
**Correctness**: Assumptions [seem valid | questionable because...]
**Contributions**: 1) ... 2) ... 3) ...
**Clarity**: [clear | confusing | jargon-heavy]
**Decision**: Read Pass 2? [YES / NO — reason]
```

---

## Permanent Notes Generated from Reading

```dataview
LIST
FROM "30 - Permanent"
WHERE type = "permanent"
SORT file.ctime DESC
LIMIT 20
```
