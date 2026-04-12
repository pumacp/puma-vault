---
id: KW-CAT1
title: "Keywords — Category 1: AI Agents and Swarm Intelligence"
type: keyword-glossary
category: "AI-Agents-Swarm-Intelligence"
tags: [keywords, ai-agents, swarm-intelligence, mas, puma, glossary]
created: 2026-04-07
updated: 2026-04-07
---

# 🔑 Keywords — Category 1: AI Agents and Swarm Intelligence

This category covers the technical architecture and interaction paradigms of AI agents, directly relevant to PUMA's experimental system design and Smart PMO vision.

---

## Keyword Index

| # | Term | Definition | PUMA Relevance |
|---|------|------------|----------------|
| 1 | **Agentic AI** | AI systems capable of autonomous goal-directed action, using tools, memory, and multi-step reasoning without step-by-step human instruction. | Core concept of PUMA — the triage and estimation agents operate agentically over Jira/TAWOS data. |
| 2 | **Multi-Agent Systems (MAS)** | Systems composed of multiple interacting autonomous agents, each with specialized roles, communicating to achieve shared goals. | PUMA Stage 5 (Smart PMO) implements MAS with role-specialized agents: triage, estimation, planning, reporting. |
| 3 | **Swarm Intelligence** | Collective and decentralized behavior of autonomous systems that collaborate to solve complex problems, inspired by biological swarms (ants, bees). | The SwarmPM concept in PUMA draws from swarm intelligence — agents share insights without central control. |
| 4 | **LLM Orchestration** | The process of coordinating and directing one or more large language models through a pipeline or workflow to complete complex tasks. | LangGraph provides LLM orchestration for PUMA's state machine governing agent transitions. |
| 5 | **Local LLMs** | Large language models deployed and run on local hardware (CPU/GPU) without cloud API dependency, preserving data sovereignty and enabling reproducibility. | PUMA uses Llama 3.2 8B and Mistral 7B via Ollama — both local LLMs at temperature=0, seed=42. |
| 6 | **Autonomous Agents** | Software entities that perceive their environment, make decisions, and take actions to achieve specified goals without continuous human guidance. | PUMA's triage agent autonomously classifies Jira issues; estimation agent predicts story points. |
| 7 | **Agentic Workflows** | Multi-step task pipelines where AI agents plan, execute, verify, and iterate — transcending single-prompt generation. | Andrew Ng's four agentic workflow patterns (reflection, tool-use, planning, multi-agent) frame PUMA's four prompting strategies. |
| 8 | **SwarmPM Framework** | PUMA's proposed multi-agent architecture for project management, combining specialized agents for triage, estimation, risk detection, and planning in a swarm-like coordination pattern. | Directly references PUMA's Stage 5 architecture — the Smart PMO swarm. |
| 9 | **LangGraph State Machine** | A LangGraph-based stateful directed graph that models agent behavior as transitions between states, with checkpointing and conditional routing. | PUMA's experiment runner uses LangGraph state machine for the four-strategy × two-model evaluation loop. |
| 10 | **CrewAI Role-Playing** | A framework for defining AI agent teams with explicit roles, goals, backstories, and task assignments using a declarative YAML/Python interface. | PUMA uses CrewAI for declarative role definitions in Stage 5 agent team (Triage Agent, Estimation Agent, Manager). |
| 11 | **Model Context Protocol (MCP)** | An open standard for connecting AI agents to external data sources and tools via a unified interface, analogous to a "USB-C for AI". | PUMA Stage 5 uses MCP to connect Smart PMO agents to Jira API and GitHub API without custom integrations. |
| 12 | **Agent Operating System (Agent OS)** | An operating system layer that manages agent memory, tool access, planning, and execution, analogous to how an OS manages hardware resources for applications. | Conceptually frames PUMA's LangGraph + Qdrant + PostgreSQL stack as the agent OS for Smart PMO. |
| 13 | **Human-in-the-Loop (HITL)** | A design principle requiring human oversight and approval at critical decision points within an automated AI workflow, ensuring bounded autonomy. | PUMA Constitution Article 4: HITL is mandatory for any agent decision with high confidence threshold or high-impact consequence. |
| 14 | **Bounded Autonomy** | The principle that autonomous agents operate within predefined boundaries — escalating to humans when decisions exceed their delegated authority. | PUMA's ethical governance model: agents classify and estimate but cannot change production Jira without human approval. |
| 15 | **Goal-Directed Systems** | AI systems that pursue specified objectives through planning and action selection, adapting their behavior based on feedback from the environment. | PUMA's agents are goal-directed: maximize F1-macro for triage, minimize MAE for estimation. |
| 16 | **Collaborative Intelligence** | The combined capabilities of human and AI agents working together, where each compensates for the other's limitations to achieve outcomes neither could alone. | PUMA's human-AI collaboration model: AI handles volume and consistency; PM handles context and judgment. |
| 17 | **Agent Communication Protocols** | Standardized formats and channels for information exchange between agents in a multi-agent system (e.g., JSON messages, MCP tool calls, LangGraph state updates). | PUMA Stage 5: agents communicate via LangGraph shared state dict; external tools via MCP. |
| 18 | **Reasoning Substrates** | The underlying cognitive mechanisms (chain-of-thought, working memory, reflection loops) that support complex reasoning in LLM-based agents. | PUMA's CoT strategy (Strategy 4) explicitly uses reasoning substrate — the model is asked to reason step-by-step before classifying. |
| 19 | **Recursive Self-Improvement** | A hypothetical or emerging capability of AI systems to iteratively improve their own performance or architecture without human intervention. | Referenced in PUMA's future work section — potential path for Smart PMO agents to learn from sprint retrospectives. |
| 20 | **Emergent Behavior in Agents** | Complex collective behaviors that arise from simple interactions between agents, not explicitly programmed but emergent from the system dynamics. | Observed in PUMA Stage 5 prototypes: agents develop implicit specialization patterns not explicitly defined. |

---

## Search Strings (for Literature Search)

```
"agentic AI" OR "AI agents" OR "autonomous agents" AND "project management"
"multi-agent systems" OR "MAS" AND "software engineering"
"LangGraph" OR "LLM orchestration" AND benchmark
"swarm intelligence" AND "project management" AND AI
"human-in-the-loop" AND "LLM agent" AND governance
```

Date filter: 2023–2026

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]]
- [[30 - Permanent/31 Concepts/PN-ReAct-AgentPattern]]
- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]]
- [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]]
- [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]]
- [[20 - Literature/20.6 Tools/LN-Tools-Dev-Environment]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
- [[80 - MOC/81 Topic-Maps/MOC-Keywords-Master]]
