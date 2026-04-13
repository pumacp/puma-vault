---
id: PN-SDD-Framework
title: "Spec-Driven Development (SDD) + BDD + BMAD"
type: permanent-note
category: framework
tags: [permanent, framework, sdd, bdd, tdd, bmad, specification, engineering, anthropic, architecture, artefact, carbon-footprint, claude, code-review, codecarbon, critical-thinking, data-formats, dataset, dev-tools, dsr, effort-estimation, few-shot, github, ide, issue-triage, jira, json, literature-review, local-llm, metrics, multi-agent, ollama, openspec, permanent-note, precision-recall, prompt-engineering, prompting, rcoif, reasoning, red-teaming, research-methodology, slr, spec-driven-development, spec-kit, story-points, sustainability, template, triage, workflow]
aliases: ["SDD", "Spec-First", "Spec-Driven", "BMAD"]
created: 2026-03-01
updated: 2026-03-01
maturity: evergreen
sources: ["[[20 - Literature/20.4 Videos-Podcasts/YouTube/SDD-Specs-BMAD/VID-SDD-006-OpenSpec-is-Insane-Spec-Driven-Developm]]", "SpecKit (methodology reference)"]
---

# Spec-Driven Development (SDD) + BDD + BMAD

> **Atomic claim:** In PUMA, SDD ensures every agent component is defined by an executable specification before any code is written, making the artefact auditable, testable, and reproducible — directly addressing the reproducibility gap identified in the SLR.

---

## 💡 SDD — Spec-Driven Development

SDD (also: Spec-First, Specification-by-Example) is an engineering paradigm where:

1. **Specification precedes implementation** — write the spec, then generate/write code
2. **Specs are executable** — they double as tests (BDD scenarios, unit tests)
3. **AI assists spec-to-code translation** — human validates, AI generates scaffolding

### OpenSpec Format (used in PUMA)

```yaml
# OpenSpec template
spec_id: "SP-[Component]-v[N]"
component: "[Agent name]"
version: "1.0"
status: draft | review | approved | deprecated

purpose: |
  [What this component does and why it exists]

inputs:
  - name: [input_field]
    type: [str | int | list | dict]
    description: [what it contains]
    example: [concrete example]

outputs:
  - name: [output_field]
    type: [str | int | dict]
    description: [what it contains]
    example: [concrete example]

behaviour:
  - given: [precondition]
    when: [trigger/input]
    then: [expected output/behaviour]

constraints:
  - [Technical constraint 1, e.g., "Must run on CPU with 16GB RAM"]
  - [Constraint 2]

acceptance_criteria:
  - metric: F1-macro
    threshold: ">= 0.55"
    dataset: jira-sr
  - metric: latency
    threshold: "< 60s per query"
```

---

## 💡 BDD — Behaviour-Driven Development

BDD translates specs into human-readable test scenarios using Given/When/Then:

```gherkin
Feature: Issue Triage Agent
  As a project manager
  I want the agent to classify issue priority automatically
  So that I can focus on high-value decisions

  Scenario: Classify a critical production bug
    Given a Jira issue with title "System crash in production — all users affected"
    And the model is llama3.2-8b with strategy few-shot-3
    When the triage agent processes the issue
    Then the predicted priority should be "Critical"
    And the latency should be less than 60 seconds
    And the response should include a reasoning trace

  Scenario: Handle ambiguous priority
    Given a Jira issue with title "Button colour is slightly off"
    When the triage agent processes the issue
    Then the predicted priority should be "Low" or "Medium"
    And confidence should be flagged as "low"
```

---

## 💡 BMAD — Brainstorm · Map · Architect · Develop

BMAD is a workflow for AI-assisted system design:

| Phase | Activity | AI Role | Human Role |
|-------|----------|---------|-----------|
| **B**rainstorm | Generate component ideas | Propose options | Select + filter |
| **M**ap | Create architecture diagram | Draft relationships | Validate logic |
| **A**rchitect | Write OpenSpec for each component | Generate spec template | Review + approve |
| **D**evelop | Generate code from spec | Scaffold implementation | Review + test |

### BMAD applied to PUMA Triage Agent

```
B: Brainstorm — What components does the triage agent need?
   AI: "Possible components: prompt builder, Ollama client, 
        output parser, metric calculator, carbon tracker, logger"
   Human: Selects: prompt builder + Ollama client + output parser + metric calc + CodeCarbon

M: Map — How do they connect?
   [Architecture diagram → SP-Architecture-v1]

A: Architect — Write spec for each component
   [→ SP-Triage-Agent-v1, SP-Dataset-Preparation, etc.]

D: Develop — Generate from specs
   [Claude Code / Cursor AI scaffold, human review]
```

---

## 🔗 Connected Ideas

**Implements:** [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] (Design step) | **Produces:** [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]]
**Validated by:** [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] (SLR artefact evaluation) | **AI-assisted via:** [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]]
**Agent generation:** [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] (Agent Prompt Engineering)
**Constitution:** [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] | **Project context:** [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]]

---

## ⚠️ Caveats

- BDD scenarios must be written BEFORE the code — writing them after defeats the purpose
- AI-generated specs need careful human review: the AI optimises for plausibility, not correctness
- BMAD requires resisting the urge to jump to D (Develop) before completing A (Architect)
