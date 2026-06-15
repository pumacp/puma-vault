---
id: PT-P2-001
title: "OpenCode — Architecture Design with SDD and BMAD"
type: prompt-note
tool: claude
phase: Phase2-Development
step: "Architecture-Design"
methodology: [SDD, BMAD, OpenSpec, DSR, RCOIF]
tags: [prompt, sdd, bmad, architecture, langgraph, puma, anthropic, api, backlog, carbon-footprint, chain-of-thought, codecarbon, cot, crewai, data-formats, dev-tools, devops, docker, dsr, effort-estimation, few-shot, human-in-the-loop, ide, issue-triage, jira, json, llama, llm, local-llm, mas, mcp, meta, metrics, moc, multi-agent, ollama, openspec, orchestration, pipeline, planning, precision-recall, prompt-engineering, prompt-template, prompting, protocol, pydantic, python, rag, rcoif, reasoning, research-methodology, retrieval, smart-pmo, spec-driven-development, sprint, story-points, sustainability, template, triage, workflow, zero-shot]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 🏛️ OpenCode — Architecture Design with SDD and BMAD

**Tool**: OpenCode (Anthropic) / OpenCode
**Phase**: Phase 2 — Development
**Step**: Architecture Design
**Methodology**: Spec-Driven Development (SDD) + BMAD

---

## Master Architecture Prompt (RCOIF + SDD)

```
Role: Senior software architect specializing in LLM-based agent systems and research prototype design.

Context: I am implementing PUMA's experimental pipeline: a Python system that runs 4 prompting strategies × 2 models on 200 Jira issues for priority triage classification. Stack: Python 3.11, LangGraph 0.2, Pydantic AI, Ollama (local inference), Qdrant (Stage 4 RAG), FastAPI, Arize Phoenix (observability), CodeCarbon (sustainability), Docker Compose. Constraint: no external API calls during experiments, 100% local inference, reproducible (seed=42, temperature=0).

Objective: Design the complete PUMA experimental architecture following Spec-Driven Development principles.

Instructions (BMAD-aligned):
1. CONSTITUTION: Generate a 5-point constitution.md for PUMA's code: (a) reproducibility-first, (b) human-in-the-loop for decisions >threshold, (c) every inference logged, (d) no hardcoded values, (e) carbon measured.
2. SYSTEM PROMPT SPECIFICATION: Before writing code, write the specification as a structured Markdown document covering: components, interfaces, data flow, error handling, and evaluation protocol.
3. DIRECTORY STRUCTURE: Produce the complete project tree with purpose comment for each file/folder.
4. COMPONENT DESIGN: For each core component (data loader, prompt engine, model router, output validator, metrics calculator, carbon tracker, result exporter), specify: inputs, outputs, dependencies, and failure modes.
5. ARCHITECTURE DECISION RECORDS (ADRs): Write ADRs for: (a) LangGraph vs CrewAI for orchestration, (b) Qdrant vs ChromaDB for Stage 4, (c) Pydantic AI vs raw JSON parsing for output validation, (d) Ollama API vs llama.cpp for inference.

Format: Constitution.md block. Directory tree (commented). Component specs table. 4 ADR documents.
```

---

## SDD Spec Generation Prompt

```
Role: Spec-Driven Development practitioner.

Context: PUMA's triage module needs a precise specification before any code is written.

Generate OpenSpec-format specification for the PUMA triage agent:
1. AGENT ROLE: What it does, what it must not do, what it escalates to human.
2. INPUT SCHEMA (Pydantic): JiraIssue model with all required fields.
3. OUTPUT SCHEMA (Pydantic): TriageResult model with: priority (Literal enum), confidence (float 0–1), reasoning (str), evidence (list[str]).
4. PROMPT TEMPLATE SPEC: Template variables, instructions per strategy (zero-shot/few-shot/CoT), output format instruction.
5. VALIDATION RULES: What constitutes a valid vs invalid output. Retry logic (max 3 attempts).
6. OBSERVABILITY: What to log per inference (timestamp, model, strategy, input tokens, output tokens, latency, carbon g).
7. SUCCESS CRITERIA: The agent passes spec if F1-macro ≥ 0.55 on the 200-issue test set.

Format: Structured Markdown specification document. All schemas as Pydantic code blocks.
```

---

## BMAD Agent Roster Prompt

```
Role: BMAD methodology practitioner.

Context: PUMA Phase 5 (Smart PMO) requires a multi-agent system. I need to define the BMAD agent team following the Mary → Quinn → Alex → Dev → QA workflow.

Design the PUMA Smart PMO BMAD agent roster:
- Mary (Business Analyst): analyzes Jira sprint data, identifies risk indicators
- Quinn (Product Manager): prioritizes backlog items, forecasts velocity
- Alex (Architect): designs agent workflow for each sprint planning cycle
- Dev (Developer): implements triage and estimation calls via MCP/Jira API
- QA (Quality Assurance): validates agent outputs against Constitution rules, triggers HITL

For each agent: (a) precise role definition, (b) tools available (MCP connectors), (c) input/output schema, (d) when to escalate to human (bounded autonomy threshold), (e) system prompt (complete, ready to use in LangGraph).

Format: Agent roster table. One complete system prompt per agent. Escalation decision tree.
```

---

## PUMA Relevance

These prompts generate the architecture specification that guides PUMA's entire codebase. Following SDD/BMAD means the spec is the source of truth and code is derived from it — which guarantees [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] compliance.

---

## Related Notes

- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]]
- [[SP-Architecture]]
- [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
