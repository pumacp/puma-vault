---
type: literature
title: "SWE-bench: Can Language Models Resolve Real-World GitHub Issues?"
authors: ["Jimenez, Carlos E.", "Yang, John", "Wettig, Alexander", "Yao, Shunyu", "Pei, Kexin", "Press, Ofir", "Narasimhan, Karthik"]
first-author: "Jimenez"
year: 2023
status: reviewed
topic: llm-benchmark
relevance: 4
citekey: "@Jimenez2023SWEbench"
venue: "ICLR 2024"
arxiv: "2310.06770"
doi: "10.48550/arXiv.2310.06770"
url: "https://arxiv.org/abs/2310.06770"
tags: [literature, benchmark, swe-bench, github, software-engineering, puma-core]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 2
---

# LN: Jimenez et al. (2023) — SWE-bench: Can Language Models Resolve Real-World GitHub Issues?

**Citation**: Jimenez, C. E., Yang, J., Wettig, A., Yao, S., Pei, K., Press, O., & Narasimhan, K. (2023). *SWE-bench: Can language models resolve real-world GitHub issues?* arXiv:2310.06770. ICLR 2024. https://arxiv.org/abs/2310.06770

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Benchmark proposal |
| **Context** | Evaluates LLMs on real GitHub issue resolution (code fixing) |
| **Correctness** | 2294 issues from 12 repositories. Test suite validation. Rigorous. |
| **Contributions** | (1) SWE-bench: 2294 real GitHub issues requiring code patches; (2) State-of-the-art (at publication) resolved only 1.96% of issues; (3) Much harder than typical coding benchmarks |
| **Clarity** | Excellent. |

**Relevance**: ⭐⭐⭐⭐ — SWE-bench is to code generation what PUMA is to PM: a benchmark of LLM agents on real-world software engineering tasks with verified ground truth. Key reference for benchmark design methodology.

---

## PUMA Connection

SWE-bench demonstrates that real-world task benchmarks (vs. toy problems) expose true LLM capability gaps. PUMA follows the same design principle: real Jira SR issues + real TAWOS user stories, not synthetic data. Reference for benchmark design justification (Ch.2 + Ch.3).

Connects to: [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Arora-2024-MASAI]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
