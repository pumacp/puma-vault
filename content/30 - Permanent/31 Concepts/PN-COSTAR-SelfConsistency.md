---
type: permanent
title: "Prompting Frameworks — CO-STAR, Self-Consistency, and Structured Prompting"
topic: prompting
tags: [permanent, prompting, costar, self-consistency, chain-of-thought, few-shot, zero-shot, structured-output, prompt-engineering, puma-core, research, agents, llm, benchmark, issue-triage, effort-estimation, architecture]
created: 2026-04-13
updated: 2026-04-13
aliases: ["CO-STAR", "Self-Consistency", "Prompt Engineering", "Structured Prompting"]
---

# PN: Prompting Frameworks — CO-STAR, Self-Consistency, and Structured Prompting

> [!abstract] Core Idea
> Prompting is PUMA's primary method for controlling LLM behavior without fine-tuning. This note synthesizes the key prompting frameworks used in PUMA experiments: CO-STAR for prompt structure, Chain-of-Thought for reasoning, Few-Shot for reference class injection, Self-Consistency for reliability, and structured output strategies for JSON compliance.

---

## CO-STAR Framework

CO-STAR (developed as a structured prompt design pattern) organizes prompts into six components:

| Component | Abbreviation | Purpose | PUMA Example |
|-----------|-------------|---------|-------------|
| **Context** | C | Background information and task framing | "You are a senior project manager analyzing Jira issues from a software project." |
| **Objective** | O | The specific task to perform | "Classify the following issue into one of: Bug, Feature, Task, Improvement, Sub-task." |
| **Style** | S | Tone, voice, persona | "Respond in precise, technical language. Use engineering judgment." |
| **Tone** | T | Emotional register | "Be concise and confident. Avoid hedging unless genuinely uncertain." |
| **Audience** | A | Who will use the output | "Output will be parsed programmatically. Use only the specified JSON schema." |
| **Response format** | R | Exact output specification | `{"type": "Bug", "priority": "High", "confidence": 0.87, "rationale": "..."}` |

### CO-STAR Prompt Template for PUMA H1

```
**Context**: You are an automated project management agent analyzing software issues from a Jira repository. The repository uses standard Agile issue types: Bug, Feature, Task, Improvement, Sub-task, Epic.

**Objective**: Classify the provided issue into one of the above types. Also assign a priority (Critical, High, Medium, Low) and identify the most relevant component (API, UI, Backend, Database, Infrastructure, Testing, Documentation).

**Style**: Use precise software engineering terminology. Base decisions on the issue title, description, labels, and resolution fields.

**Tone**: Analytical. If uncertain, state your confidence level and the competing classifications.

**Audience**: Your output will be parsed by a Python script. Non-conforming JSON will cause a pipeline failure.

**Response format**:
```json
{
  "type": "Bug",
  "priority": "High", 
  "component": "API",
  "confidence": 0.87,
  "rationale": "Issue describes a null pointer exception in the payment processing API..."
}
```
```

---

## Chain-of-Thought (CoT) Prompting

**Wei et al., 2022** — *Chain-of-thought prompting elicits reasoning in large language models* (NeurIPS 2022)

CoT prompts the model to "think step by step" before producing a final answer, improving accuracy on multi-step reasoning tasks.

### Zero-Shot CoT

Add "Let's think step by step." to the prompt:

```
Classify this issue and estimate its story points. Let's think step by step.

Issue: "Authentication service returns 500 error when OAuth token expires during a batch job"

Step 1: Issue type — This is a failure in production functionality → Bug
Step 2: Priority — Affects running batch jobs → High
Step 3: Component — Authentication service → Backend/API
Step 4: Effort — Token refresh logic fix, need to trace the 500 path, write test → ~5 SP
```

### Few-Shot CoT

Provide complete worked examples including reasoning traces:

```
Example 1:
Issue: "Add CSV export to the reporting dashboard"
Reasoning: New user-requested functionality → Feature. No urgency signals → Medium priority.
Similar past issues: "Add PDF export" (5 SP), "Add Excel export" (3 SP)
This adds CSV with custom columns → 5 SP
Output: {"type": "Feature", "priority": "Medium", "sp": 5}

---
Now classify:
Issue: "Add XLSX export with pivot table support to reporting dashboard"
```

**PUMA**: Few-Shot CoT is the primary experimental condition for H1/H2; expected to outperform zero-shot by 8–15% Macro-F1.

---

## Self-Consistency

**Wang et al., 2023** — *Self-consistency improves chain of thought reasoning in language models* (ICLR 2023)

Instead of greedy decoding (single deterministic output), sample k independent reasoning paths and aggregate by majority vote.

### Algorithm

1. Set temperature > 0 (e.g., 0.7) to enable sampling diversity
2. Generate k = 5–10 independent responses to the same prompt
3. Extract the final answer from each response
4. Return the majority-vote answer

```python
def self_consistent_classify(issue, model, k=5):
    responses = []
    for _ in range(k):
        result = model.generate(
            prompt=build_prompt(issue),
            temperature=0.7,
            max_tokens=512
        )
        parsed = parse_json(result)
        if parsed:
            responses.append(parsed["type"])
    
    if responses:
        from collections import Counter
        return Counter(responses).most_common(1)[0][0]
    return None
```

### When to Use Self-Consistency in PUMA

| Condition | Use Self-Consistency? |
|-----------|-----------------------|
| Standard triage experiment | No — use temperature=0 for reproducibility |
| Ambiguous issues (confidence < 0.75) | Yes — k=5 sampling reduces variance |
| Human-in-the-loop review queue | Yes — use confidence of majority vote as escalation signal |
| Production deployment | Yes — trades latency for reliability |

**Tradeoff**: 5× inference cost; not suitable for real-time pipelines.

---

## Structured Output Strategies

### JSON Mode (OpenAI)

```python
response = client.chat.completions.create(
    model="gpt-4o",
    response_format={"type": "json_object"},
    messages=[{"role": "user", "content": prompt}]
)
```

Forces model output to be valid JSON. Reduces Successful Parsing Rate failures by ~85%.

### Pydantic / Instructor (Python)

```python
from pydantic import BaseModel
from instructor import patch

client = patch(openai.OpenAI())

class TriageResult(BaseModel):
    type: Literal["Bug", "Feature", "Task", "Improvement", "Sub-task"]
    priority: Literal["Critical", "High", "Medium", "Low"]
    component: str
    confidence: float
    rationale: str

result = client.chat.completions.create(
    model="gpt-4o",
    response_model=TriageResult,
    messages=[{"role": "user", "content": prompt}]
)
# result is a typed Python object, not raw text
```

### Grammar Sampling (llama.cpp / Ollama)

For local models, enforce JSON grammar at the sampling level:

```python
import ollama

response = ollama.generate(
    model="llama3.2:8b",
    prompt=prompt,
    format="json"  # Forces JSON output at sampling layer
)
```

This eliminates format errors by constraining the token sampling to valid JSON sequences.

---

## PUMA Prompt Strategy Matrix

| Condition | Strategy | Temperature | Notes |
|-----------|---------|------------|-------|
| H1 Zero-Shot baseline | Zero-Shot CoT | 0 | Minimal prompt, no examples |
| H1 Few-Shot primary | Few-Shot CoT (3 examples) | 0 | Reference class encoding |
| H1 Few-Shot+ | Few-Shot CoT (6 examples) | 0 | More reference class coverage |
| H2 Estimation baseline | Zero-Shot + SP range | 0 | Ask for range [low, likely, high] |
| H2 Few-Shot primary | Few-Shot CoT with SP examples | 0 | Historical issues as anchors |
| H2 Self-Consistent | Few-Shot + k=5 sampling | 0.7 | Confidence robustness check |
| Production HITL | Few-Shot + confidence gate | 0 | Escalate if conf < 0.80 |

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — temperature=0 reproducibility rationale
- [[30 - Permanent/31 Concepts/PN-Reflexion-SelfCritique]] — iterative prompting complement
- [[30 - Permanent/31 Concepts/PN-Evaluation-Metrics-Comprehensive]] — SPR metric measures prompt format compliance
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] — experimental prompt design

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
