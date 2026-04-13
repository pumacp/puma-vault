---
type: literature
title: "Incident Management in the Age of AI: A Survey"
authors: ["Unknown"]
first-author: "Unknown"
year: 2023
status: to-read
topic: aiops
relevance: 5
citekey: "@IncidentManagementAI2023"
venue: "arXiv preprint"
arxiv: "2312.14411"
doi: "10.48550/arXiv.2312.14411"
url: "https://arxiv.org/abs/2312.14411"
tags: [literature, aiops, incident-management, triage, survey, llm, automation, puma-core, agents, benchmark, critical-thinking, effort-estimation, ict, issue-triage, keshav, literature-note, moc, project-management, research, sla, story-points]
created: 2026-04-13
updated: 2026-04-13
keshav-pass: 1
---

# LN: (2023) — Incident Management in the Age of AI: A Survey

> [!cite] Bibliographic Reference
> **Citation**: (2023). *Incident management in the age of AI: A survey*. arXiv:2312.14411. https://arxiv.org/abs/2312.14411

> [!warning] Pass Status
> This note is at Pass 1 — Bird's Eye only. Full three-pass analysis pending.

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Survey paper |
| **Context** | Comprehensive survey of AI/ML applications to IT service management incident lifecycle |
| **Correctness** | Survey methodology; scope covers detection → triage → RCA → mitigation |
| **Contributions** | (1) Taxonomy of AI techniques per incident phase; (2) Dataset catalogue for incident management ML; (3) Open challenges in automated incident resolution |
| **Clarity** | To be assessed on full read |

> [!success] Relevance: ⭐⭐⭐⭐⭐
> **Directly aligned with PUMA's core task** — issue triage is incident management. This survey provides the state-of-the-art landscape that PUMA's SLR must cover.

---

## Pass 1 Notes (Preliminary)

### Incident Management Lifecycle (AI Applications)

| Phase | AI/ML Technique | Relevance to PUMA |
|-------|----------------|-------------------|
| **Detection** | Anomaly detection, log analysis | Upstream of PUMA scope |
| **Triage** | Classification (type, priority, routing) | **PUMA H1 core task** |
| **Root Cause Analysis** | Graph-based, LLM-assisted | Extends PUMA Stage 4 |
| **Mitigation** | Action recommendation, playbook retrieval | SmartPMO Stage 5 |
| **Post-Incident Review** | Summary generation, pattern mining | Future PUMA work |

### Key Metrics in Incident Management
- **MTTD** (Mean Time to Detect): time from incident start to alert
- **MTTR** (Mean Time to Resolve): time from alert to resolution
- Triage accuracy (Type, Priority, Assignee F1)
- SLA compliance rate

---

## PUMA Connection

> [!info] PUMA Analogy
> This survey positions PUMA's triage task (H1) within the broader incident management lifecycle. PUMA addresses the "Triage" phase — automating issue type, priority, and component classification. The survey provides the academic framing for PUMA's contribution.

## Permanent Notes Generated
- [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — triage concept anchored here

## Reading Log
- [[50 - Areas/51 Research/Keshav-ThreePass/Keshav-Reading-Log]]

## Related Notes

- [[20 - Literature/20.1 Papers/AIOps-DevOps/LN-Bruneliere-2022-AIDOaRt]] — AIOps framework
- [[20 - Literature/20.1 Papers/AIOps-DevOps/LN-Chen-2024-RootCauseAnalysis]] — RCA with LLMs
- [[20 - Literature/20.1 Papers/AIOps-DevOps/LN-Chen-2025-AIOpsLab]] — AIOps evaluation lab
- [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]]
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] — H1 directly addresses triage

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
