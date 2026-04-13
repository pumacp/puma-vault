---
id: PN-Issue-Triage
title: "Issue Triage in Software Project Management"
type: permanent-note
category: concept
tags: [permanent, concept, triage, project-management, jira, priority, classification, academic-writing, agile, automation, baseline, bias, chain-of-thought, code-review, cot, critical-thinking, dataset, effort-estimation, ethics, evaluation, few-shot, github, glossary, gpt, hypothesis, ict, issue-triage, llm, metrics, moc, openai, permanent-note, planning, precision-recall, red-teaming, research, research-methodology, security, software-engineering, sprint, story-points, tawos]
aliases: ["Issue Triage", "Bug Triage", "Ticket Triage", "Defect Triage"]
created: 2026-03-01
maturity: evergreen
sources: ["[[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]", "Manzoor et al. (2025) — AI in PM survey"]
---

# Issue Triage in Software Project Management

> **Atomic claim:** Manual issue triage is a high-volume, low-individual-value activity that introduces systematic cognitive bias in priority assignment — making it the ideal first target for LLM automation in ICT project management.

---

## 💡 The Concept

**Issue triage** is the process of reviewing incoming work items (bugs, feature requests, tasks) and assigning: priority, severity, component, assignee, and milestone.

### Why It's a Problem

From the Jira Social Repository (Ortu et al., 2015 — 50,000+ real Apache issues):
- Priority assigned manually varies significantly between projects for technically equivalent issues
- Triage consumes disproportionate time relative to value added
- Inconsistency cascades into planning errors and missed deadlines

### Priority Classes (4-class schema used in PUMA)

| Class | Definition | Proportion in Jira SR |
|-------|-----------|----------------------|
| **Critical** | System-down, data loss, security breach | ~8% |
| **High** | Major feature broken, significant user impact | ~22% |
| **Medium** | Feature degraded, workaround exists | ~45% |
| **Low** | Cosmetic, minor UX, documentation | ~25% |

**Class imbalance challenge:** The 8%/22%/45%/25% distribution requires stratified sampling for fair evaluation. PUMA uses 50 issues per class (200 total) to create a balanced evaluation set.

---

## 📊 Evaluation Metrics for Triage

| Metric | Formula | Why it matters |
|--------|---------|---------------|
| **F1-macro** | Mean F1 across all classes | Treats each class equally regardless of size |
| **F1-micro** | Weighted by class frequency | Dominated by majority class (Medium) |
| **Precision per class** | TP/(TP+FP) | Avoids false alarms |
| **Recall per class** | TP/(TP+FN) | Avoids missing critical issues |

**PUMA uses F1-macro** because missing a Critical issue is as bad as miscategorising Low issues — no class should be downweighted.

### Baseline: Heuristic Classifier

The reference baseline assigns priority based on keyword presence:
- "crash", "down", "production", "all users" → Critical
- "slow", "performance", "timeout" → High
- Default → Medium

This achieves approximately F1-macro = 0.45–0.52 on Jira SR. PUMA H1 tests whether LLMs exceed this.

---

## 🔗 Connected Ideas

**Dataset:** [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] (Jira SR)
**Hypothesis:** [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] (H1)
**Methods:** [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] (§3.2, §3.6)
**Prompts:** [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]]
**Related concept:** [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] · [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] (Uniqueness Trap)
**Glossary:** [[60 - Resources/64 Glossary/Glossary-Master]] (Issue Triage, F1-macro)
**MOC:** [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]] · [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]

---
---
id: PN-Story-Points
title: "Story Points & Effort Estimation in Agile"
type: permanent-note
category: concept
tags: [permanent, concept, story-points, estimation, agile, tawos, effort]
aliases: ["Story Points", "Effort Estimation", "Sprint Estimation", "SP"]
created: 2026-03-01
maturity: evergreen
sources: ["[[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]", "[[20 - Literature/20.1 Papers/LN-KeyPapers-CoGEE-Angermeir-Flyvbjerg]]"]
---

# Story Points & Effort Estimation in Agile

> **Atomic claim:** Story point estimation is the PM task with the highest variance in software engineering, exhibiting systematic over-estimation under sprint pressure and under-estimation in new projects — patterns that LLMs with few-shot examples may partially correct by anchoring to historical data.

---

## 💡 The Concept

**Story points** are a relative measure of effort, complexity, and uncertainty for a user story in Agile sprints. They are not hours — they are dimensionless units calibrated per team.

### The Estimation Problem

From TAWOS (Tawosi et al., 2022 — 23,000+ real user stories):
- Teams **over-estimate** under sprint pressure (conservative padding)
- Teams **under-estimate** in new projects (optimism bias)
- Estimates correlate poorly across teams even for similar stories

### Reference Baselines for PUMA (Stage 2)

| Baseline | MAE (Story Points) | Notes |
|---------|-------------------|-------|
| **Mean historical** | ~3.5 SP | Project historical average |
| **Deep-SE** | ~3.2 SP | Deep learning model (Choetkiertikul et al.) |
| **CoGEE (GPT-4)** | ~1.9 SP | Best published result (Tawosi et al., 2024) |
| **PUMA target (H2)** | ≤ 3.0 SP | MVP threshold |
| **PUMA ideal** | ≤ 1.5 SP | Desirable threshold |

### Fibonacci Scale (standard in PUMA experiments)

Story points follow a Fibonacci sequence: **1, 2, 3, 5, 8, 13, 21**

This non-linearity must be accounted for in prompts:
- Few-shot examples should include stories from across the scale
- MAE computed in raw story points (not log-transformed)

---

## 🔗 Connected Ideas

**Dataset:** [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] (TAWOS)
**Hypothesis:** [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] (H2)
**Methods:** [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] (§3.2, §3.6)
**Core paper:** [[20 - Literature/20.1 Papers/LN-KeyPapers-CoGEE-Angermeir-Flyvbjerg]]
**Related concept:** [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] (few-shot as reference class) · [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] (Uniqueness Trap)
**Prompts:** [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]]
**Glossary:** [[60 - Resources/64 Glossary/Glossary-Master]] (Story Points, MAE, Fibonacci scale)
**MOC:** [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]] · [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
