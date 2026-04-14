---
name: puma-iterative-refinement
description: Iterative Refinement Loop methodology for PUMA — systematic improvement cycles for prompts, research outputs, specs, and experimental designs. Integrates AMI (Autodiagnóstico y Mejora Iterativa), DRCA, and self-consistency approaches into a unified refinement protocol. Use when improving prompt quality, revising academic writing, optimizing experimental configs, or applying quality gates to any PUMA artifact before marking it as done or locked.
---

# PUMA Iterative Refinement Loop

## What is the Iterative Refinement Loop?

A structured improvement cycle that takes any draft artifact and systematically improves it through self-critique and revision until a quality threshold is met.

```
Draft → Evaluate → Critique → Revise → Evaluate → ... → Accept
```

This is the core mechanism behind AMI, DRCA, and self-consistency in PUMA. It prevents the "first draft is final" anti-pattern that degrades research quality.

## Universal Refinement Protocol

```python
def iterative_refinement(artifact, criteria, max_rounds=3, threshold=0.8):
    """
    Generic iterative refinement loop.
    
    artifact: any text artifact (prompt, section, spec, note)
    criteria: list of quality criteria with weights
    threshold: minimum score to accept (0.0–1.0)
    """
    round_n = 0
    
    while round_n < max_rounds:
        # Step 1: Evaluate current state
        scores = evaluate(artifact, criteria)
        overall = weighted_average(scores, criteria)
        
        if overall >= threshold:
            print(f"✅ Accepted at round {round_n}: score={overall:.2f}")
            return artifact
        
        # Step 2: Generate critique
        critique = identify_weaknesses(artifact, scores)
        
        # Step 3: Revise
        artifact = revise(artifact, critique)
        round_n += 1
    
    print(f"⚠️ Max rounds reached. Best score: {overall:.2f}")
    return artifact
```

## Domain-Specific Refinement Protocols

### Protocol 1: Prompt Refinement (AMI)

**Criteria** (1–5 scale):
1. ROLE clarity: Is the role specific and domain-grounded?
2. CONTEXT completeness: Does context include all needed background?
3. OBJECTIVE precision: Is the objective single, measurable, unambiguous?
4. INSTRUCTIONS atomicity: Is each step atomic and unambiguous?
5. FORMAT explicitness: Is the output schema fully specified?
6. Anchor presence: Are valid output values explicitly listed?
7. Token efficiency: Is the prompt within CDD budget?

**AMI Loop Prompt**:
```
Round N critique:
ROLE: Expert prompt engineer for local LLMs
OBJECTIVE: Critique this prompt and identify its 2 most critical weaknesses
INSTRUCTIONS:
1. Evaluate each RCOIF component (1–5)
2. Identify the 2 lowest-scoring components
3. For each: explain why it's weak and provide a specific fix
FORMAT:
Weakest component 1: [name] | Score: N/5 | Weakness: [...] | Fix: [...]
Weakest component 2: [name] | Score: N/5 | Weakness: [...] | Fix: [...]
Revised prompt: [full revised version incorporating fixes]
```

**Acceptance threshold**: All components ≥ 4/5. Validation: passes puma-rcoif checklist.

### Protocol 2: Academic Writing Refinement

**Criteria**:
1. Clarity: Is each sentence unambiguous?
2. Coherence: Does the section flow logically?
3. Evidence: Is every claim supported by a citation?
4. Spanish quality: Is the register academic and inclusive?
5. UOC compliance: Follows template structure?

**Writing Refinement Prompt**:
```
ROLE: Academic writing reviewer for Spanish-language ICT research theses
CONTEXT: PUMA TFG at UOC — issue triage and effort estimation with LLM agents
OBJECTIVE: Critique this section and identify 3 improvements
INSTRUCTIONS:
1. Check each criterion (clarity, coherence, evidence, Spanish, UOC template)
2. List 3 specific improvements with text replacements
3. Apply improvements in the revised version
FORMAT:
Issue 1: [paragraph reference] | Problem: [...] | Fix: [replacement text]
Issue 2: [...]
Issue 3: [...]
Revised section: [full revised text]
```

**Acceptance threshold**: 3 independent reviewers (Claude sessions) find ≤1 issue each.

### Protocol 3: Spec Refinement

**Criteria**:
1. Completeness: All sections present?
2. Unambiguity: No "TBD" or vague language?
3. Measurability: Success criteria are measurable?
4. Reproducibility: Config fully specified?
5. Constitution compliance: Aligned with SP-PUMA-Constitution?

**Spec Review Prompt**:
```
ROLE: Senior software engineer and research methodology expert
CONTEXT: PUMA project — empirical LLM benchmark for ICT project management
OBJECTIVE: Review this spec and identify gaps before locking
INSTRUCTIONS:
1. Check all 5 criteria
2. List any "TBD", vague terms, or missing fields
3. Identify any conflict with SP-PUMA-Constitution principles
4. Rate overall readiness: Not Ready | Almost Ready | Ready to Lock
FORMAT:
Missing/vague: [list]
Constitution conflicts: [list or "none"]
Readiness: [Not Ready | Almost Ready | Ready to Lock]
Reason: [explanation]
```

### Protocol 4: Permanent Note Refinement

**Criteria**:
1. Atomicity: Single idea only?
2. Declarative title: Title states a claim?
3. Evidence: Linked to ≥1 source?
4. Connections: Linked to ≥2 related notes?
5. PUMA relevance: Connection to H₁/H₂ stated?

**Note Review Prompt**:
```
ROLE: Zettelkasten expert and research knowledge manager
OBJECTIVE: Review this permanent note for quality
INSTRUCTIONS:
1. Check each criterion
2. List what's missing
3. Suggest 2 related notes to link
4. Suggest improved title if not declarative
FORMAT:
Atomicity: [Pass/Fail] | Issues: [...]
Title: [Declarative?] | Suggestion: [better title if needed]
Missing links: [suggest 2 PN- or LN- to link]
PUMA relevance: [Present/Missing] | Suggestion: [how to add]
```

## Quality Gates

### Gate 1: Prompt → Validated
Passes when:
- All RCOIF components score ≥ 4/5 in AMI evaluation
- Red-team check: 0 label hallucinations in 10 adversarial inputs
- Format compliance: 100% in 20 test inputs
- Token budget: Within CDD limits

### Gate 2: Validated → Locked
Passes when:
- 3 independent Claude sessions give prompt identical output (temp=0.0)
- Human review confirms lock readiness
- Prompt saved as PT-name-vN.md with status: locked

### Gate 3: Experiment → Completed
Passes when:
- 3 independent execution cycles: 100% match
- Statistical test computed and documented
- Carbon emissions logged
- Results committed to git

### Gate 4: Writing → Submitted
Passes when:
- Section complete per TFG chapter structure
- All citations in APA 7th
- Inclusive Spanish language verified
- Peer review: 0 critical issues found

## DRCA Integration

For complex refinement problems, apply DRCA before the loop:

```
STEP 1 — DECONSTRUCT the artifact into atomic parts
STEP 2 — REASON about each part independently
STEP 3 — CRITIQUE each part's contribution and failure modes
STEP 4 — RECONSTRUCT into improved whole
THEN → run iterative refinement loop on the reconstructed version
```

## Refinement Log

Track refinement history in the artifact's frontmatter:

```yaml
refinement_history:
  - round: 1
    date: YYYY-MM-DD
    critique: "OBJECTIVE was ambiguous, FORMAT missing labels"
    score_before: 3.2
    score_after: 4.1
  - round: 2
    date: YYYY-MM-DD
    critique: "Context too long, exceeded token budget"
    score_before: 4.1
    score_after: 4.7
  - round: 3
    date: YYYY-MM-DD
    critique: "Minor: add stratification note to examples"
    score_before: 4.7
    score_after: 4.9
final_status: "validated"
```
