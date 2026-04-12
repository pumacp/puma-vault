---
id: PT-P1S1-006
title: "Undermind — High-Precision PUMA Research Query"
type: prompt-note
tool: undermind
phase: Phase1-Research
step: "01-Literature-Exploration"
methodology: [SLR, DSR, RCOIF]
tags: [prompt, undermind, deep-research, puma, rcoif]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 🔍 Undermind — High-Precision PUMA Research Query

**Tool**: Undermind (https://app.undermind.ai)
**Phase**: Phase 1 — Research
**Step**: 01 — Literature Exploration
**Framework**: RCOIF (Role, Context, Objective, Instructions, Format)

---

## Master Prompt (RCOIF Structure)

```
Role: Expert Academic Reviewer in AI-Driven Project Management and Software Engineering Research.

Context: I am developing PUMA (Project Understanding and Management with Agents), a reproducible benchmark for evaluating local LLM agents (Ollama, Llama 3.2, Mistral 7B) in ICT project management tasks: issue triage (priority classification on Jira Social Repository) and effort estimation (story points on TAWOS dataset). The project follows Design Science Research methodology and produces a TFG at UOC.

Objective: Identify the state of the art and empirical evidence on LLM agents and multi-agent systems applied specifically to software project management task automation, focusing on reproducible evaluation and sustainability (local inference, CodeCarbon).

Priority Research Areas:
1. Operational Automation: Issue triage (classification, severity, routing) and effort estimation using historical Jira/GitHub data. Studies addressing the planning bias "Uniqueness Trap" (Flyvbjerg).
2. Benchmark Design: Reproducible evaluation methodologies for LLM agents in SE contexts. Datasets compatible with PUMA (MSR-style, Jira Social Repository, TAWOS).
3. Technical Architectures: RAG pipelines, LangGraph orchestration, Pydantic AI validation, Arize Phoenix observability for PM agents.
4. Governance and Ethics: Human-in-the-loop mechanisms, traceability, hallucination detection in PM metrics.

Requirements:
- Prioritize Q1 journals and top venues (ICSE, MSR, EASE, FSE, ASE) from 2023–2026.
- Include empirical studies with concrete metrics (F1, MAE, Precision, Recall).
- Identify documented risks: hallucinated metrics and decision traceability loss.
- Flag papers with available reproducible artifacts or open datasets.

Format: Structured report with: (1) Thematic map of findings, (2) Key papers per theme with metrics, (3) Research gaps relevant to PUMA, (4) Recommended reading order.
```

---

## Focused Follow-Up Prompts

### Follow-Up A — Gap Extraction

```
From the papers identified, extract the top 5 research gaps most relevant to PUMA. For each gap: explain why it exists, why it matters for reproducible benchmarking, and how PUMA could address it. Use the FINER criteria (Feasible, Interesting, Novel, Ethical, Relevant) to prioritize.
```

### Follow-Up B — Baseline Identification

```
Identify the baseline methods used in the papers for issue triage and effort estimation. Which baselines would be most appropriate for PUMA to compare against? Include both rule-based heuristics and ML-based approaches.
```

---

## PUMA Relevance

Undermind's deep synthesis capability makes it ideal for generating the initial evidence map that feeds into PUMA Section 2 (Materials and Methods). The structured output maps directly to [[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-Ch2-Ch3-Ch4-Ch5]].

---

## Related Notes

- [[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-Ch2-Ch3-Ch4-Ch5]]
- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]]
- [[PT-P1S1-005-Consensus-EvidenceSearch]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
- [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]]
