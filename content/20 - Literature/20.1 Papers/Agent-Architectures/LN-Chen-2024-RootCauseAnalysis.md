---
type: literature
title: "Automatic Root Cause Analysis via Large Language Models for Cloud Incidents"
authors: ["Chen, Yinfang", "Xie, Huaibing", "Ma, Minghua", "Kang, Yu", "Gao, Xin", "Shi, Liu", "Cao, Yudong", "Zhang, Bing", "Zheng, Changde", "Zhang, Yingnong", "Yao, Si", "Lin, Qingwei", "Zhang, Dongmei", "Rajmohan, Saravan", "Zhang, Qi"]
first-author: "Chen"
year: 2024
status: to-read
topic: aiops
relevance: 3
citekey: "@Chen2024RootCauseAnalysis"
venue: "EuroSys 2024"
arxiv: "2305.15778"
doi: "10.1145/3627703.3629553"
url: "https://arxiv.org/abs/2305.15778"
tags: [literature, aiops, root-cause-analysis, cloud-incidents, llm, microsoft]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 1
---

# LN: Chen et al. (2024) — Automatic Root Cause Analysis via LLMs for Cloud Incidents

**Citation**: Chen, Y., Xie, H., Ma, M., et al. (2024). *Automatic root cause analysis via large language models for cloud incidents*. EuroSys 2024. arXiv:2305.15778. https://arxiv.org/abs/2305.15778

**Important note**: The bibliography listed arXiv:2407.11638 as the ID, which points to a different paper. The **correct** arXiv ID is **2305.15778**. The title should be "**Automatic**" not "Automated." DOI: 10.1145/3627703.3629553 (EuroSys 2024).

**Affiliation**: Microsoft

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | System proposal + industrial deployment |
| **Context** | Microsoft's production system for cloud incident management |
| **Correctness** | Deployed in production at Microsoft. Evaluated on real incidents. |
| **Contributions** | (1) LLM-based automated root cause analysis for cloud incidents; (2) Significant reduction in MTTD; (3) Multi-step reasoning over telemetry data; (4) Production deployment evidence |
| **Clarity** | Good. Industrial paper with real metrics. |

**Relevance**: ⭐⭐⭐ — PUMA's AIOps context (incident triage, risk detection) is directly related. This paper shows LLMs can automate production-grade incident analysis. Reference for PUMA's justification of AI-automated triage value (Section 1.1).

---

## PUMA Connection

Supports the claim that LLM-based automated triage has production-grade value (not just research-grade). Microsoft's deployment validates the practical relevance of PUMA's triage module.

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
