---
type: literature
title: "Multi-Agent Collaboration: Harnessing the Power of Intelligent LLM Agents"
authors: ["Talebirad, Yashar", "Nadiri, Amirhossein"]
first-author: "Talebirad"
year: 2023
status: reading
topic: multi-agent
relevance: 4
citekey: "@Talebirad2023MultiAgentSurvey"
venue: "arXiv preprint"
arxiv: "2306.03314"
doi: "10.48550/arXiv.2306.03314"
url: "https://arxiv.org/abs/2306.03314"
tags: [literature, multi-agent, survey, collaboration, llm, puma-core]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 1
---

# LN: Talebirad & Nadiri (2023) — Multi-Agent Collaboration: Harnessing the Power of Intelligent LLM Agents

**Citation**: Talebirad, Y., & Nadiri, A. (2023). *Multi-agent collaboration: Harnessing the power of intelligent LLM agents*. arXiv:2306.03314. https://arxiv.org/abs/2306.03314

**Important note**: The bibliography entry lists arXiv:2312.04677 (a mathematics paper) as the ID. The **correct** arXiv ID is **2306.03314**, verified on Semantic Scholar and arXiv.

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Survey / position paper |
| **Context** | Early survey of LLM-based multi-agent systems; precedes MetaGPT and AutoGen |
| **Correctness** | Conceptual survey, not empirical. References real systems. |
| **Contributions** | (1) Taxonomy of multi-agent LLM architectures; (2) Communication patterns (hierarchical, peer-to-peer, broadcast); (3) Task decomposition strategies for complex problems |
| **Clarity** | Good. Accessible overview. |

**Relevance**: ⭐⭐⭐⭐ — Provides the theoretical taxonomy for classifying PUMA's multi-agent architecture choices (Stage 4–5).

---

## PUMA Connection

The taxonomy in this survey helps justify PUMA's architectural choice for Stage 5: hierarchical (Manager Agent orchestrates specialist agents) vs. peer-to-peer (agents negotiate task ownership). Reference for Ch.2 architecture section.

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
