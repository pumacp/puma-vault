# PUMA Research Vault

![PUMA Logo](https://raw.githubusercontent.com/pumacp/puma/main/assets/img/PUMA.png)

> **PUMA — PUMA Understanding and Management with Agents**
>
> *Can language models manage ICT projects? An empirical benchmark of local LLM agents for issue triage and effort estimation in ICT projects.*

PUMA is a research-driven platform that benchmarks autonomous AI agents on practical project management tasks. This vault is the **unified knowledge management system** for the PUMA project. It integrates six complementary methodological layers into a single coherent workspace.

---

## What is this vault?

| Layer | System | Purpose |
|-------|--------|---------|
| **Navigation** | MOC (Map of Content) | Top-level orientation maps |
| **Productivity** | GTD (Getting Things Done) | Task and commitment management |
| **Organisation** | PARA | Projects · Areas · Resources · Archive |
| **Knowledge** | Zettelkasten | Atomic, permanent, linked ideas |
| **Numbering** | Johnny Decimal | Unique IDs for every note and folder |
| **Engineering** | SDD / BMAD | Spec-first development artefacts |

Research frameworks integrated: **EBSE+SLR/PRISMA · DSR · Grounded Theory · MIT Student Method · RCOIF · EGI · AMI · DRCA · IIPR · CoT · Few-Shot · Zero-Shot CoT · CDD · Agent Prompt Engineering**.

---

## Vault Structure (Johnny Decimal)

| Section | Description |
|---------|-------------|
| `00 - Meta` | Templates, dashboards, plugin configuration |
| `10 - Inbox` | GTD capture point — fleeting notes and quick capture (process daily) |
| `20 - Literature` | All source materials — papers, books, datasets, tools |
| `30 - Permanent` | Evergreen Zettelkasten notes — concepts, methods, frameworks, results |
| `40 - Projects` | Active project work — PUMA chapters, specs, experiments, BMAD agents |
| `50 - Areas` | Ongoing responsibilities — research quality, writing, code, ethics |
| `60 - Resources` | Reusable assets — prompts, workflows, checklists, glossary, bibliography |
| `70 - Archive` | Completed and deprecated material |
| `80 - MOC` | Maps of Content and master indexes — navigation layer |
| `90 - GTD` | Tasks, reviews, sprint boards, someday/maybe lists |

---

## Start Here

1. **Daily workflow** → `90 - GTD/95 Reviews/Daily-Review-Template`
2. **Project overview** → `80 - MOC/81 Topic-Maps/MOC-PUMA-Master`
3. **Research pipeline** → `80 - MOC/81 Topic-Maps/MOC-Research-Pipeline`
4. **Prompts library** → `60 - Resources/61 Prompts/`
5. **Glossary** → `60 - Resources/64 Glossary/Glossary-Master`
6. **Vault guide** → `VAULT-GUIDE.md`

---

## Note Lifecycle

```
Idea/Source → [10 Inbox] → Process → [20 Literature] or [30 Permanent]
                                             ↓
                                   Referenced in [40 Projects]
                                             ↓
                                   Linked in [80 MOC]
```

## Note Types

| Prefix | Type | Example |
|--------|------|---------|
| `FL-` | Fleeting note | `FL-2026-03-15-LLM-idea` |
| `LN-` | Literature note | `LN-Tawosi2022-TAWOS` |
| `PN-` | Permanent note | `PN-Few-Shot-Prompting` |
| `PR-` | Project note | `PR-PUMA-Ch1-Introduction` |
| `SP-` | Spec note | `SP-Triage-Agent-v1` |
| `EX-` | Experiment note | `EX-Llama32-ZeroShot-Triage` |
| `PT-` | Prompt template | `PT-Claude-RCOIF-Research` |
| `MOC-` | Map of Content | `MOC-LLM-Benchmarks` |

---

## Recommended Plugins

See `00 - Meta/Plugins-Config/Recommended-Plugins` for full setup instructions.

**Essential:** Dataview · Templater · Tasks · Calendar · Periodic Notes · Git · QuickAdd · Kanban · Excalidraw · Smart Connections · Zotero Integration

---

## Key Links

- **GitHub Repository:** [pumacp/PUMA](https://github.com/pumacp/PUMA)
- **Zotero Library:** PUMA group library
- **Datasets:** Jira SR (Zenodo DOI: 10.5281/zenodo.5901893) · TAWOS (GitHub: SOLAR-group/TAWOS)

---

*Last updated: April 2026 · License: MIT · Built for the PUMA project*
