---
type: literature
title: "ITIL Foundation: ITIL 4 Edition"
authors: ["Axelos"]
first-author: "Axelos"
year: 2019
status: reviewed
topic: service-management
relevance: 4
citekey: "@Axelos2019ITIL4"
venue: "TSO (The Stationery Office)"
arxiv: ""
doi: ""
url: "https://www.axelos.com/certifications/itil-service-management"
tags: [literature, itil, itil4, service-management, sla, incident-management, ticket-triage, value-chain, smart-pmo, puma-core, standards, mttd, mttr, literature-note, moc]
created: 2026-04-14
updated: 2026-04-14
keshav-pass: 2
---

# LN: Axelos (2019) — ITIL Foundation: ITIL 4

> [!cite] Bibliographic Reference
> **Citation**: Axelos. (2019). *ITIL foundation: ITIL 4 edition*. TSO (The Stationery Office). https://www.axelos.com/certifications/itil-service-management

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Professional standard / service management framework |
| **Context** | ITIL (Information Technology Infrastructure Library) 4th revision. The global standard for IT service management (ITSM), adopted by 90%+ of Fortune 500 companies |
| **Correctness** | Authoritative — developed by Axelos, owned by the UK Cabinet Office |
| **Contributions** | (1) Service Value System (SVS); (2) Service Value Chain (6 activities); (3) 34 practices (replacing ITIL v3's processes); (4) Four Dimensions of Service Management; (5) Integration with Agile, DevOps, and Lean |
| **Clarity** | Good — updated ITIL 4 is more accessible than ITIL v3; integration with agile is much improved |

> [!success] Relevance: ⭐⭐⭐⭐
> ITIL 4 provides the vocabulary and framework for PUMA's SmartPMO: incident management (Ticket Triage) is a core ITIL practice. MTTD and MTTR — PUMA's Stage 5 metrics — are standard ITIL Incident Management KPIs.

---

## Pass 2 — Key Concepts

### The Service Value System (SVS)

ITIL 4's central model: all components work together to co-create value.

```
Guiding Principles
        ↓
Governance → Service Value Chain → Practices → Continual Improvement
        ↑
     Opportunity/Demand ──────────────────────────────→ Value
```

### The Service Value Chain (6 Activities)

| Activity | Description | PUMA Mapping |
|----------|-------------|-------------|
| **Plan** | Ensure shared direction | Sprint planning (H2 story point estimation) |
| **Improve** | Continual improvement | PUMA iterative benchmark improvement |
| **Engage** | Stakeholder interaction | Developer → Jira issue submission |
| **Design & Transition** | New services/features | Agent model deployment |
| **Obtain/Build** | Acquire/develop components | Ollama + model pipeline |
| **Deliver & Support** | Deliver services, resolve incidents | **Issue triage (H1) — PUMA Stage 1** |

### Incident Management Practice

The most relevant ITIL practice for PUMA:

- **Incident**: Unplanned interruption or reduction in quality of an IT service
- **Triage**: Classification of incidents by type, priority, and routing
- **SLA**: Service Level Agreement — defines target resolution times per priority class

| Priority | ITIL SLA target (typical) | PUMA Mapping |
|----------|--------------------------|-------------|
| Critical | Resolve in 1 hour | TP for Critical class |
| High | Resolve in 4 hours | TP for High class |
| Medium | Resolve in 8 hours | TP for Medium class |
| Low | Resolve in 24 hours | TP for Low class |

Correct triage classification directly determines whether SLAs are met. A misclassified Critical issue (classified as Medium) violates SLA by design.

### ITIL 4 Guiding Principles (Relevant to PUMA)

| Principle | PUMA Application |
|-----------|-----------------|
| Focus on value | Triage automation delivers value by reducing MTTD |
| Think and work holistically | SmartPMO integrates triage + estimation + routing |
| Keep it simple and practical | PUMA MVP: triage module only |
| Collaborate and promote visibility | HITL design: PM reviews agent output |
| Optimise and automate | Stage 5: progressively automate routine PM tasks |

---

## PUMA Integration

- **Ch.1 Introduction**: ITIL 4 as the organisational context for automated incident management
- **SmartPMO Stage 5**: ITIL Service Value Chain as the framework for automated PM operations
- **Metrics**: MTTD and MTTR as standard ITIL Incident Management KPIs (defined in PN-Evaluation-Metrics-Comprehensive)

## Related Notes

- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-PMI-2021-PMBOK7]] — PMBOK 7 as the project management complement to ITIL's service management
- [[30 - Permanent/31 Concepts/PN-Evaluation-Metrics-Comprehensive]] — MTTD, MTTR definitions
- [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]] — SmartPMO as an ITIL-aligned automated incident management system
- [[20 - Literature/20.1 Papers/AIOps-DevOps/LN-Incident-Management-AI-2023]] — AI-driven incident management survey
- [[60 - Resources/64 Glossary/KW-Category2-Project-Management-Smart-PMO]] — ITIL glossary terms (SLA, MTTD, MTTR)

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
