---
type: literature
title: "Extreme Programming Explained: Embrace Change"
authors: ["Beck, Kent"]
first-author: "Beck"
year: 1999
status: reviewed
topic: agile-methodology
relevance: 4
citekey: "@Beck1999XPExplained"
venue: "Addison-Wesley Professional"
arxiv: ""
doi: ""
url: ""
tags: [literature, agile, extreme-programming, xp, scrum, tdd, pair-programming, continuous-integration, story-points, puma-core, book, methodology, project-management, sprint, backlog, literature-note, keshav, moc, research]
created: 2026-04-13
updated: 2026-04-13
keshav-pass: 2
---

# LN: Beck (1999) — Extreme Programming Explained: Embrace Change

> [!cite] Bibliographic Reference
> **Citation**: Beck, K. (1999). *Extreme programming explained: Embrace change*. Addison-Wesley Professional.

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Methodology manifesto + practical guide |
| **Context** | Response to heavyweight "waterfall" methodologies; foundational text for Agile movement |
| **Correctness** | Practitioner-validated; influenced XP's adoption at Chrysler C3 project (industrial case study) |
| **Contributions** | (1) XP values (Communication, Simplicity, Feedback, Courage); (2) XP practices (TDD, Pair Programming, CI, Small Releases); (3) Planning Game / Story Cards as predecessor to Jira stories and story points |
| **Clarity** | Excellent. Accessible and persuasive. |

> [!success] Relevance: ⭐⭐⭐⭐
> XP introduced the "story card" and "planning game" that evolved into Jira issues and sprint planning — the core artifact PUMA operates on. Understanding XP provides the historical context for why story points exist as they do.

---

## Pass 2 — Content

### The Planning Game

XP's planning mechanism (precursor to Scrum sprint planning):
1. **Exploration**: Developers write "story cards" describing user-visible functionality
2. **Commitment**: Team estimates each story in "ideal programmer-weeks" (later evolved to story points)
3. **Steering**: After each iteration, compare planned vs. actual velocity; adjust future estimates

**Critical insight for PUMA**: Story points originated as a deliberate abstraction away from time estimates — they measure *relative complexity*, not hours. The Fibonacci scale (1, 2, 3, 5, 8, 13, 21) emerged from practice to prevent false precision.

### Why Estimation Is Hard (XP Perspective)

> "The planning game is not about making accurate forecasts. It is about making visible the tension between what the business wants and what the development team can do."

XP acknowledges the estimation problem that Flyvbjerg later quantified empirically: estimates are inherently uncertain, and the goal is not precision but honest communication of uncertainty.

### XP Practices Relevant to PUMA

| Practice | XP Description | PUMA Relevance |
|----------|----------------|----------------|
| **Story cards** | Unit of customer-visible work | PUMA's classification unit (Jira issues) |
| **Story points** | Relative complexity estimate | PUMA H2 target variable |
| **Acceptance tests** | Defines "done" for each story | Classification ground truth validation |
| **Continuous integration** | Merge and test frequently | PUMA pipeline design (CI/CD for agent deployment) |
| **Small releases** | Deliver working software frequently | Sprint-by-sprint PUMA deployment model |
| **Collective ownership** | Any developer can modify any code | Issue routing and assignment context |

### The Velocity Concept

XP's **velocity** (story points completed per iteration) provides the reference class for future sprint planning:
> "Your velocity will vary, but it will stabilize. Use your last few iterations to predict the next."

This is Reference Class Forecasting at the sprint level — and exactly what PUMA's few-shot estimation formalizes.

---

## PUMA Integration

- **Ch.1 Introduction**: XP as the origin of story points; planning game as the context for PUMA's H2 task
- **Ch.2 Literature Review**: Position PUMA within the evolution from XP story cards → Scrum backlog → Jira → PUMA automation
- **Historical framing**: The Fibonacci scale for story points is not arbitrary — it encodes uncertainty quantification from XP practice

## Related Notes

- [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — story points origin and PUMA context
- [[30 - Permanent/31 Concepts/PN-UniquenessTrap]] — XP velocity as reference class forecasting
- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Flyvbjerg-2023-UniquenessTrap]] — empirical validation of XP's estimation uncertainty acknowledgment

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
