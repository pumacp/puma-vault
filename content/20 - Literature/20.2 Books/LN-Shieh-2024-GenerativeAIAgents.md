---
type: literature
title: "Generative AI Agents: Build Autonomous AI Systems with LangChain and LlamaIndex"
authors: ["Shieh, Justin"]
first-author: "Shieh"
year: 2024
status: reviewed
topic: agentic-ai
relevance: 4
citekey: "@Shieh2024GenerativeAIAgents"
venue: "Packt Publishing"
arxiv: ""
doi: ""
url: "https://www.packtpub.com/en-us/product/generative-ai-agents-9781835084991"
tags: [literature, agentic-ai, langchain, llamaindex, rag, react, tool-use, sdd, cdd, puma-core, book, implementation, python, autonomous-agents, literature-note, moc]
created: 2026-04-14
updated: 2026-06-15
keshav-pass: 2
---

# LN: Shieh (2024) — Generative AI Agents

> [!cite] Bibliographic Reference
> **Citation**: Shieh, J. (2024). *Generative AI agents: Build autonomous AI systems with LangChain and LlamaIndex*. Packt Publishing. https://www.packtpub.com/en-us/product/generative-ai-agents-9781835084991

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Technical implementation book |
| **Context** | Practical guide for building production-grade agentic systems using LangChain (orchestration) and LlamaIndex (RAG). Written by a practitioner, 2024 — captures the current state of the LLM agent ecosystem |
| **Correctness** | Code examples verified against LangChain 0.2+; covers ReAct, tool calling, and RAG pipelines with working implementations |
| **Contributions** | (1) Full ReAct agent implementation; (2) RAG pipeline design; (3) Tool integration patterns; (4) Spec-Driven Development application to agent design; (5) Context-Driven Development for agent prompting |
| **Clarity** | Very good — assumes Python familiarity; progressive from simple to complex |

> [!success] Relevance: ⭐⭐⭐⭐
> Provides the implementation logic for PUMA's agent pipeline: ReAct reasoning for complex issues, RAG for Stage 4, and tool-calling for SmartPMO. The SDD and CDD integration directly maps to PUMA's prompt engineering methodology.

---

## Pass 2 — Key Concepts

### ReAct Agent Implementation

The book's core implementation pattern for reasoning agents:

```python
from langchain.agents import create_react_agent
from langchain import hub

prompt = hub.pull("hwchase17/react")
agent = create_react_agent(llm, tools, prompt)

# ReAct loop:
# Thought: Analyse the issue description
# Action: classify_issue(description="...", schema={...})
# Observation: {"type": "Bug", "confidence": 0.87}
# Final Answer: Bug, High priority
```

This pattern directly implements PUMA's Stage 4 (RAG-enhanced triage) and Stage 5 (SmartPMO) architectures.

### RAG Pipeline Design

The book's RAG architecture maps to PUMA Stage 4:
1. **Ingest**: Index historical issue resolutions into a vector database
2. **Retrieve**: Given new issue, retrieve k most similar resolved issues
3. **Augment**: Include retrieved context in the triage prompt
4. **Generate**: Triage with historical context

### Spec-Driven Development (SDD) for Agents

A key contribution: using specifications to define agent behaviour before implementation. The SDD pattern:
1. Write the agent specification (what it does, what it consumes, what it produces)
2. Write acceptance tests (what constitutes correct behaviour)
3. Implement the agent to satisfy the spec
4. Validate against the spec

This directly mirrors PUMA's `SP-Triage-Agent` spec and BMAD BDD scenarios.

### Context-Driven Development (CDD)

CDD principle: the quality of an agent's output is bounded by the quality of context it receives. Shieh's CDD framework:
- Always include explicit task context in system prompts
- Provide output format specification in every prompt
- Use few-shot examples as context anchors
- Restate key constraints at the prompt end (Contextual Anchoring)

---

## PUMA Integration

- **Stage 4 RAG implementation**: Shieh's RAG pipeline as the technical basis
- **BMAD agent prompts**: CDD principles as the prompt engineering framework
- **Spec-Driven Development**: SP-Triage-Agent and SP-Architecture specs follow Shieh's SDD approach

## Related Notes

- [[20 - Literature/20.2 Books/LN-Mavor-Parker-2024-AgenticAI]] — complementary: Mavor-Parker covers theory; Shieh covers implementation
- [[20 - Literature/20.2 Books/LN-Wooldridge-2009-MultiAgentSystems]] — theoretical MAS foundations
- [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] — SDD as PUMA's specification methodology
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Yao-2022-ReAct]] — ReAct: the reasoning pattern implemented by this book
- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]] — RAG theory (implemented via this book)

## MOCs

- [[20 - Literature/20.2 Books/MOC Books]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
