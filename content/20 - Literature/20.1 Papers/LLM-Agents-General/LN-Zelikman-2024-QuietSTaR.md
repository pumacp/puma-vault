---
type: literature
title: "Quiet-STaR: Language Models Can Teach Themselves to Think Before Speaking"
authors: ["Zelikman, Eric", "Harik, Georges", "Shao, Yijia", "Jayasiri, Varuna", "Haber, Nick", "Goodman, Noah D."]
first-author: "Zelikman"
year: 2024
status: to-read
topic: llm-reasoning
relevance: 3
citekey: "@Zelikman2024QuietSTaR"
venue: "First Conference on Language Modeling (COLM 2024)"
arxiv: "2403.09629"
doi: "10.48550/arXiv.2403.09629"
url: "https://arxiv.org/abs/2403.09629"
tags: [literature, llm-reasoning, chain-of-thought, self-training, thinking]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 1
---

# LN: Zelikman et al. (2024) — Quiet-STaR: Language Models Can Teach Themselves to Think Before Speaking

**Citation**: Zelikman, E., Harik, G., Shao, Y., Jayasiri, V., Haber, N., & Goodman, N. D. (2024). *Quiet-STaR: Language models can teach themselves to think before speaking*. arXiv:2403.09629. COLM 2024. https://arxiv.org/abs/2403.09629

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Training methodology proposal |
| **Context** | Extends STaR (Zelikman et al., 2022); unsupervised chain-of-thought training |
| **Correctness** | Evaluated on CommonsenseQA, GSM8K. Results are incremental improvements. |
| **Contributions** | (1) LLMs generate internal rationales for every token during training; (2) Rationales that improve predictions are reinforced; (3) Emergent reasoning without supervised CoT examples |
| **Clarity** | Complex implementation but well-explained theory. |

**Relevance**: ⭐⭐⭐ — Relevant as background on why CoT works. Not directly applicable to PUMA MVP (no training, only prompting). Useful for future work (fine-tuning section).

---

## PUMA Connection

Quiet-STaR explains mechanistically why adding "Think step by step" to prompts (Zero-Shot CoT) improves classification quality. This supports the theoretical justification for PUMA's Strategy 4 (CoT prompting). Reference for Ch.2 (prompting strategies background).

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
