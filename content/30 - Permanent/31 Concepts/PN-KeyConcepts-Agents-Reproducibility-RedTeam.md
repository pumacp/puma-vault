---
id: PN-LLM-Agents
title: "LLM Agents — Definition and Taxonomy"
type: permanent-note
category: concept
tags: [permanent, concept, llm-agents, agents, orchestration]
aliases: ["LLM Agent", "AI Agent", "Language Model Agent"]
created: 2026-03-01
maturity: growing
sources: ["[[20 - Literature/20.1 Papers/LN-Spichkova-2025-CognitiveAgents]]"]
---

# LLM Agents — Definition and Taxonomy

> **Atomic claim:** An LLM agent is a language model equipped with tools, memory, and a planning loop that allows it to take sequences of actions toward a goal — going beyond single-turn question-answering to multi-step autonomous task completion.

## 💡 The Concept

An LLM agent consists of four components:

| Component | Description | PUMA Implementation |
|-----------|-------------|-------------------|
| **LLM Core** | The language model providing reasoning | Llama 3.2 8B / Mistral 7B |
| **Tools** | Functions the agent can call | Dataset loader, metric calculator |
| **Memory** | Context retained across steps | Prompt context window (no long-term) |
| **Planning** | How actions are sequenced | Single-turn (MVP) → multi-step (Stage 4) |

## PUMA Agent Types

- **Stage 1–2:** Simple agents — single LLM call per issue/story, no tool use
- **Stage 4 (optional):** RAG agent — retrieves similar historical issues before classifying
- **Stage 5 (optional):** Multi-agent — Triage Agent + Estimation Agent + Reporter coordinated by Orchestrator

## 🔗 Connected Ideas
**Implemented via:** [[20 - Literature/20.6 Tools/LN-Tools-Ollama-ClaudeCode-OpenCode-BrowserOS]]
**Framework:** [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] (Agent Prompt Engineering section)
**Multi-agent patterns:** [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]]
**Extended by:** [[20 - Literature/20.6 Tools/LN-Tools-Dev-Stack]] (CrewAI, LangGraph)
**Architecture:** [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]] | **MOC:** [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]

---
---
id: PN-Reproducibility-in-SE
title: "Reproducibility Crisis in LLM/SE Research"
type: permanent-note
category: concept
tags: [permanent, concept, reproducibility, se, llm, crisis, open-science]
aliases: ["Reproducibility", "Replication Crisis", "Open Science"]
created: 2026-03-01
maturity: growing
sources: ["[[20 - Literature/20.1 Papers/LN-Angermeir-2025-Reproducibility]]"]
---

# Reproducibility Crisis in LLM/SE Research

> **Atomic claim:** The inability to reproduce LLM-based SE research results — demonstrated by Angermeir et al. (2025) finding that 0/18 published artefacts are fully reproducible — is the primary methodological crisis motivating PUMA's design, which treats 100% reproducibility as a first-class requirement.

## 💡 The Problem

Three levels of reproducibility failure in current LLM+SE research:

1. **No artefact published** — majority of papers publish no code or data
2. **Incomplete artefact** — code/data published but missing dependencies, configuration, or data
3. **Runnable but not reproducible** — artefact executes but produces different results (due to non-determinism, API changes, hardware differences)

## PUMA's Reproducibility Protocol

| Requirement | Implementation |
|------------|---------------|
| Deterministic inference | seed=42, temperature=0 in all Ollama calls |
| Fixed environment | `requirements.txt` with pinned versions |
| Hardware independence | Docker Compose option; CPU-only constraint |
| Dataset stability | Zenodo DOI (permanent) + GitHub for TAWOS |
| Verification | `python src/verify_reproducibility.py` script |
| Install simplicity | ≤10 commands from README to running results |

## 🔗 Connected Ideas
**Evidence:** [[20 - Literature/20.1 Papers/LN-Angermeir-2025-Reproducibility]]
**Implemented in:** [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]] · [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] (Art. 1)
**Local inference rationale:** [[30 - Permanent/31 Concepts/PN-LLM-Local-vs-Cloud]]
**Cluster:** [[30 - Permanent/30 Zettelkasten-Hub/ST-Reproducibility-Cluster]]
**Applied in:** [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] (§3.8)

---
---
id: PN-Uniqueness-Trap
title: "The Uniqueness Trap in Project Management"
type: permanent-note
category: concept
tags: [permanent, concept, project-management, bias, planning-fallacy, flyvbjerg]
aliases: ["Uniqueness Trap", "Planning Fallacy", "Reference Class Forecasting"]
created: 2026-03-01
maturity: growing
sources: ["20 - Literature/20.1 Papers/LN-Flyvbjerg2023-BigThings"]
---

# The Uniqueness Trap in Project Management

> **Atomic claim:** The systematic tendency of project managers to treat each project as absolutely unique — thereby rejecting applicable historical evidence — is a documented cognitive bias that LLM few-shot prompting partially corrects by forcing anchoring to historical base rates.

## 💡 The Concept

Flyvbjerg & Gardner (2023) describe the Uniqueness Trap as a form of inside-view thinking: focusing on the specific features of the current project while ignoring the statistical distribution of outcomes from similar past projects.

**Outside view / Reference Class Forecasting:** The corrective strategy is to explicitly identify a reference class of similar past projects and use their outcome distribution to anchor predictions.

## Connection to PUMA

Few-shot prompting implements a lightweight form of Reference Class Forecasting:
- The k examples in the prompt = a "reference class" of similar historical issues/stories
- The model estimates probability or classification anchored to these examples
- This is precisely what H2 tests: does few-shot estimation improve over uncalibrated zero-shot?

## 🔗 Connected Ideas
**Source:** [[20 - Literature/20.2 Books/LN-Books-KeyReferences]] (Flyvbjerg & Gardner, 2023)
**Key thinker:** [[30 - Permanent/37 Persons/PER-Flyvbjerg-Bent]]
**Applied in:** [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] (few-shot as reference class)
**Hypothesis:** [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] (H2 rationale)
**Chapter:** [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] (§1.1 problem 3)

---
---
id: PN-Red-Teaming
title: "Red Teaming — Cognitive Self-Auditing"
type: permanent-note
category: framework
tags: [permanent, framework, red-teaming, critical-thinking, research-quality]
aliases: ["Red Team", "Rival Hypothesis", "Counter-argument"]
created: 2026-03-01
maturity: evergreen
---

# Red Teaming — Cognitive Self-Auditing

> **Atomic claim:** Actively constructing the strongest possible argument against your own conclusions — before submitting or publishing — is the single most effective defence against confirmation bias in research.

## 💡 The Practice

Red teaming in research means:

1. **Rival hypotheses** — "What alternative explanation fits this evidence equally well?"
2. **Counter-search** — Actively search for studies that *contradict* your finding
3. **Adversarial prompt** — Ask an LLM: "Argue against my conclusion using only the evidence I have provided"
4. **Devil's advocate** — Have a colleague (or Claude) steelman the opposing view

## Red Team Prompts for PUMA

```
[For hypothesis review]
ROLE: You are a senior reviewer at ICSE 2026 with high standards for empirical rigour.
CONTEXT: Here is my hypothesis and planned experimental design: [PASTE H1/H2 + DESIGN]
OBJECTIVE: Identify the 3 most serious weaknesses in this design that could invalidate the results.
INSTRUCTIONS: Focus on: (1) validity threats, (2) alternative explanations, (3) baseline appropriateness.
Be adversarial, not constructive. I need to know the worst-case critique.
FORMAT: Numbered list with: Weakness | Why it matters | How severe (High/Med/Low)
```

```
[For result interpretation]
Here are my experimental results: [RESULTS TABLE]
I conclude that [MY CONCLUSION].
Generate 3 alternative interpretations of these results that would NOT support my conclusion.
For each: what additional evidence would distinguish your interpretation from mine?
```

## 🔗 Connected Ideas
**Part of:** [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method]] (Level 3)
**Example prompt:** [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Advanced-Prompts-IIPR-Anchoring-AgentOS]]
**Used in:** [[40 - Projects/PUMA/41.5 Discussion/PR-PUMA-Ch5-Discussion]]
**Frameworks:** [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]] (adversarial critique tools)

---
---
id: PN-Agent-Prompt-Engineering
title: "Agent Prompt Engineering & Agent OS"
type: permanent-note
category: framework
tags: [permanent, framework, agent-prompt-engineering, agent-os, system-prompt]
aliases: ["Agent PE", "System Prompt Design", "Agent OS"]
created: 2026-03-01
maturity: growing
---

# Agent Prompt Engineering & Agent OS

> **Atomic claim:** Designing prompts for LLM agents (multi-step, tool-using systems) requires different principles than single-turn prompting — specifically: explicit role anchoring, tool description clarity, output schema enforcement, and failure mode handling.

## 💡 Agent vs Single-Turn Prompting

| Dimension | Single-turn | Agent prompt |
|-----------|------------|-------------|
| Role | Helpful assistant | Named agent with specific mandate |
| Context | What user provides | State + history + tool results |
| Output | Natural language | Structured (JSON schema enforced) |
| Failure | Poor answer | Cascading errors, tool misuse |
| Memory | Stateless | Must reconstruct state each turn |

## PUMA Agent System Prompts

### Triage Agent System Prompt (Stage 1–2)
```
You are the PUMA Triage Agent v1.0.
Your sole function is to classify Jira issue priority.
You MUST respond with valid JSON matching this schema:
{
  "priority": "Critical" | "High" | "Medium" | "Low",
  "reasoning": "string (max 100 words)",
  "confidence": "high" | "medium" | "low"
}
Never deviate from this schema. Never add explanations outside the JSON.
If you cannot determine priority, use {"priority": "Low", "confidence": "low"}.
```

## Agent OS Concept

"Agent OS" refers to the orchestration layer that manages multiple agents:
- Routes tasks to appropriate agents (Triage vs Estimation vs Reporter)
- Manages agent context and state
- Enforces output schemas and ethics guardrails
- In PUMA: Python orchestrator + Ollama as inference backend

## 🔗 Connected Ideas
**Implements:** [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]] (extended for agents)
**Used in:** [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]] · [[40 - Projects/PUMA/41.6 Specs/SP-Triage-Agent]]
**Multi-agent reference:** [[20 - Literature/20.6 Tools/LN-Tools-Dev-Stack]] (CrewAI, LangGraph) · [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]]
**MOC:** [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
