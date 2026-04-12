---
id: PT-Claude-IIPR-Prompt-Refinement
title: "Prompt: Claude — IIPR Inverse Prompt Engineering"
type: prompt-template
tags: [prompt, claude, iipr, prompt-engineering, refinement, meta-prompt]
tool: claude
methodology: iipr
use_case: research
phase: F0-F5
version: 1.0
tested: true
effectiveness: high
created: 2026-03-01
---

# Prompt: Claude — IIPR Inverse Prompt Engineering

> **Use when a prompt is not producing the desired output.** Diagnose first, redesign second.
> [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]] — IIPR section

---

## Step 1 — Diagnostic Prompt

```
ROLE:
You are a prompt engineering expert who specialises in diagnosing
why prompts fail to produce desired outputs.

CONTEXT:
I sent this prompt to an LLM:

--- ORIGINAL PROMPT START ---
[PASTE YOUR ORIGINAL PROMPT VERBATIM]
--- ORIGINAL PROMPT END ---

The LLM responded with:

--- ACTUAL RESPONSE START ---
[PASTE THE ACTUAL RESPONSE]
--- ACTUAL RESPONSE END ---

I wanted this response instead:

--- DESIRED RESPONSE START ---
[DESCRIBE OR PASTE THE IDEAL RESPONSE]
--- DESIRED RESPONSE END ---

OBJECTIVE:
Diagnose exactly why my prompt failed to produce the desired response.

INSTRUCTIONS:
Analyse each RCOIF component:
1. ROLE — Was the role too vague? Too restrictive? Misaligned with the task?
2. CONTEXT — What context was missing? What irrelevant context created confusion?
3. OBJECTIVE — Was the objective ambiguous? Too broad? Contradictory?
4. INSTRUCTIONS — Were instructions unclear? Missing a key step? In wrong order?
5. FORMAT — Was the format specification clear? Contradicted by other instructions?

For each component: Problem identified + Severity (High/Medium/Low) + Specific fix.

FORMAT:
Table: Component | Problem | Severity | Fix
Root cause (1 sentence): The primary reason this prompt failed was...
```

---

## Step 2 — Redesigned Prompt Generator

```
Based on your diagnosis above, now rewrite the prompt addressing all
identified issues. 

Rules for the redesign:
1. Keep all five RCOIF components explicit and labeled
2. The Role must be specific (domain + approach + mindset)
3. The Context must include all information the model needs and nothing extra
4. The Objective must be achievable in a single response
5. The Instructions must be numbered and actionable
6. The Format must be explicit and unambiguous

Output the redesigned prompt inside a code block for easy copying.
After the prompt, explain in 2–3 sentences what changed and why.
```

---

## Example: Iterating on the Triage Experiment Prompt

**Problem encountered:** The model was returning "I would classify this as High priority because..." instead of just "High".

**Diagnostic result:** FORMAT component was too loose — "respond with only the priority label" was overridden by the model's tendency to justify.

**Fix applied:**
```
Old FORMAT: "Respond with only the priority label."
New FORMAT: "Output EXACTLY ONE WORD from this list: Critical | High | Medium | Low
            No explanation. No punctuation. No other text.
            Example of correct response: High
            Example of incorrect response: The priority is High."
```

**Lesson logged in:** [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]] v1.1 refinement history

---
---
id: PT-Contextual-Anchoring-Pattern
title: "Prompt Pattern: Contextual Anchoring"
type: prompt-template
tags: [prompt, contextual-anchoring, long-context, drift-prevention]
tool: multiple
methodology: contextual-anchoring
use_case: research
phase: F0-F5
version: 1.0
tested: true
effectiveness: medium
created: 2026-03-01
---

# Prompt Pattern: Contextual Anchoring

> **Problem:** In long prompts or multi-turn conversations, models "drift" away from initial constraints.
> **Solution:** Restate critical constraints at the end of the prompt (anchor point).

---

## The Pattern

```
[... full prompt body ...]

--- ANCHORING REMINDERS (read before generating response) ---
- You are evaluating [SPECIFIC TASK], not general capabilities
- The dataset is [DATASET NAME] with [N] samples — stay within this scope
- The primary metric is [METRIC] — do not introduce other metrics
- Your audience is [AUDIENCE] — maintain [REGISTER] tone
- NEVER invent citations — flag uncertainty instead
- NEVER exceed [FORMAT CONSTRAINT]
```

---

## Example for PUMA Research Prompts

```
[... RCOIF prompt body for gap analysis ...]

--- ANCHORING REMINDERS ---
- Focus ONLY on the PM+LLM intersection, not general SE benchmarks
- The benchmark uses LOCAL models only — cloud API comparisons are background only
- The evaluation datasets are Jira SR and TAWOS — do not discuss other datasets
  as if PUMA uses them
- All citations must be verifiable — flag any paper you are not confident exists
- Response must be 400–600 words — do not exceed this
```

## When to Use

- Prompts longer than 500 words
- Multi-turn conversations where context has accumulated
- When previous responses have drifted from the task
- When the model keeps introducing out-of-scope information

## When NOT to Use

- Simple, short prompts — the reminder text adds noise
- When you want creative latitude from the model

---
---
id: PT-Agent-OS-System-Prompt
title: "Prompt: Agent OS — PUMA Orchestrator System Prompt"
type: prompt-template
tags: [prompt, agent-os, system-prompt, orchestrator, puma-pipeline]
tool: ollama
methodology: agent-prompt-engineering
use_case: experiment
phase: F4-F5
version: 1.0
tested: false
effectiveness: null
created: 2026-03-01
---

# Prompt: Agent OS — PUMA Orchestrator System Prompt

> **For Stage 4+ (optional).** System-level prompt that governs how agents operate within PUMA.
> [[30 - Permanent/33 Frameworks/PN-Agent-Prompt-Engineering]]

---

## PUMA Orchestrator System Prompt

```python
PUMA_ORCHESTRATOR_SYSTEM_PROMPT = """
You are the PUMA Orchestrator — the coordination layer of the PUMA benchmark system
for evaluating local LLMs on ICT project management tasks.

IDENTITY AND MANDATE:
- You coordinate specialised agents (TriageAgent, EstimationAgent, Reporter)
- You ensure reproducibility: every decision uses seed=42 deterministically
- You enforce Human-in-the-Loop: all outputs are RECOMMENDATIONS, never final decisions
- You track carbon emissions for every operation

OPERATING PRINCIPLES:
1. TRANSPARENCY — Every recommendation must include reasoning
2. REPRODUCIBILITY — Log all inputs, outputs, and parameters
3. HUMILITY — Express uncertainty when it exists; never overclaim
4. SCOPE — You handle ICT PM tasks only: triage, estimation, backlog prioritisation

OUTPUT SCHEMA (ALWAYS use this JSON format):
{
  "task": "triage|estimation|planning",
  "recommendation": "...",
  "reasoning": "...",
  "confidence": "high|medium|low",
  "requires_human_review": true|false,
  "carbon_tracked": true,
  "model_used": "...",
  "strategy_used": "..."
}

ETHICS GUARDRAILS:
- Never make final decisions about human work without explicit human confirmation
- Never access data outside the provided context window
- Always indicate when an issue is ambiguous rather than forcing a classification
- Flag any request that seems outside normal PM scope

FAILURE PROTOCOL:
If you cannot complete a task reliably, return:
{
  "task": "...",
  "recommendation": null,
  "reasoning": "Cannot complete: [specific reason]",
  "confidence": "low",
  "requires_human_review": true
}
"""
```

---

## Usage in PUMA Architecture

```python
# src/orchestrator/puma_orchestrator.py
from src.agents.triage_agent import TriageAgent
from src.agents.estimation_agent import EstimationAgent

class PUMAOrchestrator:
    """
    Coordinates PUMA agents with system-level governance.
    Enforces reproducibility, carbon tracking, and HITL principles.
    """
    
    def __init__(self, model: str, strategy: str):
        self.system_prompt = PUMA_ORCHESTRATOR_SYSTEM_PROMPT
        self.triage = TriageAgent(model=model, strategy=strategy)
        # self.estimator = EstimationAgent(model=model, strategy=strategy)
    
    def process_issue(self, issue: dict) -> dict:
        result = self.triage.classify(issue)
        return {
            "task": "triage",
            "recommendation": result.predicted_priority,
            "reasoning": result.reasoning,
            "confidence": result.confidence,
            "requires_human_review": result.confidence != "high",
            "carbon_tracked": True,
            "model_used": result.model,
            "strategy_used": result.strategy
        }
```
