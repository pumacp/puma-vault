---
name: puma-cdd
description: Context-Driven Development (CDD) for PUMA — treats the LLM context window as the primary design resource. Essential when designing prompts for qwen2.5:3b (4096-token limit), managing context budgets for experiments, or optimizing information density in agent prompts. Load whenever writing experimental prompts, designing agent system prompts, or debugging context-overflow issues with local models.
---

# PUMA CDD — Context-Driven Development

## Core Principle

**The context window is a finite, critical resource.** Every token counts. Context design is as important as model selection. In PUMA's local LLM environment (qwen2.5:3b, 4096-token limit), poor context management directly degrades task performance.

> "Context-Driven Development: treatments of context window as primary design space." — PUMA Vault

## Context Budget for qwen2.5:3b

Total: **4096 tokens** (hard limit at Ollama default)

```
Recommended allocation:
┌─────────────────────────────────────┐
│ System prompt (RCOIF header)        │ 300–500 tokens  (7–12%)
│ Task context / domain anchoring     │ 200–400 tokens  (5–10%)
│ Few-shot examples (k=3)             │ 400–800 tokens  (10–20%)
│ Query input (issue + metadata)      │ 100–300 tokens  (2–7%)
│ Output generation space             │ 500–1000 tokens (12–24%)
│ Safety buffer                       │ 300–500 tokens  (7–12%)
└─────────────────────────────────────┘
Target prompt length: ≤ 2000–2500 tokens
```

## Token Estimation

Quick estimates (English text):
- 1 token ≈ 4 characters ≈ 0.75 words
- 100 words ≈ 133 tokens
- Issue description (avg TAWOS): 50–150 tokens
- Few-shot example (issue + label): 80–150 tokens
- RCOIF header: 200–350 tokens

## Context Design Patterns

### Pattern 1: Minimal Context (Zero-Shot)
```
[RCOIF header: role + context + objective] ~300 tokens
[Contextual anchor: valid labels] ~50 tokens
[Query input] ~150 tokens
[Output format instruction] ~50 tokens
Total: ~550 tokens ← best for token budget, lowest accuracy
```

### Pattern 2: Few-Shot Standard (k=3)
```
[RCOIF header] ~350 tokens
[Contextual anchor] ~50 tokens
[Example 1: input + reasoning + label] ~200 tokens
[Example 2: input + reasoning + label] ~200 tokens
[Example 3: input + reasoning + label] ~200 tokens
[Query input] ~150 tokens
[Output instruction] ~50 tokens
Total: ~1200 tokens ← PUMA optimal for triage
```

### Pattern 3: Few-Shot CoT (k=3, for estimation)
```
[RCOIF header] ~350 tokens
[Domain anchors: story point scale] ~100 tokens
[Example 1: issue + CoT reasoning + SP] ~300 tokens
[Example 2: issue + CoT reasoning + SP] ~300 tokens
[Example 3: issue + CoT reasoning + SP] ~300 tokens
[Query input] ~200 tokens
[CoT trigger: "Think step by step:"] ~10 tokens
Total: ~1560 tokens ← PUMA optimal for estimation (MAE=1.89)
```

## Context Engineering Checklist

Before finalizing any experimental prompt:

- [ ] Token count estimated and within budget
- [ ] System prompt uses RCOIF format
- [ ] Contextual anchors included (valid output labels / value ranges)
- [ ] Few-shot examples are stratified (one per class if classification)
- [ ] No redundant information duplicated in system + user prompt
- [ ] Output format instruction is explicit and minimal
- [ ] No tokens wasted on verbose formatting instructions

## Context Compression Techniques

When prompt exceeds budget:

1. **Shorten system prompt**: Use compact RCOIF (role + objective in 2 lines)
2. **Reduce k-shot**: k=3 → k=2 → k=1 → zero-shot
3. **Truncate input**: Clip issue descriptions to first 200 characters
4. **Remove reasoning from examples**: Show input→label only (no CoT steps)
5. **Remove field metadata**: Use issue text only, skip reporter/assignee
6. **Use abbreviations in anchors**: `Bug|Feature|Task` not full descriptions

## Context Injection Order

Context is processed sequentially by qwen2.5:3b. Order matters:

```
1. Role declaration (sets task frame)
2. Domain anchors (constrains output space)
3. Few-shot examples (provide task grounding)
4. Query input (the actual task)
5. Output trigger (initiates generation)
```

Never put examples before role — the model needs role context first.

## Debugging Context Issues

Signs of context overflow / poor context design:

| Symptom | Likely Cause | Fix |
|---------|--------------|-----|
| Output cuts off mid-sentence | Output budget too small | Increase output allocation |
| Model ignores label constraints | Anchor placed after examples | Move anchors before examples |
| Model uses wrong output format | Format instruction too late | Add format at start of system prompt |
| Inconsistent results across runs | Temperature > 0 | Set temperature=0.0, seed=42 |
| Model hallucinates new labels | No anchor block | Add explicit label constraint |
| Degraded accuracy with k>3 | Context overflow | Reduce k or shorten examples |

## LLM Wiki + CDD Integration

The LLM Wiki (Karpathy) pattern is CDD-compatible:
- Wiki pages serve as **pre-compiled context** rather than raw source retrieval
- Instead of loading 10 raw papers → load 2 relevant permanent notes (PN-)
- MOC pages provide navigational context without content overhead
- Result: richer context quality with same token budget

## Spec Integration

Every experimental prompt spec (SP-EX-) must declare:

```yaml
context_budget:
  total_limit: 4096
  system_prompt: 350
  examples: 600
  query: 200
  output: 800
  buffer: 400
  target_total: 1550
```
