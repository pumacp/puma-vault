---
type: literature
title: "MAGIS: LLM-Based Multi-Agent Framework for GitHub Issue Resolution"
authors: ["Tao, Wei", "Zhou, Yucheng", "Zhang, Wenqiang", "Cheng, Yu"]
first-author: "Tao"
year: 2024
status: reading
topic: llm-agents
relevance: 4
citekey: "@Tao2024MAGIS"
venue: "arXiv preprint"
arxiv: "2403.17927"
doi: "10.48550/arXiv.2403.17927"
url: "https://arxiv.org/abs/2403.17927"
tags: [literature, multi-agent, github-issues, software-engineering, issue-resolution, puma-core]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 1
---

# LN: Tao et al. (2024) — MAGIS: LLM-Based Multi-Agent Framework for GitHub Issue Resolution

**Citation**: Tao, W., Zhou, Y., Zhang, W., & Cheng, Y. (2024). *MAGIS: LLM-based multi-agent framework for GitHub issue resolution*. arXiv:2403.17927. https://arxiv.org/abs/2403.17927

*(This paper is in the PUMA project knowledge PDFs as "MAGIS_LLM-Based_Multi-Agent_Framework_for_GitHub_Issue_ReSolution_2403.17927v2.pdf")*

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | System proposal + empirical evaluation |
| **Context** | Addresses GitHub issue resolution with a team of specialised LLM agents |
| **Correctness** | Evaluated on SWE-bench. Improved over single-agent baselines. |
| **Contributions** | (1) Manager + Repository curator + Developer + QA team pattern; (2) Role-specific context retrieval; (3) Better than SWE-agent on SWE-bench subset |
| **Clarity** | Good. Clear role descriptions. |

**Relevance**: ⭐⭐⭐⭐ — MAGIS's GitHub issue team is directly analogous to PUMA's multi-agent PM team. The "Repository curator" role (finds relevant files) maps to PUMA's "historical issue retriever" in Stage 4.

---

## PUMA Connection

MAGIS demonstrates that issue triage and resolution benefit from specialist agent decomposition. PUMA's Stage 1 (triage classification) is a simpler version of MAGIS's full issue resolution pipeline. Reference for positioning PUMA in the issue-handling landscape.

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
