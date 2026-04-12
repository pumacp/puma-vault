---
type: literature
title: "A Multi-Agent System for Distributed Multi-Project Scheduling with Two-Stage Decomposition"
authors: ["Li, Feifeng", "Xu, Zhe"]
first-author: "Li"
year: 2018
status: to-read
topic: scheduling-mas
relevance: 3
citekey: "@Li2018MultiProjectScheduling"
venue: "PLOS ONE"
doi: "10.1371/journal.pone.0205445"
url: "https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0205445"
tags: [literature, scheduling, multi-agent, multi-project, resource-allocation, distributed]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 1
---

# LN: Li & Xu (2018) — Multi-Agent System for Distributed Multi-Project Scheduling

**Citation**: Li, F., & Xu, Z. (2018). A multi-agent system for distributed multi-project scheduling with two-stage decomposition. *PLOS ONE*, *13*(10). https://doi.org/10.1371/journal.pone.0205445

**Important note**: The bibliography lists "Confessore, G., Liotta, G., & Rismondo, S." as the authors and cites a different title. The **verified** authors from the DOI are **Feifeng Li and Zhe Xu**. The verified title includes "with two-stage decomposition." The DOI is correct but was paired with fabricated author metadata in the bibliography.

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | System proposal + empirical evaluation |
| **Context** | Multi-agent approach to the classical multi-project scheduling problem |
| **Correctness** | Mathematical formulation + simulation evaluation. Standard OR methodology. |
| **Contributions** | (1) Two-stage decomposition: local project agents + global coordinator; (2) Negotiation-based resource conflict resolution; (3) Convergence proof |
| **Clarity** | Technical but well-structured. |

**Relevance**: ⭐⭐⭐ — The "local agent + coordinator" architecture is the canonical design for PUMA Stage 5 multi-project PMO: individual project agents + master orchestrator.

---

## PUMA Connection

The two-stage decomposition (local project agent handles own backlog, coordinator resolves resource conflicts) maps directly to PUMA Stage 5: each project has a specialist triage/estimation agent, while the Smart PMO orchestrates cross-project resource allocation.

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
