---
id: LN-Repos-ReferenceCode
title: "📦 Repository Notes — Analysed Reference Code & Architectural Patterns"
type: literature-repos
tags: [tools, repositories, github, open-source, reference, code-patterns, puma, academic-writing, api, architecture, backlog, benchmark, crewai, dev-tools, devops, docker, effort-estimation, gpt, human-in-the-loop, ide, issue-triage, jira, langgraph, literature-note, llm, moc, multi-agent, nlp, openai, openhands, orchestration, planning, project-management, prompt-engineering, react, reasoning-action, research, rest-api, scrum, software-engineering, sprint, story-points, swe-bench, template, tool-use, triage, workflow]
created: 2026-04-06
updated: 2026-04-06
---

# 📦 Repository Notes — Analysed Reference Code & Architectural Patterns

> [!info] Overview
> Repositories analysed as **architectural references** or sources of **reusable code patterns**.
> These are NOT dependencies — they are studied, understood, and selectively adapted.
> All adaptations are declared in Section 1.8 (AI/tool use declaration).

---

## Primary Reference Architecture

### fastapi-langgraph-agent-production-ready-template
- **GitHub**: https://github.com/wassim249/fastapi-langgraph-agent-production-ready-template
- **Author**: Wassim Mansouri
- **Stars**: ~500 (verified active)
- **PUMA relevance**: ⭐⭐⭐⭐⭐ — Production-quality FastAPI + LangGraph project template
- **Reusable components**:
  - Docker Compose multi-service scaffold (FastAPI + PostgreSQL + Redis)
  - LangGraph checkpoint integration with PostgreSQL (`langgraph_checkpoint_postgres`)
  - Middleware for observability (Arize Phoenix integration pattern)
  - Project structure conventions (`app/`, `agents/`, `tools/`, `schemas/`)
- **PUMA adaptation**: Base scaffold for PUMA REST API + LangGraph orchestration backend

### langgraph-multi-agent (sushmitanandi)
- **GitHub**: https://github.com/sushmitanandi/langgraph-multi-agent
- **PUMA relevance**: ⭐⭐⭐⭐ — Supervisor-worker pattern in LangGraph
- **Reusable components**:
  - Supervisor agent with conditional routing (`route_to_worker`)
  - Shared state management via `TypedDict`
  - Worker agent message passing patterns
- **PUMA adaptation**: Base pattern for Stage 5 Manager Agent (routes issues to Triage/Estimation/Planning sub-agents)

---

## Agentic PM Patterns

### sdi2200262/agentic-project-management
- **GitHub**: https://github.com/sdi2200262/agentic-project-management
- **Stars**: ~1,300 (April 2026)
- **PUMA relevance**: ⭐⭐⭐⭐ — Explicit agentic project management framework
- **Reusable components**:
  - Jira API connector patterns (authentication, issue retrieval, field mapping)
  - Project context management (storing project-specific semantic context)
  - Sprint report generation patterns
  - VS Code / Cursor integration patterns
- **Note**: No associated academic paper; referenced as engineering reference only

### vency-ai/agentic-scrum
- **GitHub**: https://github.com/vency-ai/agentic-scrum
- **PUMA relevance**: ⭐⭐⭐ — Scrum roles as CrewAI agents
- **Reusable components**:
  - CrewAI role definitions for Scrum roles (PO, SM, Developer)
  - Per-role tool assignment patterns
  - Sprint workflow orchestration with agents
- **PUMA adaptation**: Role prompt templates for PUMA Stage 5 PM agent personas

### friendliai/aipm
- **GitHub**: https://github.com/friendliai/aipm
- **Stars**: ~20 (small but highly specific)
- **PUMA relevance**: ⭐⭐⭐ — Direct Jira integration for sprint management
- **Reusable components**:
  - Sprint velocity query logic
  - Backlog analysis queries
  - SLA checking patterns for issue prioritisation
- **Note**: Small project, no academic backing; used only for Jira API pattern analysis

---

## Software Engineering Agent Patterns

### OpenHands/OpenHands (OpenDevin)
- **GitHub**: https://github.com/OpenHands/OpenHands
- **Stars**: ~67,300 (April 2026)
- **License**: MIT
- **Paper**: Wang et al. (2024). arXiv:2407.16741 → [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Wang-2024-OpenHands]]
- **PUMA relevance**: ⭐⭐⭐⭐ — Production-grade agentic platform with HITL
- **Reusable components**:
  - Observation-Action-Feedback loop pattern (aligned with ReAct)
  - Human-in-the-Loop approval gate implementation
  - Sandboxed code execution architecture
- **PUMA use**: Development phase (F2–F3) for scaffolding; Stage 5 architecture reference

### princeton-nlp/SWE-bench
- **GitHub**: https://github.com/princeton-nlp/SWE-bench
- **HuggingFace**: `princeton-nlp/SWE-bench`
- **Paper**: Jimenez et al. (2023). arXiv:2310.06770 → [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Jimenez-2023-SWEbench]]
- **PUMA relevance**: ⭐⭐⭐⭐ — Benchmark design reference
- **Reusable components**:
  - Benchmark evaluation harness design (task definition → model evaluation → results reporting)
  - Stratified task selection methodology
  - Ground truth validation patterns
- **PUMA adaptation**: PUMA's evaluation harness follows the same pattern (issue → LLM → parse → compare to ground truth → metrics)

### unit-mesh/autodev-workbench
- **GitHub**: https://github.com/unit-mesh/autodev-workbench
- **PUMA relevance**: ⭐⭐⭐ — Semantic context extraction from software projects
- **Reusable components**:
  - `ContextBuilder` pattern for feeding LLMs with project-specific context (issue history, commit context, file structure)
  - Semantic chunking of software project information
- **PUMA adaptation**: Stage 4 context enrichment — extracting relevant project context to inject into triage prompts

---

## Technical Debt & Issue Analysis

### yangxingguang/satd_sentiment_GPT
- **GitHub**: https://github.com/yangxingguang/satd_sentiment_GPT
- **PUMA relevance**: ⭐⭐⭐ — Technical debt sentiment classification in issue comments
- **Reusable components**:
  - Prompts for sentiment-aware issue analysis (beyond just classification labels)
  - Technical debt classification prompt templates
  - GPT-based issue content analysis patterns
- **PUMA use**: Stage 1 prompt engineering reference for adding sentiment-aware context to triage prompts

---

## ⚠️ Repositories Excluded

| Repository | Reason |
|-----------|--------|
| `crewship/fastapi-langgraph-template` | Repository not found at this exact path; likely moved or renamed. The `wassim249` template (above) serves the same purpose and is verified. |

---

## How to Use Reference Repositories

1. **Clone locally** for analysis: `git clone --depth=1 [repo_url]`
2. **Analyse architecture** (do not copy code directly)
3. **Extract pattern** → document in this note with PUMA-specific adaptation notes
4. **Implement from scratch** using the pattern as reference (not copy-paste)
5. **Declare** in Section 1.8 (AI/tool use declaration) if code patterns inspired PUMA implementation

---

## Related Notes

- [[20 - Literature/20.5 Repos-Code/LN-Repos-AgentFrameworks]]
- [[50 - Areas/53 Code-Dev/Code-Review-Log]]
- [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
