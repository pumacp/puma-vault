---
id: BMAD-PRD-PUMA
title: "📋 PUMA — Product Requirements Document (PRD)"
type: bmad-prd
version: "1.2"
phase: planning
status: approved
tags: [bmad, prd, requirements, puma, sdd, anthropic, api, architecture, artefact, benchmark, bias, carbon-footprint, chain-of-thought, codecarbon, cot, critical-thinking, dataset, dsr, effect-size, effort-estimation, ethics, falsifiability, fine-tuning, github, gpt, hypothesis, ict, issue-triage, jira, literature-review, llama, llm, local-llm, meta, metrics, mistral, moc, multi-agent, non-parametric, ollama, openai, planning, popper, precision-recall, project-management, python, rag, red-teaming, research-methodology, retrieval, slr, smart-pmo, software-engineering, spec-driven-development, sprint, statistics, story-points, sustainability, tawos, triage, wilcoxon]
created: 2026-03-01
updated: 2026-04-06
---

# 📋 PUMA — Product Requirements Document (PRD)

> [!info] Overview
> **BMAD Phase 2 artefact.** This PRD defines WHAT the system must do and WHY.
> Reviewed by: Advisor (Architect role). Approved: 2026-04-01.
> Downstream: [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]]

---

## 1. Problem Statement

ICT project management organisations face three measurable, high-cost operational problems:

| Problem | Evidence | Impact |
|---------|----------|--------|
| Manual issue triage | Ortu et al. (2015): 50k+ Jira issues show systematic cognitive bias in priority assignment | Latency + inconsistency |
| Inconsistent effort estimation | Tawosi et al. (2022): teams systematically over/under-estimate on TAWOS dataset | Planning debt |
| Uniqueness Trap | Flyvbjerg & Gardner (2023): managers treat each project as unique, blocking statistical learning | 45% average cost overrun |

No existing solution combines: (1) reproducible local LLM evaluation, (2) systematic prompting strategy comparison, (3) environmental impact measurement.

---

## 2. Target Users

**Primary**: ICT project managers in multi-project organisations (consultancies, MSPs, software teams)  
**Academic**: SE researchers studying LLM capabilities for PM tasks  
**Secondary**: Open-source community wanting a replicable PM+LLM benchmark

---

## 3. Product Goals

**G1**: Reproducible benchmark — any researcher with standard hardware can replicate results  
**G2**: Empirical evidence — statistically validated claims about model × strategy effects  
**G3**: Environmental accountability — gCO₂eq measured per experimental condition  
**G4**: Practical tool — issue classification module usable in real PM contexts

---

## 4. Objectives (OE1–OE8)

| ID | Objective | Metric | Deadline |
|----|-----------|--------|----------|
| OE1 | SLR: ≥40 references, comparative table | Table with gap mapping | Milestone 1 ✅ |
| OE2 | Define H1 + H2 with full operationalisation | Falsifiable hypotheses | Milestone 1 ✅ |
| OE3 | Download + prepare Jira SR + TAWOS datasets | Reproducible scripts, bias doc | Milestone 2 |
| OE4 | Triage module: 4 strategies × 2 models | F1-macro table + Wilcoxon | Milestone 2 |
| OE5 | Estimation module: TAWOS + baselines | MAE vs Deep-SE / CoGEE | Milestone 3 |
| OE6 | Full experiment: stats + CodeCarbon | p-values, CI, gCO₂eq table | Milestone 4 |
| OE7 | Discuss results vs H1/H2 + limitations | Discussion chapter | Milestone 4 |
| OE8 | Publish GitHub MIT repo with docs | README + notebook + v1.0 tag | Milestone 5 |

---

## 5. MVP Definition (Strategy C — Guaranteed)

**MVP** = Triage module (Stage 1) with:
- ≥1 model achieving F1-macro ≥ 0.55 (or documented failure with analysis)
- Wilcoxon test with p-value and effect size
- CodeCarbon measurement per condition
- Reproducible code in public GitHub

**MVP is complete and independent academic contribution even if Stage 2 not reached.**

---

## 6. Target Metrics

| Metric | Definition | Minimum | Desired |
|--------|------------|---------|---------|
| F1-macro (triage) | Macro-averaged F1 on Jira SR priority classes | ≥ 0.55 | ≥ 0.70 |
| MAE (estimation) | Mean Absolute Error vs TAWOS ground truth | ≤ 3.0 SP | ≤ 1.5 SP |
| Latency | Time per LLM call on 16GB RAM CPU | < 60s | < 20s |
| Reproducibility | Clean environment → identical results | 100% | 100% |

---

## 7. Non-Requirements (Out of Scope for MVP)

- Real-time integration with live Jira instances
- Paid API models (GPT-4, Claude Opus) in experiments
- Fine-tuning or RAG (Stage 4 — optional)
- Multi-agent Smart PMO (Stage 5 — optional / future work)
- Mobile or web interface

---

## 8. Technical Constraints

- Hardware: ≤ 16GB RAM, CPU only (no GPU required)
- Models: open-weights, local via Ollama (Llama 3.2 8B, Mistral 7B)
- Datasets: public, DOI-stable (Jira SR, TAWOS), CC + Apache-2.0 licences
- Reproducibility: seed=42, temperature=0, fixed requirements.txt
- Language: Python 3.11+
- License: MIT

---

## 9. Risks and Mitigations

| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|-----------|
| Inference latency > 60s | Medium | High | Fallback to Phi-3.5 Mini 3.8B |
| F1 < 0.55 for all conditions | Low | Medium | Deeper error analysis, additional baselines |
| Dataset access compromised | Very Low | High | Local archive before experiments start |
| Time overrun in F2 | Medium | Medium | 20% contingency buffer; rollback to Stage 1 only |

---

## 10. Downstream Artefacts

From this PRD:
- [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]] — architecture spec
- [[40 - Projects/PUMA/41.6 Specs/SP-Triage-Agent]] — triage agent spec
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] — experiment design
- [[40 - Projects/PUMA/41.8 Sprint-Boards/Sprint-02]] — sprint tasks

---

## Related Notes

**Datasets:** [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] — Jira SR + TAWOS (OE3)
**Literature:** [[20 - Literature/20.1 Papers/LN-KeyPapers-CoGEE-Angermeir-Flyvbjerg]] — evidence for problem statement (§1)
**Reproducibility:** [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — reproducibility protocol (G1, §8)
**Uniqueness Trap:** [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] (Uniqueness Trap section — §1 problem 3)
**PM Tasks:** [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — F1-macro + MAE tasks (§6)
**Prompting:** [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] — 4 prompting strategies (OE4)
**Smart PMO:** [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]] — Stage 5 out-of-scope but future work
**BMAD Roster:** [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]]
**MOC:** [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]

---

*PRD v1.2 — Approved 2026-04-01 — Next review: Milestone 2 delivery*
