---
type: literature
title: "Design Science in Information Systems Research"
authors: ["Hevner, Alan R.", "March, Salvatore T.", "Park, Jinsoo", "Ram, Sudha"]
first-author: "Hevner"
year: 2004
status: reviewed
topic: research-methodology
relevance: 5
citekey: "@Hevner2004DSR"
venue: "MIS Quarterly, 28(1), 75–105"
arxiv: ""
doi: "10.2307/25148625"
url: "https://doi.org/10.2307/25148625"
tags: [literature, dsr, design-science, research-methodology, artefact, mis-quarterly, puma-core, academic-writing, research, framework, evaluation, literature-note, moc]
created: 2026-04-14
updated: 2026-06-15
keshav-pass: 2
---

# LN: Hevner et al. (2004) — Design Science in Information Systems Research

> [!cite] Bibliographic Reference
> **Citation**: Hevner, A. R., March, S. T., Park, J., & Ram, S. (2004). Design science in information systems research. *MIS Quarterly*, *28*(1), 75–105. https://doi.org/10.2307/25148625

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Research methodology framework paper |
| **Context** | Published in MIS Quarterly — the premier IS research journal. Establishes design science as a rigorous academic research paradigm distinct from (but complementary to) behavioural science |
| **Correctness** | Highly cited (20,000+ citations); based on foundational work by Simon (1996) *The Sciences of the Artificial* |
| **Contributions** | (1) Seven DSR guidelines; (2) Three-cycle model (Relevance, Design, Rigour); (3) Artefact taxonomy (Constructs, Models, Methods, Instantiations); (4) Evaluation criteria for design artefacts |
| **Clarity** | Excellent — precise, canonical definition of what counts as DSR contribution |

> [!success] Relevance: ⭐⭐⭐⭐⭐
> PUMA's research paradigm. The PUMA benchmark framework is a DSR **Instantiation** artefact — a working system built to demonstrate feasibility and evaluate utility. Hevner et al. provides the methodological justification for this in PUMA Ch.3.

---

## Pass 2 — Key Concepts

### The Seven DSR Guidelines

| # | Guideline | PUMA Application |
|---|-----------|-----------------|
| 1 | **Design as an artefact**: DSR must produce a viable artefact | PUMA benchmark = Instantiation |
| 2 | **Problem relevance**: Research addresses important business problems | Manual triage cost at scale |
| 3 | **Design evaluation**: Artefact utility, quality, and efficacy must be rigorously evaluated | Wilcoxon, F1-macro, MAE |
| 4 | **Research contributions**: Must contribute to foundations of IS design | LLM benchmark methodology |
| 5 | **Research rigour**: Apply rigorous methods in construction and evaluation | DSR + SLR + statistical validation |
| 6 | **Design as a search process**: Explore the space of possible artefacts | 4 models × 4 strategies = 16 conditions |
| 7 | **Communication**: Present results to both research and practice audiences | Academic paper + GitHub repository |

### The Three Research Cycles

```
Environment ──→ Relevance Cycle ──→ Design Science Research
Knowledge Base ─→ Rigour Cycle ──→ Design Science Research
                                       ↓
                               Design Cycle (Build, Evaluate, Feedback)
```

- **Relevance Cycle**: Grounds research in real business problems (PM inefficiency, manual triage cost)
- **Design Cycle**: Iterative build-evaluate loop for the artefact (PUMA benchmark iterations)
- **Rigour Cycle**: Connects to existing knowledge base (SLR of 42+ papers)

### Artefact Types

| Type | Description | PUMA Example |
|------|-------------|-------------|
| **Constructs** | Vocabulary and symbols | "triage accuracy", "SPR", "F1-macro" |
| **Models** | Abstractions representing reality | PUMA 5-stage pipeline model |
| **Methods** | Algorithms and practices | Keshav Three-Pass, PRISMA-trAIce |
| **Instantiations** | Working implementations | PUMA benchmark platform (Docker + Ollama + Python) |

PUMA is primarily an **Instantiation** — a concrete, working system that demonstrates that LLM agents can perform PM tasks reproducibly.

---

## PUMA Integration

- **PUMA Ch.3 Methods**: DSR as the overarching research paradigm; cite Hevner et al. (2004) for methodological justification
- **Artefact claim**: PUMA contributes a novel Instantiation artefact — a reproducible benchmark — satisfying Guidelines 1, 3, and 4
- **Evaluation design**: The statistical validation pipeline (Wilcoxon, effect size) satisfies Guideline 3

## Related Notes

- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] — permanent note integrating DSR and SLR for PUMA
- [[20 - Literature/20.1 Papers/Research-Methods/LN-Kitchenham-2007-SLR]] — SLR as the Rigour Cycle implementation
- [[20 - Literature/20.1 Papers/Research-Methods/LN-Page-2021-PRISMA2020]] — PRISMA 2020 as reporting standard
- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] — PUMA Constitution §1: DSR as paradigm

## MOCs

- [[20 - Literature/20.1 Papers/Research-Methods/MOC Research Methods Papers]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
