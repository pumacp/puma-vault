---
name: puma-cot
description: Apply Chain-of-Thought (CoT) prompting to break down complex reasoning tasks step by step before producing a final answer.
---

# CHAIN-OF-THOUGHT (CoT) PROMPTING

Chain-of-Thought prompting instructs the model to articulate its intermediate reasoning steps before reaching a conclusion. Use it when the problem requires multi-step logic, inference, or planning.

## WHEN TO USE

- Multi-step arithmetic or logical deduction
- Research synthesis requiring evidence evaluation
- Debugging where the fault chain must be traced
- Any task where a wrong first answer is hard to reverse

## BASIC PATTERN

```
Think step by step:
1. Identify what is known and what is unknown.
2. Reason through each sub-problem in order.
3. State the final conclusion only after the reasoning is complete.
```

## VARIANTS

- **Zero-Shot CoT**: Append "Let's think step by step." to any prompt — no examples needed.
- **Few-Shot CoT**: Provide 2–3 solved examples with visible reasoning before the actual question.
- **Self-Consistency CoT**: Generate multiple independent reasoning chains and take the majority answer.
- **CoT + AMI** (see `puma-advanced-prompt`): After a CoT answer, ask the model to critique and refine its own chain.

## USAGE IN PUMA

- Invoke when `puma-orchestrator` decomposes a task into sub-steps and a step requires deep inference.
- Document the reasoning chain in the relevant Zettelkasten note (`30 - Permanent/`) for traceability.
- Combine with RCOIF (`puma-rcoif`): embed the CoT instruction in the **Instructions** field.

## ANTI-PATTERNS

- Do NOT use CoT for simple factual look-ups — it adds overhead without benefit.
- Do NOT skip documenting the chain if the conclusion will feed a permanent note.
