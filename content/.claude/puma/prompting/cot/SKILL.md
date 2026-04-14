---
name: puma-cot
description: Chain-of-Thought (CoT) prompting guidelines for PUMA — standard CoT, Zero-Shot CoT, Few-Shot CoT, and Self-Consistency CoT. Essential for H₂ (story point estimation) where stepwise reasoning improves accuracy. Use when designing or optimizing estimation prompts, when debugging classification errors that benefit from reasoning traces, or when implementing self-consistency across multiple reasoning paths. Includes PUMA-specific CoT templates and token-budget-aware implementations.
---

# PUMA CoT — Chain-of-Thought Prompting

## What is Chain-of-Thought?

Chain-of-Thought (CoT) prompting elicits intermediate reasoning steps from the model before producing a final answer. Instead of mapping input → output directly, the model produces input → reasoning → output.

**Why CoT matters for PUMA**:
- Story point estimation benefits from explicit complexity factor analysis
- CoT traces are auditable — they explain WHY a prediction was made
- CoT reduces estimation errors by preventing shortcut heuristics
- PUMA results: few-shot-3-CoT achieves MAE=1.89 SP (best strategy)

## CoT Variants

### 1. Standard CoT (Few-Shot)

Provide examples that include intermediate reasoning steps.

```
[Issue title + description]
Reasoning:
- Complexity: This issue requires [X] because [Y]
- Uncertainty: [High/Medium/Low] because [Z]  
- Scope: Affects [N] components
- Dependencies: Requires [A] to be done first
Story Points: [SP value]

---
[New issue to estimate]
Reasoning:
```

**PUMA config**: k=3 examples with reasoning. Each example ~200–300 tokens.

### 2. Zero-Shot CoT

Add "Let's think step by step" trigger. No examples needed.

```python
prompt = f"""{rcoif_preamble}

Issue:
Title: {issue_title}
Description: {issue_description}

Let's think step by step:"""
```

**When to use**: Token budget too small for few-shot, or when no representative examples available.

**PUMA baseline**: Used for H₂ zero-shot condition.

### 3. Few-Shot CoT (PUMA Optimal)

```python
ESTIMATION_PROMPT = """
ROLE: Experienced Agile team member with expertise in story point estimation.

CONTEXT:
Scale: Fibonacci [1, 2, 3, 5, 8, 13, 21]
1 SP = trivial change (<1 hour). 21 SP = major feature (1+ weeks, high uncertainty).

INSTRUCTIONS:
Analyze the issue and estimate story points step by step.

EXAMPLES:

Issue: "Fix null pointer exception in UserService.login()"
Reasoning:
- Complexity: Low — single method fix, well-understood pattern
- Uncertainty: Low — error message clearly points to cause
- Scope: 1 file, 1 method
- Dependencies: None
Story Points: 1

Issue: "Add OAuth2 authentication with Google and GitHub providers"
Reasoning:
- Complexity: High — requires new auth flow, token management, callback handling
- Uncertainty: Medium — OAuth2 well-documented but integration details unknown
- Scope: Auth module, user model, frontend login pages (3+ files)
- Dependencies: Backend auth service must be refactored first
Story Points: 13

Issue: "Update deprecated logging library to v2"
Reasoning:
- Complexity: Medium — API changes require updating call sites across codebase
- Uncertainty: Medium — need to audit all logging calls first
- Scope: Multiple files, unknown count until audit
- Dependencies: None blocking, but needs test coverage after
Story Points: 5

Now estimate:
Issue: "{issue_title}"
Description: "{issue_description}"
Reasoning:
"""
```

### 4. Self-Consistency CoT

Generate N independent reasoning chains, take majority vote.

```python
def estimate_with_self_consistency(issue, n_samples=5):
    predictions = []
    for i in range(n_samples):
        # Each call with different random seed (temperature must be > 0)
        response = ollama.generate(
            model=MODEL,
            prompt=COT_PROMPT.format(**issue),
            options={"temperature": 0.3, "seed": SEED + i}
        )
        sp = extract_story_points(response["response"])
        predictions.append(sp)
    
    # Majority vote (median for continuous, mode for discrete)
    from statistics import median
    return round(median(predictions))
```

**Note**: Self-consistency requires temperature > 0. Only use for exploratory analysis, not reproducibility-critical experiments (which require temp=0.0).

## CoT for Issue Triage (H₁)

CoT also helps classification when decision rationale is needed:

```
Issue: "Application crashes when uploading files larger than 100MB"
Reasoning:
- "crashes" → Bug indicator
- "100MB" threshold → boundary condition → likely memory/buffer issue
- No new feature requested, no improvement suggested
- Severity: application crash → critical user impact
Type: Bug
Priority: Critical
```

## CoT Quality Indicators

Good CoT reasoning includes:
- ✅ Explicit factor identification (complexity, uncertainty, scope, dependencies)
- ✅ Quantitative anchoring ("1 file", "3 components", "> 1 week")
- ✅ Uncertainty acknowledgment ("unknown count until audit")
- ✅ Connection between reasoning and final answer

Bad CoT reasoning:
- ❌ Circular ("This is complex because it's complex")
- ❌ No connection to final answer
- ❌ Overconfident without evidence
- ❌ Missing key factors

## Token Budget for CoT

CoT increases token usage. Budget carefully for qwen2.5:3b:

| Strategy | Approx. Input Tokens | Notes |
|----------|---------------------|-------|
| Zero-Shot | ~300–500 | Minimal |
| Zero-Shot CoT | ~350–550 | +trigger phrase |
| Few-Shot (k=3, no CoT) | ~900–1200 | Examples without reasoning |
| Few-Shot CoT (k=3) | ~1400–1800 | Examples WITH reasoning ← PUMA optimal |
| Self-Consistency (k=5) | ~1400–1800 per call | ×5 total API calls |

## CoT Output Parsing

Robust extraction from CoT output:

```python
import re

def extract_story_points(cot_output: str) -> int:
    """Extract SP value from CoT reasoning output."""
    fibonacci = [1, 2, 3, 5, 8, 13, 21]
    
    # Try: "Story Points: N" pattern
    match = re.search(r"Story Points?:\s*(\d+)", cot_output, re.IGNORECASE)
    if match:
        value = int(match.group(1))
        # Snap to nearest Fibonacci
        return min(fibonacci, key=lambda x: abs(x - value))
    
    # Fallback: last number in output
    numbers = re.findall(r'\b(\d+)\b', cot_output)
    if numbers:
        value = int(numbers[-1])
        return min(fibonacci, key=lambda x: abs(x - value))
    
    return 3  # default median estimate
```

## CoT in Spec Files

When locking a CoT prompt in SP- or PT- file:

```yaml
strategy: "few-shot-cot"
k_shot: 3
cot_trigger: "explicit"  # or "zero-shot-trigger"
reasoning_format: "factor-by-factor"  # or "narrative" or "structured"
output_format: "Story Points: [integer]"
snap_to_fibonacci: true
```
