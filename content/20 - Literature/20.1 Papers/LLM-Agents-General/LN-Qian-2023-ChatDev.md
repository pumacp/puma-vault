---
type: literature
title: "ChatDev: Communicative Agents for Software Development"
authors: ["Qian, Chen", "Liu, Hong", "Yang, Cheng", "Chen, Weize", "Yao, Yusheng", "Xu, Juyuan", "Li, Cheng", "Wang, Zhiyuan", "Liu, Zhiyuan", "Sun, Maosong"]
first-author: "Qian"
year: 2023
status: reading
topic: multi-agent
relevance: 3
citekey: "@Qian2023ChatDev"
venue: "ACL 2024"
arxiv: "2307.07924"
doi: "10.48550/arXiv.2307.07924"
url: "https://arxiv.org/abs/2307.07924"
tags: [literature, multi-agent, chatdev, software-development, communication]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 1
---

# LN: Qian et al. (2023) — ChatDev: Communicative Agents for Software Development

**Citation**: Qian, C., Liu, H., Yang, C., et al. (2023). *ChatDev: Communicative agents for software development*. arXiv:2307.07924. ACL 2024. https://arxiv.org/abs/2307.07924

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | System proposal |
| **Context** | Concurrent with MetaGPT; both propose role-based LLM software teams |
| **Correctness** | Evaluated on software development micro-tasks. Limited external validation. |
| **Contributions** | (1) Chat-chain: sequential communication between CEO, CTO, programmer, reviewer, tester; (2) Phase-based collaboration; (3) Open-source framework |
| **Clarity** | Good. |

**Relevance**: ⭐⭐⭐ — Similar to MetaGPT but focused on chat-based agent communication. Less directly relevant than MetaGPT to PUMA's PM-specific architecture.

---

## PUMA Connection

Supports the general case for structured multi-agent communication in PM contexts. Less directly applicable than MetaGPT because ChatDev focuses on code generation rather than PM task execution. Reference for the multi-agent communication pattern literature review (Ch.2).

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
