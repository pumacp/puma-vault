---
id: LN-Lam-2023-GraphCast
title: "Literature Note — GraphCast: Learning skillful medium-range global weather forecasting"
type: literature-note
authors: ["Lam, R.R.", "Sanchez-Gonzalez, A.", "Willson, M.", "et al."]
year: 2023
venue: "Science"
doi: "10.1126/science.adi2336"
tags: [literature-note, weather, graphcast, deepmind, ai-science, puma, pec2, academic-writing, accuracy, agentic-science, alphafold, baseline, bibliography, citation, code-review, evaluation, github, graph-rag, issue-triage, jira, knowledge-graph, llm, metrics, moc, neural-network, pec, permanent-note, project-management, protein-folding, research, triage, weather-prediction]
status: verified
created: 2026-04-07
updated: 2026-04-07
---

# LN — GraphCast Weather Forecasting (Lam et al., 2023)

**Full Reference**: Lam, R. R., Sanchez-Gonzalez, A., Willson, M., et al. (2023). Learning skillful medium-range global weather forecasting. *Science*, 382(6677), eadi2336. https://doi.org/10.1126/science.adi2336

---

## Pass 1 — Bird's Eye

> [!abstract] Main Claim
> GraphCast outperforms ECMWF's HRES system in >90% of 1380 evaluated metrics for 10-day global weather forecasting, at orders of magnitude lower computational cost.

| Property | Detail |
|----------|--------|
| **Type** | Research paper — Meteorology / AI |
| **Relevance to PUMA** | ⭐⭐ Medium — paradigmatic example of AI as scientific model outperforming traditional mechanistic models; supports PUMA's positioning of LLM agents as superior to heuristic PM baselines |

## Pass 2 — Key Content

### Model
- Graph neural network trained on 39 years of ERA5 reanalysis data
- 10-day global forecast in <1 minute (vs. hours for HRES)
- Generates implicit physical representations without explicit fluid dynamics equations

### Results
- Outperforms HRES in 90%+ of variables including temperature, wind, precipitation
- Tracks tropical cyclones with higher accuracy than operational systems
- **Knowledge implication**: GraphCast learned physically meaningful representations not explicitly encoded

### Level of Knowledge Generation
- **Empirical model** (not a new theory): Learned functional map from state to state
- However, the high accuracy implies the model has captured real physical regularities
- Can be used to generate physical insights (e.g., sensitivity analysis)

---

## PUMA Connection

> [!info] PUMA Analogy
> GraphCast vs. HRES = analogous to PUMA's triage agent vs. majority-class baseline:
> - Both AI systems replace rule-based/statistical baselines with learned models
> - Both achieve measurably superior performance on defined evaluation metrics
> - Both operate in domains where ground truth is available (observed weather / labeled Jira issues)
>
> This validates the general approach PUMA uses.

---

## APA7 Citation

Lam, R. R., Sanchez-Gonzalez, A., Willson, M., et al. (2023). Learning skillful medium-range global weather forecasting. *Science*, 382(6677), eadi2336. https://doi.org/10.1126/science.adi2336

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-AI-Scientific-Knowledge-Generation]] — synthesised permanent note
- [[30 - Permanent/31 Concepts/PN-PUMA-within-AgenticScience-Trajectory]] — PUMA as Level 2 analogue (triage = GraphCast analogy)
- [[30 - Permanent/31 Concepts/PN-Agentic-Science-Paradigm]] — Agentic Science context
- [[20 - Literature/20.1 Papers/AI-Knowledge-Generation/LN-Jumper-2021-AlphaFold]] — sister L2 example
- [[20 - Literature/20.1 Papers/Agentic-Science/LN-Zhang-2025-AgenticScienceSurvey]] — survey context
- [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] — cited in §1.1 AI science trajectory

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-AI-Knowledge-Generation]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
