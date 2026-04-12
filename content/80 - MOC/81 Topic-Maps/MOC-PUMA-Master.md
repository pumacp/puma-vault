---
id: MOC-PUMA-Master
title: "🗺️ MOC — PUMA Master Map"
type: moc
tags: [moc, puma, master, navigation]
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

**Agent patterns:**
- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — Agents, Reproducibility, Uniqueness Trap, Red Teaming
- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — Specialisation (→ Smart PMO)
- [[30 - Permanent/31 Concepts/PN-ReAct-AgentPattern]] — Stage 4 reasoning pattern

**Research methods:**
- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] — DSR + PRISMA
- [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] — Statistical protocol

**Frameworks:**
- [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] — SDD + BDD + BMAD
- [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]] — Structured prompting

**Knowledge hub:**
- [[30 - Permanent/30 Zettelkasten-Hub/ZK-Hub-PUMA]] — Full Zettelkasten index

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
