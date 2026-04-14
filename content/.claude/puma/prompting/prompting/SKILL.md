---
name: puma-prompting
description: Master prompting skill for PUMA Vault — consolidates all prompting frameworks used in the project: RCOIF, CoT, Zero-Shot CoT, Few-Shot, One-Shot, Chain-of-Thought, Contextual Anchoring, EGI (Exploración Guiada Interactiva), AMI (Autodiagnóstico y Mejora Iterativa), DRCA (Deconstrucción y Reconstrucción Conceptual Avanzada), IIPR (Ingeniería Inversa de Prompts), GSD, CDD. Use this skill when designing prompts for PUMA experiments, creating prompt templates (PT-), or selecting the right prompting strategy for a research task. Essential for experiment reproducibility.
---

# PUMA Prompting — Master Framework Reference

## Framework Selection Matrix

| Task | Recommended Framework | Rationale |
|------|-----------------------|-----------|
| Issue triage (classification) | Few-Shot + RCOIF | Label examples anchor classification |
| Story point estimation | Few-Shot CoT | Stepwise reasoning improves calibration |
| Literature synthesis | Zero-Shot CoT + CDD | No label examples; context-window design |
| Agent system prompt | RCOIF + Agent PE | Role + context structure agents correctly |
| Research ideation | EGI + Contextual Anchoring | Guided exploration with grounding |
| Spec writing | SDD + RCOIF | Format-first, role-defined |
| Self-improvement | AMI + Iterative Refinement | Iterative quality loop |
| Prompt debugging | IIPR | Reverse-engineer from output |
| Complex reasoning | DRCA + CoT | Decompose → reason → reconstruct |

---

## 1. RCOIF Framework (Primary Default)

**Role · Context · Objective · Instructions · Format**

```
ROLE: You are [specific expert role relevant to task].

CONTEXT: [Background information the model needs. Domain context, constraints, 
prior knowledge relevant to this task. For PUMA: include dataset info, 
experimental config, research question.]

OBJECTIVE: [Precise, measurable goal. Single sentence. Use action verbs.]

INSTRUCTIONS:
1. [Step-by-step instructions in imperative voice]
2. [Each instruction is atomic and unambiguous]
3. [Include edge case handling]

FORMAT: [Output structure — JSON, markdown table, classification label, 
numeric value, etc. Be explicit about schema.]
```

**PUMA usage**: Default format for all experimental prompts. Store in `60-Resources/61-Prompts/`.

---

## 2. Chain-of-Thought (CoT)

**Core principle**: Ask model to reason step-by-step before answering.

```
Standard trigger: "Think through this step by step before giving your answer."
Zero-Shot CoT: "Let's think step by step."
Few-Shot CoT: Provide labelled examples that INCLUDE reasoning steps, not just answers.
```

**PUMA usage**: H₂ (story point estimation) uses few-shot CoT. Improves calibration on effort estimation tasks.

**Best practices**:
- For classification: include reasoning about features → label mapping
- For estimation: include reasoning about complexity factors → point mapping  
- CoT increases token usage; budget accordingly
- With local models (qwen2.5:3b), CoT helps more than with large models

---

## 3. Zero-Shot CoT

Appending "Let's think step by step" to any prompt activates implicit chain-of-thought.

```python
prompt = f"""{rcoif_framework_prompt}

Let's think step by step:"""
```

**PUMA usage**: Baseline comparison for H₁. When few examples not available.

---

## 4. Few-Shot Prompting

Provide `k` labelled examples before the query.

```
[RCOIF preamble]

Examples:
---
Input: {example_1_input}
Output: {example_1_label}
---
Input: {example_2_input}  
Output: {example_2_label}
---
Input: {example_3_input}
Output: {example_3_label}
---

Now classify:
Input: {query_input}
Output:
```

**PUMA config**: `few-shot-3` = 3 examples (best MAE=1.89 SP). Stratified sampling per label class.

**Selection criteria**: Examples should be representative, diverse, and structurally similar to query.

---

## 5. One-Shot Prompting

Single example. Use when few-shot degrades due to example bias or token budget constraints.

---

## 6. Contextual Anchoring

Embed domain-specific anchors that prevent reasoning drift.

```
[Context anchor block]
Dataset: TAWOS (The Agile Wisdom of the Open Source)
Domain: Software engineering issue tracking
Labels: {VALID_LABELS}
Constraint: Output must be exactly one of {VALID_LABELS}. No other values accepted.
```

**PUMA usage**: Critical for classification tasks — prevents hallucinated label values.

---

## 7. EGI — Exploración Guiada Interactiva (Interactive Guided Exploration)

**When**: Research ideation, literature gap analysis, hypothesis generation.

**Structure**:
1. Establish exploration territory (research domain + boundaries)
2. Generate candidate hypotheses / research directions
3. Probe each candidate with follow-up questions
4. Rank candidates by novelty + feasibility + PUMA alignment
5. Select 1–3 for deeper investigation

**Prompt pattern**:
```
ROLE: Senior researcher in [domain]
CONTEXT: [Current state of knowledge]
OBJECTIVE: Generate 5 novel research directions that [criteria]
INSTRUCTIONS: For each direction, provide: (1) hypothesis, (2) feasibility score 1-10, 
(3) novelty score 1-10, (4) required resources
FORMAT: Numbered list with structured sub-items
```

---

## 8. AMI — Autodiagnóstico y Mejora Iterativa (Self-Diagnosis and Iterative Improvement)

**When**: Improving prompts, specs, or research outputs through self-assessment.

**Loop**:
```
Round 1: Generate initial output
Round 2: "Critique the previous output. Identify 3 weaknesses."
Round 3: "Revise the output addressing the identified weaknesses."
Round 4: "Score the revised output on [criteria]. Justify the score."
Repeat until score ≥ threshold or N rounds.
```

**PUMA usage**: Refining experiment prompts before locking them in spec files.

---

## 9. DRCA — Deconstrucción y Reconstrucción Conceptual Avanzada

**When**: Complex concepts, multi-step reasoning, architectural decisions.

**4-step structure**:
1. **Deconstruct**: Break the problem into atomic sub-problems
2. **Reason**: Solve each sub-problem independently  
3. **Critique**: Identify assumptions and failure modes in each solution
4. **Reconstruct**: Synthesize solutions into coherent whole

**Prompt**:
```
STEP 1 — DECONSTRUCT: List the atomic sub-problems in: [problem]
STEP 2 — REASON: For each sub-problem, provide your best solution.
STEP 3 — CRITIQUE: For each solution, identify one key assumption and one failure mode.
STEP 4 — RECONSTRUCT: Synthesize the solutions into a coherent answer that addresses the failure modes.
```

---

## 10. IIPR — Ingeniería Inversa de Prompts y Respuestas (Prompt Reverse Engineering)

**When**: Debugging bad outputs, understanding why a prompt fails, improving existing prompts.

**Process**:
1. Start from the (bad) output
2. Identify which part of the prompt likely caused the failure
3. Formulate a hypothesis about the failure mechanism
4. Redesign the prompt to test the hypothesis
5. Compare outputs

**Diagnostic questions**:
- Did the model misunderstand the ROLE?
- Was the CONTEXT insufficient or misleading?
- Was the OBJECTIVE ambiguous?
- Were INSTRUCTIONS contradictory?
- Did the FORMAT constraint conflict with the task?

---

## 11. CDD — Context-Driven Development

See `puma-cdd` skill for full detail.

**Core principle**: Treat the context window as a primary design resource, not an afterthought.

```
Context budget allocation (qwen2.5:3b, 4096 tokens):
- System prompt (RCOIF): ~300–500 tokens
- Few-shot examples (3): ~400–600 tokens  
- Query input: ~100–300 tokens
- Reserved for output: ~500–1000 tokens
- Buffer: ~500 tokens
```

---

## 12. GSD — Get Shit Done

**When**: Execution phase. Stop theorizing, start implementing.

**Rules**:
- One task per session
- Define Done before starting
- Ship something runnable
- Document what you did in the log
- Defer perfection

**PUMA usage**: Sprint execution mode. Task is taken from Kanban → implemented → committed.

---

## 13. Iterative Refinement Loop

**General pattern for improving any output**:

```
draft = generate(prompt_v1)
for i in range(max_iterations):
    critique = evaluate(draft, criteria)
    if meets_threshold(critique):
        break
    draft = revise(draft, critique)
return draft
```

**PUMA usage**: Prompt refinement before locking in spec files. Also used for writing section drafts.

---

## Prompt Storage Convention

All prompt templates saved to `60 - Resources/61-Prompts/` with prefix `PT-`.

Naming: `PT-[Category]-[Framework]-[Task].md`

Example: `PT-PUMA-RCOIF-TriageAgent.md`

Required frontmatter:
```yaml
---
title: "PT - [Name]"
type: PT
framework: RCOIF | CoT | FewShot | EGI | AMI | DRCA | IIPR | CDD
task: triage | estimation | synthesis | ideation | review
model: qwen2.5:3b | claude-sonnet | general
status: draft | validated | locked
version: "1.0"
created: YYYY-MM-DD
---
```

## Experimental Prompt Locking Protocol

Before running an experiment:
1. Draft prompt using RCOIF template
2. Apply AMI loop (2–3 iterations minimum)
3. Validate against `SP-PUMA-Constitution.md`
4. Save as `PT-EX-[ExperimentID]-v[N].md` in `41.6-Specs/`
5. Mark status as `locked` — no changes after this point
6. Record prompt hash in experiment note `EX-` for reproducibility
