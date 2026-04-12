---
id: PR-PUMA-Ch1-Introduction
title: "Chapter 1 — Introduction (PUMA Project)"
type: project-note
tags: [project, chapter, introduction, puma]
status: complete
deadline: 2026-03-08
pec: PEC1
word_count_target: 3000
word_count_current: 0
created: 2026-03-01
updated: 2026-03-01
---

# Chapter 1 — Introduction

> **Status:** ✅ PEC1 delivered 2026-03-08
> **Chapter structure:** Follows PUMA Project requirements for final thesis

---

## Section Checklist

- [x] 1.1 Context and justification (needs and problem)
- [x] 1.2 Research objectives (general + specific, with SMART indicators)
- [x] 1.3 Sustainability, ethical-social and diversity impact
- [x] 1.4 Approach and method
- [x] 1.5 Work plan (phases, tasks, milestones, risk management)
- [x] 1.6 Brief summary of products
- [x] 1.7 Brief description of other chapters
- [x] 1.8 Declaration on generative AI use

---

## 1.1 Context — Key Arguments

**Three quantified dimensions of the problem:**

1. **Manual triage** — Jira SR (Ortu et al., 2015) demonstrates inconsistent priority assignment across projects for equivalent issues → cognitive bias, measurable cost
2. **Inconsistent estimation** — TAWOS (Tawosi et al., 2022) shows systematic over-estimation under sprint pressure, under-estimation for new projects
3. **Uniqueness Trap** (Flyvbjerg & Gardner, 2023) — managers treat each project as unique, preventing statistical learning from historical patterns

**Research gap (three limitations in existing work):**
1. Reproducibility: only 5/18 papers with published artefacts are executable (Angermeir et al., 2025 — ICSE 2026)
2. No systematic comparison of prompting strategies for PM tasks
3. No carbon footprint measurement per experimental condition

**Three enabling conditions (why now):**
1. Open-weight local models (Llama 3.2, Mistral 7B via Ollama)
2. Public verified datasets (Jira SR, TAWOS with stable DOIs)
3. Carbon tracking tools (CodeCarbon, MIT licence)

---

## 1.2 Research Question & Hypotheses

**Main RQ:** Do statistically significant differences exist in automatic issue triage quality and effort estimation when using different LLMs and prompting strategies, evaluated on real ICT project datasets?

**H1 (Triage):** At least one configuration achieves F1-macro > heuristic baseline (p < 0.05, effect r ≥ 0.1) → [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]

**H2 (Estimation):** At least one few-shot configuration achieves MAE < historical mean (p < 0.05, delta ≥ 0.5 SP)

---

## 1.4 Methodology Summary

**Paradigm:** Design Science Research (DSR) — Hevner (2004) + Peffers (2007)
**Literature:** SLR following PRISMA 2020 + PRISMA-DFLLM extension (AI-assisted screening documented)
**Experiment:** Controlled, with pre-registered conditions, seed=42, temperature=0
**Stats:** Wilcoxon signed-rank test, effect size r

**Incremental strategy:**
- Guaranteed MVP: Triage module (Stage 1) — Strategy C
- Target: Triage + Estimation (Stages 1+2) — Strategy D
- Optional: Backlog prioritisation (Stage 3)

---

## 1.5 Project Plan

| Phase | Period | Key Output |
|-------|--------|-----------|
| F0 Initiation | Feb 23 – Mar 8 | PEC1: Chapter 1 + environment verified |
| F1 Design | Mar 9–28 | Architecture + prompting strategies |
| F2 Prototype | Mar 29 – Apr 8 | PEC2: Working triage module |
| F3 Extension | Apr 9 – May 10 | PEC3: Estimation module |
| F3b Conditional | May 11–31 | Backlog module (if F3 on time) |
| F4 Analysis | May 1 – Jun 7 | PEC4: Full results + statistics |
| F5 Closure | Jun 8–23 | PEC5: Final submission + defence |

---

## 1.8 AI Use Declaration

**Framework:** Marco Veritas (Codina, 2024)
**Principle:** No delegation of judgement — AI generates options, author decides
**Validation:** Every AI-sourced reference verified in primary source
**Tools declared:** Claude, Perplexity, DeepSeek, Gemini, NotebookLM, AnythingLLM, GitHub Copilot, Cursor, OpenHands, Warp AI Terminal, OpenCode, Browser OS

Full log: [[50 - Areas/51 Research/AI-Use-Log]]

---

## Writing Notes

*Use this section for drafting observations, things to revise, feedback from tutor*

- [ ] Tutor feedback received on: {{date}}
- [ ] Main revision needed: {{notes}}
- [ ] Approved version submitted: {{date}}

---

## 🔗 Connected Notes

**Navigation:**
[[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]] · [[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-Ch2-Ch3-Ch4-Ch5]] · [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]]

**Hypotheses & Experiments:**
[[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] · [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]]

**Core Concepts (§1.1 problems):**
[[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — Manual triage bias · [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — Reproducibility gap + Uniqueness Trap

**Datasets referenced:**
[[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] — Jira SR + TAWOS · [[20 - Literature/20.1 Papers/LN-Angermeir-2025-Reproducibility]] — Reproducibility crisis

**Methodology (§1.4):**
[[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] — DSR + PRISMA · [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] — Statistical protocol

**Project governance:**
[[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] — Non-negotiable principles · [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]] — Research team

**Key thinkers:**
[[30 - Permanent/37 Persons/PER-Flyvbjerg-Bent]] — Uniqueness Trap · [[30 - Permanent/37 Persons/PER-Assalaarachchi-Nuwan]] — Agentic SPM
