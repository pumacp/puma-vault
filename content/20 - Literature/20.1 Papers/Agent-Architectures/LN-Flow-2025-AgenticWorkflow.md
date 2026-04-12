---
type: literature
title: "Flow: Modularized Agentic Workflow Automation"
authors: ["Wang, Bowen", "Chen, Haiyang", "Sun, Tianhao", "He, Yunzhu", "Fu, Jiayuan"]
first-author: "Wang"
year: 2025
status: to-read
topic: agentic-workflow
relevance: 4
citekey: "@Wang2025Flow"
venue: "arXiv preprint"
arxiv: "2501.07834"
doi: "10.48550/arXiv.2501.07834"
url: "https://arxiv.org/abs/2501.07834"
tags: [literature, agentic-workflow, modular, automation, workflow, puma-core]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 1
---

# LN: Wang et al. (2025) — Flow: Modularized Agentic Workflow Automation

**Citation**: Wang, B., Chen, H., Sun, T., He, Y., & Fu, J. (2025). *Flow: Modularized agentic workflow automation*. arXiv:2501.07834. https://arxiv.org/abs/2501.07834

*(This paper is in the PUMA project knowledge PDFs as "Flow_Modularized_Agentic_Workflow_Automation_2501.07834v2.pdf")*

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Framework proposal + evaluation |
| **Context** | Modular approach to building agentic workflows; addresses brittleness of monolithic agent pipelines |
| **Correctness** | Evaluated on diverse agentic tasks. Modular vs. monolithic comparison. |
| **Contributions** | (1) Modular workflow composition from reusable agent components; (2) Better generalization than monolithic agents; (3) Explicit workflow graph for debugging and monitoring |
| **Clarity** | Good. |

**Relevance**: ⭐⭐⭐⭐ — Flow's modular composition is directly applicable to PUMA: triage module, estimation module, and planning module are independent "Flow" components that compose into the full benchmark pipeline.

---

## PUMA Connection

PUMA's modular architecture (Stage 1 → Stage 2 → Stage 3 incrementally) follows the Flow philosophy: each stage is a reusable, composable component. Reference for PUMA's incremental design justification (Section 1.4, Architecture spec).

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
