---
type: literature
title: "AgentScope: A Flexible yet Robust Multi-Agent Platform"
authors: ["Gao, Dawei", "Li, Zitao", "Pan, Xuchen", "Ma, Daoyuan", "Zhang, Yanchen", "Qian, Zhijian", "Zhang, Rui", "Wang, Lin", "Chen, Jingren", "Zhou, Jun"]
first-author: "Gao"
year: 2024
status: reviewed
topic: multi-agent
relevance: 4
citekey: "@Gao2024AgentScope"
venue: "arXiv preprint"
arxiv: "2402.14034"
doi: "10.48550/arXiv.2402.14034"
url: "https://arxiv.org/abs/2402.14034"
tags: [literature, multi-agent, agentscope, alibaba, platform, framework, puma-core]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 2
---

# LN: Gao et al. (2024) — AgentScope: A Flexible yet Robust Multi-Agent Platform

**Citation**: Gao, D., Li, Z., Pan, X., et al. (2024). *AgentScope: A flexible yet robust multi-agent platform*. arXiv:2402.14034. https://arxiv.org/abs/2402.14034

**Affiliation**: Alibaba Group

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Framework + system proposal |
| **Context** | Alibaba's answer to AutoGen/LangGraph; platform for multi-agent applications |
| **Correctness** | Evaluated on diverse multi-agent tasks including coding and QA. Robustness tests. |
| **Contributions** | (1) Actor-model concurrency for parallel agent execution; (2) Fault-tolerant pipeline with automatic retry; (3) Multiple LLM backends (OpenAI, Ollama, Hugging Face); (4) Built-in monitoring and debugging |
| **Clarity** | Excellent. Comprehensive documentation. |

**Relevance**: ⭐⭐⭐⭐ — AgentScope explicitly supports Ollama as a backend, making it directly compatible with PUMA's local inference stack.

---

## Pass 2 — Key Points

AgentScope's actor-model concurrency allows running multiple specialist agents in parallel — directly applicable to PUMA Stage 5 where a triage agent, estimation agent, and risk agent could process a backlog simultaneously.

**Ollama integration**: AgentScope's `OllamaChat` backend calls Ollama's REST API. This means PUMA could switch from a custom Ollama integration to AgentScope with minimal code changes.

**Comparison with LangGraph**: AgentScope excels at robustness and concurrency; LangGraph at graph-based state machines with cycles. For PUMA Stage 5, AgentScope may be simpler to implement correctly.

---

## PUMA Integration

- **Stage 5 option**: AgentScope as the multi-agent orchestration framework → [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]]
- Compatible with Ollama local inference → [[20 - Literature/20.6 Tools/LN-Tools-Ollama-ClaudeCode-OpenCode-BrowserOS]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
