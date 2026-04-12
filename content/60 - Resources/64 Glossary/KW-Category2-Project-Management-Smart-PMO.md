---
id: KW-CAT2
title: "Keywords — Category 2: Project Management and Smart PMO"
type: keyword-glossary
category: "Project-Management-Smart-PMO"
tags: [keywords, project-management, smart-pmo, puma, agiops, glossary]
created: 2026-04-07
updated: 2026-04-07
---

# 🔑 Keywords — Category 2: Project Management and Smart PMO

Concepts linked to Project Management 4.0 and operational automation. These terms define the PM domain that PUMA operates within.

---

## Keyword Index

| # | Term | Definition | PUMA Relevance |
|---|------|------------|----------------|
| 1 | **Smart PMO** | A Project Management Office enhanced with AI capabilities for automated reporting, risk detection, resource optimization, and decision support. PUMA's ultimate deliverable is a Smart PMO prototype. | PUMA Stage 5 culminates in a Smart PMO with specialized AI agents replacing manual PM backlog work. |
| 2 | **Software Project Management (SPM) 3.0** | The emerging paradigm of project management where AI agents automate routine operational tasks (triage, estimation, reporting) while human PMs focus on strategy and stakeholder management. | PUMA's theoretical positioning: SPM 3.0 as the target paradigm where PUMA's agents operate. |
| 3 | **Cognitive Project Management** | Project management powered by AI systems capable of reasoning, learning from historical data, and adapting decisions to project context. Synonym: Agentic PM. | Aligns with Cinkusz (2025) cognitive agents for Agile PM — a core PUMA reference. |
| 4 | **Reference Class Forecasting (RCF)** | A forecasting method that combats planning optimism by anchoring estimates to the distribution of outcomes in a reference class of similar past projects (Flyvbjerg). | PUMA's few-shot estimation strategy implements RCF: examples from historical Jira/TAWOS data anchor LLM estimates. |
| 5 | **Uniqueness Trap Mitigation** | Strategies that prevent project managers from treating each project as uniquely incomparable, which leads to ignoring base rates and historical data (Flyvbjerg's Uniqueness Trap). | PUMA directly addresses this: RAG-enhanced agents retrieve historical similar issues, preventing the uniqueness bias. |
| 6 | **Planning Fallacy Correction** | Interventions that counteract the systematic tendency to underestimate project effort, cost, and duration while overestimating benefits. | PUMA H2 hypothesis: LLM agents with historical context (TAWOS) reduce MAE compared to naive human estimates. |
| 7 | **Ticket Triage Automation** | The automated classification of incoming software project issues (bugs, features, improvements) by priority, severity, type, and assignment routing. | PUMA's core Stage 1–4 task: automated triage of Jira SR issues into Blocker/Critical/Major/Minor/Trivial. |
| 8 | **Effort Estimation Bias** | Systematic errors in human estimation of software development effort, including optimism bias, anchoring, and scope creep blindness. | PUMA H2 addresses estimation bias: AI agents with calibrated few-shot examples reduce MAE vs. human baselines. |
| 9 | **Story Point Prediction** | The automated prediction of Agile story point values for user stories or tasks, based on issue text and historical sprint data. | PUMA's Stage 2 task on TAWOS dataset: predict story points using LLM agents. |
| 10 | **AIOps for PMO** | The application of AI and machine learning to automate and enhance IT operations within a Project Management Office context. | Frames PUMA's Smart PMO as an AIOps application — integrating with Jira, GitHub, and monitoring tools. |
| 11 | **Managed Service Provider (MSP) Governance** | Governance frameworks for organizations that manage multiple client projects simultaneously, requiring scalable and standardized PM processes. | Relevant for PUMA's future work: Smart PMO agents scaled across MSP client portfolios. |
| 12 | **Portfolio Optimization** | The process of selecting and managing a set of projects to maximize strategic value given resource and time constraints. | PUMA Stage 5 extension: Smart PMO agents assist portfolio-level prioritization decisions. |
| 13 | **Risk Detection Algorithms** | Computational methods for identifying early warning signals of project risk (scope creep, velocity drops, SLA violations) in project data. | PUMA's future work: risk detection as a third task beyond triage and estimation. |
| 14 | **SLA Guardian Agents** | Specialized AI agents that monitor Service Level Agreement compliance in real time, alerting stakeholders and triggering escalation workflows. | Referenced in PUMA's Smart PMO architecture as a specialized agent role in Stage 5. |
| 15 | **DevOps Performance Metrics** | Quantitative measures of software delivery performance: deployment frequency, lead time, MTTR, change failure rate (DORA metrics). | PUMA's observability layer (Arize Phoenix) tracks agent performance metrics analogous to DevOps metrics. |
| 16 | **Resource Allocation Optimization** | AI-assisted assignment of human and computational resources across project tasks to minimize cost and time while maximizing throughput. | PUMA Stage 5 future extension: resource allocation recommendations based on sprint velocity history. |
| 17 | **Project Health Monitoring** | Continuous automated assessment of project status across dimensions: schedule, budget, quality, team velocity, risk exposure. | Smart PMO vision: agents provide real-time project health dashboard with automated narrative reports. |
| 18 | **Historical Pattern Learning** | The capability of AI agents to learn from past project data to improve future predictions and recommendations. | PUMA's RAG pipeline (Stage 4): retrieves historical similar issues from Qdrant to contextualize classification. |
| 19 | **Automated Reporting Narratives** | AI-generated natural language summaries of project status, risk, and performance for stakeholders — replacing manual status reports. | PUMA Stage 5 reporting agent: generates sprint summaries from structured metrics data. |
| 20 | **PMBOK 7th Edition AI Alignment** | The alignment of AI agent capabilities with the PMBOK 7th Edition's principle-based framework for project management. | PUMA's theoretical grounding: agent behaviors are mapped to PMBOK 7 principles (stewardship, stakeholders, value). |

---

## Search Strings

```
"smart PMO" AND "AI agents" 2023..2026
"ticket triage" OR "issue triage" AND "LLM" 2023..2026
"effort estimation" OR "story point" AND "language model" 2023..2026
"AIOps" AND "project management" 2023..2026
"planning fallacy" AND "AI" AND "software projects" 2023..2026
"reference class forecasting" AND "machine learning" 2023..2026
```

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]]
- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Assalaarachchi-2026-AgenticSPM]]
- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Cinkusz-2025-CognitiveAgentsAgilePM]]
- [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]]
- [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
- [[80 - MOC/81 Topic-Maps/MOC-Keywords-Master]]
