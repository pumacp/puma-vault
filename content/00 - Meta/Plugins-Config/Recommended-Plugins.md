---
id: Recommended-Plugins
title: "Recommended Obsidian Plugins — PUMA Vault"
type: meta
tags: [meta, plugins, obsidian, setup]
created: 2026-03-01
---

# Recommended Obsidian Plugins — PUMA Vault

> Complete setup guide for getting the most out of this vault.

---

## 🔧 Essential Plugins (Install First)

### 1. Dataview
**ID:** `blacksmithgu/obsidian-dataview`
**Purpose:** Query your vault like a database. Powers all dynamic tables and dashboards.

**Key queries used in this vault:**
```dataview
TABLE status, deadline, priority
FROM "90 - GTD/91 Tasks"
WHERE status != "done"
SORT deadline ASC
```

**Setup:** Enable "Enable JavaScript Queries" in settings.

---

### 2. Templater
**ID:** `SilentVoid13/Templater`
**Purpose:** Advanced template engine with JavaScript support and date functions.

**Configuration:**
```
Template folder: 00 - Meta/Templates
Trigger Templater on new file creation: ON
Enable JavaScript templating: ON
```

**Key templates in this vault:**
- `Template-Literature-Note-Paper.md` → for all papers
- `Template-Permanent-Note.md` → for Zettelkasten atoms
- `Template-Experiment-Note.md` → for each PUMA experiment run
- `Template-Prompt-Note.md` → for all prompts
- `Template-Daily-Review.md` → daily GTD review
- `Template-Weekly-Review.md` → weekly GTD review

---

### 3. Tasks
**ID:** `obsidian-tasks-group/obsidian-tasks`
**Purpose:** Track tasks across the entire vault with due dates, priorities, and filters.

**Key shortcut:** `Ctrl+Shift+T` to toggle task status.

**Example query for PUMA dashboard:**
````
```tasks
not done
due before in two weeks
path includes "40 - Projects/PUMA"
sort by due
```
````

---

### 4. Calendar + Periodic Notes
**IDs:** `liamcain/obsidian-calendar-plugin` + `liamcain/obsidian-periodic-notes`
**Purpose:** Daily/weekly note navigation from a calendar view.

**Configuration:**
```
Daily notes folder: 90 - GTD/95 Reviews
Daily template: 00 - Meta/Templates/Template-Daily-Review.md
Weekly notes folder: 90 - GTD/95 Reviews
Weekly template: 00 - Meta/Templates/Template-Weekly-Review.md
```

---

### 5. Kanban
**ID:** `mgmeyers/obsidian-kanban`
**Purpose:** Visual Kanban board for project task management.

**Create a PUMA Kanban board:**
```markdown
---
kanban-plugin: board
---

## 📥 Backlog
- [ ] Implement heuristic baseline classifier
- [ ] Download TAWOS dataset
- [ ] Set up Docker Compose

## 🔄 In Progress
- [ ] Write Chapter 2 literature review
- [ ] Implement TriageAgent class

## ✅ Done
- [x] PEC1 submitted
- [x] Environment verified
```

---

### 6. Obsidian Git
**ID:** `Vinzent03/obsidian-git`
**Purpose:** Auto-commit vault to GitHub repository.

**Configuration:**
```
Auto pull on startup: ON
Auto push after auto commit: ON
Auto commit interval: 30 minutes
Commit message: "vault: auto-save "{{date}}"
```

**Setup commands:**
```bash
# In vault directory (before opening Obsidian)
git init
git remote add origin https://github.com/[username]/PUMA-Vault
git add .
git commit -m "Initial vault structure"
git push -u origin main
```

---

### 7. QuickAdd
**ID:** `chhoumann/quickadd`
**Purpose:** Fast note creation from keyboard shortcut using templates.

**Configure macros:**
- `Alt+F` → Create Fleeting Note (in `10 - Inbox/Fleeting-Notes/`)
- `Alt+L` → Create Literature Note (in `20 - Literature/`)
- `Alt+P` → Create Permanent Note (in `30 - Permanent/`)
- `Alt+E` → Create Experiment Note (in `40 - Projects/PUMA/41.7 Experiments/`)

---

### 8. Smart Connections
**ID:** `brianpetro/obsidian-smart-connections`
**Purpose:** AI-powered note recommendations — shows semantically related notes automatically.

**Note:** Requires API key (OpenAI) or can use local models. Helpful for discovering connections between Zettelkasten notes.

---

### 9. Zotero Integration (Citations)
**IDs:** `mgmeyers/obsidian-zotero-integration` OR `hans/obsidian-citation-plugin`
**Purpose:** Import Zotero references directly into Obsidian as literature notes.

**Workflow:**
1. Add paper to Zotero
2. In Obsidian: `Ctrl+Shift+Z` → search Zotero library
3. Select paper → inserts formatted citation and creates literature note from template

**Zotero connector setup:**
- Install Better BibTeX in Zotero
- Export library as `Better BibTeX JSON` to `00 - Meta/zotero-library.json`
- Point citation plugin to this file

---

## 🟡 Highly Recommended Plugins

### Excalidraw
**ID:** `zsviczian/obsidian-excalidraw-plugin`
**Purpose:** Embedded whiteboard drawing for architecture diagrams and concept maps.

**PUMA use:** Drawing the PUMA architecture (Figura 1 equivalent), experiment design diagrams.

### Tag Wrangler
**ID:** `pjeby/tag-wrangler`
**Purpose:** Rename, merge, and manage tags across the entire vault.

### Auto Link Title
**ID:** `zolrath/obsidian-auto-link-title`
**Purpose:** Automatically fetches page title when pasting a URL.

### Better Word Count
**ID:** `lukeleppan/better-word-count`
**Purpose:** Shows word count per section and overall — useful for tracking chapter progress.

### Table Editor (Advanced Tables)
**ID:** `tgrosinger/advanced-tables-obsidian`
**Purpose:** Easy table editing with `Tab` navigation and formula support.

### Footnotes
**ID:** `MichaBrugger/obsidian-footnotes`
**Purpose:** Quickly insert footnotes with `Ctrl+Shift+F` — useful for academic writing.

### Front Matter Title
**ID:** `snezhig/obsidian-front-matter-title`
**Purpose:** Display `title` from YAML frontmatter as the note title in file explorer.

---

## 📋 Vault Configuration Settings

### Obsidian Core Settings
```
Default new note location: 10 - Inbox
New note template: (handled by Templater + QuickAdd)
Attachments folder: 00 - Meta/Attachments
[[|Use [[Wikilinks]]: ON (not Markdown links)
Always update internal links: ON
```

### Graph View Configuration
- Node colour: by folder (colour-code 30-Permanent green, 20-Literature blue, 40-Projects orange)
- Filter: exclude `70 - Archive`, `00 - Meta`
- Forces: Link strength 1, Repel force 10

---

## 🔌 Plugin Startup Checklist

After installing all plugins:

- [ ] Dataview: Enable JS queries
- [ ] Templater: Set template folder + hotkeys
- [ ] Tasks: Configure global task format
- [ ] Periodic Notes: Set daily/weekly template paths
- [ ] Calendar: Show week numbers ON
- [ ] Git: Set remote + auto-commit interval
- [ ] QuickAdd: Configure all 4 macros
- [ ] Zotero: Export library + configure path
- [ ] Test: Create one note of each type using hotkeys
