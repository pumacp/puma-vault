---
type: literature
title: "A Guide to the Project Management Body of Knowledge (PMBOK Guide) — 7th Edition"
authors: ["Project Management Institute"]
first-author: "PMI"
year: 2021
status: reviewed
topic: project-management
relevance: 4
citekey: "@PMI2021PMBOK7"
venue: "Project Management Institute"
arxiv: ""
doi: ""
url: "https://www.pmi.org/pmbok-guide-standards/foundational/pmbok"
tags: [literature, pmbok, pmi, project-management, value-delivery, principles, ethics, puma-core, smart-pmo, standards, scrum, agile, waterfall, literature-note, moc]
created: 2026-04-14
updated: 2026-04-14
keshav-pass: 2
---

# LN: PMI (2021) — PMBOK Guide 7th Edition

> [!cite] Bibliographic Reference
> **Citation**: Project Management Institute. (2021). *A guide to the project management body of knowledge (PMBOK guide)* (7th ed.). PMI. https://www.pmi.org/pmbok-guide-standards/foundational/pmbok

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Professional standard / reference guide |
| **Context** | PMI's flagship standard, revised every 4–6 years. The 7th edition (2021) represents a major philosophical shift: from prescriptive process groups to principles-based and outcomes-focused |
| **Correctness** | Authoritative — developed by 300+ contributors, subject to structured ballot |
| **Contributions** | (1) 12 Project Management Principles (replacing the 5 Process Groups of PMBOK 6); (2) 8 Project Performance Domains; (3) Value Delivery System framework; (4) Integration of agile, hybrid, and predictive approaches |
| **Clarity** | Very good — more accessible than PMBOK 6; principles-based language is less prescriptive |

> [!success] Relevance: ⭐⭐⭐⭐
> PUMA's scope is bounded by PMBOK concepts: issue triage maps to Scope/Quality domains; story point estimation maps to the Schedule domain; the Value Delivery System frames SmartPMO's purpose.

---

## Pass 2 — Key Concepts

### The 12 Project Management Principles

The 7th edition replaced process groups with 12 behaviour-focused principles:

1. Stewardship
2. Team
3. Stakeholders
4. Value
5. Systems Thinking
6. Leadership
7. Tailoring
8. Quality
9. Complexity
10. Risk
11. Adaptability and Resiliency
12. **Change**

Principles 4 (Value), 8 (Quality), 11 (Adaptability), and 12 (Change) are most relevant to PUMA: AI agents must deliver value, maintain quality, and adapt to new issue patterns.

### The 8 Performance Domains

| Domain | PUMA Mapping |
|--------|-------------|
| Stakeholders | Developers, PMs, sponsors as agent interaction surfaces |
| Team | BMAD multi-agent team as a "project team" |
| Development Approach | Agile (sprint-based) — TAWOS, Jira SR |
| Planning | Sprint planning as an estimation task (H2) |
| **Work** | Issue triage workflow — PUMA Stage 1 (H1) |
| **Delivery** | Throughput: issues triaged per sprint |
| **Measurement** | F1-macro, MAE, MTTD — PMBOK-aligned metrics |
| Uncertainty | Issue priority uncertainty — HITL escalation |

### The Value Delivery System

PMBOK 7 frames the entire PM function as a Value Delivery System: a portfolio of interconnected projects designed to deliver strategic outcomes. This framing positions PUMA's SmartPMO not as a technical tool but as a Value Delivery subsystem — the automated PM layer that enables human PMs to focus on high-value decisions.

### PMBOK 7 vs. PMBOK 6

| Aspect | PMBOK 6 (2017) | PMBOK 7 (2021) |
|--------|---------------|---------------|
| Organisation | 5 Process Groups, 10 Knowledge Areas | 12 Principles, 8 Performance Domains |
| Approach | Prescriptive (waterfall-oriented) | Principles-based, method-agnostic |
| Agile | Separate PMI-ACP certification | Integrated throughout |
| Focus | Process compliance | Value delivery |

---

## PUMA Integration

- **PUMA SmartPMO (Stage 5)**: Frames automated PM as a Value Delivery System component
- **Ch.1 Introduction**: PMBOK 7 Quality and Work domains as the context for triage and estimation
- **Ethics Chapter**: PMBOK Principles 1 (Stewardship) and 4 (Value) as ethical bounds on AI agent deployment

## Related Notes

- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Axelos-2019-ITIL4]] — ITIL 4 as the service management complement to PMBOK
- [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — PMBOK Work/Measurement domains
- [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]] — SmartPMO as PMBOK Value Delivery System layer
- [[60 - Resources/64 Glossary/KW-Category2-Project-Management-Smart-PMO]] — PMBOK glossary terms

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
