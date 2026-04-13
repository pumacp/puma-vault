---
id: ZK-Hub-PUMA
title: "🗃️ Zettelkasten Hub — PUMA Research Knowledge Base"
type: zettelkasten-hub
tags: [zettelkasten, hub, moc, knowledge-base, puma, agentic-science, ami, bdd, bmad, chain-of-thought, cornell-notes, cot, critical-thinking, drca, dsr, effort-estimation, egi, embeddings, few-shot, finer, fleeting-note, github, graph-rag, gtd, iipr, index, issue-triage, keshav, knowledge-graph, literature-note, literature-review, llm, metrics, multi-agent, navigation, non-parametric, note-taking, obsidian, para, permanent-note, precision-recall, prisma, prompting, rag, rcoif, react, reading-method, reasoning, reasoning-action, red-teaming, research-methodology, retrieval, sdd, slr, spec-driven-development, statistics, story-points, triage, vault, vector-db, wilcoxon]
created: 2026-04-06
updated: 2026-04-06
---

# 🗃️ Zettelkasten Hub — PUMA Research Knowledge Base

> **Zettelkasten principle** (Niklas Luhmann, 1927–1998): knowledge grows through atomic, permanently linked notes. Each note = one idea. Notes never move. Links create emergent insight.
>
> **This hub** follows the [Obsidian Zettelkasten Starter Kit](https://github.com/groepl/Obsidian-Zettelkasten-Starter-Kit) pattern by Edmund Gröpl, adapted for the PUMA Project research context.

---

## 🗂️ Zettelkasten Note Types (adapted from groepl)

| Type | Prefix | Location | Purpose |
|------|--------|----------|---------|
| **Fleeting Note** | `FL-` | `10 - Inbox/Fleeting-Notes/` | Raw capture, process within 48h |
| **Literature Note** | `LN-` | `20 - Literature/` | External source processed with Keshav |
| **Permanent Note** | `PN-` | `30 - Permanent/31–33/` | Your synthesised atomic idea |
| **Structure Note** | `ST-` | `30 - Permanent/30 Zettelkasten-Hub/` | Index / hub for a cluster of PN |
| **Source Note** | `SRC-` | `30 - Permanent/36 Sources/` | Full source metadata (author, year, context) |
| **Person Note** | `PER-` | `30 - Permanent/37 Persons/` | Key thinkers (Keshav, Flyvbjerg, Luhmann…) |
| **MOC** | `MOC-` | `80 - MOC/` | Navigation map across note clusters |

---

## 📋 PUMA Permanent Notes Index

### 31 Concepts — Core Ideas

```dataview
TABLE file.ctime AS "Created", tags AS "Tags"
FROM "30 - Permanent/31 Concepts"
WHERE type = "permanent"
SORT file.ctime DESC
```

### 32 Methods — Research & Statistical

```dataview
TABLE file.ctime AS "Created"
FROM "30 - Permanent/32 Methods"
WHERE type = "permanent"
SORT file.name ASC
```

### 33 Frameworks — Methodologies & Prompting

```dataview
TABLE file.ctime AS "Created"
FROM "30 - Permanent/33 Frameworks"
WHERE type = "permanent"
SORT file.name ASC
```

---

## 🔗 Zettelkasten Rules (PUMA)

> [!tip] Core Rules — Memorise These
> 1. **One idea per note**. If a note wants to say two things, split it.
> 2. **Declarative title**. The title IS the claim. Example: ✅ "RAG retrieval improves precision when examples are structurally similar to the query" ❌ "RAG notes"
> 3. **Never move a permanent note**. It lives in `30 - Permanent/` forever. Projects archive; knowledge does not.
> 4. **Always link**. Every permanent note must link to: its source LN, at least one related PN, and one MOC.
> 5. **Write in your own words**. No copy-paste from sources. If you can't restate it, you don't understand it yet.
> 6. **Distinguish claim from evidence**. State the idea, then support it. Never bury the claim in the middle.

---

## 🌐 Knowledge Graph Status

```dataview
TABLE length(file.inlinks) AS "Inlinks", length(file.outlinks) AS "Outlinks"
FROM "30 - Permanent"
WHERE type = "permanent"
SORT length(file.inlinks) DESC
LIMIT 15
```

---

## 🔍 Orphan Notes

```dataview
LIST
FROM "30 - Permanent"
WHERE length(file.inlinks) = 0 AND length(file.outlinks) = 0
SORT file.ctime ASC
```

---

## 📚 Source Notes Index

```dataview
TABLE author AS "Author", year AS "Year", type AS "Type"
FROM "30 - Permanent/36 Sources"
SORT year DESC
```

---

## 👤 Person Notes Index

```dataview
TABLE role AS "Role", field AS "Field"
FROM "30 - Permanent/37 Persons"
SORT file.name ASC
```

---

## 📎 Quick Note Index (permanent notes)

### 31 Concepts
- [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — Issue triage + effort estimation (F1-macro, MAE)
- [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] — Chain-of-Thought + Few-Shot theory
- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — LLM Agents, Reproducibility, Uniqueness Trap, Red Teaming, Agent OS
- [[30 - Permanent/31 Concepts/PN-LLM-Local-vs-Cloud]] — Why local inference for benchmarks
- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]] — RAG for Stage 4
- [[30 - Permanent/31 Concepts/PN-ReAct-AgentPattern]] — Reasoning + acting agent loop
- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — Specialisation boundaries
- [[30 - Permanent/31 Concepts/PN-Agentic-Science-Paradigm]] — Agentic science paradigm
- [[30 - Permanent/31 Concepts/PN-AI-Scientific-Knowledge-Generation]] — AI-driven discovery
- [[30 - Permanent/31 Concepts/PN-PUMA-within-AgenticScience-Trajectory]] — PUMA's theoretical position
- [[30 - Permanent/31 Concepts/PN-ToolSelection-PUMA]] — Tool choice rationale

### 32 Methods
- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] — DSR paradigm + PRISMA SLR
- [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] — Statistical methods + FINER

### 33 Frameworks
- [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] — Spec-Driven Development + BDD + BMAD
- [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]] — Structured prompting methodology
- [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method]] — Research reading method
- [[30 - Permanent/33 Frameworks/PN-EGI-Framework]] — Guided domain exploration
- [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]] — Advanced prompting techniques
- [[30 - Permanent/33 Frameworks/PN-PARA-GTD-Zettelkasten]] — Vault organisation integration

### Structure Notes
- [[30 - Permanent/30 Zettelkasten-Hub/ST-Prompting-Strategies]] — Prompting strategies cluster
- [[30 - Permanent/30 Zettelkasten-Hub/ST-Reproducibility-Cluster]] — Reproducibility cluster

---

## 🗺️ Related MOCs

- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-Literature-Review]]
- [[80 - MOC/81 Topic-Maps/MOC-Zettelkasten-PUMA]]
