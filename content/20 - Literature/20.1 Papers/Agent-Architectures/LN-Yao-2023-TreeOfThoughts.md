---
type: literature
title: "Tree of Thoughts: Deliberate Problem Solving with Large Language Models"
authors: ["Yao, Shunyu", "Yu, Dian", "Zhao, Jeffrey", "Shafran, Izhak", "Griffiths, Thomas L.", "Cao, Yuan", "Narasimhan, Karthik"]
first-author: "Yao"
year: 2023
status: reading
topic: llm-reasoning
relevance: 3
citekey: "@Yao2023TreeOfThoughts"
venue: "NeurIPS 2023"
arxiv: "2305.10601"
doi: "10.48550/arXiv.2305.10601"
url: "https://arxiv.org/abs/2305.10601"
tags: [literature, llm-reasoning, tree-of-thoughts, planning, deliberation, prompting]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 2
---

# LN: Yao et al. (2023) — Tree of Thoughts: Deliberate Problem Solving with Large Language Models

**Citation**: Yao, S., Yu, D., Zhao, J., et al. (2023). *Tree of thoughts: Deliberate problem solving with large language models*. arXiv:2305.10601. NeurIPS 2023. https://arxiv.org/abs/2305.10601

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Method proposal + empirical evaluation |
| **Context** | Extends Chain-of-Thought beyond linear sequences; inspired by BFS/DFS search |
| **Correctness** | Evaluated on Game of 24, Creative Writing, Mini Crosswords. Strong results on 24 game (74% vs 4% CoT). |
| **Contributions** | (1) Tree search over reasoning steps; (2) LLM evaluates intermediate steps; (3) BFS/DFS/beam search variants; (4) 74% on Game of 24 vs. 4% for standard CoT |
| **Clarity** | Excellent. Clear algorithm descriptions. |

**Relevance**: ⭐⭐⭐ — ToT is relevant for PUMA's complex backlog prioritisation (Stage 3) where multiple alternative orderings need to be evaluated. Too expensive for high-volume triage (Stage 1).

---

## PUMA Connection

ToT could enhance Stage 3 (backlog prioritisation): the agent explores multiple orderings before committing to one. However, the computational cost (5–10× more tokens than CoT) makes it impractical for bulk triage. Relevant as a future-work option and for the prompting strategies background (Ch.2).

Connects to: [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
