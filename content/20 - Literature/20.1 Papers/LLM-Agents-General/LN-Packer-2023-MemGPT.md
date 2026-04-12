---
type: literature
title: "MemGPT: Towards LLMs as Operating Systems"
authors: ["Packer, Charles", "Wooders, Sarah", "Lin, Kevin", "Fang, Vivian", "Patil, Shishir G.", "Stoica, Ion", "Gonzalez, Joseph E."]
first-author: "Packer"
year: 2023
status: reading
topic: llm-agents
relevance: 3
citekey: "@Packer2023MemGPT"
venue: "arXiv preprint (2023) / NeurIPS 2024 Workshop"
arxiv: "2310.08560"
doi: "10.48550/arXiv.2310.08560"
url: "https://arxiv.org/abs/2310.08560"
tags: [literature, llm-agents, memory, operating-system, context-management]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 1
---

# LN: Packer et al. (2023) — MemGPT: Towards LLMs as Operating Systems

**Citation**: Packer, C., Wooders, S., Lin, K., et al. (2023). *MemGPT: Towards LLMs as operating systems*. arXiv:2310.08560. https://arxiv.org/abs/2310.08560

**Note**: The original title in the bibliography ("Towards LLMs with Persistent Memory") is inaccurate. The verified title is "Towards LLMs as Operating Systems."

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | System proposal |
| **Context** | Addresses LLM context window limitations via virtual memory inspired by OS paging |
| **Correctness** | Evaluated on document QA and conversational agents. Reasonable evaluation. |
| **Contributions** | (1) Virtual context management (main context + external storage); (2) Agent-controlled memory paging; (3) Persistent persona memory across conversations |
| **Clarity** | Good. OS analogy is helpful. |

**Relevance**: ⭐⭐⭐ — PUMA Stage 4+ requires persistent memory across issue classification sessions. MemGPT's approach is relevant for maintaining project context.

---

## PUMA Connection

PUMA Stage 4 (RAG) and Stage 5 (Smart PMO) require agents that remember context across issues and sprints. MemGPT's architecture (main context = active sprint; external storage = historical issues) maps well to PM memory requirements.

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
