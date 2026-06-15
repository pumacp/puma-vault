---
id: PN-MultiAgent-ArchitecturePatterns
title: "Multi-agent systems outperform single agents on PM tasks when agent roles match task specialisation boundaries"
type: permanent
created: 2026-04-06
updated: 2026-06-15
tags: [permanent-note, multi-agent, architecture, specialisation, pm-agents, masai, metagpt, artefact, backlog, baseline, benchmark, bmad, critical-thinking, dsr, effort-estimation, evaluation, gpt, human-in-the-loop, hypothesis, issue-triage, llm, moc, openai, orchestration, planning, project-management, react, reasoning, reasoning-action, red-teaming, research-methodology, sdd, smart-pmo, spec-driven-development, story-points, swe-bench, triage]
---

# Multi-agent systems outperform single agents on PM tasks when agent roles match task specialisation boundaries

A single general-purpose LLM accumulates error when acting simultaneously as domain expert, planner, executor, and quality checker. Decomposing these roles into specialised agents with narrow objectives reduces error propagation.

---

## The Core Claim

Multiple specialist agents — each with a narrow objective, dedicated tools, and domain-specific context — outperform a single agent trying to handle everything. This is not universally true (overhead exists), but it holds when:
1. Tasks have distinct information requirements
2. Tasks have distinct decision criteria
3. Tasks have distinct failure modes

---

## Evidence

**MASAI** (Arora et al., 2024): Modular sub-agents achieve 28.33% on SWE-bench Lite vs. single-agent baselines that achieve <15%. Each sub-agent (repository curator, fault localiser, patch generator) has one objective.

**MetaGPT** (Hong et al., 2023): Role-based agents (PM → Architect → Engineer → QA) with artifact-driven handoffs produce higher-quality software than unstructured agent conversations.

**Orchestrating Human-AI Teams** (Dorri et al., 2025): GPT-5 as Manager Agent outperforms GPT-4.1 by decomposing tasks proactively. Reactive communication loops underperform.

---

## Application to PUMA

PUMA Stage 1–3 tests the **single-agent hypothesis**: can one LLM (prompted correctly) match a specialist? This establishes the baseline.

PUMA Stage 5 (Smart PMO) tests the **multi-agent hypothesis**: does decomposing into (Triage Agent + Estimation Agent + Planning Agent + Risk Agent) + Manager Agent outperform the Stage 1–3 single agents?

**Architecture rules** for PUMA multi-agent design:
1. Each agent has exactly one PM task type
2. Agents share no context directly — only through the Manager Agent
3. Manager Agent decomposes backlog → assigns tasks → aggregates results
4. No agent modifies another agent's output without Manager oversight (HITL principle)

---

## References

- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Arora-2024-MASAI]]
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Hong-2023-MetaGPT]]
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-OrchestratingHumanAI-2025]]

## Related Notes

- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]]
- [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]

## Additional Links

- [[SP-Architecture]] — PUMA 7-layer architecture
- [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]] — Stage 5 multi-agent plan
- [[30 - Permanent/31 Concepts/PN-ReAct-AgentPattern]] — Reasoning + acting pattern
- [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] — BMAD multi-agent simulation
