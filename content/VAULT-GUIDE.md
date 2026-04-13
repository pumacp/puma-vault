---
id: VAULT-GUIDE
title: PUMA Vault — Complete User Guide
type: guide
tags:
  - guide
  - vault
  - obsidian
  - methodology
  - academic-writing
  - agile
  - ai-ethics
  - architecture
  - benchmark
  - bibliography
  - bmad
  - carbon-footprint
  - checklist
  - citation
  - code-review
  - codecarbon
  - dashboard
  - dsr
  - effort-estimation
  - embeddings
  - ethics
  - fleeting-note
  - github
  - glossary
  - gtd
  - hypothesis
  - ict
  - index
  - issue-triage
  - johnny-decimal
  - kanban
  - keshav
  - knowledge-management
  - literature-note
  - literature-review
  - llm
  - local-llm
  - metrics
  - moc
  - multi-agent
  - navigation
  - openspec
  - para
  - pec
  - permanent-note
  - pipeline
  - precision-recall
  - prompt-engineering
  - prompting
  - puma
  - rag
  - rcoif
  - reading-method
  - research
  - research-methodology
  - research-tools
  - retrieval
  - sdd
  - slr
  - spec-driven-development
  - spec-kit
  - sprint
  - story-points
  - sustainability
  - template
  - triage
  - vector-db
  - workflow
  - zettelkasten
  - zotero
created: 2026-03-01
updated: 2026-04-12
---

![PUMA Logo](https://raw.githubusercontent.com/pumacp/puma/main/assets/img/PUMA.png)

# 📘 PUMA Vault — Complete User Guide

> **PUMA — PUMA Understanding and Management with Agents**
>
> *Can language models manage ICT projects? An empirical benchmark of local LLM agents for issue triage and effort estimation in ICT projects.*

Version 1.0 · Updated April 2026

---

## Vault Sections

| Section | Description |
|---------|-------------|
| [[MOC Meta\|00 - Meta]] | Templates, dashboards, plugin configuration |
| [[10 - Inbox/README-Inbox\|10 - Inbox]] | GTD capture point — fleeting notes and quick capture |
| [[MOC Library\|20 - Literature]] | Papers, books, videos, tools, datasets |
| [[30 - Permanent/31 Concepts/README-Concepts\|30 - Permanent]] | Zettelkasten — concepts, methods, frameworks, results |
| [[MOC Projects\|40 - Projects]] | Active project work — chapters, specs, experiments, BMAD |
| [[50 - Areas/51 Research/Keshav-ThreePass/Keshav-Reading-Log\|50 - Areas]] | Ongoing responsibilities — research, writing, code, ethics |
| [[60 - Resources/64 Glossary/Glossary-Master\|60 - Resources]] | Prompts, workflows, checklists, glossary, bibliography |
| [[70 - Archive/72 Completed/README\|70 - Archive]] | Completed and deprecated material |
| [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master\|80 - MOC]] | Maps of Content — navigation and synthesis layer |
| [[90 - GTD/95 Reviews/Daily-Review-Template\|90 - GTD]] | Tasks, reviews, sprint boards, someday/maybe |

---

## What is this vault?

This is the **PUMA Knowledge Vault** — a professional workspace for the PUMA Project. It integrates four knowledge management systems (PARA, GTD, Zettelkasten, Johnny Decimal) with academic research workflows (SLR, DSR, Keshav Three-Pass) and development methodologies (SDD, BMAD, OpenSpec, CDD).

**Single principle**: every piece of information has a clear home, a clear purpose, and a clear path to the PUMA Project.

---

## 5-Minute Setup

1. Open Obsidian → Open Vault → select this folder
2. Trust author (for Templater to work)
3. Install plugins: Settings → Community Plugins → Browse → install each plugin in `Recommended-Plugins`
4. Set Homepage plugin: open `00 - Home.md` as startup page
5. Configure Zotero Connector: point to your Zotero library
6. Run `git init` in vault root if using Git backup

---

## Daily Workflow (GTD)

**Morning** (10 min):
1. Open `90 - GTD/95 Reviews/Daily-Review-Template` → create today's note with Templater
2. Check `90 - GTD/91 Tasks/TASKS-Active` for overdue and due-today tasks
3. Check `10 - Inbox/` for unprocessed fleeting notes

**During work**:
- New ideas/sources → `10 - Inbox/Fleeting-Notes/` (use Template-Fleeting-Note)
- New papers → use Zotero connector → routed to `20 - Literature/20.1 Papers/`
- New tasks → inline `- [ ] Task 📅 YYYY-MM-DD` in relevant project note

**Evening** (5 min):
- Process inbox items that accumulated
- Update task statuses

---

## Weekly Workflow (GTD Weekly Review)

Every Sunday or Monday, open `90 - GTD/95 Reviews/Weekly-Review-Template`:
1. Process Inbox to zero
2. Review all active projects (PEC progress, sprint board)
3. Convert Fleeting Notes → Literature Notes or Permanent Notes
4. Update MOCs with new connections
5. Review Waiting For items (advisor feedback, etc.)
6. Plan next week's tasks

---

## How to Add a New Paper

**Option A — with Zotero** (recommended):
1. Import paper to Zotero → tag `#puma-include`
2. Use Obsidian Zotero Integration plugin: `Ctrl+Shift+Z` → search → insert
3. Paper lands in `20 - Literature/20.1 Papers/` as `@citekey.md`
4. Fill Keshav Three-Pass template

**Option B — manual**:
1. Copy `00 - Meta/Templates/Template-Keshav-ThreePass.md`
2. Place in appropriate `20 - Literature/20.1 Papers/[Topic]/` subfolder
3. Fill all fields; set `status: to-read`

---

## How to Add a Permanent Note (Zettelkasten)

1. Complete Keshav Pass-3 on a paper (or have a new insight)
2. Copy `00 - Meta/Templates/Template-Permanent-Note.md`
3. **Title must be a declarative statement** (e.g., "RAG retrieval improves precision when historical examples are structurally similar to the query")
4. Place in `30 - Permanent/31 Concepts/`, `32 Methods/`, or `33 Frameworks/` based on content
5. Link to: source literature note, related permanent notes, relevant MOC
6. **Never move a permanent note** — only add links

---

## How to Run an Experiment

1. Check spec in `40 - Projects/PUMA/41.6 Specs/` — validate against constitution
2. Add experiment to `40 - Projects/PUMA/41.7 Experiments/` using Template-Experiment-Note
3. Create task in `90 - GTD/96 Kanban/Sprint-02-Board.md`
4. Run code (CodeCarbon wrapping all inference)
5. Log results in `40 - Projects/PUMA/41.4 Results/`
6. Update `00 - Meta/Dashboards/Dashboard-Experiment-Status`

---

## Methodology Quick Reference

| When you... | Use this method | Notes live in |
|-------------|----------------|---------------|
| Capture a quick idea | GTD Capture → Fleeting Note | `10 - Inbox/` |
| Read a new paper | Keshav Three-Pass | `20 - Literature/` |
| Synthesise an insight | Zettelkasten Permanent Note | `30 - Permanent/` |
| Work on PUMA chapter | PARA Project | `40 - Projects/PUMA/` |
| Use AI assistance | RCOIF + CDD | `60 - Resources/61 Prompts/` |
| Plan a sprint | GTD + Agile | `90 - GTD/96 Kanban/` |
| Simulate agent team | BMAD | `40 - Projects/41.9 BMAD-Agents/` |
| Write a spec | SDD + Spec Kit | `40 - Projects/41.6 Specs/` |
| Find any file | Johnny Decimal | `60 - Resources/66 JD-Index/` |
| Navigate topics | MOC | `80 - MOC/` |

---

## Plugin Quick Reference

| Plugin | Shortcut | Use |
|--------|----------|-----|
| Dataview | auto | Dynamic tables and queries |
| Templater | `Alt+T` | Insert template into current note |
| Tasks | inline `- [ ]` | Task tracking everywhere |
| Kanban | open .md | Sprint board |
| QuickAdd | `Ctrl+Shift+A` | Fast note creation |
| Zotero Integration | `Ctrl+Shift+Z` | Import papers |
| Obsidian Git | `Ctrl+Shift+G` | Backup to GitHub |
| Calendar | sidebar | Navigate to any date |

---

## File Naming Conventions

| Type | Prefix | Example |
|------|--------|---------|
| Literature Note | `LN-` | `LN-Angermeir-2025-Reproducibility.md` |
| OR Zotero citekey | `@` | `@Angermeir2025Reproducibility.md` |
| Permanent Note | `PN-` | `PN-RAG-Embeddings-VectorDB.md` |
| Project Note | `PR-PUMA-` | `PR-PUMA-Ch1-Introduction.md` |
| Spec | `SP-` | `SP-Architecture-v1.md` |
| Experiment | `EX-` | `EX-Hypotheses-H1-H2.md` |
| Prompt Template | `PT-` | `PT-PUMA-Experiment-Prompts.md` |
| Workflow | `WF-` | `WF-SLR-Pipeline.md` |
| Checklist | `CL-` | `CL-Quality-Checklists.md` |
| MOC | `MOC-` | `MOC-PUMA-Master.md` |

---

## Vault Architecture (Johnny Decimal)

```
00 — Meta (templates, plugins, CSS)
10 — Inbox (GTD capture point)
20 — Literature (papers, books, datasets, tools)
30 — Permanent (Zettelkasten: concepts, methods, frameworks)
40 — Projects (PUMA: chapters, specs, experiments, BMAD)
50 — Areas (research quality, writing, code, sustainability)
60 — Resources (prompts, workflows, checklists, glossary, bibliography, JD-index)
70 — Archive (completed, deprecated)
80 — MOC (Maps of Content — navigation layer)
90 — GTD (tasks, reviews, kanban, someday/maybe)
```

---

*Vault Guide v2.0 · April 2026*
