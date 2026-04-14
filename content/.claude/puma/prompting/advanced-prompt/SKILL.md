---
name: puma-advanced-prompt
description: Advanced prompting techniques for PUMA — self-consistency, multi-turn conversation design, red-teaming prompts, structured output enforcement, agent system prompt engineering, and prompt robustness testing. Use when standard prompting fails, when designing multi-step agent interactions, when red-teaming experimental prompts for failure modes, or when implementing agent orchestration prompts. Complements puma-prompting and puma-rcoif.
---

# PUMA Advanced Prompt Engineering

## Self-Consistency Prompting

Run N independent reasoning chains → aggregate via majority vote or median.

**When**: Classification or estimation where single-path reasoning is unreliable.
**Trade-off**: N× API calls, requires temp > 0 (breaks reproducibility at temp=0.0).
**PUMA usage**: Exploratory analysis only. NOT for reproducibility-critical experiments.

```python
def self_consistent_prediction(prompt_template, issue, n=5, temperature=0.3):
    predictions = []
    for i in range(n):
        response = ollama.generate(
            model=MODEL,
            prompt=prompt_template.format(**issue),
            options={"temperature": temperature, "seed": SEED + i}
        )
        predictions.append(parse_output(response["response"]))
    return majority_vote(predictions)
```

## Multi-Turn Agent Conversation Design

For BMAD-style multi-agent sessions, design conversation state explicitly.

### Turn Design Principles
1. **State compression**: Summarize previous context at turn boundary (<200 tokens)
2. **Role persistence**: Re-declare agent role at each major task boundary
3. **Goal anchoring**: Re-state the task objective every 3–5 turns
4. **Output validation**: Check each turn's output before proceeding

### Multi-Turn Template

```python
messages = [
    {"role": "system", "content": RCOIF_SYSTEM_PROMPT},
    {"role": "user", "content": f"Task: {task_description}"},
    # Turn 1: Agent produces plan
    {"role": "assistant", "content": "{plan}"},
    # Turn 2: Refine plan
    {"role": "user", "content": "Review your plan. Identify one weakness and fix it."},
    # Turn 3: Execute
    {"role": "assistant", "content": "{revised_plan}"},
    {"role": "user", "content": "Execute step 1 of the plan."},
]
```

**Context management**: Total conversation history must fit within model context window. Trim oldest turns when approaching limit.

## Red-Teaming Experimental Prompts

Before locking a prompt (status: approved → locked), run red-team checks:

### Red-Team Checklist

**Adversarial inputs**:
- [ ] Empty issue description → does model output a valid default?
- [ ] Single-word input ("Bug") → model handles gracefully?
- [ ] Very long input (500+ words) → context overflow risk?
- [ ] Input in language other than English → model stays on-task?
- [ ] Input with misleading signals ("This is NOT a bug") → model not tricked?

**Label hallucination**:
- [ ] Does model EVER output a label not in the valid set?
- [ ] Does model output partial JSON / incomplete format?
- [ ] Does model add unsolicited explanation in FORMAT section?

**Boundary cases for estimation**:
- [ ] Trivial task → does model output 1 (not 0 or negative)?
- [ ] Massive task → does model output 21 (not 100 or more)?
- [ ] Ambiguous scope → does model express uncertainty appropriately?

### Red-Team Prompt

```
ROLE: Adversarial tester for LLM prompts
CONTEXT: This prompt is used in a PUMA experiment [paste prompt]
OBJECTIVE: Find 3 edge cases where this prompt would likely fail
INSTRUCTIONS:
1. Identify input types that could cause incorrect or malformed output
2. For each failure case: describe input, predicted failure mode, severity
3. Suggest a fix for the most critical failure
FORMAT: Numbered list with [Input | Failure Mode | Severity (High/Med/Low) | Fix]
```

## Structured Output Enforcement

For classification tasks, enforce output format strictly:

### Method 1: Anchor + Constraint
```
Valid types: Bug | Feature | Task | Improvement | Sub-task
Valid priorities: Blocker | Critical | Major | Minor | Trivial

Output EXACTLY in this format (nothing else):
type: [type]
priority: [priority]
```

### Method 2: JSON Mode (if supported)
```python
response = ollama.generate(
    model=MODEL,
    prompt=prompt,
    format="json",  # Ollama JSON mode
    options={"temperature": 0.0, "seed": 42}
)
result = json.loads(response["response"])
```

### Method 3: Post-processing fuzzy matching
```python
from difflib import get_close_matches

VALID_TYPES = ["Bug", "Feature", "Task", "Improvement", "Sub-task"]

def normalize_label(raw_output: str, valid_labels: list) -> str:
    """Snap model output to nearest valid label."""
    raw = raw_output.strip()
    if raw in valid_labels:
        return raw
    matches = get_close_matches(raw, valid_labels, n=1, cutoff=0.6)
    return matches[0] if matches else "Unknown"
```

## Agent Prompt Engineering

For BMAD agent roles, system prompts need special structure:

### Agent System Prompt Template

```
You are [Agent Name], the [Role] agent in the PUMA research team.

## Your Role
[One paragraph describing your specific expertise and responsibility]

## Your Tools
You have access to:
- [Tool 1]: [what it does]
- [Tool 2]: [what it does]

## Your Working Memory
Current sprint: [Sprint-NN]
Current task: [TASK-NNN]
Your deliverable: [specific output]

## Constraints
- You ONLY perform tasks within your role definition
- You ALWAYS log your actions in AI-Use-Log.md
- You ALWAYS reference the relevant spec (SP-) before acting
- You NEVER modify files outside your scope

## Handoff Protocol
When your task is complete:
1. State: "Task TASK-NNN complete. Output: [file/result]"
2. Update sprint board
3. Specify: "Next agent: [Role] for task TASK-NNN+1"
```

## Prompt Robustness Testing

Before finalizing a prompt, test with N varied inputs:

```python
def test_prompt_robustness(prompt_template, test_cases, n_runs=3):
    """Test prompt consistency across varied inputs and multiple runs."""
    results = {}
    for case in test_cases:
        predictions = []
        for _ in range(n_runs):
            response = ollama.generate(
                model=MODEL,
                prompt=prompt_template.format(**case),
                options={"temperature": 0.0, "seed": 42}
            )
            predictions.append(parse_output(response["response"]))
        
        # Check consistency (all same at temp=0.0)
        consistent = len(set(str(p) for p in predictions)) == 1
        results[case["id"]] = {
            "predictions": predictions,
            "consistent": consistent,
            "valid_format": all(is_valid(p) for p in predictions)
        }
    
    consistency_rate = sum(1 for r in results.values() if r["consistent"]) / len(results)
    format_compliance = sum(1 for r in results.values() if r["valid_format"]) / len(results)
    return results, consistency_rate, format_compliance
```

**Acceptance thresholds**:
- Consistency rate: 100% (at temp=0.0, seed=42)
- Format compliance: ≥98%
- If below threshold → revise prompt → re-test

## IIPR: Prompt Debugging Workflow

When a prompt produces bad outputs:

1. **Identify**: What exact output was produced? What was expected?
2. **Isolate**: Which RCOIF component caused the failure?
   - Test with minimal prompt (role only) → add components one by one
3. **Hypothesize**: What does the failure reveal about model behavior?
4. **Fix**: Targeted change to the failing component
5. **Verify**: Re-test original failure case + regression test suite
6. **Document**: Record failure mode + fix in PT- file notes

## Cognitive Offloading Pattern

For complex multi-step tasks, decompose into agent-sized subtasks:

```
Complex task: "Analyze TAWOS dataset and design optimal triage prompt"

Decomposed:
  Task A (Analyst agent): Analyze dataset statistics → output: dataset profile
  Task B (Architect agent): Design prompt based on profile → output: PT- draft  
  Task C (QA agent): Red-team the prompt → output: failure modes + fixes
  Task D (Developer agent): Implement and test → output: validated PT- locked
```

Each subtask fits in one agent's context window. No task requires cross-agent memory.
