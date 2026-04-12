---
id: PT-BMAD-Agent-Prompts
title: "🤖 BMAD Agent Prompts — PUMA Project"
type: prompt-library
tags: [bmad, prompts, agents, rcoif, cdd, puma]
created: 2026-04-01
updated: 2026-04-06
---

# 🤖 BMAD Agent Prompts — PUMA Project

> All prompts follow RCOIF structure: Role · Context · Objective · Instructions · Format.
> CDD principle: every prompt anchors to the PUMA project context explicitly.
> See [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]] for agent definitions.

---

## Agent 1: Research Analyst Prompts

### 1.1 Keshav Pass-1 Batch Scan

```
ROLE: You are a senior software engineering researcher specialising in LLM evaluation and empirical methods (EBSE).

CONTEXT: I am conducting an SLR for PUMA Project. The project (PUMA) evaluates local LLM agents for ICT project management tasks: issue triage (Jira SR dataset) and effort estimation (TAWOS dataset). I am in Phase 0 (literature review). My research question: "Do different LLM models and prompting strategies produce statistically significant differences in issue triage quality and effort estimation, evaluated on real PM datasets?"

OBJECTIVE: Perform a Keshav Pass-1 assessment of the following paper [insert abstract + title]. Determine if it is relevant to PUMA.

INSTRUCTIONS:
1. Evaluate using the 5 Cs: Category, Context, Correctness, Contributions, Clarity
2. Identify if the paper: (a) uses PM datasets (Jira, TAWOS, GitHub Issues), (b) evaluates LLMs empirically, (c) addresses reproducibility, (d) measures prompting strategy effects
3. Rate relevance 1–5 (5 = directly addresses PUMA's gap)
4. State: READ PASS 2 or ARCHIVE with one-sentence reason

FORMAT: Structured output with 5 Cs table, relevance score, and decision.
```

### 1.2 Gap Mapping Prompt (EGI + DRCA)

```
ROLE: Expert in systematic literature reviews for software engineering + AI in project management.

CONTEXT: [Paste evidence table with 10–15 papers, their methods, metrics, and limitations]

OBJECTIVE: Map the specific research gap that PUMA fills. PUMA's three proposed gaps: (1) reproducibility — only 5/18 published LLM-SE papers are executable; (2) no systematic prompting strategy comparison for PM tasks; (3) no environmental sustainability measurement per PM task.

INSTRUCTIONS:
1. For each gap, identify: which papers address it partially / not at all
2. Confirm or challenge each gap claim with evidence from the table
3. Identify any gaps I have missed that the evidence table suggests
4. Use DRCA: deconstruct the "benchmark" concept → reconstruct what a rigorous PM benchmark requires

FORMAT: Gap matrix (Gap × Paper), narrative synthesis (200 words max), and 3 bullet challenges to my current framing.
```

---

## Agent 2: Product Manager Prompts

### 2.1 Sprint Planning (GTD + BMAD)

```
ROLE: Experienced Agile Product Manager familiar with academic research project constraints.

CONTEXT: PUMA Project. Current sprint: PEC2 (deadline 2026-04-08). Completed: PEC1 (Ch.1 + environment). Remaining objectives: OE3 (datasets), OE4 (triage module + Wilcoxon). Hardware: 16GB RAM laptop, Ollama, Python 3.11. Time available: 10 days, ~3h/day.

OBJECTIVE: Generate a realistic daily sprint plan for the 10 working days before PEC2 deadline.

INSTRUCTIONS:
1. Break OE3 and OE4 into atomic tasks (≤2h each)
2. Order by dependency (dataset → baseline → experiments → analysis → writing)
3. Flag tasks that are critical path items
4. Include one daily buffer task (low-priority) for overflow
5. Mark risks with ⚠️

FORMAT: Markdown table with Day | Task | Hours | Dependencies | Risk
```

### 2.2 Scope Validation

```
ROLE: Academic advisor reviewing PUMA Project scope.

CONTEXT: PUMA MVP = triage module (Stage 1) + estimation module (Stage 2). Constitution: reproducible, local-only, open-source, HITL, falsifiable.

OBJECTIVE: Assess if the following proposed addition is within PUMA Project scope: [describe feature]. 

INSTRUCTIONS:
1. Check against constitution articles 1–7
2. Estimate added time cost in days
3. Classify: IN-SCOPE MVP / IN-SCOPE OBJECTIVE / OUT-OF-SCOPE (document as future work)
4. If borderline, provide modified version that stays within scope

FORMAT: Decision + 3-sentence justification + alternative if rejected.
```

---

## Agent 3: Architect Prompts

### 3.1 Architecture Decision Review (SDD + OpenSpec)

```
ROLE: Senior software architect specialising in LLM systems and reproducible ML pipelines.

CONTEXT: PUMA system architecture: Ollama (inference) + Python 3.11 + pandas + scikit-learn + scipy + CodeCarbon. Four prompting strategies: zero-shot, few-shot-3, few-shot-6, chain-of-thought. Two models: Llama 3.2 8B, Mistral 7B. Dataset: 200 stratified Jira SR issues (seed=42).

OBJECTIVE: Review the following architecture decision and identify hidden risks: [describe decision].

INSTRUCTIONS:
1. Identify risks related to: reproducibility, latency, statistical validity, scope creep
2. Check compliance with PUMA Constitution (esp. Articles 1–5)
3. Propose alternative if risks are unacceptable
4. State what would need to change in SP-Architecture-v1

FORMAT: Risk table (Risk | Severity | Mitigation) + recommendation (APPROVE / MODIFY / REJECT).
```

### 3.2 Spec Validation (Spec Kit)

```
ROLE: Technical reviewer using Spec Kit methodology.

CONTEXT: [Paste spec file content]

OBJECTIVE: Validate this spec against PUMA's constitution.md principles and SDD best practices.

INSTRUCTIONS:
1. Check: Does it define WHAT not HOW? 
2. Check: Are acceptance criteria measurable and falsifiable?
3. Check: Does it conflict with any constitution article?
4. Identify: missing edge cases, undefined behaviours, ambiguous terms
5. Rate completeness 1–5

FORMAT: Line-by-line annotations + overall score + list of required changes before implementation.
```

---

## Agent 4: Developer Prompts

### 4.1 Triage Agent Implementation (CDD + Zero-Shot CoT)

```
ROLE: Senior Python developer with expertise in LLM integration and reproducible ML pipelines.

CONTEXT: PUMA triage module. Stack: Ollama REST API, Python 3.11, pandas, scikit-learn. Dataset: Jira SR (200 issues, 4 priority classes: Blocker/Critical/Major/Minor). Reproducibility: seed=42, temperature=0. CodeCarbon must wrap every inference call.

OBJECTIVE: Implement the zero-shot prompting strategy for issue triage classification.

INSTRUCTIONS:
1. Create function `triage_zero_shot(issue_text: str, model: str) -> str`
2. Use Ollama REST API (http://localhost:11434/api/generate)
3. Prompt: classify priority as one of [Blocker, Critical, Major, Minor]. Return only the label.
4. Wrap with CodeCarbon tracker
5. Log: model, strategy, latency_ms, input_tokens (estimated), output_label
6. Handle errors gracefully (timeout → log and skip)
7. Write docstring with example usage

FORMAT: Production-quality Python with type hints, docstrings, and error handling. No Jupyter cells — module-level functions only.
```

### 4.2 Wilcoxon Test Implementation

```
ROLE: Statistician + Python developer familiar with non-parametric tests for SE research.

CONTEXT: PUMA Stage 1 results. I have F1-macro scores per condition (model × strategy) across 200 issues. I need to test H1: "at least one configuration achieves F1-macro statistically superior to the heuristic baseline" (Wilcoxon signed-rank, α=0.05, two-sided, effect size r = Z/√N).

OBJECTIVE: Write a Python function performing the complete Wilcoxon analysis.

INSTRUCTIONS:
1. Function signature: `wilcoxon_analysis(baseline_scores: list[float], model_scores: list[float], condition_name: str) -> dict`
2. Use scipy.stats.wilcoxon (two-sided)
3. Return: statistic, p_value, effect_size_r, reject_h0 (bool), interpretation (string)
4. Print formatted result matching APA 7 reporting style: W(N) = X, p = Y, r = Z
5. Include Bonferroni correction if multiple conditions tested

FORMAT: Clean Python function with docstring + example call + formatted output string.
```

---

## Agent 5: QA / Red Teamer Prompts

### 5.1 Statistical Red-Teaming

```
ROLE: Statistical critic reviewing empirical claims for a peer-reviewed SE paper.

CONTEXT: PUMA claims: "Configuration X (Llama 3.2 8B + CoT) achieves F1-macro = 0.68, significantly outperforming heuristic baseline (0.41), W = 847, p = 0.003, r = 0.19 (small effect)."

OBJECTIVE: Identify all statistical weaknesses in this claim.

INSTRUCTIONS:
1. Check: Is the sample size (200) sufficient for Wilcoxon with these effect sizes?
2. Check: Is F1-macro appropriate for class imbalance in Jira SR?
3. Check: Is the comparison (against heuristic) the right baseline?
4. Check: Does the small effect size (r=0.19) undermine practical significance?
5. Propose 2 additional analyses that would strengthen or weaken the claim
6. Write the "threats to validity" paragraph for this result

FORMAT: Numbered critique list + threats-to-validity paragraph (150 words max).
```

### 5.2 Reproducibility Verification Checklist

```
ROLE: Reproducibility auditor for computational research.

CONTEXT: PUMA repository structure: [describe].

OBJECTIVE: Generate a reproducibility verification script and checklist.

INSTRUCTIONS:
1. List all steps a new researcher must follow to reproduce results from scratch
2. Identify: what must be pinned (model versions, Python versions, dataset checksums)
3. Generate a `verify_reproduction.sh` script that: downloads datasets, installs dependencies, runs a single condition, compares output to stored expected results (within tolerance)
4. Flag any non-reproducible elements (random elements not seeded, external API calls)

FORMAT: Checklist in Markdown + bash script + list of known reproducibility risks.
```

---

## Agent 6: Sustainability Prompts

### 6.1 Carbon Report Generation

```
ROLE: Environmental impact analyst specialising in ML carbon accounting (Strubell methodology).

CONTEXT: PUMA experiments. CodeCarbon output: [paste JSON]. Conditions: 2 models × 4 strategies × 200 issues = 1,600 inference calls.

OBJECTIVE: Generate the sustainability section for the PUMA Project.

INSTRUCTIONS:
1. Calculate: total gCO₂eq, gCO₂eq per condition, gCO₂eq per classified issue
2. Compare to: equivalent cloud inference (estimate using PUE factors from Strubell 2019)
3. Write the sustainability subsection (150 words) following academic style
4. Suggest: which configuration minimises carbon per unit quality (F1/gCO₂eq ratio)

FORMAT: Summary table (condition × gCO₂eq × F1-macro × efficiency) + narrative paragraph.
```

---

*Prompt library v1.0 · April 2026 · All prompts follow RCOIF + CDD + PUMA context*
