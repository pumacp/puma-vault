---
id: PT-PUMA-Triage-ZeroShot
title: "PUMA Experiment Prompt — Issue Triage (Zero-Shot)"
type: prompt-template
tags: [prompt, puma, experiment, triage, zero-shot, ollama]
tool: ollama
methodology: zero-shot
use_case: experiment
phase: F2
version: 1.0
tested: true
effectiveness: null
created: 2026-03-01
---

# PUMA Experiment Prompt — Issue Triage (Zero-Shot)

> **This is the actual prompt used in PUMA benchmark experiments.** It runs inside the Ollama inference pipeline, not as a conversational prompt.
> **Independent variable:** This zero-shot strategy is the baseline condition for H1.

---

## 📋 The Prompt

```python
TRIAGE_ZERO_SHOT_TEMPLATE = """You are an expert software project manager 
with 10+ years of experience triaging Jira issues.

Classify the priority of the following Jira issue into exactly one category:
- Critical: System down, data loss, security breach, complete blocker for all users
- High: Major feature broken, significant user impact, no acceptable workaround
- Medium: Feature degraded, minor data issues, workaround exists
- Low: Cosmetic issue, documentation, minor UX improvement, nice-to-have

Issue Title: {issue_title}
Issue Description: {issue_description}

Respond with ONLY the priority label. No explanation. No punctuation.
Valid responses: Critical | High | Medium | Low

Priority:"""
```

## ⚙️ Calling the Prompt

```python
from codecarbon import EmissionsTracker
import requests, time

def run_triage_zero_shot(issue: dict, model: str = "llama3.2:8b") -> dict:
    prompt = TRIAGE_ZERO_SHOT_TEMPLATE.format(
        issue_title=issue["title"],
        issue_description=issue.get("description", "")[:500]  # truncate
    )
    
    tracker = EmissionsTracker(project_name=f"puma-triage-zero-{model}")
    tracker.start()
    
    start = time.time()
    response = requests.post(
        "http://localhost:11434/api/generate",
        json={"model": model, "prompt": prompt, "stream": False,
              "options": {"seed": 42, "temperature": 0, "num_predict": 10}}
    )
    latency = time.time() - start
    emissions = tracker.stop()
    
    raw = response.json()["response"].strip()
    # Parse to valid label
    label = parse_priority_label(raw)
    
    return {
        "predicted": label,
        "raw_response": raw,
        "latency_s": latency,
        "emissions_gco2": emissions * 1000,  # kg → g
        "model": model,
        "strategy": "zero-shot"
    }
```

---
---
id: PT-PUMA-Triage-FewShot3
title: "PUMA Experiment Prompt — Issue Triage (Few-Shot 3)"
---

# PUMA Experiment Prompt — Issue Triage (Few-Shot k=3)

```python
TRIAGE_FEW_SHOT_3_TEMPLATE = """You are an expert software project manager 
triaging Jira issues for priority.

Priority definitions:
- Critical: System down, data loss, security breach, complete blocker
- High: Major feature broken, significant user impact, no workaround
- Medium: Feature degraded, workaround exists, moderate impact
- Low: Cosmetic, documentation, minor UX, enhancement

Examples:
---
Issue: "Production database not responding — all API calls failing since 03:00 UTC"
Priority: Critical

Issue: "User search returns incorrect results when filtering by date range"
Priority: High

Issue: "Export to CSV button tooltip text is truncated on Firefox"
Priority: Low
---

Now classify:
Issue Title: {issue_title}
Issue Description: {issue_description}

Priority:"""
```

---
---
id: PT-PUMA-Triage-CoT
title: "PUMA Experiment Prompt — Issue Triage (Chain-of-Thought)"
---

# PUMA Experiment Prompt — Issue Triage (CoT)

```python
TRIAGE_COT_TEMPLATE = """You are an expert software project manager.
Classify this Jira issue's priority using step-by-step reasoning.

Priority levels: Critical | High | Medium | Low

Issue Title: {issue_title}
Issue Description: {issue_description}

Think step by step:
1. Scope: How many users are affected? (all / many / some / few)
2. Severity: What is the functional impact? (system-down / broken / degraded / cosmetic)
3. Urgency: Is there a workaround? (none / partial / yes)
4. Environment: Production, staging, or development?

Based on this analysis:
Priority: [state ONLY: Critical | High | Medium | Low]"""
```

---
---
id: PT-PUMA-Estimation-FewShot
title: "PUMA Experiment Prompt — Effort Estimation (Few-Shot)"
---

# PUMA Experiment Prompt — Effort Estimation (Few-Shot)

> **Used in Stage 2 (TAWOS dataset). This prompt tests H2.**

```python
ESTIMATION_FEW_SHOT_TEMPLATE = """You are an experienced Agile project manager 
estimating story points for user stories.

Story points follow the Fibonacci scale: 1, 2, 3, 5, 8, 13, 21
- 1 SP: Trivial change, under 1 hour, well-understood
- 2 SP: Simple task, 2-4 hours, minimal unknowns
- 3 SP: Moderate, half-day to 1 day, some complexity
- 5 SP: Complex, 1-2 days, several moving parts
- 8 SP: Very complex, 3-4 days, significant uncertainty
- 13 SP: Large, multiple days, high uncertainty
- 21 SP: Epic-level, break into smaller stories if possible

Examples from similar projects:
---
Story: "Add 'forgot password' link to login page that sends reset email"
Acceptance: Email sent within 30s, link expires in 24h, secure token
Story Points: 3

Story: "Implement real-time notifications using WebSockets for task updates"
Acceptance: <200ms delivery, supports 10K concurrent users, fallback to polling
Story Points: 8

Story: "Fix typo in error message on checkout form"
Acceptance: Typo corrected, no regression in form validation
Story Points: 1
---

Estimate this story:
Title: {story_title}
Description: {story_description}
Acceptance Criteria: {acceptance_criteria}

Respond with ONLY the numeric story point value from: 1, 2, 3, 5, 8, 13, 21

Story Points:"""
```

---


---

# 🧪 PUMA Experiment Prompts — Master Reference

This note contains the canonical prompts used in PUMA's four experimental strategies. Any change to these prompts must: (1) increment the version number, (2) be logged in [[50 - Areas/51 Research/AI-Use-Log]], (3) trigger a new experiment run.

---

## Strategy Registry

| ID | Strategy | N Examples | Used In Stage |
|----|----------|------------|---------------|
| S1 | Zero-Shot | 0 | 1–5 |
| S2 | Few-Shot-3 | 3 | 1–5 |
| S3 | Few-Shot-6 | 6 | 1–5 |
| S4 | CoT (Chain-of-Thought) | 0 + reasoning | 1–5 |

---

## Full Prompt Specifications

See [[PT-P2-003-PromptEngineering-AgentPrompts]] for the complete prompt text for all four strategies.

---

## Prompt Version History

| Version | Date | Changes | Experiment Re-run? |
|---------|------|---------|-------------------|
| v1.0 | 2026-04-07 | Initial prompts | Yes — baseline |

---

## Related Notes

- [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]]
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]
- [[PT-P2-003-PromptEngineering-AgentPrompts]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]

---

## 🔗 All Experiment Prompts

| Prompt | Stage | Strategy | Notes |
|--------|-------|---------|-------|
| [[PT-PUMA-Triage-ZeroShot]] | 1 | Zero-shot | Baseline condition |
| [[PT-PUMA-Triage-FewShot3]] | 1 | Few-shot k=3 | 1 example per class |
| PT-PUMA-Triage-FewShot6 | 1 | Few-shot k=6 | 2 examples per critical classes |
| [[PT-PUMA-Triage-CoT]] | 1 | Chain-of-Thought | Zero-shot + reasoning |
| [[PT-PUMA-Estimation-FewShot]] | 2 | Few-shot | 3 examples across scale |
| PT-PUMA-Estimation-CoT | 2 | CoT | Structured reasoning |
