---
type: literature
title: "The Landscape of Emerging AI Agent Architectures for Reasoning, Planning, and Tool Calling: A Survey"
authors: ["Masterman, Tula", "Besen, Sandi", "Sawtell, Mason", "Chao, Alex"]
first-author: "Masterman"
year: 2024
status: reviewed
topic: llm-agents
relevance: 4
citekey: "@Masterman2024AgentArchSurvey"
venue: "arXiv preprint"
arxiv: "2404.11584"
doi: "10.48550/arXiv.2404.11584"
url: "https://arxiv.org/abs/2404.11584"
tags: [literature, survey, agent-architectures, reasoning, planning, tool-calling, puma-core, academic-writing, agents, architecture, benchmark, bibliography, chain-of-thought, citation, cot, critical-thinking, effort-estimation, gpt, keshav, literature-note, llm, llm-agents, local-llm, masai, metagpt, moc, multi-agent, ollama, openai, orchestration, project-management, rag, react, reading-method, reasoning-action, red-teaming, research, retrieval, story-points, tool-use, tree-of-thoughts]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 2
---

# LN: Masterman et al. (2024) — The Landscape of Emerging AI Agent Architectures: A Survey

> [!cite] Bibliographic Reference
> **Citation**: Masterman, T., Besen, S., Sawtell, M., & Chao, A. (2024). *The landscape of emerging AI agent architectures for reasoning, planning, and tool calling: A survey*. arXiv:2404.11584. https://arxiv.org/abs/2404.11584
*(This paper is in the PUMA project knowledge PDFs as "The_Landscape_of_Emerging_AI_Agent_Architectures_for_Reasoning_Planning_and_Tool_Calling_A_Survey_2404.11584v1.pdf")*

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Survey |
| **Context** | Comprehensive survey of agent architectures post-ChatGPT era |
| **Correctness** | Covers 30+ systems systematically. Well-organised taxonomy. |
| **Contributions** | (1) Taxonomy: single-agent vs. multi-agent; (2) Reasoning patterns: CoT, ToT, ReAct, Reflexion; (3) Planning: task decomposition, tool selection; (4) Tool integration patterns |
| **Clarity** | Excellent. Well-organised reference. |

> [!success] Relevance: ⭐⭐⭐⭐
> Provides the theoretical taxonomy for classifying PUMA's agent architecture choices. Essential reference for Ch.2 state-of-the-art section.

---

## Pass 2 — Key Points

The survey's taxonomy of single-agent vs. multi-agent architectures, and the spectrum from "tool-augmented LLM" to "fully autonomous agent," provides the classification framework for positioning PUMA:

- PUMA Stage 1–2: Tool-augmented LLM (Ollama inference + structured prompting)
- PUMA Stage 4: Single agent with RAG tool (ReAct pattern)
- PUMA Stage 5: Multi-agent with orchestration (MASAI/MetaGPT pattern)

---

## PUMA Integration

- **Ch.2 (State of the art)**: Primary taxonomy reference for agent architecture classification
- **Architecture spec**: [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]]
- **PUMA stages**: stages 1–5 map to autonomy levels in this survey → [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]]

## Related Permanent Notes

- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — synthesised insight from this and related surveys
- [[30 - Permanent/31 Concepts/PN-ReAct-AgentPattern]] — one of the reasoning patterns surveyed
- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — Agent OS concept

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
