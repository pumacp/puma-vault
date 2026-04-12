---
type: literature
title: "AutoGen: Enabling Next-Gen LLM Applications via Multi-Agent Conversation"
authors: ["Wu, Qingyun", "Bansal, Gagan", "Zhang, Jieyu", "Wu, Yiran", "Zhang, Shaokun", "Zhu, Erkang", "Li, Beibin", "Jiang, Li", "Zhang, Xiaoyun", "Wang, Chi"]
first-author: "Wu"
year: 2023
status: reviewed
topic: multi-agent
relevance: 4
citekey: "@Wu2023AutoGen"
venue: "ICLR 2024 (Workshop)"
arxiv: "2308.08155"
doi: "10.48550/arXiv.2308.08155"
url: "https://arxiv.org/abs/2308.08155"
tags: [literature, multi-agent, autogen, microsoft, conversation, framework, puma-core]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 2
---

# LN: Wu et al. (2023) — AutoGen: Enabling Next-Gen LLM Applications via Multi-Agent Conversation

**Citation**: Wu, Q., Bansal, G., Zhang, J., et al. (2023). *AutoGen: Enabling next-gen LLM applications via multi-agent conversation*. arXiv:2308.08155. https://arxiv.org/abs/2308.08155

**Affiliation**: Microsoft Research

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Framework + system proposal |
| **Context** | Microsoft's agent framework, concurrent with MetaGPT and ChatDev |
| **Correctness** | Evaluated on math, coding, QA, real-world tasks. Multi-scenario evaluation. |
| **Contributions** | (1) Conversational multi-agent framework with customisable roles; (2) Human-in-the-loop support; (3) Code execution agents with sandbox; (4) Widely adopted open-source framework (100k+ stars) |
| **Clarity** | Excellent. Well-documented with code examples. |

**Relevance**: ⭐⭐⭐⭐ — AutoGen is the most widely adopted multi-agent framework. Relevant as alternative to LangGraph for PUMA Stage 5.

---

## Pass 2 — Key Points

AutoGen allows defining conversational agents where each agent has a system prompt, tool access, and can initiate or respond to conversations. The key innovation is the **GroupChat** abstraction: multiple agents take turns contributing to a shared conversation, managed by a GroupChatManager.

**Human-in-the-loop**: AutoGen explicitly supports inserting human approval checkpoints — directly aligned with PUMA's HITL principle (Constitution Article 4).

**Comparison with PUMA Stack**:
- AutoGen vs. LangGraph: AutoGen = conversation-centric; LangGraph = graph/state-centric. LangGraph better for PUMA's cyclic agent workflows (reflection loops).
- AutoGen vs. CrewAI: AutoGen more flexible, CrewAI more opinionated role structure.

---

## PUMA Integration

- **Stage 5**: AutoGen as alternative to LangGraph for Smart PMO → [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]]
- Mentioned in BMAD agent roster as reference framework → [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
