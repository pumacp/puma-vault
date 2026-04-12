---
type: literature
title: "GAIA: A Benchmark for General AI Assistants"
authors: ["Mialon, Grégoire", "Fourrier, Clémentine", "Swift, Craig", "Yang, Jian", "LeCun, Yann", "Wolf, Thomas"]
first-author: "Mialon"
year: 2023
status: reading
topic: llm-benchmark
relevance: 3
citekey: "@Mialon2023GAIA"
venue: "ICLR 2024"
arxiv: "2311.12983"
doi: "10.48550/arXiv.2311.12983"
url: "https://arxiv.org/abs/2311.12983"
tags: [literature, benchmark, gaia, general-ai, evaluation]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 1
---

# LN: Mialon et al. (2023) — GAIA: A Benchmark for General AI Assistants

**Citation**: Mialon, G., Fourrier, C., Swift, C., Yang, J., LeCun, Y., & Wolf, T. (2023). *GAIA: A benchmark for general AI assistants*. arXiv:2311.12983. ICLR 2024. https://arxiv.org/abs/2311.12983

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Benchmark proposal |
| **Context** | Complementary to AgentBench; focuses on real-world, multi-step tasks requiring reasoning + tool use |
| **Correctness** | Human expert validation. 466 questions requiring multi-step reasoning. |
| **Contributions** | (1) GAIA: 466 real-world tasks in 3 difficulty levels; (2) GPT-4 achieves 15% on hardest level vs. humans' 92%; (3) Highlights gap between benchmark-trained and truly capable agents |
| **Clarity** | Good. |

**Relevance**: ⭐⭐⭐ — Useful for contextualising PUMA's benchmark contribution. GAIA evaluates general AI agents; PUMA evaluates domain-specific PM agents.

---

## PUMA Connection

GAIA's 3-level difficulty taxonomy (L1/L2/L3) could inspire a similar difficulty taxonomy for PUMA's PM benchmark: Level 1 = simple triage; Level 2 = estimation with context; Level 3 = full sprint planning. Reference for benchmark design (Ch.2, state-of-the-art landscape).

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
