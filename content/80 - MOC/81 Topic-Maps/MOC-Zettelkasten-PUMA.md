---
id: MOC-Zettelkasten-PUMA
title: "🗃️ MOC — Zettelkasten PUMA Knowledge Graph"
type: moc
tags: [moc, zettelkasten, knowledge-graph, puma]
created: 2026-04-06
updated: 2026-04-06
---

# 🗃️ MOC — Zettelkasten PUMA Knowledge Graph

> Navigation map for the Zettelkasten layer of the PUMA vault.
> Inspired by [Obsidian Zettelkasten Starter Kit](https://github.com/groepl/Obsidian-Zettelkasten-Starter-Kit) by Edmund Gröpl.

---

## Zettelkasten Hub

→ [[30 - Permanent/30 Zettelkasten-Hub/ZK-Hub-PUMA]] — main hub with Dataview indexes

---

## Structure Notes (Thematic Clusters)

→ [[30 - Permanent/30 Zettelkasten-Hub/ST-Prompting-Strategies]] — how prompting strategies affect LLM performance
→ [[30 - Permanent/30 Zettelkasten-Hub/ST-Reproducibility-Cluster]] — reproducibility crisis in LLM-SE research

---

## Permanent Notes — by Theme

### 🤖 LLM & AI Concepts (31 Concepts)
- [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] — CoT + few-shot strategies
- [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — PM domain concepts
- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — agents + reproducibility
- [[30 - Permanent/31 Concepts/PN-LLM-Local-vs-Cloud]] — local vs cloud tradeoffs
- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]] — retrieval-augmented generation
- [[30 - Permanent/31 Concepts/PN-ActiveReading-CognitivePractice]] — active reading methodology *(new)*

### 🔬 Research Methods (32 Methods)
- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] — DSR + SLR paradigms
- [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] — statistical methods

### 🧠 Frameworks (33 Frameworks)
- [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method-Complete]] — MIT AI Lab Q1/Q2/Q3 + Keshav *(new)*
- [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] — SDD + OpenSpec + SpecKit + BMAD
- [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]] — RCOIF prompting
- [[30 - Permanent/33 Frameworks/PN-EGI-Framework]] — exploratory guided interaction
- [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]] — AMI + DRCA + IIPR
- [[30 - Permanent/33 Frameworks/PN-PARA-GTD-Zettelkasten]] — PARA + GTD + Zettelkasten integration

---

## Source Notes (Bibliographic Anchors)

→ [[30 - Permanent/36 Sources/SRC-MITAILab-WP316]] — WP 316 source *(new)*
→ [[30 - Permanent/36 Sources/SRC-Keshav-2007-HowToReadPaper]] — Keshav 2007 *(new)*

---

## Person Notes (Key Thinkers)

→ [[30 - Permanent/37 Persons/PER-Keshav-Srinivasan]] — Three-Pass Method author
→ [[30 - Permanent/37 Persons/PER-Flyvbjerg-Bent]] — Uniqueness Trap / Reference Class Forecasting
→ [[30 - Permanent/37 Persons/PER-Yao-Shunyu]] — ReAct + Tree of Thoughts
→ [[30 - Permanent/37 Persons/PER-Hong-Sirui-MetaGPT]] — MetaGPT multi-agent framework
→ [[30 - Permanent/37 Persons/PER-Assalaarachchi-Nuwan]] — Agentic SPM vision

---

## Zettelkasten Health

```dataview
TABLE length(file.inlinks) AS "↙ Inlinks", length(file.outlinks) AS "↗ Outlinks", type AS "Type"
FROM "30 - Permanent"
WHERE type = "permanent" OR type = "structure-note"
SORT length(file.inlinks) DESC
LIMIT 20
```

---

## Note Flow Diagram

```
[Fleeting Note] → Inbox
      ↓ (process, 48h)
[Literature Note] → 20 - Literature (Keshav Pass 1–2)
      ↓ (Pass 3 + Q1/Q2/Q3)
[Permanent Note] → 30 - Permanent/31–33 (atomic, declarative)
      ↓ (cluster)
[Structure Note] → 30 - Permanent/30 ZK-Hub (thematic index)
      ↓ (navigation)
[MOC] → 80 - MOC (cross-project view)
```

---

*Zettelkasten approach adapted from groepl/Obsidian-Zettelkasten-Starter-Kit · April 2026*
