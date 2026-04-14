---
name: puma-rcoif
description: RCOIF prompting framework for PUMA — Role, Context, Objective, Instructions, Format. The default prompt structure for all PUMA interactions with LLMs, both for experimental prompts and research assistance. Use whenever constructing a prompt for Claude, qwen2.5:3b, or any LLM used in PUMA research. Includes RCOIF templates, validation checklist, and integration with CDD context budgeting. Load when designing, reviewing, or debugging any prompt in the vault.
---

# PUMA RCOIF — Prompting Framework

## Framework Overview

**RCOIF** = Role · Context · Objective · Instructions · Format

RCOIF is the **default prompt structure** for all PUMA LLM interactions:
- Experimental prompts (stored as locked PT- files)
- Research assistance (Claude, ChatGPT, Gemini, Perplexity)
- Agent system prompts (BMAD agent roles)
- Literature review queries (NotebookLM, Consensus)

## Full RCOIF Template

```
ROLE: You are a [specific expert role]. You have expertise in [relevant domain].

CONTEXT:
[Background information the model needs to perform the task.
Include: domain context, dataset description, task constraints,
prior knowledge. For PUMA experiments: model config, dataset,
research question. Keep concise — every token counts.]

OBJECTIVE:
[Precise, single-sentence goal. Use action verbs.
State what success looks like. Be measurable.]

INSTRUCTIONS:
1. [Step 1 — atomic, imperative, unambiguous]
2. [Step 2 — ...]
3. [Include edge case handling explicitly]
4. [Include constraint: "If X, then Y. If not X, then Z."]

FORMAT:
[Exact output schema. One of:
- Classification label: exactly one of {LABEL_A | LABEL_B | LABEL_C}
- JSON: {"field": "type"}
- Markdown table with columns [A | B | C]
- Numeric value: integer between 1 and 13 (Fibonacci SP scale)
- Free text: maximum N words]
```

## PUMA-Specific RCOIF Templates

### Template A: Issue Triage (H₁)

```
ROLE: You are an expert software project manager with 10+ years experience 
triaging Jira issues in open-source projects.

CONTEXT:
Dataset: TAWOS (The Agile Wisdom of the Open Source)
Task: Classify a software issue into its correct type and priority.
Issue types: Bug | Feature | Task | Improvement | Sub-task
Priority levels: Blocker | Critical | Major | Minor | Trivial

OBJECTIVE:
Classify the following issue into (1) issue type and (2) priority.

INSTRUCTIONS:
1. Read the issue title and description carefully.
2. Identify keywords that signal issue type (e.g., "error", "crash" → Bug; 
   "add", "implement", "support" → Feature).
3. Assess urgency and impact to determine priority.
4. If information is insufficient for priority, default to Major.
5. Output ONLY the classification labels, nothing else.

FORMAT:
type: [Bug | Feature | Task | Improvement | Sub-task]
priority: [Blocker | Critical | Major | Minor | Trivial]
```

### Template B: Story Point Estimation (H₂, CoT)

```
ROLE: You are an experienced Agile team member with expertise in software 
effort estimation using story points.

CONTEXT:
Dataset: Jira Social Repository (JSR)
Scale: Fibonacci story points [1, 2, 3, 5, 8, 13, 21]
Reference: 1 SP = simple, well-understood task (< 1 hour).
           13 SP = large, complex feature (multiple days, high uncertainty).

OBJECTIVE:
Estimate the story points for the following issue using chain-of-thought reasoning.

INSTRUCTIONS:
1. Analyze the issue title and description.
2. Identify complexity factors: technical difficulty, uncertainty, scope, dependencies.
3. Think step by step about each factor.
4. Select the nearest Fibonacci value that matches the effort.
5. Output ONLY the numeric story point value.

FORMAT:
[Think step by step, then output a single integer: 1 | 2 | 3 | 5 | 8 | 13 | 21]
```

### Template C: Research Synthesis (Claude / NotebookLM)

```
ROLE: You are a senior researcher in software engineering and AI agents, 
specializing in LLM benchmarking and project management automation.

CONTEXT:
Project: PUMA — empirical benchmark of local LLM agents for ICT project management.
Research questions: 
  H₁: Can LLM agents achieve >75% F1-macro on TAWOS issue triage?
  H₂: Can LLM agents achieve MRE ≤35% on Jira SR story point estimation?
Academic context: TFG at UOC, DSR methodology, PRISMA SLR.

OBJECTIVE:
[Specific synthesis objective — fill in per task]

INSTRUCTIONS:
1. [Task-specific instructions]
2. Cite sources using [[wikilink]] format for vault notes or (Author, Year) for papers.
3. Flag contradictions between sources explicitly.
4. Identify research gaps relevant to PUMA.

FORMAT:
[Markdown with headers, bullet points for findings, [!note] callouts for gaps]
```

## RCOIF Validation Checklist

Before using any prompt in an experiment:

- [ ] **ROLE**: Specific enough? Expert framing established?
- [ ] **CONTEXT**: All necessary background included? No redundancy with Instructions?
- [ ] **OBJECTIVE**: Single sentence? Action verb? Measurable?
- [ ] **INSTRUCTIONS**: Each step atomic? No ambiguity? Edge cases handled?
- [ ] **FORMAT**: Output schema explicit? Labels listed if classification?
- [ ] **Token budget**: Total prompt within CDD budget for target model?
- [ ] **Contextual anchors**: Valid output labels listed explicitly?
- [ ] **Reproducibility**: Same prompt yields same output at temp=0.0, seed=42?

## Common RCOIF Failure Modes

| Failure | Symptom | Fix |
|---------|---------|-----|
| Vague ROLE | Model gives generic response | Specify domain + years of experience |
| Overloaded CONTEXT | Model ignores instructions | Cut context by 30%, move info to anchor |
| Ambiguous OBJECTIVE | Model solves wrong problem | Use "exactly one" / "only" / "must" |
| Conflicting INSTRUCTIONS | Inconsistent outputs | Number steps, add "If X, then Y" branches |
| Underspecified FORMAT | Output format varies | List all valid values explicitly |
| Missing anchor | Model hallucinate labels | Add: "Output MUST be one of {A\|B\|C}" |

## Integration with Other Frameworks

| Combination | When to Use |
|-------------|-------------|
| RCOIF + CoT | Estimation tasks; add "Think step by step:" before FORMAT |
| RCOIF + Few-Shot | Triage tasks; insert examples between INSTRUCTIONS and FORMAT |
| RCOIF + CDD | Always; validate token budget after composing RCOIF |
| RCOIF + AMI | Prompt refinement; run 2–3 self-critique cycles |
| RCOIF + DRCA | Complex reasoning; expand INSTRUCTIONS into 4-step DRCA |
| RCOIF + EGI | Research ideation; OBJECTIVE becomes exploration goal |

## Prompt Versioning

All experimental prompts are versioned and locked:
```
PT-[task]-[strategy]-v[N].md
Example: PT-Triage-FewShot3-v2.md

Status lifecycle: draft → validated → locked
Once locked: IMMUTABLE. Create v[N+1] for any change.
```
