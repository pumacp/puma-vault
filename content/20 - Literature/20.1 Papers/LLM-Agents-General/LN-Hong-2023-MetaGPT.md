---
type: literature
title: "MetaGPT: Meta Programming for A Multi-Agent Collaborative Framework"
authors: ["Hong, Sirui", "Zhuge, Mingchen", "Chen, Jonathan", "Zheng, Xiawu", "Chen, Zichuan", "Zhang, Yuheng", "Wang, Zili", "Yau, Steven Ka Shing", "Lin, Zijuan", "Zhou, Liyang", "Ran, Chenyu", "Xiao, Lingfeng", "Wu, Chenglin"]
first-author: "Hong"
year: 2023
status: reviewed
topic: multi-agent
relevance: 4
citekey: "@Hong2023MetaGPT"
venue: "ICLR 2024"
arxiv: "2308.00352"
doi: "10.48550/arXiv.2308.00352"
url: "https://arxiv.org/abs/2308.00352"
tags: [literature, multi-agent, metagpt, software-engineering, roles, puma-core]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 2
---

# LN: Hong et al. (2023) — MetaGPT: Meta Programming for A Multi-Agent Collaborative Framework

**Citation**: Hong, S., Zhuge, M., Chen, J., et al. (2023). *MetaGPT: Meta programming for a multi-agent collaborative framework*. arXiv:2308.00352. ICLR 2024. https://arxiv.org/abs/2308.00352

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | System proposal + empirical evaluation |
| **Context** | Builds on LLM-as-agent (ReAct, AutoGPT), addressing coordination failures |
| **Correctness** | Evaluated on HumanEval, MBPP, SoftwareDev benchmark. Clear ablations. |
| **Contributions** | (1) Structured workflows encoding real-world SOP into multi-agent communication; (2) Role specialisation (PM, architect, engineer, QA); (3) "Code = requirement + design + code" pipeline |
| **Clarity** | Good. Some implementation complexity. |

**Relevance**: ⭐⭐⭐⭐ — BMAD methodology in PUMA directly inspired by MetaGPT's role-based approach.

---

## Pass 2 — Content

### Core Idea

MetaGPT assigns different LLM agents to structured software roles: Product Manager → Architect → Engineer → QA. Each role produces specific artifacts (PRD, design doc, code, tests). The "meta-programming" refers to encoding Standard Operating Procedures (SOPs) as agent behaviour, preventing the coordination failures of purely conversational approaches.

### Key Insight for PUMA

MetaGPT's role structure maps directly to the BMAD methodology used in PUMA: Research Analyst → Product Manager → Architect → Developer → QA → Sustainability Officer. The artifact-driven workflow (PRD → spec → implementation) mirrors SDD principles.

### Limitation

MetaGPT focuses on software development tasks. Its application to ICT project management (triage, estimation, sprint planning) requires adapting the role definitions and communication protocols.

---

## PUMA Integration

- **BMAD**: MetaGPT is the theoretical foundation for the PUMA BMAD agent team → [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]]
- **Stage 5 Smart PMO**: Multi-role architecture for the SwarmPM vision → [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
