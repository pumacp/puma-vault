---
type: literature
title: "A Multi-Agent Reinforcement Learning Scheduling Algorithm Integrating State Graph and Task Graph Structural Modeling for Ride-Sharing Dispatching"
authors: ["Sha, Junlin", "Song, Mingming", "Sui, Guanchen", "Sun, Hao", "Dong, Dehui"]
first-author: "Sha"
year: 2026
status: to-read
topic: scheduling-mas
relevance: 3
citekey: "@Sha2026MASchedulingRL"
venue: "Scientific Reports"
doi: "10.1038/s41598-026-35004-8"
url: "https://www.nature.com/articles/s41598-026-35004-8"
tags: [literature, scheduling, multi-agent, reinforcement-learning, state-graph, task-graph]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 1
---

# LN: Sha et al. (2026) — Multi-Agent RL Scheduling with State and Task Graph Structural Modeling

**Citation**: Sha, J., Song, M., Sui, G., Sun, H., & Dong, D. (2026). A multi-agent reinforcement learning scheduling algorithm integrating state graph and task graph structural modeling for ride-sharing dispatching. *Scientific Reports*, *16*. https://doi.org/10.1038/s41598-026-35004-8

**Important note**: The bibliography's description ("applied to project scheduling") is misleading. The **verified** paper is specifically about **ride-sharing vehicle dispatch**. The techniques (MARL + state graph + task graph) are transferable to PM scheduling, but the paper itself does not address project management.

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Algorithm proposal + empirical evaluation |
| **Context** | MARL applied to real-time vehicle dispatch optimisation |
| **Correctness** | Simulation + real dataset. Strong experimental validation. |
| **Contributions** | (1) State graph captures environment dynamics; (2) Task graph models dependency structure; (3) Combined graph neural network for MARL scheduling |
| **Clarity** | Technical. Clear algorithm descriptions. |

**Relevance**: ⭐⭐⭐ — The graph-based MARL approach is technically transferable to PM sprint scheduling (dependency graph of tasks). However, the paper is about ride-sharing, so this is a methodological transfer reference, not a direct PM paper.

---

## PUMA Connection

Methodological reference for how to integrate task dependency graphs into a MARL scheduling agent. Relevant for PUMA Stage 5 if the Smart PMO implements a RL-based sprint planner. Reference for future work section (Stage 3 backlog prioritisation).

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
