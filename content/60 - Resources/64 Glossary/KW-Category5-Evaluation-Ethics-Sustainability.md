---
id: KW-CAT5
title: "Keywords — Category 5: Evaluation, Ethics, and Sustainability"
type: keyword-glossary
category: "Evaluation-Ethics-Sustainability"
tags: [keywords, evaluation, ethics, sustainability, puma, codecarbon, glossary]
created: 2026-04-07
updated: 2026-04-07
---

# 🔑 Keywords — Category 5: Evaluation, Ethics, and Sustainability

Success metrics and analysis of the ethical and environmental impact of PUMA's AI agent system.

---

## Keyword Index

| # | Term | Definition | PUMA Relevance |
|---|------|------------|----------------|
| 1 | **F1-macro Performance Score** | The unweighted mean of per-class F1 scores — the harmonic mean of precision and recall — averaged across all classes. Robust to class imbalance. | PUMA H1: F1-macro ≥ 0.55 on 5-class (Blocker/Critical/Major/Minor/Trivial) Jira SR triage. Primary metric. |
| 2 | **Mean Absolute Error (MAE)** | The average absolute difference between predicted and actual values. MAE = (1/n) Σ|y_pred - y_true|. Used for regression tasks. | PUMA H2: MAE ≤ 3.0 story points on TAWOS effort estimation. Primary metric for estimation task. |
| 3 | **Carbon Footprint Measurement (gCO2eq)** | Quantification of greenhouse gas emissions in grams of CO2 equivalent, enabling comparison of environmental impact across AI inference conditions. | PUMA measures gCO2eq per condition using CodeCarbon — first PM benchmark to report per-task carbon cost. |
| 4 | **CodeCarbon Integration** | Integration of the CodeCarbon Python library into the experiment runner to automatically measure energy consumption and carbon emissions per inference session. | PUMA's experiment runner wraps each condition in OfflineEmissionsTracker(country_iso_code="ESP"). |
| 5 | **Sustainable AI Metrics** | Quantitative measures for the environmental sustainability of AI systems: energy consumption (kWh), carbon intensity (gCO2eq/inference), hardware efficiency (tokens/joule). | PUMA reports: total CO2 per condition, gCO2eq per classified issue, comparison vs. cloud API equivalent. |
| 6 | **Algorithmic Bias Mitigation** | Technical and procedural methods to detect, measure, and reduce systematic unfairness in AI model predictions across demographic or categorical groups. | PUMA checks: are Blocker issues disproportionately misclassified? Are certain Apache projects systematically wrong? |
| 7 | **Inclusive Language Agents** | AI agents designed to generate communications using gender-neutral, culturally sensitive, and accessibility-aware language. | PUMA's reporting agents follow UNESCO inclusive language guidelines for generated sprint summaries. |
| 8 | **Ethics Guardrails for Agents** | Hard constraints embedded in agent systems that prevent harmful, unauthorized, or high-risk actions regardless of model output. | PUMA Constitution: agents cannot write to production Jira without human approval (HITL guardrail). |
| 9 | **Transparency and Observability (Arize Phoenix)** | The property of AI systems to make their decision processes visible and auditable, supported by tools like Arize Phoenix for LLM trace visualization. | PUMA: Arize Phoenix records every inference trace — prompt, response, latency, token count, reasoning chain. |
| 10 | **Traceability of AI Decisions** | The ability to reconstruct the reasoning chain from input to decision for any AI agent output, supporting audit and accountability. | PUMA Constitution Article 7: all agent decisions logged with full reasoning trace; reproducible from logs. |
| 11 | **Non-Discriminatory Triage Rules** | Triage classification rules that do not systematically disadvantage issues from certain project types, team demographics, or issue reporters. | PUMA checks per-project F1-macro — ensures Apache Kafka issues are not systematically deprioritized vs. Spark. |
| 12 | **Diversity in Project Teams** | The inclusion of team members with diverse backgrounds, skills, and perspectives in project management contexts. | PUMA Section 1.3: AI-assisted PM democratizes access to analytical insights for diverse and non-technical team members. |
| 13 | **Energy-Efficient Inference** | AI inference that minimizes energy consumption through model quantization, batching, caching, and hardware-optimized execution. | PUMA: Q4_K_M quantized models + Redis semantic cache reduce energy vs. full-precision cloud models by ~85%. |
| 14 | **EU AI Act Compliance** | Adherence to the European Union Artificial Intelligence Act regulations, particularly requirements for high-risk AI systems in project decision-making contexts. | PUMA's bounded autonomy design is pre-aligned with EU AI Act: human oversight, traceability, and auditability. |
| 15 | **Accountability Frameworks** | Organizational and technical structures that assign responsibility for AI system decisions and ensure recourse when errors occur. | PUMA Smart PMO: human PM retains final accountability for all sprint planning decisions suggested by agents. |
| 16 | **Hallucination Risk Detection** | Methods for detecting when AI language models generate factually incorrect, fabricated, or unsupported outputs (hallucinations). | PUMA: Marco Veritas protocol verifies all bibliography; Pydantic validation catches hallucinated priority labels. |
| 17 | **Explainable AI (XAI)** | AI systems that provide human-understandable explanations for their predictions and decisions, supporting trust and oversight. | PUMA's TriageResult schema requires reasoning (str) and evidence (list) — explicit explanation per classification. |
| 18 | **User Trust Indices** | Quantitative measures of user confidence and trust in AI system recommendations, typically measured via surveys or behavioral acceptance rates. | PUMA future work: measure PM acceptance rate of agent recommendations in Stage 5 pilot deployment. |
| 19 | **Long-term Impact Analysis** | Assessment of the sustained effects of AI system deployment on organizational processes, workforce skills, and outcomes over months or years. | PUMA Section 4 (Future Work): longitudinal study of Smart PMO impact on project success rates. |
| 20 | **Open Science Publication (Zenodo)** | The practice of publishing research data, code, and artifacts under open licenses on platforms like Zenodo to enable verification and reuse. | PUMA's reproducibility commitment: Zenodo deposit of experiment code, datasets (references), and results with DOI. |

---

## Search Strings

```
"F1-macro" AND "LLM" AND "classification" AND "software engineering" 2023..2026
"CodeCarbon" OR "carbon footprint" AND "AI" AND "inference" 2023..2026
"explainable AI" AND "project management" OR "software engineering" 2023..2026
"EU AI Act" AND "software engineering" OR "project management" 2023..2026
"hallucination" AND "LLM" AND "evaluation" AND "benchmark" 2023..2026
"algorithmic bias" AND "software engineering" AND "classification" 2023..2026
```

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]]
- [[50 - Areas/54 Sustainability/Carbon-Tracking-Log]]
- [[50 - Areas/55 Ethics/Ethics-Review-Log]]
- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-Keywords-Master]]
