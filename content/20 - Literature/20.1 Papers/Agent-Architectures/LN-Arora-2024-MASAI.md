---
type: literature
title: "MASAI: Modular Architecture for Software-Engineering AI Agents"
authors: ["Arora, Daman", "Sonwane, Atharv", "Wadhwa, Nalin", "Mehrotra, Abhav", "Utpala, Saiteja", "Bairi, Ramakrishna", "Kanade, Aditya", "Natarajan, Nagarajan"]
first-author: "Arora"
year: 2024
status: reviewed
topic: llm-agents
relevance: 4
citekey: "@Arora2024MASAI"
venue: "arXiv preprint"
arxiv: "2406.11638"
doi: "10.48550/arXiv.2406.11638"
url: "https://arxiv.org/abs/2406.11638"
tags: [literature, llm-agents, masai, software-engineering, modular, microsoft, puma-core, academic-writing, agents, architecture, benchmark, bibliography, citation, critical-thinking, effort-estimation, github, issue-triage, keshav, literature-note, llm, moc, multi-agent, orchestration, project-management, react, reading-method, reasoning, reasoning-action, red-teaming, research, scheduling, smart-pmo, story-points, swe-bench, triage]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 2
---

# LN: Arora et al. (2024) — MASAI: Modular Architecture for Software-Engineering AI Agents

**Citation**: Arora, D., Sonwane, A., Wadhwa, N., et al. (2024). *MASAI: Modular architecture for software-engineering AI agents*. arXiv:2406.11638. https://arxiv.org/abs/2406.11638

**Affiliation**: Microsoft Research India

**Important note**: The bibliography entry attributes this paper to "Xie et al." — this is incorrect. The verified first author is **Daman Arora**.

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | System proposal + empirical evaluation |
| **Context** | Builds on SWE-bench; targets GitHub issue resolution with modular agents |
| **Correctness** | Achieves 28.33% on SWE-bench Lite (300 GitHub issues). State-of-the-art at publication. Clear ablations. |
| **Contributions** | (1) Modular sub-agents with well-defined objectives; (2) Information gathering across repo; (3) Avoiding long trajectories; (4) SOTA on SWE-bench Lite |
| **Clarity** | Excellent. Clear architecture diagrams. |

**Relevance**: ⭐⭐⭐⭐ — MASAI's modular sub-agent architecture is directly applicable to PUMA: separate agents for triage, estimation, and scheduling, each with well-defined scope.

---

## Pass 2 — Key Points

MASAI decomposes software engineering into sub-problems, each handled by a specialist agent. The key innovation: each sub-agent has a **narrow objective** and specific tools, reducing error accumulation. This is the opposite of single-agent approaches that try to do everything in one context.

**PUMA application**: 
- Triage sub-agent: classify priority of one issue at a time
- Estimation sub-agent: predict story points for one user story
- These could be orchestrated by a Manager Agent (MASAI's orchestrator pattern)

---

## PUMA Integration

- **Stage 4–5 architecture**: MASAI's modular sub-agent pattern → [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]]
- Directly cited in architecture spec → [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]]

## Related Permanent Notes

- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — scientific basis for MASAI specialisation
- [[30 - Permanent/31 Concepts/PN-ReAct-AgentPattern]] — reasoning loop each sub-agent uses
- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — Agent OS pattern
- [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — PUMA's target PM tasks

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
