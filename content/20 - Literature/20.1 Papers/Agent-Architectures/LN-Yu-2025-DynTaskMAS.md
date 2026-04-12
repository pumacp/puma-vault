---
type: literature
title: "DynTaskMAS: A Dynamic Task Graph-driven Framework for Asynchronous and Parallel LLM-based Multi-Agent Systems"
authors: ["Yu, Junwei", "Ding, Yepeng", "Sato, Hiroyuki"]
first-author: "Yu"
year: 2025
status: reading
topic: multi-agent
relevance: 4
citekey: "@Yu2025DynTaskMAS"
venue: "arXiv preprint"
arxiv: "2503.07675"
doi: "10.48550/arXiv.2503.07675"
url: "https://arxiv.org/abs/2503.07675"
tags: [literature, multi-agent, dynamic-tasks, task-graph, asynchronous, parallel, puma-core]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 1
---

# LN: Yu et al. (2025) — DynTaskMAS: Dynamic Task Graph-driven Multi-Agent Systems

**Citation**: Yu, J., Ding, Y., & Sato, H. (2025). *DynTaskMAS: A dynamic task graph-driven framework for asynchronous and parallel LLM-based multi-agent systems*. arXiv:2503.07675. https://arxiv.org/abs/2503.07675

**Important note**: The bibliography entry lists "Zhu et al." as the authors. The **verified** first author is **Junwei Yu**, not Zhu. The correct arXiv ID is **2503.07675** (not 2503.05473, which is a different paper — "The Society of HiveMind").

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Framework proposal |
| **Context** | Addresses sequential bottlenecks in multi-agent pipelines |
| **Correctness** | Evaluated on multi-step tasks. Performance benchmarks included. |
| **Contributions** | (1) Dynamic task graph that updates as agent outputs arrive; (2) Asynchronous agent execution (no blocking); (3) Parallel execution of independent sub-tasks; (4) Better resource utilisation than sequential frameworks |
| **Clarity** | Good. Diagrams helpful. |

**Relevance**: ⭐⭐⭐⭐ — PUMA Stage 5 Smart PMO processes backlog items in parallel (multiple issues simultaneously). DynTaskMAS's asynchronous graph is the technical foundation for this.

---

## PUMA Connection

DynTaskMAS's dynamic task graph enables PUMA's Smart PMO to process multiple issues simultaneously without blocking: the triage agent, estimation agent, and risk agent each process their respective tasks asynchronously. Results are aggregated when all agents complete. Reference for Stage 5 architecture design.

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
