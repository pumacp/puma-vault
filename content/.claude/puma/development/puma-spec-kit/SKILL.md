---
name: puma-spec-kit
description: Spec Kit templates for quick component specifications in PUMA — lightweight spec format for tools, datasets, APIs, and quick architecture decisions. Use when a full OpenSpec is overkill but a Spec Kit card is needed to document a component. Includes templates for architecture diagrams, agent cards, dataset cards, and tool cards. Complements puma-sdd and puma-openspec for the complete SDD framework spectrum.
---

# PUMA Spec Kit — Lightweight Specification Templates

## When to Use Spec Kit vs. OpenSpec vs. Full SDD

| Situation | Use |
|-----------|-----|
| Quick tool or API documentation | **Spec Kit** |
| Agent interface for pipeline | **OpenSpec** |
| Full research component with evaluation | **Full SDD** |
| BMAD agent roster entry | **Spec Kit (Agent Card)** |
| Dataset used in experiment | **OpenSpec (Dataset Spec)** |

## Template 1: Component Card

5-minute spec for any component:

```markdown
---
title: "SP-Kit - [Component Name]"
type: SP
format: spec-kit
status: draft | approved
created: YYYY-MM-DD
---

# [Component Name]

**Purpose**: [One sentence — what does this do?]
**Owner**: [Agent role responsible]
**Status**: [draft | approved | deprecated]

## Interface (5 lines max)
- Input: [type and description]
- Output: [type and description]
- Trigger: [when is this called?]
- Error: [what happens on failure?]

## Config
```
key: value
key: value
```

## Done When
- [ ] [Measurable acceptance criterion 1]
- [ ] [Measurable acceptance criterion 2]
```

## Template 2: Agent Card

For BMAD agent roster entries:

```markdown
---
title: "AGENT - [Agent Name]"
type: BMAD
format: agent-card
---

# Agent: [Name]

**Role**: [Title]
**Persona**: [One sentence description of this agent's expertise]
**Primary skill**: [puma-skill-name]

## Responsibilities
- [Responsibility 1]
- [Responsibility 2]

## Tools Available
- [Tool 1]: [brief description]
- [Tool 2]: [brief description]

## Inputs (from previous agent or user)
- [Input type]: [description]

## Outputs (to next agent or vault)
- [Output type]: [file or result]

## Decision Authority
- **Can decide**: [what this agent can decide autonomously]
- **Must escalate**: [what requires human or orchestrator approval]

## Prompt Template
System prompt in: `[[PT-Agent-[Name]-v1]]`
```

## Template 3: Dataset Card

Quick reference for any dataset used in PUMA:

```markdown
---
title: "SP-Kit - Dataset - [Name]"
type: SP
format: dataset-card
---

# Dataset: [Name]

**Full name**: [Full dataset name]
**Source**: [URL or paper reference]
**License**: [License type]
**Last verified**: YYYY-MM-DD

## Quick Stats
| Property | Value |
|----------|-------|
| Total records | N |
| Features | [list key features] |
| Target labels | [list target columns] |
| Format | CSV / JSON / Parquet |
| Size | X MB |

## Access
```python
# How to load this dataset
import pandas as pd
df = pd.read_csv("data/[dataset].csv")
```

## Known Issues
- [Issue 1, if any]

## PUMA Usage
- Used in: [EX-NNN, EX-NNN]
- Hypothesis: [H1 | H2]
- Split: [80/20 stratified]
```

## Template 4: Tool Card

For tools in the PUMA ecosystem:

```markdown
---
title: "SP-Kit - Tool - [Name]"
type: SP
format: tool-card
---

# Tool: [Name]

**Category**: [AI Research | Dev | Bibliography | LLM Runtime | ...]
**URL**: [tool URL]
**Version used**: [version]
**PUMA role**: [How PUMA uses this tool]

## Quick Start
```bash
# Installation
pip install [package] --break-system-packages
# OR
ollama pull [model]

# Usage
[minimal working example]
```

## Key Commands / API
| Command | Purpose |
|---------|---------|
| [command] | [what it does] |

## Integration Point
- Data in: [where tool gets input in PUMA]
- Data out: [where tool sends output in PUMA]
- Replaces: [what it replaces, if applicable]
```

## Template 5: Architecture Decision Record (ADR)

For documenting significant architectural choices:

```markdown
---
title: "ADR - [Decision Title]"
type: SP
format: adr
status: accepted | superseded | deprecated
date: YYYY-MM-DD
---

# ADR: [Decision Title]

## Status
[Accepted | Superseded by ADR-NNN | Deprecated]

## Context
[What situation forced this decision?]
[What constraints existed?]

## Decision
[What was decided?]
[State it clearly and directly.]

## Rationale
[Why this option over alternatives?]
[What tradeoffs were accepted?]

## Alternatives Considered
| Alternative | Rejected because |
|-------------|-----------------|
| [Alt 1] | [reason] |
| [Alt 2] | [reason] |

## Consequences
- **Positive**: [what this enables]
- **Negative**: [what this forecloses]
- **Risks**: [what to watch for]

## Related specs
- [[SP-related-spec]]
```

## Pre-Built PUMA Spec Kit Cards

Quick-reference cards for common PUMA components:

### Ollama Runtime Card
- **Purpose**: Local LLM inference without cloud API
- **Model**: qwen2.5:3b (default PUMA benchmark model)
- **Config**: `{temperature: 0.0, seed: 42, num_predict: 100}`
- **Start**: `ollama serve` then `ollama pull qwen2.5:3b`

### CodeCarbon Card  
- **Purpose**: CO₂ emissions tracking for all experiments
- **Install**: `pip install codecarbon --break-system-packages`
- **Usage**: Wrap all inference with `EmissionsTracker(project_name="PUMA-EX-NNN")`
- **Output**: emissions in kg CO₂eq → multiply by 1000 for gCO₂eq

### Zotero Integration Card
- **Purpose**: Bibliography management + Obsidian import
- **Library**: User ID 20166221 (public: zotero.org/pumacp/library)
- **Shortcut**: `Ctrl+Shift+Z` in Obsidian to import
- **Tag convention**: `#puma-candidate` → `#puma-include`
