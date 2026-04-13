---
id: BMAD-Agent-Roster
title: "🤖 BMAD Agent Roster — PUMA Project"
type: bmad-roster
tags: [bmad, agents, agentic, multi-agent, puma, agile, ai-ethics, ai-tools, anthropic, architecture, backlog, benchmark, bias, carbon-footprint, checklist, claude, codecarbon, cornell-notes, critical-thinking, dataset, dev-tools, effort-estimation, ethics, falsifiability, finer, github, human-in-the-loop, hypothesis, ide, issue-triage, jira, keshav, langgraph, literature-review, local-llm, mas, metrics, moc, non-parametric, note-taking, obsidian, ollama, openhands, openspec, orchestration, pec, perplexity, planning, popper, precision-recall, prisma, project-management, python, reading-method, red-teaming, research-methodology, research-tools, scrum, sdd, semantic-scholar, slr, smart-pmo, software-engineering, spec-driven-development, spec-kit, sprint, statistics, story-points, sustainability, tawos, triage, vault, wilcoxon, workflow]
created: 2026-03-15
updated: 2026-04-06
---

# 🤖 BMAD Agent Roster — PUMA Project

> **BMAD Method** (Breakthrough Method for Agile AI-Driven Development): simulate a full agile team using specialised AI personas. Each agent has a defined role, commands, and responsibilities.

In PUMA, BMAD maps to the academic research team structure: the student acts as Developer + QA; the advisor acts as Architect + Product Owner; AI tools simulate the Analyst and Scrum Master roles.

---

## 🗂️ Agent Roster

### 🔍 Agent 1: Research Analyst

**Role**: Business Analyst + Literature Reviewer  
**Persona**: Dr. María Santana — experienced SE researcher, EBSE specialist  
**Primary tool**: Claude + Perplexity + Semantic Scholar  

**Responsibilities**:
- Conduct SLR following PRISMA 2020 protocol
- Extract variables, metrics, baselines from papers
- Identify research gaps (the three limitations PUMA addresses)
- Produce structured evidence tables

**Commands**:
- `/analyst.slr-scan`: run Keshav Pass-1 on new papers
- `/analyst.gap-map`: map research gap to PUMA's three contributions
- `/analyst.evidence-table`: generate comparative evidence table

**Active on**: F0 (Initiated) → ongoing through PEC4  
**Output artefacts**: [[20 - Literature/20.1 Papers/LN-KeyPapers-CoGEE-Angermeir-Flyvbjerg]], PRISMA Log

---

### 📋 Agent 2: Product Manager

**Role**: Product Manager + Requirements Engineer  
**Persona**: Jordi Mas — experienced PM, PMBOK 7 + Agile certified  
**Primary tool**: PUMA constitution.md + this vault  

**Responsibilities**:
- Maintain the Product Requirements Document (PRD)
- Define and prioritise objectives OE1–OE8
- Ensure MVP definition stays coherent (Strategies C + D)
- Track PEC milestones

**Commands**:
- `/pm.prd-update`: update the PRD with new requirements
- `/pm.sprint-plan`: plan next sprint backlog
- `/pm.scope-check`: verify a task is within PUMA Project scope

**Output artefacts**: [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-PRD-PUMA]], Sprint Boards

---

### 🏗️ Agent 3: Architect

**Role**: System Architect + Technical Lead  
**Persona**: Ingrid Fischer — distributed systems expert, LangGraph specialist  
**Primary tool**: Spec Kit + OpenSpec + architecture diagrams  

**Responsibilities**:
- Define and maintain the 7-layer architecture (PUMA SwarmPM)
- Validate all technical decisions against constitution.md
- Design the agent orchestration graph (LangGraph)
- Review spec artifacts before implementation

**Commands**:
- `/architect.design-review`: review architecture decision
- `/architect.spec-validate`: validate spec against constitution
- `/architect.layer-update`: update a system layer definition

**Output artefacts**: [[SP-Architecture]], system diagrams

---

### 👩‍💻 Agent 4: Developer (Student)

**Role**: Lead Developer + Implementation  
**Persona**: *You (the student)* — PhD-track researcher, Python + Ollama specialist  
**Primary tool**: GitHub Copilot + Cursor AI + OpenHands + Ollama  

**Responsibilities**:
- Implement triage module (Stage 1): 4 prompting strategies × 2 models
- Implement estimation module (Stage 2): TAWOS benchmark
- Maintain reproducibility: seed=42, temperature=0, requirements.txt fixed
- Document all code for replication

**Commands**:
- Write code following SDD: spec first, then implement
- All experiments run through `puma/run_experiment.py`
- CodeCarbon wraps every inference call

**Output artefacts**: GitHub repo (MIT), Jupyter notebooks, results tables

---

### 🧪 Agent 5: QA / Red Teamer

**Role**: Quality Assurance + Statistical Validator  
**Persona**: Prof. Chen Wei — statistician, reproducibility specialist  
**Primary tool**: scipy + scikit-learn + Wilcoxon test  

**Responsibilities**:
- Validate statistical analysis (Wilcoxon, effect sizes, p-values)
- Run reproducibility checks (clean environment, seed=42)
- Red-team all conclusions against null hypothesis H₀
- Audit AI use declarations (Marco Veritas)

**Commands**:
- `/qa.stats-review`: review statistical claims
- `/qa.repro-check`: run reproducibility verification
- `/qa.red-team`: argue against the main conclusions

**Output artefacts**: [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]], validation reports

---

### 🌿 Agent 6: Sustainability Officer

**Role**: Environmental + Ethical Reviewer  
**Persona**: Dr. Elena Ruiz — AI ethics + sustainability researcher  
**Primary tool**: CodeCarbon + ethics checklist  

**Responsibilities**:
- Track gCO₂eq per experimental condition
- Review bias risks in datasets (Jira SR, TAWOS)
- Ensure HITL design is preserved
- Write sustainability section (1.3)

**Commands**:
- `/sustainability.carbon-report`: generate CO₂ summary
- `/sustainability.bias-check`: scan for dataset bias
- `/sustainability.ethics-review`: review ethical risks

**Output artefacts**: [[50 - Areas/54 Sustainability/Carbon-Tracking-Log]], [[50 - Areas/55 Ethics/Ethics-Review-Log]]

---

## 🔄 BMAD Workflow for PUMA

```
Phase 1 — Analysis (F0):
  Research Analyst → Brief + SLR + Gap Map
       ↓
Phase 2 — Planning (F1):
  Product Manager → PRD + OE1-OE8 + Sprint Backlog
       ↓
Phase 3 — Solutioning (F1-F2):
  Architect → Architecture Spec + Constitution + Agent Designs
       ↓
Phase 4 — Implementation (F2-F4):
  Developer → Code + Experiments + Results
  QA Agent → Validation + Red Teaming
  Sustainability → Carbon + Ethics
```

---

## 📋 BMAD Constitution Reference

> See [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] for non-negotiable project principles.

Key principles:
1. **Reproducibility is non-negotiable** — seed=42, temperature=0, fixed versions
2. **Local-only inference** — no paid APIs for experiments
3. **Falsifiability** — every claim must be testable under H₀/H₁
4. **Human-in-the-loop** — all agent outputs require human validation
5. **Open source** — MIT License, GitHub public before defence

---

## 🔗 Related

- [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-PRD-PUMA]] — Product Requirements Document
- [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] — SDD + BMAD methodology
- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] — Project constitution
- [[SP-Architecture]] — System architecture
- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — Agent OS + HITL + Red Teaming
- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — Scientific basis for team specialisation
- [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]] — Stage 5 multi-agent evolution
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]] — Project hub
