---
id: MOC-Methods-Frameworks
title: "🧠 MOC — Methods & Frameworks"
type: moc
tags: [moc, methods, frameworks, methodology]
created: 2026-03-01
updated: 2026-04-06
---

# 🧠 MOC — Methods & Frameworks

> All research, development, and knowledge management methodologies integrated in PUMA and this vault.

---

## 📊 Research Methodologies

### Design Science Research (DSR)
- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] — DSR paradigm explanation
- Core idea: research must produce and evaluate useful artefacts. PUMA artefact = benchmark framework.
- Reference: Hevner et al. (2004), Peffers et al. (2007)

### Systematic Literature Review (SLR + PRISMA)
- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] — SLR protocol
- [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] — PRISMA + FINER
- [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]] — Active screening log
- [[60 - Resources/62 Workflows/WF-SLR-Pipeline]] — Step-by-step workflow

### Statistical Methods
- [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] — Wilcoxon + effect sizes
- Wilcoxon signed-rank (α=0.05, two-sided), effect size r = Z/√N

---

## 🤖 Development Methodologies

### Spec-Driven Development (SDD)
- [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] — Full SDD explanation
- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] — PUMA constitution (non-negotiables)
- [[SP-Architecture]] — Architecture spec
- [[SP-Triage-Agent]] — Triage agent spec

### OpenSpec
- [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] — OpenSpec section
- Best for: brownfield / iterative spec updates

### Spec Kit (GitHub)
- [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] — Spec Kit section
- Best for: greenfield with strict phase gates + constitution.md

### BMAD (Multi-Agent Simulation)
- [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]] — All 6 agents
- [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-PRD-PUMA]] — Product Requirements Document
- [[60 - Resources/61 Prompts/61.5 BMAD-Prompts/PT-BMAD-Agent-Prompts]] — All agent prompts

### Context-Driven Development (CDD)
- All PUMA prompts use CDD: explicit project context in every AI interaction
- [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]] — CDD in practice

---

## 📚 Knowledge Management Methodologies

### PARA (Projects, Areas, Resources, Archive)
- [[30 - Permanent/33 Frameworks/PN-PARA-GTD-Zettelkasten]] — Integration note
- Implemented in vault: `10→70` folder structure

### GTD (Getting Things Done)
- [[30 - Permanent/33 Frameworks/PN-PARA-GTD-Zettelkasten]] — Integration note
- Implemented in: `10 - Inbox/`, `90 - GTD/`

### Zettelkasten
- [[30 - Permanent/33 Frameworks/PN-PARA-GTD-Zettelkasten]] — Integration note
- Implemented in: `30 - Permanent/` (flat, atomic, linked)

### Johnny Decimal
- [[60 - Resources/66 Johnny-Decimal-Index/JD-Master-Index]] — Full index
- Implemented in: all folder numbers (10–90, decimal sub-IDs)

### Maps of Content (MOCs)
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]] — Master project MOC
- [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]] — Research pipeline MOC
- [[80 - MOC/81 Topic-Maps/MOC-Literature-Review]] — Literature MOC

---

## 🤖 AI Prompting Methodologies

### Keshav Three-Pass Method
- [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method]] — Full explanation
- [[50 - Areas/51 Research/Keshav-ThreePass/Keshav-Reading-Log]] — Reading log
- [[00 - Meta/Templates/Template-Keshav-ThreePass]] — Per-paper template

### RCOIF Framework
- [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]] — Full explanation
- Role · Context · Objective · Instructions · Format

### Chain-of-Thought (CoT) + Zero-Shot CoT
- [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] — Permanent note
- PUMA prompting Strategy 4 (most complex)

### One-Shot and Few-Shot Prompting
- [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] — Permanent note
- PUMA prompting Strategies 2 and 3

### Contextual Anchoring
- Used in all PUMA triage prompts: restate key constraints at prompt end
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Advanced-Prompts-IIPR-Anchoring-AgentOS]]

### EGI (Exploración Guiada Interactiva)
- [[30 - Permanent/33 Frameworks/PN-EGI-Framework]] — Full explanation
- Used for: domain exploration in new literature areas

### AMI (Autodiagnóstico y Mejora Iterativa)
- [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]] — Full explanation
- Used for: iterative improvement of writing + prompts

### DRCA (Deconstrucción y Reconstrucción Conceptual Avanzada)
- [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]] — Full explanation
- Used for: deep processing of complex papers (Keshav Pass-3 equivalent)

### IIPR (Ingeniería Inversa de Prompts y Respuestas)
- [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]] — Full explanation
- Used for: diagnosing and fixing underperforming prompts

---

## 🔗 Orphan Check

```dataview
LIST
FROM "30 - Permanent/33 Frameworks"
WHERE file.name != this.file.name
SORT file.name ASC
```
