---
id: KW-CAT3
title: "Keywords — Category 3: Research Methodology and Academic Rigor"
type: keyword-glossary
category: "Research-Methodology-Academic-Rigor"
tags: [keywords, research-methodology, slr, dsr, prisma, puma, glossary]
created: 2026-04-07
updated: 2026-04-07
---

# 🔑 Keywords — Category 3: Research Methodology and Academic Rigor

Terms required to structure the scientific study, systematic literature review, and academic validation of PUMA.

---

## Keyword Index

| # | Term | Definition | PUMA Relevance |
|---|------|------------|----------------|
| 1 | **Design Science Research (DSR)** | A research paradigm centered on creating and evaluating artifacts (systems, models, frameworks) that solve real-world problems. Hevner et al. (2004), Peffers et al. (2007). | PUMA's primary research methodology — the benchmark is the artifact; F1-macro ≥ 0.55 is the utility criterion. |
| 2 | **Systematic Literature Review (SLR)** | A rigorous, replicable, and transparent method for identifying, evaluating, and synthesizing research literature on a defined topic. Kitchenham & Charters (2007). | PUMA's Phase 1 research uses SLR with PRISMA protocol to build the 40+ paper corpus. |
| 3 | **PRISMA Protocol** | Preferred Reporting Items for Systematic Reviews and Meta-Analyses — a checklist and flowchart ensuring transparency in literature selection. Page et al. (2021). | PUMA's SLR follows PRISMA 2020. Flowchart documented in [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]. |
| 4 | **Grounded Theory Induction** | A qualitative research method that derives theory from systematically gathered data through iterative coding (open, axial, selective). Strauss & Corbin (1990). | PUMA uses Grounded Theory to analyze LLM agent failure cases — what types of errors occur and why. |
| 5 | **S. Keshav Three-Pass Method** | A structured paper reading strategy (University of Waterloo): Pass 1 (5-10 min, bird's-eye), Pass 2 (30-60 min, content), Pass 3 (2-5 hr, re-implementation). Five-C evaluation: Category, Context, Correctness, Contributions, Clarity. | PUMA's official reading protocol for all 40+ SLR papers. Log in [[50 - Areas/51 Research/Keshav-ThreePass/Keshav-Reading-Log]]. |
| 6 | **Falsifiable Hypotheses** | Hypotheses formulated such that empirical observations can, in principle, refute them (Popper's demarcation criterion). PUMA H1: F1-macro ≥ 0.55; H2: MAE ≤ 3.0 SP. | Both PUMA hypotheses are falsifiable: specific numerical thresholds with defined statistical tests. |
| 7 | **Empirical Benchmark Design** | The systematic design of controlled experiments to empirically evaluate system performance, typically comparing multiple conditions against established baselines. | PUMA's core contribution: 4 strategies × 2 models × 200 issues × 2 tasks — fully controlled benchmark. |
| 8 | **Reproducibility Study** | A research study designed so that its methods, data, and results can be independently replicated by another researcher. Key requirements: seeded randomness, public data, documented protocol. | PUMA Constitution Article 1: reproducibility-first. Seed=42, temperature=0, public datasets (Jira SR, TAWOS). |
| 9 | **Scientific Gap Analysis** | The systematic identification of unresolved questions, unexplored combinations, or methodological limitations in existing literature. | PUMA's gap: no prior benchmark evaluates local LLMs on PM tasks with sustainability measurement. |
| 10 | **Research Question Operationalization** | The process of translating abstract research questions into measurable variables, specific datasets, and concrete experimental procedures. | PUMA translates "can LLMs automate PM triage?" into: F1-macro on Jira SR with 4 strategies at temperature=0. |
| 11 | **Peer Review Simulation** | The use of AI or structured critique frameworks to simulate the academic peer review process, identifying weaknesses before actual submission. | PUMA uses Claude peer review simulation prompts before each PEC submission. See [[60 - Resources/61 Prompts/Phase1-Research/07-Critical-Review]]. |
| 12 | **Citation Network Analysis** | Bibliometric analysis of citation relationships between papers to identify hub papers, temporal trends, and thematic clusters. | PUMA uses Connected Papers and LitMaps for citation network analysis in Step 2 (Scientific Mapping). |
| 13 | **Semantic Search Optimization** | Optimizing search queries to retrieve semantically similar papers, not just keyword-matching ones — using tools like Semantic Scholar and embedding-based retrieval. | PUMA's literature search uses Semantic Scholar (semantic) + Research Rabbit (co-citation) for optimal coverage. |
| 14 | **Evidence-Based Management** | A management paradigm that grounds decisions in empirical evidence rather than intuition or tradition. | PUMA's motivation: current PM triage practices are intuition-based; PUMA provides evidence-based AI alternatives. |
| 15 | **Meta-Analysis in Software Engineering** | Statistical combination of results from multiple empirical SE studies to estimate overall effect sizes. | PUMA's Wilcoxon analysis and effect size (r) calculation is a mini-meta-analysis across 4 conditions. |
| 16 | **Qualitative Coding for AI Failures** | Application of qualitative coding methods (open, axial, selective) to categorize types of AI agent errors in empirical studies. | PUMA applies Grounded Theory coding to misclassified Jira issues — see [[60 - Resources/61 Prompts/Methodologies/PT-METH-004-GroundedTheory-QualitativeAnalysis]]. |
| 17 | **Case Study Research** | In-depth investigation of a specific instance (project, system, organization) to generate rich contextual understanding. | PUMA's Stage 5 may include case study: Smart PMO agents applied to a real Apache project sprint. |
| 18 | **Experimental Control Loops** | Mechanisms that hold variables constant across experimental conditions to isolate the causal effect of the independent variable. | PUMA: temperature=0, seed=42, same 200 issues, same hardware — controlled loops across all conditions. |
| 19 | **Artifact Utility Validation** | DSR-specific evaluation criterion: demonstrating that the created artifact solves the stated problem with measurable utility. | PUMA validates utility by: Wilcoxon p<0.05, F1-macro ≥ 0.55 on triage, MAE ≤ 3.0 on estimation. |
| 20 | **Academic Writing Standards** | The conventions, formats, and quality criteria for scientific communication in peer-reviewed publications. | PUMA follows UOC academic standards + APA7 for references + inclusive language (UNESCO guidelines). |

---

## Search Strings

```
"design science research" AND "LLM" AND "software engineering" 2023..2026
"systematic literature review" AND "AI agents" AND "project management" 2023..2026
"reproducibility" AND "large language models" AND "software engineering" 2023..2026
"empirical benchmark" AND "LLM" AND "classification" 2023..2026
"Wilcoxon" AND "software engineering" AND "machine learning" 2023..2026
```

---

## Related Notes

- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]]
- [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]]
- [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]
- [[50 - Areas/51 Research/Keshav-ThreePass/Keshav-Reading-Log]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]]
- [[80 - MOC/81 Topic-Maps/MOC-Keywords-Master]]
