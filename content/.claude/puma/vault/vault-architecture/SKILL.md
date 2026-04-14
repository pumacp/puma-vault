---
name: puma-vault-architecture
description: Complete PUMA Vault folder structure, Johnny Decimal address ranges, file naming conventions, and navigation reference. Use when creating new files, navigating the vault structure, debugging file placement, or onboarding to the vault. Contains the authoritative address map for all 10 vault sections (00–90). Load whenever unsure about where a file should go or how it should be named.
---

# PUMA Vault Architecture — Complete Reference

## Top-Level Structure

```
PUMA Vault/
├── .claude/
│   └── puma/                    ← Claude Code skills (this library)
├── 00 - Meta/                   ← Templates, plugins, dashboards, CSS
├── 10 - Inbox/                  ← GTD capture point
├── 20 - Literature/             ← All sources (papers, books, datasets, videos, tools)
├── 30 - Permanent/              ← Zettelkasten = LLM Wiki layer
├── 40 - Projects/               ← Active PUMA work
├── 50 - Areas/                  ← Ongoing responsibilities
├── 60 - Resources/              ← Prompts, workflows, checklists, glossary
├── 70 - Archive/                ← Completed and deprecated
├── 80 - MOC/                    ← Maps of Content (navigation)
├── 90 - GTD/                    ← Tasks, reviews, kanban
├── CLAUDE.md                    ← Vault-wide Claude Code config
├── README.md                    ← GitHub landing page
└── index.md                     ← Published landing page (Quartz)
```

## Section Details

### 00 — Meta
```
00 - Meta/
├── Dashboards/
│   ├── Dashboard-Experiment-Status.md
│   └── Dashboard-Research-Progress.md
├── Plugins-Config/
│   ├── Recommended-Plugins.md
│   └── Git-GitHub-Setup.md
├── Snippets/
│   └── CSS-Snippets-Guide.md
└── Templates/
    ├── Template-Keshav-ThreePass.md     ← Paper reading template
    ├── Template-Literature-Note-Paper.md
    ├── Template-Permanent-Note.md
    ├── Template-Experiment-Note.md
    ├── Template-Prompt-Note.md
    ├── Template-Sprint-Board.md
    ├── Template-Daily-Review.md
    ├── Template-Weekly-Review.md
    ├── Template-MOC.md
    └── [other templates...]
```

### 10 — Inbox (GTD Capture)
```
10 - Inbox/
├── README-Inbox.md
├── Fleeting-Notes/
│   ├── Template-Fleeting-Note.md
│   └── FL-YYYY-MM-DD-[topic].md       ← Fleeting notes (process within 48h)
└── Quick-Capture/
    └── Quick-Capture-Log.md
```

### 20 — Literature
```
20 - Literature/
├── MOC-Library.md
├── 20.1-Papers/
│   ├── MOC-Paper-and-Article-Notes.md
│   ├── README-Papers.md
│   ├── Agent-Architectures/           ← LN- notes organized by subtopic
│   ├── Agentic-Science/
│   ├── AI-Knowledge-Generation/
│   ├── AIOps-DevOps/
│   ├── Effort-Estimation/
│   ├── LLM-Agents-General/
│   ├── PM-AI-Convergence/
│   ├── Reproducibility-SE/
│   ├── Research-Methods/
│   ├── Scheduling-MAS/
│   └── Triage-Benchmarks/
├── 20.2-Books/
├── 20.3-Datasets/
│   └── LN-Datasets-JiraSR-TAWOS.md
├── 20.4-Videos-Podcasts/
│   └── YouTube/
│       ├── Context-Engineering/       ← VID-CE-NNN.md
│       ├── Dev-Tools-IDE/             ← VID-DEV-NNN.md
│       ├── LLM-Agents-MultiAgent/     ← VID-AGT-NNN.md
│       ├── Local-LLM-Ollama/          ← VID-LOC-NNN.md
│       ├── MCP-Protocols/             ← VID-MCP-NNN.md
│       ├── PM-Agile-AI/               ← VID-PM-NNN.md
│       ├── RAG-VectorDB/              ← VID-RAG-NNN.md
│       ├── Research-Literature/       ← VID-RES-NNN.md
│       ├── SDD-Specs-BMAD/            ← VID-SDD-NNN.md
│       └── Observability-Testing/     ← VID-OBS-NNN.md
├── 20.5-Repos-Code/
├── 20.6-Tools/
│   ├── LN-Tools-AI-Assistants-LLMs.md
│   ├── LN-Tools-Dev-Stack.md
│   ├── LN-Tools-Research-Bibliographic.md
│   └── [other tool notes...]
└── 20.7-Blog-Web/
```

### 30 — Permanent (Zettelkasten / LLM Wiki)
```
30 - Permanent/
├── 30-Zettelkasten-Hub/
│   ├── ZK-Hub-PUMA.md              ← MASTER INDEX (index.md equivalent)
│   ├── ST-Prompting-Strategies.md  ← Structure notes
│   └── ST-Reproducibility-Cluster.md
├── 31-Concepts/
│   ├── README-Concepts.md
│   └── PN-*.md                     ← Atomic concept notes
├── 32-Methods/
│   ├── README-Methods.md
│   └── PN-*.md                     ← Methodology notes
├── 33-Frameworks/
│   ├── README-Frameworks.md
│   └── PN-*.md                     ← Framework notes
├── 34-Results/
│   └── RES-Results-Placeholders.md ← Experiment results
├── 36-Sources/
│   └── SRC-*.md                    ← Key source summaries
└── 37-Persons/
    └── PER-*.md                    ← Researcher profiles
```

### 40 — Projects
```
40 - Projects/
└── PUMA/
    ├── 41.1-Introduction/          PR-PUMA-Ch1-Introduction.md
    ├── 41.2-Literature-Review/     PR-PUMA-Ch2-*.md
    ├── 41.3-Methods/               PR-PUMA-Ch3-Methods.md
    ├── 41.4-Results/               PR-PUMA-Ch4-Results.md
    │   ├── Stage1-Triage/
    │   └── Stage2-Estimation/
    ├── 41.5-Discussion/            PR-PUMA-Ch5-Discussion.md
    ├── 41.6-Specs/
    │   ├── SP-PUMA-Constitution.md ← MASTER AUTHORITY
    │   ├── SP-Architecture-v1.md
    │   ├── SP-Triage-Agent-v1.md
    │   └── SP-Estimation-Dataset-Specs.md
    ├── 41.7-Experiments/
    │   ├── EX-Hypotheses-H1-H2.md
    │   ├── EX-Stages-Overview.md
    │   ├── Stage1-Triage/
    │   └── Stage2-Estimation/
    ├── 41.8-Sprint-Boards/
    │   └── Sprint-NN.md
    └── 41.9-BMAD-Agents/
        ├── BMAD-PRD-PUMA.md
        └── BMAD-Agent-Roster.md
```

### 50 — Areas
```
50 - Areas/
├── 51-Research/
│   ├── AI-Use-Log.md               ← Chronological log (log.md equivalent)
│   ├── Keshav-ThreePass/
│   │   └── Keshav-Reading-Log.md
│   ├── MIT-AILab-Method/
│   │   └── MIT-AILab-Reading-Practice.md
│   └── SLR-PRISMA/
│       └── PRISMA-Log.md
├── 52-Writing/
│   └── Writing-Progress-Tracker.md
├── 53-Code-Dev/
│   └── Code-Review-Log.md
├── 54-Sustainability/
│   └── Carbon-Tracking-Log.md      ← CodeCarbon emissions log
├── 55-Ethics/
│   └── Ethics-Review-Log.md
└── 56-Smart-PMO/
    └── Smart-PMO-Vision.md
```

### 60 — Resources
```
60 - Resources/
├── 61-Prompts/
│   ├── PT-PUMA-Experiment-Prompts.md
│   ├── 61.1-LLM-Tools/
│   ├── 61.2-Research-Tools/
│   ├── 61.3-Dev-Tools/
│   ├── 61.5-BMAD-Prompts/
│   ├── Methodologies/
│   └── Phase1-Research/
│       ├── 01-Literature-Exploration/  PT-P1S1-NNN-*.md
│       └── 02-Scientific-Mapping/      PT-P1S2-NNN-*.md
├── 62-Workflows/                    WF-*.md
├── 63-Checklists/                   CL-*.md
├── 64-Glossary/
│   └── Glossary-Master.md
├── 65-Bibliographies/               BIB-*.md
└── 66-JD-Index/                    ← Johnny Decimal address index
```

### 80 — MOC
```
80 - MOC/
├── 81-Topic-Maps/
│   ├── MOC-PUMA-Master.md           ← Top-level navigation hub
│   └── MOC-[Topic].md
├── 82-Method-Maps/
└── 83-Project-Maps/
```

### 90 — GTD
```
90 - GTD/
├── 91-Tasks/
│   └── TASKS-Active.md
├── 92-Projects-List/
├── 93-Waiting-For/
├── 94-Someday-Maybe/
├── 95-Reviews/
│   ├── Daily-Review-Template.md
│   └── Weekly-Review-Template.md
└── 96-Kanban/
    └── Sprint-02-Board.md
```

## File Placement Decision Tree

```
New file to place? →
  Is it a captured idea? → 10-Inbox/Fleeting-Notes/
  Is it a paper/book/video/tool? → 20-Literature/[sub-type]/[topic]/
  Is it a synthesis of ideas? → 30-Permanent/[31/32/33]/
  Is it an experiment result? → 30-Permanent/34-Results/
  Is it active project work? → 40-Projects/PUMA/[41.X]/
  Is it an ongoing responsibility? → 50-Areas/[51-56]/
  Is it a reusable resource? → 60-Resources/[61-66]/
  Is it done/deprecated? → 70-Archive/
  Is it navigation/synthesis? → 80-MOC/
  Is it a task/review? → 90-GTD/
```

## Obsidian Plugin Stack (Recommended)

| Plugin | Purpose | Shortcut |
|--------|---------|---------|
| Dataview | Dynamic queries | auto |
| Templater | Template insertion | Alt+T |
| Tasks | Task tracking | inline `- [ ]` |
| Kanban | Sprint boards | open .md |
| QuickAdd | Fast capture | Ctrl+Shift+A |
| Zotero Integration | Import papers | Ctrl+Shift+Z |
| Obsidian Git | Auto-backup | Ctrl+Shift+G |
| Calendar | Date navigation | sidebar |
| Homepage | Open vault to home | startup |
