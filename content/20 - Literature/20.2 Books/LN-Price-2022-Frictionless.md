---
type: literature
title: "The Frictionless Organization: Deliver Great Customer Experiences with Less Effort"
authors: ["Price, Bill", "Jaffe, David"]
first-author: "Price"
year: 2022
status: reviewed
topic: customer-experience
relevance: 3
citekey: "@Price2022Frictionless"
venue: "Berrett-Koehler Publishers"
arxiv: ""
doi: ""
url: "https://www.frictionlessorg.com/about-this-book-1"
tags: [literature, customer-experience, cx, friction, service-design, process-improvement, customer-effort, ces, operations, smart-pmo, book, methodology, management, user-experience, literature-note, moc]
created: 2026-04-14
updated: 2026-04-14
keshav-pass: 2
---

# LN: Price & Jaffe (2022) — The Frictionless Organization

> [!cite] Bibliographic Reference
> **Citation**: Price, B., & Jaffe, D. (2022). *The frictionless organization: Deliver great customer experiences with less effort*. Berrett-Koehler Publishers.
> **URL**: https://www.frictionlessorg.com/about-this-book-1

> [!warning] Scope Note
> This book is specifically about **organisational and customer friction** — reducing effort and pain points across service, operations, and customer experience. It is not about generic productivity or personal workflows.

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Customer experience / service operations framework |
| **Context** | Bill Price was Amazon's first Global VP of Customer Service. David Jaffe is CEO of LimeBridge Australia. Together they bring insider enterprise-scale CX experience to the framework |
| **Correctness** | Practitioner-driven; builds on CEB/Gartner Customer Effort Score research, Dixon et al.'s "The Effortless Experience", and the authors' consulting work across hundreds of organisations |
| **Contributions** | (1) DIRTFT (Do It Right The First Time) as an organisational philosophy; (2) The five reasons customers contact organisations — and how to eliminate each; (3) Friction mapping across the customer journey; (4) Frictionless design principles for operations; (5) Measurement framework: CES (Customer Effort Score) as the primary KPI |
| **Clarity** | Very good. Structured framework with concrete case studies. Prescriptive and tool-rich. |

> [!success] Relevance: ⭐⭐⭐
> The frictionless framework is relevant to SmartPMO's design: PM agents should reduce the effort required from developers to get their issues triaged, estimated, and resolved. Every extra step in the PM workflow is friction that reduces developer productivity and satisfaction.

---

## Pass 2 — Content

### The Central Premise: Effort Drives Dissatisfaction

The book's empirical foundation comes from the CEB (now Gartner) research that introduced the Customer Effort Score: customer loyalty is more strongly predicted by reducing effort than by exceeding expectations. The finding is counterintuitive — organisations focus on "delight", but customers primarily want their problems solved **without effort**.

> "The best thing a company can do is eliminate the need for customers to contact them at all — by getting things right the first time."

The highest form of service is not great service — it is no service needed at all (because the product/process worked correctly).

### The Five Reasons Customers Contact Companies

Price & Jaffe classify all customer contacts into five categories:

| Category | Description | Frictionless target |
|----------|-------------|-------------------|
| **Failure demand** | Contact caused by an organisational failure (wrong product, broken process, missing information) | Eliminate: fix the root cause |
| **Uncertainty demand** | Contact caused by customer not knowing what is happening (order status, application progress) | Eliminate: proactive communication |
| **Policy-induced demand** | Contact caused by policies that force effort onto customers (complicated returns, mandatory phone calls) | Redesign: simplify policies |
| **Emotional demand** | Contact from customers who need reassurance or human connection | Honour: some contacts are valuable |
| **Value demand** | Contact where customer wants to transact or engage | Welcome: this is the goal |

The framework's prescription: eliminate Failure, Uncertainty, and Policy-induced demand (they represent wasted effort and organisational failure). Honour Emotional demand (humans still need humans). Welcome Value demand (it is the purpose of the organisation).

### Friction Mapping

A friction audit maps every customer touchpoint across the journey and identifies where effort is generated:

1. **Touchpoint inventory**: List every way a customer can contact or interact with the organisation
2. **Effort assessment**: For each touchpoint, measure or estimate customer effort (CES, time, number of steps, escalations)
3. **Root cause analysis**: Identify whether each friction point is Failure, Uncertainty, Policy, Emotional, or Value demand
4. **Redesign**: Eliminate or redesign Failure/Uncertainty/Policy friction; streamline Value paths

The output is a Friction Heat Map: a visual representation of where the most effort is imposed on customers, ranked by frequency and severity.

### The DIRTFT (Do It Right The First Time) Philosophy

The most powerful friction-reduction strategy is not better service recovery — it is not needing recovery at all. DIRTFT means designing every process to work correctly on the first attempt, eliminating the need for follow-up, escalation, or correction.

DIRTFT principles:
- Design for the customer's mental model, not the organisation's internal logic
- Anticipate questions and answer them before they are asked (proactive communication)
- Make every process outcome predictable and visible
- Build failure detection into the process, not after it

### Customer Effort Score (CES) as the Primary KPI

CES asks one question after a customer interaction:
> "The company made it easy for me to handle my issue." (Scale: 1 = Strongly Disagree to 7 = Strongly Agree)

Key properties:
- Predicts customer loyalty better than NPS or CSAT
- Measures effort, not satisfaction — focuses attention on the right variable
- Actionable: high-effort interactions identify specific friction points to fix
- Benchmarkable: comparable across industries and touchpoints

### Frictionless Design Principles

The book's operational prescriptions:

| Principle | Application |
|-----------|------------|
| **Make it obvious** | Remove ambiguity from every instruction, form, and message |
| **Make it digital-first** | Online self-service eliminates effort for most routine interactions |
| **Make it proactive** | Communicate outcomes before customers ask |
| **Make it connected** | Customer should never have to repeat context when transferred |
| **Make it human when needed** | Emotional demand requires human response; don't automate empathy |

### Organisational Friction vs. Customer Friction

The authors extend the framework to internal operations: the same logic that reduces customer effort also applies to employee workflows. Employee friction — unnecessary approvals, redundant reporting, unclear processes — reduces productivity in exactly the same way that customer friction reduces loyalty.

Internal frictionless design:
- Reduce handoffs between departments
- Eliminate duplicate data entry
- Automate status updates and notifications
- Make processes self-documenting

---

## PUMA Integration

### Issue Triage as a Frictionless Problem

From the developer's perspective, submitting and tracking a Jira issue is a friction-generating process. Every step that requires developer attention is effort:
- Writing a complete issue description (effort)
- Waiting for triage classification (waiting time = effort)
- Following up on stalled issues (re-contact = failure demand)
- Re-explaining context after escalation (connected failure)

PUMA's automated triage reduces friction at the classification step: developers get immediate, consistent classification without waiting for human PM review. This is DIRTFT applied to PM workflows.

### PUMA Metrics as CES Proxies

PUMA's output metrics map to frictionless KPIs:

| PUMA Metric | Frictionless Equivalent |
|-------------|------------------------|
| F1-macro (triage accuracy) | CES: correct classification = no developer effort to re-explain |
| MAE (estimation accuracy) | CES: accurate SP = no sprint planning rework |
| MTTD (time to detect) | Effort: time between issue creation and triage decision |
| MTTR (time to resolve) | Effort: total cycle time from issue creation to resolution |
| SPR (successful parse rate) | Failure demand: agent output parsing failures = friction |

### SmartPMO as a Frictionless PM System

SmartPMO's Stage 5 vision is a frictionless PM operation:
- Failure demand eliminated: issues triaged correctly on first pass (DIRTFT)
- Uncertainty demand eliminated: proactive status updates at each pipeline stage
- Policy-induced demand eliminated: no manual escalation required for routine issues
- Value demand welcomed: PM attention directed to complex, high-value cases only

---

## Related Notes

- [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]] — SmartPMO as a frictionless PM operation
- [[30 - Permanent/31 Concepts/PN-Evaluation-Metrics-Comprehensive]] — MTTD, MTTR, SPR as frictionless KPIs
- [[30 - Permanent/31 Concepts/PN-HITL-BoundedAutonomy]] — human-in-the-loop for emotional/complex demand
- [[20 - Literature/20.2 Books/LN-Goldratt-2004-TheGoal]] — TOC: reducing constraint friction as a throughput strategy
- [[20 - Literature/20.2 Books/LN-Carpenter-2025-WorkTheSystem]] — systems documentation as DIRTFT implementation
- [[20 - Literature/20.7 Blog-Web/LN-CodeRabbit-2025-AIvsHumanCode]] — code review friction as an analogue problem space

## MOCs

- [[20 - Literature/20.2 Books/MOC Books]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
