---
id: PT-P2-002
title: "Cursor / Claude Code — Implementation Prompts for PUMA"
type: prompt-note
tool: cursor-claude-code
phase: Phase2-Development
step: "Implementation"
methodology: [VibeCoding, SDD, TDD, Reproducibility]
tags: [prompt, cursor, claude-code, implementation, langgraph, puma, anthropic, api, architecture, carbon-footprint, chain-of-thought, checklist, claude, codecarbon, cot, dashboard, data-formats, database, dev-tools, devops, docker, effort-estimation, few-shot, ide, issue-triage, jira, json, llm, local-llm, moc, ollama, prompt-template, pydantic, python, reasoning, sdd, spec-driven-development, sql, story-points, sustainability, tdd, triage, workflow, zero-shot]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 💻 Cursor / Claude Code — Implementation Prompts for PUMA

**Tool**: Cursor AI + Claude Code
**Phase**: Phase 2 — Development
**Step**: Implementation
**Methodology**: SDD + TDD + Vibe Coding (with rigour)

---

## Prompt A — LangGraph Triage Agent Implementation

```
Role: Senior AI engineer implementing a research-grade LangGraph agent.

Context: PUMA's triage agent classifies Jira issue priority using Ollama local inference. It must: (1) accept a JiraIssue input, (2) apply the correct prompting strategy (zero-shot/few-shot-3/few-shot-6/CoT), (3) call Ollama API with temperature=0, seed=42, (4) validate output with Pydantic (TriageResult schema), (5) retry up to 3 times if validation fails, (6) log the inference to Arize Phoenix, (7) record carbon with CodeCarbon.

BEFORE WRITING CODE:
1. Describe the LangGraph state machine: nodes, edges, state TypedDict, entry/exit points.
2. List files to create and their purpose.
3. Wait for my confirmation.
THEN: Implement ONE component at a time. Show diff before applying.

Requirements:
- Python 3.11, type hints everywhere, Google-style docstrings
- async/await for all I/O
- structlog for logging (never print())
- pydantic-settings for configuration (never hardcoded values)
- pytest tests: 1 happy path, 3 edge cases, 2 error cases per component
- All tests must pass: pytest tests/ -v returns 0 failures
```

## Prompt B — Experiment Runner with Reproducibility

```
Role: Research software engineer building a reproducible experiment runner.

Context: PUMA runs 4 conditions × 2 models × 200 issues = 1600 inference calls. The runner must: (a) be resumable (if interrupted, don't re-run completed issues), (b) log every result with: issue_id, model, strategy, prediction, ground_truth, latency_s, tokens_in, tokens_out, carbon_g, (c) export results as JSON with metadata (git commit hash, datetime, hardware info), (d) generate a summary report after completion.

Generate: (a) experiment runner (async batch processor with progress bar), (b) checkpoint/resume logic using SQLite, (c) result export with full metadata, (d) summary statistics calculation. All code must run: poetry run python src/evaluation/run_experiment.py --condition zero-shot --model llama3.2:8b --seed 42.

Requirements: Makefile target `run-experiment`. Docker Compose ready. No hardcoded paths.
```

## Prompt C — Pydantic Validation + Retry Logic

```
Implement the output validation layer for PUMA's triage agent using Pydantic AI.

The TriageResult schema:
- priority: Literal["Blocker", "Critical", "Major", "Minor", "Trivial"]
- confidence: float (0.0 to 1.0)
- reasoning: str (minimum 20 characters)
- evidence: list[str] (at least 1 item, each from the issue text)

Validation rules:
1. If priority is not one of the 5 valid labels → ValidationError → retry with correction prompt
2. If confidence > 1.0 or < 0.0 → clamp and log warning
3. If reasoning < 20 chars → too brief → retry
4. If evidence list is empty → retry with instruction "cite specific words from the issue"
5. After 3 failed validations → log as FAILED, record null result, continue to next issue

Generate: (a) Pydantic model with validators, (b) retry wrapper with exponential backoff, (c) failure logging to Arize Phoenix, (d) pytest tests for all validation rules.
```

## Prompt D — Docker Compose Stack for PUMA

```
Generate the complete Docker Compose stack for PUMA's experimental environment:

Services required:
1. ollama: Ollama server with model volume mount
2. qdrant: Qdrant vector store (Stage 4 only)
3. postgres: PostgreSQL for LangGraph checkpoints
4. phoenix: Arize Phoenix for LLM observability
5. puma-api: FastAPI backend (for Stage 4+ dashboard)

Requirements:
- All service health checks
- Named volumes for persistence (models, vectors, checkpoints)
- .env.example with all required variables
- Startup order: ollama → qdrant → postgres → phoenix → puma-api
- Air-gapped mode: works without internet after initial setup
- Makefile targets: make setup, make run, make experiment, make stop, make clean

Format: docker-compose.yml, .env.example, Makefile (complete, runnable).
```

---

## PUMA Relevance

These prompts are the literal coding workflow prompts used when implementing PUMA. They enforce SDD discipline (spec before code) and reproducibility requirements from the Constitution. All generated code must pass the quality checklist in [[20 - Literature/20.6 Tools/LN-Tools-Dev-Environment]].

---

## Related Notes

- [[SP-Architecture]]
- [[20 - Literature/20.6 Tools/LN-Tools-Dev-Environment]]
- [[20 - Literature/20.6 Tools/LN-Tools-AI-Assistants-LLMs]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
