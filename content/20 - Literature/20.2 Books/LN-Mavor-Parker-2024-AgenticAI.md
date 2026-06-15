---
type: literature
title: "Agentic AI: The Next Generation of Intelligent Systems"
authors: ["Mavor-Parker, Augustus"]
first-author: "Mavor-Parker"
year: 2024
status: reviewed
topic: agentic-ai
relevance: 4
citekey: "@MavorParker2024AgenticAI"
venue: "Manning Publications"
arxiv: ""
doi: ""
url: "https://www.manning.com/books/agentic-ai"
tags: [literature, agentic-ai, autonomous-agents, langgraph, bounded-autonomy, cyclical-workflow, tool-use, puma-core, book, architecture, smart-pmo, hitl, literature-note, moc]
created: 2026-04-14
updated: 2026-06-15
keshav-pass: 2
---

# LN: Mavor-Parker (2024) — Agentic AI

> [!cite] Bibliographic Reference
> **Citation**: Mavor-Parker, A. (2024). *Agentic AI: The next generation of intelligent systems*. Manning Publications. https://www.manning.com/books/agentic-ai

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Conceptual + practical book |
| **Context** | Manning's "In Action" series for the agentic AI era. Covers the conceptual shift from completion-based to goal-directed LLM systems, and the frameworks enabling cyclical autonomous workflows |
| **Correctness** | Grounded in 2023–2024 empirical results; code examples use LangGraph's stable API |
| **Contributions** | (1) Formal definition of agentic vs. non-agentic LLM systems; (2) LangGraph for cyclical (non-linear) workflows; (3) Bounded Autonomy framework; (4) Tool integration taxonomy; (5) Human-agent handoff patterns |
| **Clarity** | Very good — strong conceptual framing with practical implementations |

> [!success] Relevance: ⭐⭐⭐⭐
> Provides the conceptual framework for PUMA's HITL and Bounded Autonomy design. The LangGraph cyclical workflow model informs PUMA Stage 5 (SmartPMO) architecture.

---

## Pass 2 — Key Concepts

### Agentic vs. Non-Agentic LLM Systems

| Property | Non-Agentic (Completion) | Agentic |
|----------|------------------------|---------|
| Input | Single prompt | Goals + context |
| Output | Single response | Actions in environment |
| Memory | None (stateless) | Persistent (episodic, semantic) |
| Planning | None | Multi-step planning |
| Tools | None | External API calls, file I/O |
| Feedback | None | Observation → re-plan |

PUMA Stages 1–3 are non-agentic (single-pass LLM completions). Stage 4–5 are agentic (ReAct loop, multi-tool, persistent state).

### LangGraph: Cyclical Workflows

Traditional LLM pipelines are directed acyclic graphs (DAGs) — each step runs once. LangGraph enables cyclical graphs: steps can loop back based on conditions.

```
┌─────────────────────────────────────────────────────┐
│ Issue Input → Triage Agent                          │
│        ↓                                             │
│ Confidence ≥ 0.80? ──Yes──→ Output                  │
│        ↓                                             │
│        No → Reflexion Agent → Revised Triage        │
│        ↓                                             │
│ Confidence ≥ 0.80? ──Yes──→ Output                  │
│        ↓                                             │
│        No → HITL Escalation → Human → Output        │
└─────────────────────────────────────────────────────┘
```

This is exactly PUMA's Stage 4+ architecture: a cyclical workflow with confidence-based routing and HITL fallback.

### Bounded Autonomy Framework

Mavor-Parker formalises the gradient from full human control to full automation:

| Level | Description | Human Role |
|-------|-------------|-----------|
| 1 | Human executes, AI suggests | All decisions |
| 2 | AI executes, human approves each step | Gatekeeper |
| 3 | AI executes, human approves batches | Auditor |
| **4** | AI executes autonomously, human reviews exceptions | **Exception handler** |
| 5 | AI executes fully autonomously | None |

PUMA targets Level 4 for high-confidence cases and falls back to Level 2–3 for low-confidence issues. This is HITL as an exception-handling pattern, not a bottleneck.

### Human-Agent Handoff Patterns

The book identifies four handoff patterns:
1. **Always-on**: Human reviews every output (expensive, defensive)
2. **Sampling audit**: Human reviews a random sample (statistically controlled)
3. **Threshold-based**: Human reviews outputs below a confidence threshold (PUMA's model)
4. **Drift detection**: Human reviews when model performance diverges from baseline

---

## PUMA Integration

- **PUMA Stage 4+**: LangGraph cyclical workflow as the implementation target
- **HITL design**: Bounded Autonomy Level 4 as the PUMA operational mode
- **Threshold-based escalation**: Confidence < 0.80 → HITL (from PN-HITL-BoundedAutonomy)

## Related Notes

- [[20 - Literature/20.2 Books/LN-Shieh-2024-GenerativeAIAgents]] — implementation complement: Shieh for code, Mavor-Parker for architecture
- [[30 - Permanent/31 Concepts/PN-HITL-BoundedAutonomy]] — Bounded Autonomy permanent note
- [[20 - Literature/20.2 Books/LN-Wooldridge-2009-MultiAgentSystems]] — theoretical MAS foundations
- [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]] — SmartPMO as a Level 4 Bounded Autonomy system

## MOCs

- [[20 - Literature/20.2 Books/MOC Books]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
