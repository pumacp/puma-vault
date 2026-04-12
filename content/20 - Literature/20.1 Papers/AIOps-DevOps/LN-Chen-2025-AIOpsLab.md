---
type: literature
title: "AIOpsLab: A Holistic Framework to Evaluate AI Agents for Enabling Autonomous Clouds"
authors: ["Chen, Yinfang", "Shetty, Manish", "Somashekar, Gagan", "Ma, Minghua", "Samdani, Yogesh", "Xu, Zhiqiang", "Kang, Yu", "Brownlee, Matthew", "Banerjee, Ranveer", "Lu, Yucheng", "Zhang, Bing"]
first-author: "Chen"
year: 2025
status: reviewed
topic: aiops
relevance: 4
citekey: "@Chen2025AIOpsLab"
venue: "MLSys 2025"
arxiv: "2501.06706"
doi: "10.48550/arXiv.2501.06706"
url: "https://arxiv.org/abs/2501.06706"
github: "https://github.com/microsoft/AIOpsLab"
tags: [literature, aiops, benchmark, autonomous-cloud, microsoft, evaluation, puma-core]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 2
---

# LN: Chen et al. (2025) — AIOpsLab: A Holistic Framework to Evaluate AI Agents for Autonomous Clouds

**Citation**: Chen, Y., Shetty, M., Somashekar, G., et al. (2025). *AIOpsLab: A holistic framework to evaluate AI agents for enabling autonomous clouds*. arXiv:2501.06706. MLSys 2025. https://arxiv.org/abs/2501.06706

**Important note**: The bibliography lists "Zhang, Y., & Cui, L." as authors (incorrect). The **verified** first author is **Yinfang Chen** (Microsoft). The arXiv ID is **2501.06706**, not the URL cited.

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Benchmark framework + empirical evaluation |
| **Context** | Microsoft Research's framework for AIOps agent evaluation |
| **Correctness** | Comprehensive benchmark with 30+ tasks. Multi-agent evaluation. Real cloud scenarios. |
| **Contributions** | (1) Holistic evaluation framework covering detection, diagnosis, and mitigation; (2) Orchestration layer for reproducible AIOps agent testing; (3) Baseline evaluation of frontier LLMs on cloud operations; (4) Open-source framework |
| **Clarity** | Excellent. Clear evaluation protocols. |

**Relevance**: ⭐⭐⭐⭐ — AIOpsLab is the benchmark for AIOps agents that PUMA parallels for PM agents. The design principle (reproducible, standardised evaluation of LLM agents for operational tasks) is identical.

---

## Pass 2 — Key Points

AIOpsLab's design principle: "holistic" means covering the full incident lifecycle (detect → diagnose → mitigate). PUMA's design is similarly holistic across PM lifecycle (triage → estimate → prioritise → plan).

**Key design element for PUMA**: AIOpsLab uses a "world model" to generate reproducible incident scenarios. PUMA could adopt a similar approach: generate reproducible PM scenarios (stratified Jira SR samples) for controlled comparison.

---

## PUMA Integration

- **Section 2 (SLR)**: AIOpsLab as the AIOps counterpart to PUMA in the benchmark landscape
- **Architecture design**: AIOpsLab's orchestration layer is analogous to PUMA's evaluation pipeline
- Cite alongside [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Gao-2024-AgentScope]] as benchmark design references

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
