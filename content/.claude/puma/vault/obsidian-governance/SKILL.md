---
name: puma-obsidian-governance
description: Obsidian plugin configuration, frontmatter schema, CSS snippets, and vault governance for PUMA. Use when configuring Obsidian plugins, creating note templates, debugging frontmatter issues, or setting up a fresh vault instance. Contains the complete plugin stack, recommended settings, and PUMA-specific Obsidian conventions. Load when onboarding to the vault or troubleshooting Obsidian behavior.
---

# PUMA Obsidian Governance

## Recommended Plugin Stack

Install via: Settings → Community Plugins → Browse

| Plugin | Version | Purpose | Required? |
|--------|---------|---------|-----------|
| **Dataview** | latest | Dynamic queries and tables | ✅ Required |
| **Templater** | latest | Template engine with JS support | ✅ Required |
| **Tasks** | latest | Task tracking with due dates | ✅ Required |
| **Kanban** | latest | Sprint boards | ✅ Required |
| **Zotero Integration** | latest | Import papers from Zotero | ✅ Required |
| **Obsidian Git** | latest | Auto-backup to GitHub | ✅ Required |
| **QuickAdd** | latest | Fast note creation | ✅ Required |
| **Calendar** | latest | Date navigation | ✅ Required |
| **Homepage** | latest | Open vault to home note | ✅ Required |
| **Obsidian Bases** | native | Database-style views | ⭐ Recommended |
| **Tag Wrangler** | latest | Tag management | ⭐ Recommended |
| **Outliner** | latest | Better list editing | ⭐ Recommended |
| **Editing Toolbar** | latest | WYSIWYG toolbar | 🔵 Optional |
| **Natural Language Dates** | latest | Date parsing | 🔵 Optional |

## Core Plugin Settings

### Dataview
```
Enable JavaScript Queries: ON
Inline Queries: ON
Date Format: YYYY-MM-DD
```

### Templater
```
Template Folder: 00 - Meta/Templates
Trigger on new file creation: ON
Enable system commands: ON (for advanced templates)
```

### Obsidian Git
```
Auto pull on startup: ON
Auto commit after file change: ON (or manual)
Commit interval: 0 (manual preferred for PUMA)
Vault backup interval: 0
Pull on startup: ON
Push on commit: ON
```

### Zotero Integration
```
Zotero Library type: User
User ID: 20166221
API Key: [personal — do not commit]
Import format: Markdown
Literature note folder: 20 - Literature/20.1-Papers/
```

### Homepage
```
Homepage: 00 - Home.md
Open on startup: ON
```

## Standard Frontmatter Schema

All notes MUST have frontmatter. Required fields by type:

### All notes (mandatory)
```yaml
---
title: "Descriptive title"
type: FL | LN | PN | ST | SRC | PER | RES | PR | SP | EX | PT | WF | CL | MOC | BIB | BMAD | VID
status: to-read | draft | in-progress | stable | done | archived | locked
tags: [puma, ...]
created: YYYY-MM-DD
updated: YYYY-MM-DD
jd: "XX.YY"
---
```

### Literature notes (LN-) additional fields
```yaml
author: "Last, First"
year: YYYY
venue: "Journal/Conference name"
doi: "10.XXXX/..."
zotero_key: "@citekey"
keshav_pass: "1 | 2 | 3"
puma_relevance: "high | medium | low"
```

### Experiment notes (EX-) additional fields
```yaml
experiment_id: "EX-NNN"
hypothesis: "H1 | H2 | exploratory"
model: "qwen2.5:3b"
temperature: 0.0
seed: 42
dataset: "TAWOS | jira-sr"
strategy: "zero-shot | few-shot-3 | cot | ..."
spec: "[[SP-ExperimentName]]"
```

### Permanent notes (PN-) additional fields
```yaml
related:
  - "[[LN-source]]"
  - "[[PN-connected]]"
contradicts: []
moc: "[[MOC-relevant]]"
evergreen: false
```

## Dataview Query Templates

### Active tasks (embed in dashboards)
```dataview
TASK
FROM "90 - GTD"
WHERE !completed
SORT due ASC
LIMIT 20
```

### Papers to read
```dataview
TABLE author, year, puma_relevance as "Relevance"
FROM "20 - Literature/20.1-Papers"
WHERE status = "to-read"
SORT puma_relevance DESC
```

### Recent permanent notes
```dataview
TABLE file.mtime as "Updated", tags
FROM "30 - Permanent"
WHERE type = "PN"
SORT file.mtime DESC
LIMIT 15
```

### Experiment status
```dataview
TABLE experiment_id, hypothesis, status, strategy
FROM "40 - Projects/PUMA/41.7-Experiments"
WHERE type = "EX"
SORT experiment_id ASC
```

### Orphan notes (no inbound links)
```dataview
LIST
FROM "30 - Permanent"
WHERE length(file.inlinks) = 0
```

## CSS Snippets

Located in `00-Meta/Snippets/`. Enable in: Settings → Appearance → CSS Snippets.

Key snippets (see `CSS-Snippets-Guide.md` for details):
- `callout-colors.css` — custom callout colors for `[!contradiction]`, `[!update]`, `[!gap]`
- `frontmatter-hide.css` — hide frontmatter in reading mode
- `kanban-puma.css` — PUMA sprint board styling

### Custom Callout Types

```markdown
> [!contradiction]
> Claim in this note contradicts [[PN-other-note]].
> Resolution: [pending | resolved by newer evidence]

> [!update]
> This section was superseded by [[LN-newer-paper]].
> Updated claim: [new claim]

> [!gap]
> Research gap identified: [description]
> Potential search query: [query for future SLR pass]

> [!puma-result]
> F1-macro: 0.5867 | Strategy: zero-shot | Model: qwen2.5:3b
```

## File Naming Conventions

| Type | Pattern | Example |
|------|---------|---------|
| Fleeting | `FL-YYYY-MM-DD-topic` | `FL-2026-04-14-rag-obsidian` |
| Literature | `LN-Author-Year-ShortTitle` | `LN-Keshav-2007-HowToReadPaper` |
| Literature (Zotero) | `@citekey` | `@Keshav2007` |
| Permanent | `PN-DeclarativeTitle` | `PN-CoT-Improves-Estimation-Accuracy` |
| Structure | `ST-ThemeName` | `ST-Prompting-Strategies` |
| Experiment | `EX-NNN-Description` | `EX-001-ZeroShot-Triage` |
| Spec | `SP-ComponentName-vN` | `SP-Triage-Agent-v1` |
| Prompt | `PT-Task-Strategy-vN` | `PT-Triage-FewShot3-v2` |
| MOC | `MOC-TopicName` | `MOC-LLM-Agents` |
| Video | `VID-CAT-NNN-Title` | `VID-AGT-001-Karpathy-RAG` |

## Vault Health Indicators

Check weekly in GTD Review:

```
✅ Healthy vault:
- Inbox: 0 unprocessed notes
- All PN- notes: status = stable or evergreen
- ZK-Hub: entry for every PN- note
- Orphan notes: 0
- AI-Use-Log: updated within 24h of any Claude session
- Git: committed within 24h

⚠️ Warning signs:
- Inbox: >10 unprocessed notes
- PN- notes with status = draft for >7 days
- Any PN- not in ZK-Hub
- Git uncommitted for >48h

🔴 Critical:
- Experiment run without git commit
- SP- spec modified after experiment ran
- Duplicate files with conflicting content
```
