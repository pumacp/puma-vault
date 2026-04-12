---
type: literature
title: "OpenHands: An Open Platform for AI Software Developers as Generalist Agents"
authors: ["Wang, Xingyao", "Li, Boxuan", "Song, Yufan", "Xu, Frank F.", "Tang, Xiangru", "Zhuge, Mingchen", "Pan, Jiayi", "Song, Yueqi", "Li, Bowen", "Singh, Jaskirat", "Tran, Hoang H.", "Neubig, Graham"]
first-author: "Wang"
year: 2024
status: reviewed
topic: llm-agents
relevance: 4
citekey: "@Wang2024OpenHands"
venue: "ICLR 2025"
arxiv: "2407.16741"
doi: "10.48550/arXiv.2407.16741"
url: "https://arxiv.org/abs/2407.16741"
github: "https://github.com/OpenHands/OpenHands"
tags: [literature, open-source, platform, ai-agents, software-engineering, openhands]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 2
---

# LN: Wang et al. (2024) — OpenHands: An Open Platform for AI Software Developers as Generalist Agents

**Citation**: Wang, X., Li, B., Song, Y., et al. (2024). *OpenHands: An open platform for AI software developers as generalist agents*. arXiv:2407.16741. ICLR 2025. https://arxiv.org/abs/2407.16741

**GitHub**: https://github.com/OpenHands/OpenHands (formerly OpenDevin; org renamed from All-Hands-AI to OpenHands)

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Platform + empirical evaluation |
| **Context** | Open-source platform for building AI software agents with code execution + web browsing |
| **Correctness** | 15-task evaluation including SWE-bench and WebArena. Rigorous. |
| **Contributions** | (1) Open-source MIT-licensed platform; (2) Sandboxed code execution; (3) Multi-agent coordination; (4) 2.1K+ contributions from 188+ contributors |
| **Clarity** | Excellent. Comprehensive documentation. |

**Relevance**: ⭐⭐⭐⭐ — OpenHands (formerly OpenDevin) is directly cited in PUMA's bibliography as a tool for the development phase. Used in PUMA for scaffolding and agentic code execution.

---

## PUMA Connection

- **Development phase (F2–F4)**: OpenHands used for agentic code assistance → [[50 - Areas/53 Code-Dev/Code-Review-Log]]
- **Stage 5**: OpenHands architecture (sandboxed agent + tool use) as reference for Smart PMO implementation

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
