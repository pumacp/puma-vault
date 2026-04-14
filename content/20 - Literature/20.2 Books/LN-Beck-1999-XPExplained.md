---
type: literature
title: "Extreme Programming Explained: Embrace Change"
authors: ["Beck, Kent", "Andres, Cynthia"]
first-author: "Beck"
year: 2004
edition: "2nd"
status: reviewed
topic: agile-methodology
relevance: 4
citekey: "@Beck2004XPExplained"
venue: "Addison-Wesley"
arxiv: ""
doi: ""
url: "https://www.informit.com/store/extreme-programming-explained-embrace-change-9780321278654"
tags: [literature, agile, extreme-programming, xp, scrum, tdd, pair-programming, continuous-integration, story-points, puma-core, book, methodology, project-management, sprint, backlog, refactoring, simplicity, adaptive-development, literature-note, keshav, moc, research]
created: 2026-04-13
updated: 2026-04-14
keshav-pass: 2
---

# LN: Beck & Andres (2004) — Extreme Programming Explained: Embrace Change (2nd ed.)

> [!cite] Bibliographic Reference
> **Citation**: Beck, K. (2004). *Extreme programming explained: embrace change* (2nd ed.). Addison-Wesley.
> **URL**: https://www.informit.com/store/extreme-programming-explained-embrace-change-9780321278654
> **Note**: 2nd edition revised with Cynthia Andres. Original 1st edition: Beck (1999), same publisher.

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

### XP Values (2nd Edition Clarification)

The 2nd edition restructures XP around five explicit **values** that ground all practices:

| Value | Meaning in XP |
|-------|--------------|
| **Communication** | Problems arise from lack of communication. XP practices (pair programming, daily standups, shared codebase) enforce constant communication. |
| **Simplicity** | Do the simplest thing that could possibly work. Avoid speculative complexity. |
| **Feedback** | Short feedback loops at every scale: unit tests (seconds), iterations (weeks), releases (months). |
| **Courage** | Make difficult decisions: throw away code that doesn't work, tell the customer bad news early, change direction when needed. |
| **Respect** | Every team member's contribution matters. Technical quality is an expression of respect for future team members. |

### XP Practices Map

The 2nd edition organises XP practices into Primary and Corollary categories:

**Primary Practices** (start here):
- Sit Together / Whole Team
- Informative Workspace
- Energised Work (sustainable pace)
- Pair Programming
- Stories (user stories as planning unit)
- Weekly Cycle / Quarterly Cycle
- Slack (build in flexibility for unexpected work)
- Ten-Minute Build
- Continuous Integration
- Test-First Programming (TDD)
- Incremental Design

**Corollary Practices** (add after primary practices are solid):
- Real Customer Involvement
- Incremental Deployment
- Team Continuity
- Shrinking Teams
- Root-Cause Analysis
- Shared Code
- Code and Tests
- Single Code Base
- Daily Deployment
- Negotiated Scope Contract
- Pay-Per-Use

### The Planning Game and Story Cards

XP's planning mechanism (precursor to Scrum sprint planning):
1. **Exploration**: Developers write "story cards" describing user-visible functionality
2. **Commitment**: Team estimates each story in "ideal programmer-weeks" (later evolved to story points)
3. **Steering**: After each iteration, compare planned vs. actual velocity; adjust future estimates

The Fibonacci scale (1, 2, 3, 5, 8, 13, 21) emerged from practice to prevent false precision. Story points are *relative complexity estimates*, not time estimates — a distinction PUMA's H2 must respect.

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
| **TDD** | Tests before code | PUMA experiment reproducibility protocol |
| **Refactoring** | Continuously improve code structure | Iterative prompt improvement |

### The Velocity Concept

XP's **velocity** (story points completed per iteration) provides the reference class for future sprint planning:
> "Your velocity will vary, but it will stabilize. Use your last few iterations to predict the next."

This is Reference Class Forecasting at the sprint level — and exactly what PUMA's few-shot estimation formalizes.

### Adaptive Development Philosophy

The 2nd edition's subtitle "Embrace Change" is the philosophical core: software development is inherently uncertain. Requirements change, technology changes, teams change. XP's response is to make change cheap by:
- Keeping code simple (less to change)
- Testing everything (confident refactoring)
- Releasing frequently (change is small and reversible)
- Communicating constantly (change is shared knowledge)

This philosophy directly contradicts waterfall assumptions (requirements can be fully specified upfront) and anticipates the empirical findings of effort estimation research: the future is uncertain, so design for adaptability, not predictability.

---

## PUMA Integration

- **Ch.1 Introduction**: XP as the origin of story points; planning game as the context for PUMA's H2 task
- **Ch.2 Literature Review**: Position PUMA within the evolution from XP story cards → Scrum backlog → Jira → PUMA automation
- **Historical framing**: The Fibonacci scale for story points is not arbitrary — it encodes uncertainty quantification from XP practice
- **Adaptive development**: XP's embrace-change philosophy supports PUMA's iterative experiment design

## Related Notes

- [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — story points origin and PUMA context
- [[30 - Permanent/31 Concepts/PN-UniquenessTrap]] — XP velocity as reference class forecasting
- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Flyvbjerg-2023-UniquenessTrap]] — empirical validation of XP's estimation uncertainty acknowledgment
- [[20 - Literature/20.2 Books/LN-Goldratt-2004-TheGoal]] — TOC: the bottleneck in the XP planning process
- [[20 - Literature/20.2 Books/LN-Wickman-2012-Traction]] — EOS Rocks as the modern evolution of XP Quarterly Cycles
- [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] — SDD as the specification discipline that XP's TDD implies

## MOCs

- [[20 - Literature/20.2 Books/MOC Books]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
