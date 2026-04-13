---
id: MOC-PUMA-Master
title: "🗺️ MOC — PUMA Master Map"
type: moc
tags: [moc, puma, master, navigation, academic-writing, agentic-science, ai-science, ami, architecture, backlog, bdd, benchmark, bibliography, bmad, chain-of-thought, citation, code-review, cornell-notes, cot, critical-thinking, dashboard, dataset, drca, dsr, effort-estimation, egi, embeddings, few-shot, finer, github, glossary, gtd, hypothesis, ict, iipr, index, issue-triage, jira, keshav, literature-review, llama, llm, meta, metagpt, metrics, mistral, mit-ai-lab, multi-agent, non-parametric, note-taking, obsidian, para, pec, pipeline, planning, precision-recall, prisma, project-management, prompting, rag, rcoif, react, reading-method, reasoning, reasoning-action, red-teaming, research, research-methodology, retrieval, scientific-knowledge, sdd, slr, smart-pmo, spec-driven-development, statistics, story-points, tawos, tree-of-thoughts, triage, vault, vector-db, wilcoxon, workflow, wp316, zero-shot, zettelkasten]
created: 2026-03-01
updated: 2026-04-06
---

# 🗺️ MOC — PUMA Master Map

> **Central navigation hub for the PUMA project.**
> PUMA: Platform for Understanding and Management with Agents.
> *"Can language models manage ICT projects?"*

---

## 🎯 Project Identity

**Full title**: Pueden los modelos de lenguaje gestionar proyectos tecnológicos? PUMA: Plataforma de benchmark para la evaluación empírica de agentes en tareas de gestión de proyectos.

**Research question**: Do different LLM models and prompting strategies produce statistically significant differences in issue triage quality (F1-macro) and effort estimation (MAE) on real PM datasets with verified labels?

**Hypotheses**: [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]

**MVP**: Triage module (Stage 1) + statistical validation. Self-contained academic contribution.

---

## 📋 PUMA Project Structure → Vault Mapping

| PUMA Project | Content | Vault Location |
|-------------|---------|----------------|
| 1. Introduction | Context, objectives, methodology, planning | [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] |
| 2. Materials & Methods | DSR + SLR + experiment design + stack | [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] |
| 3. Results | F1-macro, MAE, Wilcoxon, carbon | [[40 - Projects/PUMA/41.4 Results/PR-PUMA-Ch4-Results]] |
| 4. Conclusions | H1/H2 decision + future work (Smart PMO) | [[40 - Projects/PUMA/41.5 Discussion/PR-PUMA-Ch5-Discussion]] |
| 5. Glossary | All definitions | [[60 - Resources/64 Glossary/Glossary-Master]] |
| 6. Bibliography | APA 7, ≥40 references | [[60 - Resources/65 Bibliographies/BIB-Master-APA7]] |
| 7. Annexes | Templates, dataset prep, extended results | *in project folders* |

---

## 🔬 Experiment Design

| Stage | Task | Dataset | Metric | Status |
|-------|------|---------|--------|--------|
| 1 (MVP) 🟢 | Issue triage | Jira SR (200 stratified) | F1-macro ≥ 0.55 | 🔄 PEC2 |
| 2 🟢 | Effort estimation | TAWOS | MAE ≤ 3.0 SP | ⏳ PEC3 |
| 3 🟡 | Backlog prioritisation | TAWOS | Spearman ≥ 0.50 | ⏳ Conditional |
| 4 🔴 | RAG-enhanced triage | Jira SR | F1-macro > Stage 1 | ⏳ Optional |
| 5 🔴 | Smart PMO multi-agent | — | MTTD -30% | 🔭 Future work |

**Prompting strategies**: Zero-Shot · Few-Shot-3 · Few-Shot-6 · Chain-of-Thought  
**Models**: Llama 3.2 8B · Mistral 7B · (Phi-3.5 Mini as fallback)  
**Reproducibility**: seed=42, temperature=0, fixed requirements.txt

---

## 🏗️ Architecture

- [[SP-Architecture]] — 7-layer SwarmPM architecture
- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] — Non-negotiable principles
- [[SP-Triage-Agent]] — Triage agent spec
- [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]] — Multi-agent team
- [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-PRD-PUMA]] — Product requirements

---

## 📚 Key Literature

- [[20 - Literature/20.1 Papers/LN-KeyPapers-CoGEE-Angermeir-Flyvbjerg]] — Core papers
- [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] — Datasets
- [[60 - Resources/65 Bibliographies/BIB-Master-APA7]] — Full bibliography (42 refs)

---

## 🧠 Key Permanent Notes

**PM & Experiment concepts:**
- [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — F1-macro, MAE, priority schema
- [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] — Prompting strategies (S1–S4)
- [[30 - Permanent/31 Concepts/PN-LLM-Local-vs-Cloud]] — Why local inference
- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]] — RAG for Stage 4
- [[30 - Permanent/31 Concepts/PN-ToolSelection-PUMA]] — Tool selection rationale for PUMA

**Agent patterns & AI science:**
- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — Agents, Reproducibility, Uniqueness Trap, Red Teaming
- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — Specialisation (→ Smart PMO)
- [[30 - Permanent/31 Concepts/PN-ReAct-AgentPattern]] — Stage 4 reasoning pattern
- [[30 - Permanent/31 Concepts/PN-Agentic-Science-Paradigm]] — AI as active scientific agent
- [[30 - Permanent/31 Concepts/PN-AI-Scientific-Knowledge-Generation]] — AI-generated scientific knowledge
- [[30 - Permanent/31 Concepts/PN-PUMA-within-AgenticScience-Trajectory]] — PUMA's place in the agentic science trajectory
- [[30 - Permanent/31 Concepts/PN-ActiveReading-CognitivePractice]] — Active reading as cognitive practice

**Research methods:**
- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] — DSR + PRISMA
- [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] — Statistical protocol

**Frameworks:**
- [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] — SDD + BDD + BMAD
- [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]] — Structured prompting
- [[30 - Permanent/33 Frameworks/PN-EGI-Framework]] — Exploratory guided interaction
- [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]] — AMI + DRCA + IIPR advanced prompting
- [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method]] — MIT AI Lab active reading method
- [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method-Complete]] — MIT AI Lab full Q1/Q2/Q3 + Keshav
- [[30 - Permanent/33 Frameworks/PN-PARA-GTD-Zettelkasten]] — PARA + GTD + Zettelkasten integration

**Knowledge hub & Structure notes:**
- [[30 - Permanent/30 Zettelkasten-Hub/ZK-Hub-PUMA]] — Full Zettelkasten index
- [[30 - Permanent/30 Zettelkasten-Hub/ST-Prompting-Strategies]] — Prompting strategies thematic cluster
- [[30 - Permanent/30 Zettelkasten-Hub/ST-Reproducibility-Cluster]] — Reproducibility crisis cluster

**Sources & Persons:**
- [[30 - Permanent/36 Sources/SRC-Keshav-2007-HowToReadPaper]] — Keshav 2007 Three-Pass paper
- [[30 - Permanent/36 Sources/SRC-MITAILab-WP316]] — MIT AI Lab Working Paper 316
- [[30 - Permanent/37 Persons/PER-Keshav-Srinivasan]] — Three-Pass Method author
- [[30 - Permanent/37 Persons/PER-Flyvbjerg-Bent]] — Uniqueness Trap / Reference Class Forecasting
- [[30 - Permanent/37 Persons/PER-Yao-Shunyu]] — ReAct + Tree of Thoughts
- [[30 - Permanent/37 Persons/PER-Hong-Sirui-MetaGPT]] — MetaGPT multi-agent framework
- [[30 - Permanent/37 Persons/PER-Assalaarachchi-Nuwan]] — Agentic SPM vision

**Results:**
- [[RES-Results-Placeholders]] — Experiment results placeholders (Stage 1 & 2)

---

## 📊 Progress Dashboard

```dataview
TABLE status AS "Status", deadline AS "Deadline", pec AS "PEC"
FROM "40 - Projects/PUMA"
WHERE type = "project-note"
SORT deadline ASC
```

---

## 🔗 Linked MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]] — Research workflow
- [[80 - MOC/81 Topic-Maps/MOC-Literature-Review]] — SLR state of the art
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]] — Benchmark landscape
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]] — All methodologies
- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]] — Prompt templates
- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]] — Technology stack

---

*MOC updated: April 2026 (PEC2)*
