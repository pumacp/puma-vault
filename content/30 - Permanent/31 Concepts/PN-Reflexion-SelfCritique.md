---
type: permanent
title: "Reflexion — Verbal Self-Reflection for Agent Self-Improvement"
topic: agent-architectures
tags: [permanent, reflexion, self-reflection, agent, llm, verbal-reinforcement, self-critique, episodic-memory, actor-evaluator, puma-core, research, agents, architecture, benchmark, coding, issue-triage, effort-estimation, iterative-improvement]
created: 2026-04-13
updated: 2026-04-13
aliases: ["Reflexion Pattern", "Verbal Reinforcement", "Self-Reflection Loop"]
---

# PN: Reflexion — Verbal Self-Reflection for Agent Self-Improvement

> [!abstract] Core Idea
> Reflexion (Shinn et al., NeurIPS 2023) is a framework for LLM agent self-improvement using **verbal reinforcement** — instead of updating model weights, the agent stores textual self-critique in an episodic memory buffer and conditions future attempts on that critique. This is a lightweight alternative to RL fine-tuning.

---

## The Core Loop

```
Task input → Actor (generates action) →
  Environment (executes, returns feedback) →
    Evaluator (scores outcome: success/failure/partial) →
      Self-Reflector (generates verbal critique of failure) →
        Episodic Memory (stores critique as text) →
          Actor (next attempt, conditioned on memory + critique)
```

The key insight: **language is a sufficient medium for reinforcement signals**. The actor does not need gradient updates — it needs a well-articulated explanation of what went wrong.

---

## Why Verbal Reinforcement Works

1. **LLMs are trained on self-correction data**: Code review, essay revision, debugging discussions — all present in pretraining corpus
2. **Natural language is expressive**: A verbal critique like "You assigned priority HIGH but ignored the `critical` keyword in the description" is more informative than a scalar reward signal of -1
3. **No gradient computation**: Verbal reinforcement is inference-only; any frozen LLM can be the actor
4. **Composable with any task**: The evaluator just needs a correctness signal (test pass/fail, F1 score, human judgment)

---

## Architecture Components

### Actor

- Generates the action/answer at each attempt
- Prompt: task context + episodic memory (prior critique) + current attempt number
- Any instruction-tuned LLM; best results with GPT-4 / Claude / DeepSeek-R1 (strong at self-correction)

### Evaluator

- Determines whether the attempt succeeded
- Can be: unit test runner, F1 comparison, rule-based checker, another LLM judge
- Returns: binary (pass/fail) or scalar (partial credit)

### Self-Reflector

- Given: task, action taken, feedback from evaluator
- Generates: verbal critique explaining the failure and suggesting next-attempt strategy
- Often the same LLM as the Actor (self-reflection prompt)

### Episodic Memory

- List of prior critiques, prepended to next attempt's prompt
- Finite window: typically last 3–5 reflections to avoid context overflow
- Persistent across attempts within a task episode; cleared between tasks

---

## Empirical Results (Shinn et al., 2023)

| Benchmark | Zero-Shot GPT-4 | Reflexion (GPT-4) | Improvement |
|-----------|-----------------|-------------------|-------------|
| HumanEval (Python pass@1) | 80.1% | **91.0%** | +10.9pp |
| AlfWorld (task completion) | 78% | **97%** | +19pp |
| HotPotQA (EM) | 31.4% | **40.2%** | +8.8pp |

Reflexion outperforms chain-of-thought, ReAct, and few-shot baselines across all three task categories (programming, sequential decision-making, QA).

---

## Relation to Other Self-Improvement Methods

| Method | Mechanism | Weight Update? | PUMA Applicability |
|--------|-----------|---------------|-------------------|
| **RLHF** | Human feedback → reward model → PPO | Yes | Not applicable (frozen models) |
| **Constitutional AI** | AI critique → revision → SFT | Yes | Not applicable |
| **Self-Consistency** | Sample k outputs → majority vote | No | Applicable (ensemble voting) |
| **Reflexion** | Verbal critique → episodic memory → retry | No | **Directly applicable** |
| **Self-RAG** | Retrieve → generate → self-critique → regenerate | No | Applicable with RAG retrieval |

---

## PUMA Integration

### Stage 4: Iterative Issue Classification

```python
class ReflexionTriageAgent:
    def __init__(self, llm, max_retries=3):
        self.llm = llm
        self.max_retries = max_retries
    
    def triage(self, issue: dict) -> dict:
        memory = []
        for attempt in range(self.max_retries):
            prompt = self._build_prompt(issue, memory)
            result = self.llm.complete(prompt)
            
            parsed = parse_json(result)
            if parsed is None:
                critique = "Output was not valid JSON. Ensure response is wrapped in ```json blocks."
                memory.append(critique)
                continue
            
            # Evaluate confidence
            confidence = parsed.get("confidence", 0)
            if confidence >= 0.85:
                return parsed
            
            # Self-reflection on low-confidence prediction
            critique = self._reflect(issue, parsed, attempt)
            memory.append(critique)
        
        return parsed  # Return best attempt
    
    def _reflect(self, issue, prediction, attempt):
        return self.llm.complete(
            f"Issue: {issue['title']}\n"
            f"Predicted type: {prediction['type']} (confidence: {prediction['confidence']:.2f})\n"
            f"What signals did I miss? What should I look for on the next attempt?"
        )
```

### Failure Modes Addressed

| Failure | Reflexion Response |
|---------|--------------------|
| JSON parsing error | Verbal reminder to output valid JSON |
| Wrong issue type | Critique pointing to overlooked keywords |
| Priority mismatch | Reflection on severity/impact signals |
| Low confidence | Explicit uncertainty acknowledgment + evidence gathering |

---

## Limitations

1. **Context length**: Each reflection adds tokens; 3+ reflections can exceed local model context windows
2. **Hallucinated reflections**: The self-reflector may generate plausible-sounding but incorrect critiques
3. **No persistence across episodes**: Memory resets per task; does not accumulate long-term agent skill
4. **Latency**: Multiple retries multiply inference time; not suitable for real-time SLA requirements
5. **Circular self-deception**: LLM may reflect confidently on wrong reasoning, reinforcing incorrect behavior

---

## Related Notes

- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Shinn-2023-Reflexion]] — source literature note
- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — where Reflexion fits in agent taxonomies
- [[30 - Permanent/31 Concepts/PN-COSTAR-SelfConsistency]] — self-consistency as complementary technique
- [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]] — BMAD agent that uses Reflexion pattern

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
