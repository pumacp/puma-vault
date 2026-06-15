---
type: literature
title: "An Introduction to MultiAgent Systems"
authors: ["Wooldridge, Michael"]
first-author: "Wooldridge"
year: 2009
edition: "2nd"
status: reviewed
topic: multi-agent-systems
relevance: 5
citekey: "@Wooldridge2009MAS"
venue: "John Wiley & Sons"
arxiv: ""
doi: ""
url: "https://www.wiley.com/en-us/An+Introduction+to+MultiAgent+Systems%2C+2nd+Edition-p-9780470519462"
tags: [literature, mas, multi-agent-systems, agent-autonomy, coordination, negotiation, bdi, deliberative-agents, reactive-agents, puma-core, book, architecture, smart-pmo, bmad, literature-note, moc]
created: 2026-04-14
updated: 2026-06-15
keshav-pass: 2
---

# LN: Wooldridge (2009) — An Introduction to MultiAgent Systems (2nd ed.)

> [!cite] Bibliographic Reference
> **Citation**: Wooldridge, M. (2009). *An introduction to multiagent systems* (2nd ed.). John Wiley & Sons. https://www.wiley.com/en-us/An+Introduction+to+MultiAgent+Systems%2C+2nd+Edition-p-9780470519462

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Academic textbook — foundational reference |
| **Context** | Michael Wooldridge (Oxford, formerly Liverpool) is one of the founding figures of MAS research. This textbook is the standard academic reference for the field |
| **Correctness** | Peer-reviewed; covers formal foundations (BDI logic, game theory) alongside practical architectures |
| **Contributions** | (1) Formal definition of agents and MAS; (2) BDI (Belief-Desire-Intention) agent architecture; (3) Reactive vs. deliberative agents; (4) Coordination, cooperation, and negotiation protocols; (5) Agent communication languages; (6) Multi-agent planning |
| **Clarity** | Excellent — balances formal rigour with accessible explanations |

> [!success] Relevance: ⭐⭐⭐⭐⭐
> The standard academic definition of agents and MAS that underpins PUMA's agent architecture. The Manager Agent, Triage Agent, and QA Agent in BMAD are MAS agents in Wooldridge's sense. Justifies PUMA's multi-agent design as academically grounded.

---

## Pass 2 — Key Concepts

### Formal Agent Definition

> "An agent is a computer system that is situated in some environment and that is capable of autonomous action in this environment in order to meet its delegated objectives."

Key properties of agents:
- **Autonomy**: Operates without direct intervention; has control over its own state
- **Social ability**: Interacts with other agents via an agent communication language
- **Reactivity**: Perceives and responds to its environment
- **Pro-activeness**: Takes initiative; pursues goals, not just responses to stimuli

### Reactive vs. Deliberative Agents

| Type | Architecture | Strength | Weakness |
|------|-------------|---------|---------|
| **Reactive** | Stimulus-response rules | Fast, no overhead | No planning, no goals |
| **Deliberative (BDI)** | Belief-Desire-Intention | Goal-directed, plans | Computational overhead |
| **Hybrid** | Reactive layer + deliberative layer | Best of both | Design complexity |

PUMA's agents are **BDI-inspired**: they have beliefs (context from the issue + prompt), desires (correct classification), and intentions (the chain-of-thought leading to the output).

### BDI Architecture

```
Beliefs: What the agent knows about the world
         (issue description, priority schema, few-shot examples)
Desires: What the agent wants to achieve
         (correct triage classification, accurate SP estimate)
Intentions: What the agent is committed to doing
            (current CoT reasoning chain → output)
```

### Coordination and Negotiation

In MAS with multiple agents:
- **Coordination**: Ensuring agents don't conflict or duplicate work
- **Cooperation**: Agents work together towards shared goals
- **Negotiation**: Agents reach agreements on resource allocation

In PUMA's BMAD multi-agent team:
- **Manager Agent** coordinates task allocation
- **Analyst Agent + Triage Agent** cooperate on issue classification
- **QA Agent** independently validates outputs (adversarial coordination)

### Agent Communication

Wooldridge formalises agent communication using KQML (Knowledge Query and Manipulation Language) and FIPA ACL. Modern LLM-agent frameworks (LangGraph, CrewAI) implement these principles through structured message passing and shared state.

---

## PUMA Integration

Wooldridge provides the academic foundation for PUMA's multi-agent design:

| Wooldridge Concept | PUMA Implementation |
|-------------------|-------------------|
| Agent autonomy | Each BMAD agent operates independently with defined scope |
| Reactive layer | Issue ingestion pipeline (immediate classification) |
| Deliberative layer | CoT reasoning for complex issues |
| Coordination | Manager Agent as coordinator |
| Cooperation | Triage + Analyst cooperative classification |
| Negotiation | HITL escalation as human-agent negotiation |

## Related Notes

- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — MAS patterns in PUMA
- [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]] — BMAD agents as a practical MAS
- [[20 - Literature/20.2 Books/LN-Shieh-2024-GenerativeAIAgents]] — implementation guide for LLM-based agents
- [[20 - Literature/20.2 Books/LN-Mavor-Parker-2024-AgenticAI]] — modern agentic AI extending MAS theory
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Talebirad-2023-MultiAgentSurvey]] — survey of LLM-based MAS

## MOCs

- [[20 - Literature/20.2 Books/MOC Books]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
