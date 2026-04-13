---
id: MOC-Home
title: PUMA Vault — Home Dashboard
type: home
tags:
  - home
  - moc
  - navigation
  - puma
  - dashboard
  - academic-writing
  - ai-ethics
  - ami
  - baseline
  - benchmark
  - bibliography
  - bmad
  - chain-of-thought
  - citation
  - cot
  - dataset
  - effort-estimation
  - egi
  - ethics
  - evaluation
  - fleeting-note
  - glossary
  - gtd
  - ict
  - index
  - issue-triage
  - jira
  - johnny-decimal
  - keshav
  - llm
  - local-llm
  - multi-agent
  - obsidian
  - openspec
  - para
  - pipeline
  - project-management
  - prompting
  - rcoif
  - reading-method
  - research
  - sdd
  - spec-driven-development
  - spec-kit
  - sprint
  - story-points
  - tawos
  - template
  - triage
  - vault
  - workflow
  - zettelkasten
created: 2026-03-01
updated: 2026-04-12
methodology:
  - PARA
  - GTD
  - Zettelkasten
  - JohnnyDecimal
  - SDD
  - BMAD
  - CDD
  - KeshavThreePass
---

![PUMA Logo](https://raw.githubusercontent.com/pumacp/puma/main/assets/img/PUMA.png)

# 🏠 PUMA Project Vault — Home Dashboard

> **PUMA — PUMA Understanding and Management with Agents**
>
> *Can language models manage ICT projects? An empirical benchmark of local LLM agents for issue triage and effort estimation in ICT projects.*

PUMA is a research-driven platform that benchmarks autonomous AI agents on practical project management tasks. This vault integrates **PARA · GTD · Zettelkasten · Johnny Decimal · SDD · BMAD · Keshav Three-Pass · CDD** into a single coherent workspace.

---

## 📂 Vault Sections

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

## ⚡ Quick Access

| Action                  | Link                                                       | Status            |
| ----------------------- | ---------------------------------------------------------- | ----------------- |
| 📋 Today's Daily Review | [[90 - GTD/95 Reviews/Daily-Review-Template]]              | Open daily        |
| 📥 New Fleeting Note    | [[10 - Inbox/Fleeting-Notes/Template-Fleeting-Note]]       | Capture now       |
| 🗺️ PUMA Master Map     | [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]                 | Central hub       |
| 🤖 BMAD Agent Roster    | [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]]  | Agent team        |
| 📋 Sprint Board         | [[40 - Projects/PUMA/41.8 Sprint-Boards/Sprint-02]]   | Active sprint     |
| 📚 Glossary             | [[60 - Resources/64 Glossary/Glossary-Master]]             | All terms         |
| 📖 Bibliography         | [[60 - Resources/65 Bibliographies/BIB-Master-APA7]]       | APA7 refs         |
| 🔢 JD Index             | [[60 - Resources/66 Johnny-Decimal-Index/JD-Master-Index]] | File address book |

---

## 📊 Milestones

| M   | Deadline   | Focus                            | Status         |
| --- | ---------- | -------------------------------- | -------------- |
| M1  | 2026-03-08 | Ch.1 + Environment verified      | ✅ Delivered    |
| M2  | 2026-04-08 | Triage Module + Baseline + Stats | 🔄 In Progress |
| M3  | 2026-05-10 | Estimation Module + TAWOS        | ⏳ Pending      |
| M4  | 2026-06-07 | Full Results + Carbon + Video    | ⏳ Pending      |
| M5  | 2026-06-23 | Defence + v1.0 Tag               | ⏳ Pending      |

---

## 📈 Active Tasks (next 14 days)

```tasks
not done
due before 2026-04-22
sort by due
limit 15
```

---

## 📊 Experiment Tracker

```dataview
TABLE experiment-id AS "ID", status AS "Status", methodology AS "Method", tool AS "Tool"
FROM #experiment
SORT date-started DESC
```

---

## 📚 Literature Pipeline

```dataview
TABLE title AS "Title", first-author AS "Author", year AS "Year", status AS "Status", relevance AS "⭐"
FROM #literature
SORT relevance DESC, year DESC
LIMIT 15
```

---

## 🔄 Recently Modified

```dataview
TABLE file.mtime AS "Modified"
FROM ""
WHERE file.mtime >= date(today) - dur(3 days)
SORT file.mtime DESC
LIMIT 15
```

---

## 📂 Vault Information Flow

```
New idea / paper / observation
         ↓
[10 - Inbox] Fleeting Note  ← GTD Capture
         ↓ process within 48h
[20 - Literature] @citekey.md  ← Keshav Pass-1 + Pass-2
         OR
[30 - Permanent] Declarative-Title.md  ← Keshav Pass-3 + Zettelkasten
         ↓
[40 - Projects] PUMA Chapters + Specs + Experiments  ← SDD + BMAD
         ↓
[80 - MOC] Maps of Content  ← Navigation + Synthesis
         ↓
[90 - GTD] Tasks, Sprint Boards, Reviews  ← GTD Execute
```

### Methodology Integration

| Layer | Methodology | Purpose | Note |
|-------|-------------|---------|------|
| Structure | PARA | Organise by actionability | [[30 - Permanent/33 Frameworks/PN-PARA-GTD-Zettelkasten]] |
| Numbering | Johnny Decimal | Every file has an address | [[60 - Resources/66 Johnny-Decimal-Index/JD-Master-Index]] |
| Workflow | GTD | Capture → Clarify → Organise → Reflect → Engage | [[30 - Permanent/33 Frameworks/PN-PARA-GTD-Zettelkasten]] |
| Knowledge | Zettelkasten | Atomic, permanent, linked ideas | [[30 - Permanent/30 Zettelkasten-Hub/ZK-Hub-PUMA]] |
| Development | SDD + OpenSpec + Spec Kit | Spec-first | [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] |
| AI Team | BMAD | Multi-agent simulation | [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]] |
| Paper Reading | Keshav Three-Pass | Systematic literature processing | [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method]] |
| AI Prompting | CDD + RCOIF + CoT + AMI + EGI | Context-driven AI assistance | [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]] · [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] |
| Navigation | MOCs | Hub notes for complex topics | [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]] |

---

*Vault v1.0 (April 2026) · PARA + GTD + Zettelkasten + Johnny Decimal + SDD + BMAD + Keshav + CDD*
