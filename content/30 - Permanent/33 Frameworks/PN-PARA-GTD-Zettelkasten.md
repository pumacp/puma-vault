---
id: PN-PARA-GTD-Zettelkasten
title: "PARA, GTD, and Zettelkasten work as complementary engines, not competing systems"
type: permanent
created: 2026-04-01
updated: 2026-04-06
tags: [permanent-note, para, gtd, zettelkasten, johnny-decimal, methodology, knowledge-management]
---

# PARA, GTD, and Zettelkasten work as complementary engines, not competing systems

The key mistake in setting up a knowledge management system is trying to merge PARA, GTD, and Zettelkasten into one structure. They should each do what they do best, connected by Obsidian's linking capability.

---

## The Four Engines

**PARA** (Tiago Forte) = the **WHAT** — organises information by actionability:
- Projects: specific outcomes with deadlines (PUMA chapters, PEC deliverables)
- Areas: ongoing responsibilities (research quality, writing standards)
- Resources: reference material (papers, tools, prompts)
- Archive: completed or inactive items

**GTD** (David Allen) = the **WHEN** — drives the workflow:
- Capture → Clarify → Organise → Reflect → Engage
- In PUMA: Inbox (10-) → process within 48h → route to Literature/Permanent/Projects/GTD

**Zettelkasten** (Luhmann) = the **WHY** — compounds knowledge permanently:
- Atomic permanent notes with declarative titles
- Never move — only link
- One idea per note, in your own words
- Notes connect across projects and time

**Johnny Decimal** = the **WHERE** — makes everything findable:
- AC.ID numbering system (e.g., 30.12 = Area 30, Category 12)
- Every file has a unique, stable address
- Works across platforms (Obsidian, filesystem, external drives)

---

## Critical Rules for Coexistence

1. **Permanent notes NEVER go inside project folders.** When a project archives, knowledge gets buried. Permanent notes live in `30 - Permanent/` forever.

2. **Literature notes are NOT permanent notes.** Literature notes (in `20 - Literature/`) represent external knowledge. Permanent notes represent *your synthesised insight*.

3. **GTD tasks live inline in project notes,** then queried globally by the Tasks plugin. Project folders contain documents; task lists surface them.

4. **JD numbers apply to folders and organised files,** not to individual Zettelkasten notes. Permanent notes use descriptive, declarative titles.

5. **MOCs are the connective tissue.** A MOC (Map of Content) links permanent notes, project files, literature notes, and GTD tasks around a theme — without any note having to "move."

---

## Application in PUMA Vault

The PUMA vault implements all four engines:

| Element | Implementation |
|---------|----------------|
| PARA Projects | `40 - Projects/PUMA/` (PEC deliverables, specs, experiments) |
| PARA Areas | `50 - Areas/` (research quality, writing, code, sustainability) |
| PARA Resources | `60 - Resources/` (prompts, workflows, glossary, bibliography) |
| PARA Archive | `70 - Archive/` (completed sprints, deprecated notes) |
| GTD Inbox | `10 - Inbox/` (fleeting notes, quick capture) |
| GTD Reviews | `90 - GTD/95 Reviews/` (daily + weekly templates) |
| GTD Tasks | Inline `- [ ]` with Tasks plugin queries in dashboards |
| Zettelkasten | `30 - Permanent/` (flat, atomic, linked permanent notes) |
| Johnny Decimal | `60 - Resources/66 JD-Index/JD-Master-Index` |
| MOCs | `80 - MOC/` (PUMA Master, Research Pipeline, Methods, etc.) |

---

## References

- Forte, T. (2022). *Building a second brain*. Atria Books.
- Allen, D. (2001). *Getting things done*. Penguin Books.
- Ahrens, S. (2017). *How to take smart notes*. CreateSpace.
- Dubois, S. Obsidian Starter Kit. https://obsidian-starter-kit.netlify.app

## Related Notes

- [[30 - Permanent/33 Frameworks/PN-SDD-Framework]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
- [[60 - Resources/66 Johnny-Decimal-Index/JD-Master-Index]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
