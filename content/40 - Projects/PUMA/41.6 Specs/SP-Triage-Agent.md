---
id: SP-Triage-Agent-v1
title: PUMA Triage Agent — OpenSpec v1.0
type: spec
tags:
  - spec
  - triage
  - agent
  - openspec
  - sdd
  - bdd
  - puma
  - api
  - architecture
  - artefact
  - benchmark
  - carbon-footprint
  - chain-of-thought
  - codecarbon
  - cot
  - data-formats
  - dsr
  - effort-estimation
  - few-shot
  - hypothesis
  - issue-triage
  - jira
  - json
  - llm
  - local-llm
  - mistral
  - ollama
  - python
  - reasoning
  - research-methodology
  - spec-driven-development
  - story-points
  - sustainability
  - zero-shot
version: "1.0"
status: approved
created: 2026-03-18
updated: 2026-03-18
parent_spec: "[[SP-Architecture]]"
bdd_scenarios: 6
acceptance_criteria_count: 8
---

# PUMA Triage Agent — OpenSpec v1.0

> [!important] Constitutional Preamble
> **Spec-first document per SDD methodology.**
> [[30 - Permanent/33 Frameworks/PN-SDD-Framework]]

> [!info] Overview
> This spec is approved before any implementation begins.

---

## 1. Purpose & Context

The TriageAgent is the core evaluation unit for PUMA Stage 1. It wraps a local LLM (via Ollama) and a configurable prompting strategy to classify Jira issue priority. Its design prioritises reproducibility, carbon measurement, and structured output over raw performance.

**Position in PUMA architecture:**
```
DataLoader → [TriageAgent] → EvaluationEngine → ResultsReporter
                 ↕
            OllamaClient (seed=42, temp=0)
                 ↕
            EmissionsTracker (CodeCarbon)
```

---

## 2. OpenSpec Definition

```yaml
spec_id: SP-Triage-Agent-v1
component: TriageAgent
version: "1.0"
status: approved
depends_on:
  - OllamaClient (SP-OllamaClient-v1)
  - PromptTemplates (src/prompts/templates.py)
  - EmissionsTracker (CodeCarbon ^2.0)

purpose: |
  Classify the priority of a software issue (Jira ticket) into one of four
  levels — Critical, High, Medium, Low — using a configurable local LLM
  and prompting strategy, with deterministic inference and per-call
  carbon emissions tracking.

inputs:
  - name: issue
    type: dict
    required: true
    fields:
      title:
        type: str
        max_length: 500
        required: true
      description:
        type: str
        max_length: 2000
        required: false
        default: ""
      issue_id:
        type: str
        required: false
        description: "Jira issue key e.g. HADOOP-1234"

  - name: model
    type: str
    required: true
    values: [llama3.2:8b, mistral:7b, phi3.5:3.8b]
    description: "Ollama model tag"

  - name: strategy
    type: str
    required: true
    values: [zero-shot, few-shot-3, few-shot-6, cot]
    description: "Prompting strategy for the experiment condition"

  - name: timeout_s
    type: int
    required: false
    default: 120
    description: "Max seconds to wait for Ollama response"

outputs:
  - name: result
    type: dict
    fields:
      predicted_priority:
        type: str
        values: [Critical, High, Medium, Low, Unknown]
        description: "Parsed priority label. 'Unknown' if parsing fails."
      raw_response:
        type: str
        description: "Full unprocessed model response"
      reasoning:
        type: str
        description: "Extracted reasoning (CoT strategy only; empty otherwise)"
      confidence:
        type: str
        values: [high, medium, low]
        description: "Self-reported confidence (parsed from CoT; inferred otherwise)"
      latency_s:
        type: float
        description: "Wall-clock seconds for Ollama API call"
      emissions_gco2:
        type: float
        description: "Grams CO2 equivalent (CodeCarbon)"
      model:
        type: str
        description: "Model used (echoed from input)"
      strategy:
        type: str
        description: "Strategy used (echoed from input)"
      issue_id:
        type: str
        description: "Issue identifier (echoed from input)"

constraints:
  - "seed=42 and temperature=0 MUST be set on every Ollama call"
  - "Never raises unhandled exceptions — all errors return predicted_priority='Unknown'"
  - "Latency < 60s on 16GB RAM CPU (or log warning and continue)"
  - "CodeCarbon tracker must be started BEFORE the Ollama call and stopped AFTER"
  - "No global state — TriageAgent must be fully instantiable and thread-safe"
  - "Priority label parsing must be case-insensitive"
  - "Empty descriptions are valid — agent must handle them gracefully"

acceptance_criteria:
  - id: AC-01
    description: "Given a valid issue, the agent returns a dict with all required fields"
    test: tests/test_triage_agent.py::test_output_schema_complete
  - id: AC-02
    description: "Given seed=42 and temperature=0, two calls with identical input return identical output"
    test: tests/test_triage_agent.py::test_determinism
  - id: AC-03
    description: "Given a model response with no recognizable priority label, returns predicted_priority='Unknown' without raising"
    test: tests/test_triage_agent.py::test_unknown_label_handling
  - id: AC-04
    description: "Given an issue with empty description, processes successfully"
    test: tests/test_triage_agent.py::test_empty_description
  - id: AC-05
    description: "Given strategy='cot', the reasoning field contains non-empty text"
    test: tests/test_triage_agent.py::test_cot_reasoning_populated
  - id: AC-06
    description: "emissions_gco2 > 0 for every successful call"
    test: tests/test_triage_agent.py::test_emissions_tracked
  - id: AC-07
    description: "Latency_s is measured and > 0 for every call"
    test: tests/test_triage_agent.py::test_latency_measured
  - id: AC-08
    description: "All four strategies (zero-shot, few-shot-3, few-shot-6, cot) produce valid output"
    test: tests/test_triage_agent.py::test_all_strategies_valid
```

---

## 3. BDD Scenarios (Gherkin)

```gherkin
Feature: TriageAgent Issue Classification
  As a PUMA benchmark runner
  I want the TriageAgent to classify issue priority consistently
  So that I can compare model and strategy performance reproducibly

  Background:
    Given Ollama is running on localhost:11434
    And the model "llama3.2:8b" is available

  # ── Happy Path ──

  Scenario: Classify a clear Critical issue with zero-shot
    Given an issue with title "Production DB down — 100% API requests failing"
    And model "llama3.2:8b" and strategy "zero-shot"
    When the TriageAgent classifies the issue
    Then predicted_priority should be "Critical"
    And latency_s should be less than 60
    And emissions_gco2 should be greater than 0
    And raw_response should be non-empty

  Scenario: Classify a Low priority issue with few-shot-3
    Given an issue with title "Button tooltip text slightly misaligned on Firefox"
    And model "llama3.2:8b" and strategy "few-shot-3"
    When the TriageAgent classifies the issue
    Then predicted_priority should be "Low" or "Medium"
    And reasoning should be empty (few-shot does not generate reasoning)

  Scenario: Chain-of-thought strategy populates reasoning field
    Given an issue with title "Login fails for 30% of users after last deploy"
    And model "mistral:7b" and strategy "cot"
    When the TriageAgent classifies the issue
    Then predicted_priority should be "High" or "Critical"
    And reasoning should contain at least 20 characters
    And confidence should be "high" or "medium"

  # ── Edge Cases ──

  Scenario: Handle issue with empty description
    Given an issue with title "API timeout" and no description
    And model "llama3.2:8b" and strategy "zero-shot"
    When the TriageAgent classifies the issue
    Then no exception is raised
    And predicted_priority is a valid label or "Unknown"

  Scenario: Handle model returning unexpected text
    Given Ollama returns "I'm not sure, perhaps High or maybe Medium?"
    When the TriageAgent parses the response
    Then the label parser extracts the first recognizable priority class
    And if no class found, predicted_priority equals "Unknown"

  # ── Reproducibility ──

  Scenario: Deterministic output with fixed seed and temperature
    Given an issue processed twice with identical inputs
    And seed=42 and temperature=0 in both calls
    When both results are compared
    Then predicted_priority, raw_response, and latency_s (±5%) should match
```

---

## 4. Reference Implementation Skeleton

```python
# src/agents/triage_agent.py
from __future__ import annotations
from dataclasses import dataclass, field
from typing import Literal
import time
from codecarbon import EmissionsTracker
from src.utils.ollama_client import OllamaClient
from src.prompts.templates import get_triage_prompt


PriorityLabel = Literal["Critical", "High", "Medium", "Low", "Unknown"]
Strategy = Literal["zero-shot", "few-shot-3", "few-shot-6", "cot"]
Model = Literal["llama3.2:8b", "mistral:7b", "phi3.5:3.8b"]


@dataclass
class TriageResult:
    predicted_priority: PriorityLabel
    raw_response: str
    reasoning: str
    confidence: Literal["high", "medium", "low"]
    latency_s: float
    emissions_gco2: float
    model: str
    strategy: str
    issue_id: str = ""


class TriageAgent:
    """
    PUMA TriageAgent — classifies Jira issue priority using a local LLM.
    
    Fully deterministic when called with seed=42, temperature=0 (Ollama defaults).
    Thread-safe: no shared mutable state.
    
    Example:
        agent = TriageAgent(model="llama3.2:8b", strategy="few-shot-3")
        result = agent.classify({"title": "DB down", "description": "..."})
        print(result.predicted_priority)  # "Critical"
    """

    VALID_LABELS = {"Critical", "High", "Medium", "Low"}

    def __init__(self, model: Model, strategy: Strategy, timeout_s: int = 120):
        self.model = model
        self.strategy = strategy
        self.timeout_s = timeout_s
        self._client = OllamaClient(seed=42, temperature=0)

    def classify(self, issue: dict) -> TriageResult:
        """
        Classify a single issue. Never raises — returns Unknown on failure.
        
        Args:
            issue: dict with 'title' (required), 'description' (optional),
                   'issue_id' (optional)
        Returns:
            TriageResult with all fields populated
        """
        prompt = get_triage_prompt(
            strategy=self.strategy,
            title=issue.get("title", ""),
            description=issue.get("description", "")[:2000]
        )

        tracker = EmissionsTracker(
            project_name=f"puma-triage-{self.model}-{self.strategy}",
            log_level="error",
            save_to_file=False
        )
        tracker.start()
        start = time.time()

        try:
            raw = self._client.generate(
                model=self.model,
                prompt=prompt,
                timeout=self.timeout_s
            )
        except Exception as e:
            emissions_kg = tracker.stop() or 0.0
            return TriageResult(
                predicted_priority="Unknown",
                raw_response=f"ERROR: {e}",
                reasoning="",
                confidence="low",
                latency_s=time.time() - start,
                emissions_gco2=(emissions_kg or 0) * 1000,
                model=self.model,
                strategy=self.strategy,
                issue_id=issue.get("issue_id", "")
            )

        latency = time.time() - start
        emissions_kg = tracker.stop() or 0.0

        label, reasoning, confidence = self._parse_response(raw)

        return TriageResult(
            predicted_priority=label,
            raw_response=raw,
            reasoning=reasoning,
            confidence=confidence,
            latency_s=latency,
            emissions_gco2=emissions_kg * 1000,
            model=self.model,
            strategy=self.strategy,
            issue_id=issue.get("issue_id", "")
        )

    def _parse_response(
        self, raw: str
    ) -> tuple[PriorityLabel, str, str]:
        """
        Extract priority label, optional reasoning, and confidence from raw text.
        Case-insensitive. Returns ("Unknown", "", "low") if no label found.
        """
        import re
        text = raw.strip()

        # CoT: extract reasoning if present
        reasoning = ""
        if self.strategy == "cot":
            match = re.search(
                r"(?:reasoning|analysis|step[s]?):(.+?)(?:priority:|$)",
                text, re.IGNORECASE | re.DOTALL
            )
            if match:
                reasoning = match.group(1).strip()[:500]

        # Find priority label
        for label in ["Critical", "High", "Medium", "Low"]:
            if re.search(rf"\b{label}\b", text, re.IGNORECASE):
                confidence = "high" if reasoning else "medium"
                return label, reasoning, confidence  # type: ignore

        return "Unknown", "", "low"
```

---

## 5. File Locations

| Artifact | Path |
|----------|------|
| Agent implementation | `src/agents/triage_agent.py` |
| Unit tests | `tests/test_triage_agent.py` |
| Prompt templates | `src/prompts/templates.py` |
| Ollama client | `src/utils/ollama_client.py` |
| This spec | `docs/specs/SP-Triage-Agent-v1.md` |

---

## 🔗 Related Notes

[[SP-Architecture]] · [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]
[[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]] · [[60 - Resources/61 Prompts/61.3 Dev-Tools/PT-DevTools-Prompts]]
