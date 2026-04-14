---
type: literature
title: "State of AI vs Human Code Generation Report"
authors: ["Loker, David", "CodeRabbit"]
first-author: "CodeRabbit"
year: 2025
status: reviewed
topic: ai-code-quality
relevance: 5
citekey: "@CodeRabbit2025AIvsHuman"
venue: "CodeRabbit Blog (industry report)"
arxiv: ""
doi: ""
url: "https://www.coderabbit.ai/blog/state-of-ai-vs-human-code-generation-report"
tags: [literature, ai-code-quality, code-generation, benchmarking, human-ai-comparison, code-review, coderabbit, security, error-handling, readability, performance, empirical-study, github, pull-requests, open-source, software-quality, agent-quality, blog-report, industry-report, puma-relevant, quality-assurance, incident-management, devops, aiops]
created: 2026-04-14
updated: 2026-04-14
keshav-pass: 2
---

# LN: CodeRabbit (2025) — State of AI vs Human Code Generation Report

> [!cite] Bibliographic Reference
> **Citation**: Loker, D. & CodeRabbit. (2025, December 17). *State of AI vs Human Code Generation Report*. CodeRabbit Blog. https://www.coderabbit.ai/blog/state-of-ai-vs-human-code-generation-report
> **Author**: David Loker | **Read time**: ~8 min | **Type**: Industry empirical report

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Empirical industry report / benchmarking study |
| **Context** | CodeRabbit (automated code review platform) analysed 470 open-source GitHub PRs (320 AI co-authored + 150 human-only) to quantify quality differences between AI and human code contributions |
| **Correctness** | Industry-authored; no formal peer review, but methodology is transparent and findings are internally consistent with 2025 postmortem literature. Authors acknowledge that AI-labelled PRs were identified via signal detection, not direct confirmation |
| **Contributions** | (1) First large-scale quantitative comparison of AI vs human PR quality across 10 issue categories; (2) Establishes per-100-PR rate ratio methodology; (3) Identifies readability as the single largest AI-specific failure mode (3×); (4) Provides 7 actionable mitigation strategies |
| **Clarity** | Excellent. Dense with numbers but well-organised. Findings are clearly separated from interpretation. |

> [!success] Relevance: ⭐⭐⭐⭐⭐
> Directly relevant to PUMA: establishes empirical baselines for AI agent output quality that inform PUMA's QA Agent design (BMAD), HITL thresholds, and the PUMA SmartPMO automated review pipeline.

---

## Pass 2 — Content

### Study Scope & Methodology

**Dataset:**

| Parameter | Value |
|-----------|-------|
| Total PRs analysed | 470 |
| AI co-authored PRs | 320 |
| Human-only PRs | 150 |
| Normalisation method | Per-100-PR statistical rate ratios |
| Source | Open-source GitHub pull requests |

> [!warning] Methodological Caveat
> AI-authored PRs were identified via signal detection, not direct confirmation. The authors acknowledge they cannot guarantee all human-labelled PRs were exclusively human-authored. Results should be interpreted as "AI co-authored vs primarily human" rather than a strict binary.

**Context Framing:**
A separate benchmark referenced in the report found that while PRs per author increased **20% year-over-year** (driven by AI assistance), incidents per PR increased **23.5%** simultaneously — establishing the motivation for this study.

---

### 10 Key Findings (AI vs Human, per 100 PRs)

#### Finding 1 — Overall Issue Volume

| Metric | AI PRs | Human PRs | Ratio |
|--------|--------|-----------|-------|
| Issues per PR | **10.83** | **6.45** | **~1.7×** |

High-issue outliers are more prevalent in AI PRs, creating elevated review workloads. The distribution is skewed rather than uniform, meaning some AI PRs account for disproportionate review burden.

---

#### Finding 2 — Severity Escalation

- AI PRs show **1.4–1.7× more critical and major findings** compared to human PRs
- The severity escalation means AI issues are not just more numerous but more consequential

---

#### Finding 3 — Logic & Correctness Issues

- **75% more common** in AI-generated code
- Categories:
  - Business logic mistakes
  - Incorrect dependencies
  - Flawed control flow
  - Misconfigurations
- Flagged as **the most expensive category** to fix — most likely to cause downstream incidents and production failures

> [!danger] High-Risk Category
> Logic and correctness errors are expensive because they pass surface-level checks (compilation, unit tests) but manifest as subtle functional failures in production.

---

#### Finding 4 — Readability Issues

- **3× spike** in AI contributions — the **single largest difference** across the entire dataset
- Characteristics:
  - Code *looks* consistent but violates local naming patterns
  - Clarity conventions drift toward generic training-data defaults
  - Structural norms (file organisation, section grouping) are inconsistent with repo idioms

> [!info] Key Insight
> Readability is not about formatting (which is separately tracked). It is about cognitive load — AI code requires more reviewer effort to understand even when syntactically valid.

---

#### Finding 5 — Error Handling Gaps

- **Nearly 2× more common** in AI PRs
- Specific deficiencies:
  - Missing null checks
  - Absent early returns
  - Inadequate guardrails
  - Incomplete exception handling logic
- **Directly correlated with real-world outage causes** — postmortems from 2025 incidents frequently cite missing error paths

---

#### Finding 6 — Security Vulnerabilities

- **Up to 2.74× higher** in AI-generated code
- Primary pattern: **improper password handling** and **insecure object references**
- No vulnerability type was unique to AI — all categories showed amplification rather than novel attack surfaces
- Models recreate **legacy or outdated security patterns** from training data when not given explicit security guidance

---

#### Finding 7 — Performance Regressions

- Small in absolute count but **heavily skewed toward AI**
- **Excessive I/O operations: ~8× more common** in AI PRs
- Root cause: AI models prefer simple, readable patterns over resource-efficient ones
  - Simple loops instead of batched operations
  - Repeated I/O calls instead of cached reads
  - Unoptimised data structures (list scans instead of hash lookups)

---

#### Finding 8 — Concurrency & Dependency Issues

- **~2× more frequent** in AI PRs
- Problems:
  - Incorrect ordering of dependent operations
  - Faulty dependency flow
  - Concurrency primitive misuse (e.g., mutex acquisition order, race conditions)

---

#### Finding 9 — Formatting Problems

- **2.66× more common** in AI-generated code
- Occurs **despite teams using formatters and linters** — issues survive automated tooling
- Types:
  - Spacing inconsistencies
  - Indentation errors
  - Structural drift
  - Style violations specific to repo conventions

---

#### Finding 10 — Naming Inconsistencies

- **Nearly 2× more frequent** in AI contributions
- Characteristics:
  - Unclear naming (generic variable names from training patterns)
  - Mismatched terminology (domain-specific terms replaced with generic equivalents)
  - Identifiers that don't match existing codebase vocabulary
- Impact: increased cognitive load, making code review slower and less reliable

---

### Summary Table — AI vs Human Issue Rates

| Category | AI vs Human Ratio | Severity |
|----------|------------------|----------|
| Overall issue volume | ~1.7× | Medium |
| Critical/major findings | 1.4–1.7× | High |
| Logic & correctness | ~1.75× (75% more) | Critical |
| Readability | **3×** | High |
| Error handling | ~2× | Critical |
| Security vulnerabilities | **up to 2.74×** | Critical |
| Excessive I/O operations | **~8×** | Medium |
| Concurrency/dependency | ~2× | High |
| Formatting | **2.66×** | Low |
| Naming inconsistencies | ~2× | Medium |

---

### Root Cause Analysis

The report attributes AI code quality issues to five structural causes:

| Root Cause | Mechanism | Affected Categories |
|------------|-----------|-------------------|
| **Lack of local business context** | Models operate statistically, miss system-specific rules that senior engineers internalise | Logic, naming, readability |
| **Surface-level correctness** | Code appears functional but skips control-flow protections and misuses dependency ordering | Error handling, concurrency |
| **Weak repository idiom adherence** | Naming patterns, architectural norms, and formatting drift toward training data defaults | Naming, formatting, readability |
| **Degraded security practices** | Without explicit guidance, models reproduce legacy/outdated security patterns | Security vulnerabilities |
| **Efficiency trade-offs** | Models default to simple, readable patterns over resource-efficient implementations | Performance, I/O |

---

### Recommended Interventions (7 Strategies)

#### Strategy 1 — Enhanced Context
- Provide prompt snippets with repository-specific conventions
- Include instruction capsules with business logic constraints
- Attach configuration schemas to reduce misconfigurations and logic drift
- *PUMA mapping*: CLAUDE.md, puma-core skill, context engineering for agent tasks

#### Strategy 2 — Policy-as-Code
- CI-enforced formatters and linters
- Style guides as machine-readable constraints
- Eliminate entire categories of AI-driven issues **before** code review
- *PUMA mapping*: SDD Constitution §§, automated checks in experiment pipeline

#### Strategy 3 — Correctness Safety Rails
- Mandate tests for all non-trivial control flow
- Require nullability and type assertions
- Standardise exception-handling rules across the codebase
- Explicitly prompt for guardrails in AI coding prompts
- *PUMA mapping*: PUMA Constitution §§ quality requirements, BMAD QA Agent audit

#### Strategy 4 — Security Hardening
- Centralise credential handling via approved patterns
- Block ad-hoc password usage with automated detection
- Automate SAST (Static Application Security Testing) and security linting
- *PUMA mapping*: HITL escalation for security-sensitive code paths

#### Strategy 5 — Performance Optimisation
- Provide guidelines for batching I/O operations
- Document appropriate data structure choices per use case
- Include performance hints in system prompts for compute-sensitive tasks
- *PUMA mapping*: CodeCarbon integration, PN-ComputationalSustainability

#### Strategy 6 — AI-Aware PR Checklists
Reviewers should specifically verify:
- [ ] Error path coverage (all failure modes handled)
- [ ] Concurrency primitive correctness (mutex/async ordering)
- [ ] Configuration value validation (no hardcoded magic values)
- [ ] Approved credential handling (no ad-hoc password patterns)
- *PUMA mapping*: BMAD QA Agent prompt checklist; Marco Veritas compliance review

#### Strategy 7 — Automated Code Review
- Deploy AI code review tools (e.g., CodeRabbit itself) to standardise quality across different AI coding tools
- Reduces reviewer fatigue from elevated AI PR review burden
- Creates a feedback loop: AI reviews AI, with human oversight on flagged items
- *PUMA mapping*: SmartPMO automated monitoring pipeline (Stage 5)

---

### Core Conclusion

> *"AI accelerates output, but it also amplifies certain categories of mistakes."*

The report establishes three empirical properties of AI-generated code:
1. **Consistently more variable** in quality
2. **More error-prone** across all 10 measured categories
3. **More likely to introduce high-severity issues** without proper safeguards

> [!quote] Report's closing statement
> "Quality isn't automatic. It requires deliberate engineering. Even when using AI tools."

---

## PUMA Integration

### Evidence Base for PUMA Quality Design

The CodeRabbit report provides the empirical foundation for several PUMA architectural decisions:

| CodeRabbit Finding | PUMA Application |
|-------------------|-----------------|
| 1.7× issue volume in AI PRs | Justifies HITL threshold: AI outputs require systematic human review, not spot-checking |
| 2.74× security vulnerabilities | Supports BMAD QA Agent as a non-optional pipeline step |
| 75% more logic errors | Mandates Correctness Safety Rails in PUMA experiment protocol |
| 20% more PRs → 23.5% more incidents | Quantifies the cost of AI acceleration without quality guardrails |
| ~8× I/O performance regressions | Informs PUMA sustainability protocol (CodeCarbon + efficiency prompting) |
| 3× readability issues | Highlights need for author's-voice rewriting (Marco Veritas §3) |

### BMAD QA Agent — Informed Checklist

The BMAD QA Agent prompt should incorporate the AI-Aware PR Checklist (Strategy 6) as a structured audit:

```markdown
## AI Code Quality Audit (CodeRabbit 2025)
- [ ] Logic & control flow: all branching paths verified
- [ ] Error handling: null checks, early returns, exception handlers present
- [ ] Security: no ad-hoc credential handling; SAST clean
- [ ] Performance: no unnecessary I/O loops; appropriate data structures
- [ ] Naming: matches repository vocabulary, not generic AI defaults
- [ ] Formatting: passes repo-specific linter, not just universal formatter
- [ ] Concurrency: dependency ordering verified if async operations present
```

### SmartPMO Stage 5 — Automated Review Pipeline

The 1.7× issue escalation finding directly motivates SmartPMO's code quality monitoring:
- **Ingest**: Each AI-authored change triggers quality metric collection (issues per PR rate)
- **Query**: PM asks "What is the AI vs human issue ratio for this sprint?" → wiki answers from accumulated data
- **Alert**: If AI issue rate exceeds 2× human baseline, auto-escalate to human review

### Thesis Relevance (PUMA Chapter 1)

The finding that PRs per author increased 20% while incidents per PR increased 23.5% is a **precise quantification of the AI quality-speed tension** — directly supporting PUMA's thesis argument that:

> "AI acceleration of PM tasks requires quality safeguards to avoid translating velocity gains into incident amplification."

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-HITL-BoundedAutonomy]] — HITL escalation thresholds and bounded autonomy design
- [[30 - Permanent/31 Concepts/PN-AlgorithmicBias]] — Bias in AI-generated outputs, fairness in automated review
- [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] — Spec-Driven Development: policy-as-code and OpenSpec alignment
- [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-PRD-PUMA]] — BMAD QA Agent: AI-aware checklist application
- [[30 - Permanent/31 Concepts/PN-Agentic-Science-Paradigm]] — AI code generation in agentic software engineering
- [[30 - Permanent/31 Concepts/PN-Reflexion-SelfCritique]] — Verbal self-reflection loops for AI code quality improvement
- [[30 - Permanent/31 Concepts/PN-Evaluation-Metrics-Comprehensive]] — Issue rate metrics, per-PR baselines
- [[30 - Permanent/31 Concepts/PN-StatisticalValidation-Full]] — Rate ratio methodology, statistical normalisation
- [[30 - Permanent/33 Frameworks/PN-Veritas-Framework]] — Marco Veritas: author's voice rewriting as readability mitigation
- [[30 - Permanent/31 Concepts/PN-COSTAR-SelfConsistency]] — Prompt context enrichment (Strategy 1 mapping)
- [[30 - Permanent/31 Concepts/PN-ComputationalSustainability]] — Performance efficiency, I/O optimisation tracking
- [[20 - Literature/20.1 Papers/AIOps-DevOps/LN-Incident-Management-AI-2023]] — Incident triage: postmortem correlation with AI errors
- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Collaborating-AIAgents-2025]] — Human-AI team productivity: 20% PR increase reference
- [[20 - Literature/20.7 Blog-Web/LN-Karpathy-2026-LLMWiki]] — LLM Wiki: context enrichment as quality safeguard
- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — Reproducibility and red-teaming for agent quality
- [[50 - Areas/55 Ethics/Ethics-Review-Log]] — Ethics review: AI transparency and quality accountability
- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] — PUMA Constitution §§ quality requirements

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
