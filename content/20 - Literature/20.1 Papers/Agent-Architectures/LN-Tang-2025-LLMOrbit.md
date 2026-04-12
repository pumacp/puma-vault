---
type: literature
title: "LLMOrbit: A Circular Taxonomy of Large Language Models — From Scaling Walls to Agentic AI Systems"
authors: ["Tang, Jiaming", "Chen, Weize", "Li, Xiaonan", "Liu, Zhiyuan", "Sun, Maosong"]
first-author: "Tang"
year: 2025
status: to-read
topic: llm-taxonomy
relevance: 3
citekey: "@Tang2025LLMOrbit"
venue: "arXiv preprint"
arxiv: "2601.14053"
doi: "10.48550/arXiv.2601.14053"
url: "https://arxiv.org/abs/2601.14053"
tags: [literature, taxonomy, llm, scaling, agentic-ai, survey]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 1
---

# LN: Tang et al. (2025) — LLMOrbit: A Circular Taxonomy from Scaling to Agentic AI

**Citation**: Tang, J., Chen, W., Li, X., Liu, Z., & Sun, M. (2025). *LLMOrbit: A circular taxonomy of large language models — from scaling walls to agentic AI systems*. arXiv:2601.14053. https://arxiv.org/abs/2601.14053

*(This paper is in the PUMA project knowledge PDFs as "LLMOrbit_A_Circular_Taxonomy_of_Large_Language_Models_From_Scaling_Walls_to_Agentic_AI_Systems_2601.14053v1.pdf")*

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Survey / taxonomy |
| **Context** | Comprehensive taxonomy covering the full evolution from base LLMs to agentic systems |
| **Correctness** | Systematic survey. Covers 150+ papers. |
| **Contributions** | (1) Circular taxonomy: base LLM → instruction tuning → RLHF → agentic capabilities; (2) "Scaling wall" concept (diminishing returns from raw scale); (3) Positioning of agentic AI as next paradigm |
| **Clarity** | Good. Visual taxonomy helpful. |

**Relevance**: ⭐⭐⭐ — Useful for contextualising why local 8B models (PUMA's Llama 3.2 8B, Mistral 7B) can achieve meaningful results: they sit at the "instruction-tuned + agentic prompting" tier, not just raw scale.

---

## PUMA Connection

The taxonomy explains why few-shot CoT with 8B local models can rival zero-shot performance of larger models for specific tasks. Supports PUMA's model selection rationale. Reference for Ch.2 model landscape section.

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
