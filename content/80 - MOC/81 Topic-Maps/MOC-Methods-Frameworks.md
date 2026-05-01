---
id: MOC-Methods-Frameworks
title: "🧠 MOC — Methods & Frameworks"
type: moc
tags: [moc, methods, frameworks, methodology, academic-writing, ami, architecture, artefact, benchmark, bmad, chain-of-thought, contextual-anchoring, cornell-notes, cot, drca, dsr, effect-size, effort-estimation, egi, few-shot, finer, github, gtd, iipr, index, issue-triage, johnny-decimal, keshav, knowledge-management, literature-review, llm, mit-ai-lab, multi-agent, non-parametric, note-taking, obsidian, one-shot, openspec, para, permanent-note, pipeline, prisma, prompting, rcoif, reading-method, research, research-methodology, sdd, slr, spec-driven-development, spec-kit, statistics, story-points, template, triage, vault, wilcoxon, workflow, wp316, zero-shot, zettelkasten]
created: 2026-03-01
updated: 2026-05-01
---

# 🧠 MOC — Methods & Frameworks

> [!info] Overview
> All research, development, and knowledge management methodologies integrated in PUMA and this vault.

---

## 📊 Research Methodologies

### Design Science Research (DSR)
- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] — DSR paradigm explanation
- Core idea: research must produce and evaluate useful artefacts. PUMA artefact = benchmark framework.
- [[30 - Permanent/36 Sources/SRC-MITAILab-WP316]] — MIT AI Lab WP316 (active research methods)
- Reference: Hevner et al. (2004), Peffers et al. (2007)

### Systematic Literature Review (SLR + PRISMA)
- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] — SLR protocol
- [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] — PRISMA + FINER
- [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]] — Active screening log
- [[60 - Resources/62 Workflows/WF-SLR-Pipeline]] — Step-by-step workflow

### Statistical Methods
- [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] — Wilcoxon + effect sizes
- Wilcoxon signed-rank (α=0.05, two-sided), effect size r = Z/√N
- [[30 - Permanent/31 Concepts/PN-StatisticalValidation-Full]] — Full pipeline: normality → Wilcoxon → effect size → bootstrap CI → BH correction
- [[30 - Permanent/31 Concepts/PN-Evaluation-Metrics-Comprehensive]] — Complete metrics reference (F1, MAE, SA, SPR, CO₂, AUC-ROC, etc.)

### Reference Class Forecasting (RCF)
- [[30 - Permanent/31 Concepts/PN-UniquenessTrap]] — Uniqueness Trap + RCF algorithm + PUMA mapping
- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Flyvbjerg-2023-UniquenessTrap]] — Source: Flyvbjerg (2023)

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
- [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method]] — Summary explanation
- [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method-Complete]] — Complete Q1/Q2/Q3 + Keshav integration
- [[30 - Permanent/36 Sources/SRC-Keshav-2007-HowToReadPaper]] — Source: Keshav (2007)
- [[30 - Permanent/37 Persons/PER-Keshav-Srinivasan]] — Author profile
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

### CO-STAR + Self-Consistency + Structured Output
- [[30 - Permanent/31 Concepts/PN-COSTAR-SelfConsistency]] — CO-STAR 6-component template; Self-Consistency k-sampling; JSON mode strategies
- [[20 - Literature/20.2 Books/LN-Shum-2025-PensarConPrompts]] — Comprehensive prompt engineering taxonomy

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

### Reflexion (Verbal Self-Reflection Loop)
- [[30 - Permanent/31 Concepts/PN-Reflexion-SelfCritique]] — Architecture + PUMA implementation (Stage 4 iterative triage)
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Shinn-2023-Reflexion]] — Source: Shinn et al. (NeurIPS 2023)

### Tree of Thoughts (ToT)
- [[30 - Permanent/31 Concepts/PN-TreeOfThoughts-Deliberate]] — BFS/DFS search over reasoning steps; PUMA Stage 3 sprint planning
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Yao-2023-TreeOfThoughts]] — Source: Yao et al. (NeurIPS 2023)
- Key distinction from CoT: supports backtracking; 18.5× improvement on multi-step problems; 50–200× compute cost

### Context Engineering (CE)
- [[30 - Permanent/31 Concepts/PN-ContextEngineering]] — Six-slot context pipeline; token budget allocation; context pollution mitigation
- [[20 - Literature/20.4 Videos-Podcasts/YouTube/Context-Engineering/LN-Videos-Context-Engineering]] — Video references
- CE = 2026 successor to Prompt Engineering: design the *information system* that fills the context, not just the prompt text

### RLHF and Constitutional AI
- [[30 - Permanent/31 Concepts/PN-RLHF-Constitutional]] — RLHF pipeline, DPO, Constitutional AI, RLAIF; alignment method per PUMA model
- Alignment training paradigm for all PUMA models (Llama-Instruct, Claude Sonnet, DeepSeek-R1)

### Model Context Protocol (MCP)
- [[30 - Permanent/31 Concepts/PN-MCP-ModelContextProtocol]] — Architecture, security threats, PUMA Stage 5 integration
- [[20 - Literature/20.1 Papers/AIOps-DevOps/LN-Hou-2025-MCP-Security]] — Source: Hou et al. (2025)
- [[20 - Literature/20.4 Videos-Podcasts/YouTube/MCP-Protocols/LN-Videos-MCP-Protocols]] — Video references

### Transformer Architecture and MoE
- [[30 - Permanent/31 Concepts/PN-Transformer-MoE]] — Self-attention, GQA, RoPE, SwiGLU, MoE routing, KV cache; PUMA model technical reference
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Fedus-2022-SwitchTransformers]] — MoE source: Fedus et al. (JMLR 2022)
- Foundation for understanding DeepSeek-V3 MoE efficiency rationale (671B total / 37B active)

### Marco Veritas (AI Transparency & Academic Integrity)
- [[30 - Permanent/33 Frameworks/PN-Veritas-Framework]] — Full framework: proactive disclosure, primary source verification, no delegation of judgement
- [[50 - Areas/51 Research/AI-Use-Log]] — PUMA AI use log (PRISMA-trAIce compliance)
- **Author**: Codina (2024) · **Applied in**: PUMA Constitution §7, BMAD QA Agent audit

### AI Code Quality (Empirical Evidence)
- [[20 - Literature/20.7 Blog-Web/LN-CodeRabbit-2025-AIvsHumanCode]] — CodeRabbit (2025): 470 PRs, AI 1.7× more issues, 2.74× security, 3× readability; 7 mitigation strategies mapped to PUMA design

---

## 🏢 Business Systems & Operations Management

### Systems Thinking & Process Documentation
- [[20 - Literature/20.2 Books/LN-Carpenter-2025-WorkTheSystem]] — Work the System (Carpenter, 2025): systems mindset, SOP documentation, working ON vs. IN the business
- [[20 - Literature/20.2 Books/LN-Gerber-2009-EMythRevisited]] — The E-Myth Revisited (Gerber, 2009): franchise prototype model, Technician/Manager/Entrepreneur trichotomy

### Business Operating Systems
- [[20 - Literature/20.2 Books/LN-Wickman-2012-Traction]] — Traction / EOS (Wickman, 2012): 6-component operating system (Vision, People, Data, Issues, Process, Traction)
- [[20 - Literature/20.2 Books/LN-Harnish-2022-ScalingUp]] — Scaling Up (Harnish, 2022): Rockefeller Habits, Four Decisions, One-Page Strategic Plan

### Theory of Constraints (TOC)
- [[20 - Literature/20.2 Books/LN-Goldratt-2004-TheGoal]] — The Goal (Goldratt & Cox, 2004): TOC, Five Focusing Steps, Drum-Buffer-Rope, throughput accounting
- Core concept: identify bottleneck → exploit → subordinate → elevate → repeat

### Customer Experience & Frictionless Design
- [[20 - Literature/20.2 Books/LN-Price-2022-Frictionless]] — The Frictionless Organization (Price & Jaffe, 2022): Customer Effort Score, friction mapping, DIRTFT, five demand types

---

## 🔗 Orphan Check

```dataview
LIST
FROM "30 - Permanent/33 Frameworks"
WHERE file.name != this.file.name
SORT file.name ASC
```
