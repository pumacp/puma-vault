---
id: Dashboard-Research-Progress
title: "📊 Dashboard — Research Progress"
type: dashboard
tags: [dashboard, research, progress, puma, dataview, bibliography, citation, code-review, github, glossary, gtd, literature-review, moc, navigation, obsidian, pipeline, prisma, slr, template, vault]
created: 2026-03-01
updated: 2026-06-15
---

# 📊 Dashboard — Research Progress

> [!tip] How to Use This Dashboard
> Run a **Weekly Review** to update chapter status, check the reading queue, and process orphan notes. All queries below are live Dataview results.

---

## Literature Pipeline

```dataview
TABLE WITHOUT ID length(rows) AS "Count", rows.file.link AS "Papers"
FROM #literature
GROUP BY status
SORT status ASC
```

---

## Reading Queue (Pass 1 needed)

```dataview
TABLE title AS "Title", first-author AS "Author", year AS "Year", relevance AS "⭐"
FROM #literature
WHERE status = "to-read"
SORT relevance DESC
LIMIT 10
```

---

## High-Priority Papers Not Yet Reviewed

```dataview
TABLE title AS "Title", first-author AS "Author", year AS "Year", topic AS "Topic"
FROM #literature
WHERE relevance >= 4 AND status != "reviewed"
SORT relevance DESC
```

---

## Writing Progress

```dataview
TABLE status AS "Status", file.mtime AS "Last Modified"
FROM "40 - Projects/PUMA"
WHERE type = "project-note"
SORT file.mtime DESC
```

---

## Chapter Completion Tracker

| Chapter | Status | Word Target | Notes |
|---------|--------|-------------|-------|
| Ch.1 Introduction | ✅ Complete | ~4,000 | delivered |
| Ch.2 Materials & Methods | 🔄 In progress | ~3,000 | Methods design complete |
| Ch.3 Results | ⏳ Pending experiments | ~2,500 | Awaiting Milestone 2 data |
| Ch.4 Conclusions | ⏳ Pending | ~1,500 | After results |
| Ch.5 Glossary | 🔄 Ongoing | — | 65 terms in vault |
| Ch.6 Bibliography | ✅ 42 refs | — | Target ≥40 ✅ |
| Ch.7 Appendices | 🔄 Building | — | Templates + scripts |

---

## GTD Inbox Status

```dataview
LIST
FROM "10 - Inbox"
WHERE file.name != "README-Inbox" AND file.name != "Quick-Capture-Log" AND file.name != "Template-Fleeting-Note"
SORT file.ctime DESC
LIMIT 10
```

---

## Orphan Notes (disconnected — needs linking)

```dataview
LIST
FROM ""
WHERE length(file.inlinks) = 0 AND length(file.outlinks) = 0
SORT file.ctime ASC
LIMIT 10
```

---

## Permanent Notes Created This Month

```dataview
TABLE file.ctime AS "Created"
FROM "30 - Permanent"
WHERE type = "permanent"
AND file.ctime >= date(today) - dur(30 days)
SORT file.ctime DESC
```

---

## Navigation

[[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]] · [[80 - MOC/81 Topic-Maps/MOC-Literature-Review]] · [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]]

[[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]] · [[50 - Areas/51 Research/AI-Use-Log]] · [[50 - Areas/52 Writing/Writing-Progress-Tracker]]

[[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]] · [[40 - Projects/PUMA/41.4 Results/PR-PUMA-Ch4-Results]] · [[90 - GTD/91 Tasks/TASKS-Active]]
