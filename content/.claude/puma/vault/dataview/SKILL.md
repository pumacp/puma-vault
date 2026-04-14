---
name: puma-dataview
description: Dataview query syntax and templates for PUMA Vault dynamic indexing — TABLE, LIST, TASK, and CALENDAR queries for papers, experiments, tasks, MOCs, and research progress. Use when building dashboards, creating dynamic tables in notes, or querying vault metadata. Includes ready-to-use PUMA-specific Dataview blocks for the most common research management views.
---

# PUMA Dataview — Dynamic Vault Queries

## Dataview Basics

Dataview reads YAML frontmatter and inline fields, then generates dynamic views.

```dataview
TABLE | LIST | TASK | CALENDAR
FROM "folder" OR #tag OR [[note]]
WHERE condition
SORT field ASC|DESC
LIMIT N
```

## Ready-to-Use PUMA Queries

### Dashboard: Active Experiments
```dataview
TABLE experiment_id, hypothesis, status, strategy, 
      WITHOUT ID file.link as "Experiment"
FROM "40 - Projects/PUMA/41.7-Experiments"
WHERE type = "EX"
SORT experiment_id ASC
```

### Dashboard: Papers To Read
```dataview
TABLE author + " (" + year + ")" as "Author/Year", 
      venue as "Venue", puma_relevance as "Relevance"
FROM "20 - Literature/20.1-Papers"
WHERE status = "to-read"
SORT puma_relevance DESC, year DESC
```

### Dashboard: Literature Progress
```dataview
TABLE keshav_pass as "Pass", status, puma_relevance as "Rel"
FROM "20 - Literature/20.1-Papers"
WHERE type = "LN"
SORT keshav_pass DESC, puma_relevance DESC
```

### Dashboard: Permanent Notes by Category
```dataview
TABLE length(file.inlinks) as "Inlinks", tags, status
FROM "30 - Permanent"
WHERE type = "PN"
SORT length(file.inlinks) DESC
LIMIT 20
```

### Dashboard: Orphan Notes (No Inlinks)
```dataview
LIST file.path
FROM "30 - Permanent"
WHERE length(file.inlinks) = 0 AND type = "PN"
```

### Dashboard: Active Tasks (GTD)
```dataview
TASK
FROM "90 - GTD"
WHERE !completed
GROUP BY file.link
SORT due ASC
```

### Dashboard: Overdue Tasks
```dataview
TASK
WHERE !completed AND due < date(today)
SORT due ASC
```

### Dashboard: Sprint Progress
```dataview
TABLE WITHOUT ID
  file.link as "Task",
  status as "Status"
FROM "40 - Projects/PUMA/41.8-Sprint-Boards"
SORT file.mtime DESC
```

### Dashboard: Recent AI Sessions
```dataview
TABLE WITHOUT ID
  file.mtime as "Last Modified",
  file.link as "Log"
FROM "50 - Areas/51-Research"
WHERE file.name = "AI-Use-Log"
SORT file.mtime DESC
```

### Dashboard: Specs Status
```dataview
TABLE version, status, WITHOUT ID file.link as "Spec"
FROM "40 - Projects/PUMA/41.6-Specs"
WHERE type = "SP"
SORT status DESC
```

### Dashboard: Carbon Tracking Summary
```dataview
TABLE WITHOUT ID
  file.link as "Log",
  file.mtime as "Updated"
FROM "50 - Areas/54-Sustainability"
```

### Dashboard: Video Notes by Category
```dataview
TABLE WITHOUT ID
  file.link as "Video",
  file.folder as "Category"
FROM "20 - Literature/20.4-Videos-Podcasts"
WHERE type = "VID"
SORT file.ctime DESC
LIMIT 20
```

### MOC: All Permanent Notes (for ZK-Hub)
```dataview
TABLE WITHOUT ID
  file.link as "Note",
  file.frontmatter.title as "Title",
  tags,
  status
FROM "30 - Permanent/31-Concepts" OR "30 - Permanent/32-Methods" OR "30 - Permanent/33-Frameworks"
WHERE type = "PN"
SORT file.name ASC
```

### Research Progress by Phase
```dataview
TABLE WITHOUT ID
  "Phase 1: Ideation" as "Phase",
  length(filter(file.tasks, (t) => t.completed)) + "/" + length(file.tasks) as "Progress"
FROM "60 - Resources/61-Prompts/Phase1-Research"
```

## Inline Dataview Fields

Use `[key:: value]` syntax in note body for queryable metadata:

```markdown
Completed experiment on [date:: 2026-04-14] with result [f1:: 0.5867].
This note is [confidence:: high] confidence.
```

Then query:
```dataview
TABLE f1, date
FROM "30 - Permanent/34-Results"
WHERE f1 >= 0.5
```

## Dataview JavaScript (DQL Advanced)

For complex queries, use `dataviewjs` blocks:

```dataviewjs
// Count notes by type
const types = {};
for (const page of dv.pages('"30 - Permanent"')) {
    const t = page.type || "unknown";
    types[t] = (types[t] || 0) + 1;
}
dv.table(["Type", "Count"], Object.entries(types).sort((a,b) => b[1]-a[1]));
```

```dataviewjs
// Sprint velocity: tasks completed per sprint
const sprints = dv.pages('"40 - Projects/PUMA/41.8-Sprint-Boards"');
const rows = [];
for (const sprint of sprints) {
    const tasks = sprint.file.tasks;
    const done = tasks.filter(t => t.completed).length;
    rows.push([sprint.file.link, done, tasks.length]);
}
dv.table(["Sprint", "Done", "Total"], rows);
```

## Dashboard Templates

### Experiment Status Dashboard (`Dashboard-Experiment-Status.md`)

```markdown
# Experiment Status Dashboard

## Active Experiments
\`\`\`dataview
TABLE experiment_id, hypothesis, status, strategy
FROM "40 - Projects/PUMA/41.7-Experiments"
WHERE type = "EX" AND status != "completed"
\`\`\`

## Completed Experiments
\`\`\`dataview
TABLE experiment_id, hypothesis, strategy
FROM "40 - Projects/PUMA/41.7-Experiments"
WHERE type = "EX" AND status = "completed"
\`\`\`
```

### Research Progress Dashboard (`Dashboard-Research-Progress.md`)

```markdown
# Research Progress Dashboard

## Papers: Reading Status
\`\`\`dataview
TABLE keshav_pass as "Pass", count(rows) as "Count"
FROM "20 - Literature/20.1-Papers"
WHERE type = "LN"
GROUP BY keshav_pass
\`\`\`

## Permanent Notes: Status
\`\`\`dataview
TABLE status, count(rows) as "Count"
FROM "30 - Permanent"
WHERE type = "PN"
GROUP BY status
\`\`\`
```
