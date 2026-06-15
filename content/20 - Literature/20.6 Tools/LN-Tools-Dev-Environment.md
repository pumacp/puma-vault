---
id: LN-Tools-Dev-Environment
title: "⚙️ Tools — Development Environment, IDE & Technical Stack"
type: literature-tools
tags: [tools, development, vscode, docker, python, langgraph, fastapi, puma, academic-writing, aiops, api, architecture, carbon-footprint, chain-of-thought, cicd, cot, crewai, dashboard, data-formats, dev-tools, devops, effort-estimation, embeddings, github, human-in-the-loop, ide, issue-triage, json, langchain, literature-note, llm, local-llm, metrics, moc, multi-agent, ollama, opencode, openhands, openspec, orchestration, precision-recall, project-management, pydantic, react, reasoning, reasoning-action, research, rest-api, scrum, sdd, smart-pmo, spec-driven-development, story-points, sustainability, triage, vector-db, workflow]
created: 2026-04-06
updated: 2026-06-15
phase: [F2, F3, F4, F5]
---

# ⚙️ Tools — Development Environment, IDE & Technical Stack

> [!info] Overview
> All development, coding, and infrastructure tools used in PUMA Stages F2–F4 (implementation).
> Core principle: every tool choice supports reproducibility (Constitution Article 1).

---

## IDE & Editors

### Visual Studio Code (VS Code)
- **URL**: https://code.visualstudio.com
- **Function**: Primary Python development IDE
- **Phase**: F2 – F4
- **Key extensions**: Python (Microsoft), Jupyter, Docker, GitHub Copilot, GitLens
- **PUMA use**: All experiment code development; Jupyter notebook editing; Docker configuration; Git integration
- **Justification**: Most widely used IDE in Python/ML ecosystem; native Copilot integration; extensive debugging tools

### GitHub Copilot
- **URL**: https://github.com/features/copilot
- **Function**: AI coding assistant integrated into VS Code
- **Phase**: F2 – F4
- **PUMA use**: Python autocompletion; explanation of reference repository code patterns; boilerplate generation (always reviewed by author)
- **Declaration**: Declared as AI assistance tool in Section 1.8; all generated code reviewed and understood by author before integration
- **Note**: Does NOT replace author understanding; all code reviewed, tested, and validated

### Cursor AI
- **URL**: https://www.cursor.com
- **Function**: AI-native IDE with multi-file context understanding
- **Phase**: F2 – F3
- **PUMA use**: Refactoring larger PUMA components; understanding multi-file agent codebases from reference repositories; contextual suggestions across the full codebase
- **When used**: For complex refactoring tasks where VS Code + Copilot's context window is insufficient

---

## Agentic Coding Assistants

### OpenHands (All-Hands-AI)
- **URL**: https://github.com/OpenHands/OpenHands *(formerly OpenDevin)*
- **Function**: Autonomous AI software engineer agent with sandbox execution
- **Phase**: F2 – F3
- **PUMA use**: Generating scaffolding for boilerplate components (data connectors, JSON schemas); repetitive coding tasks; sandbox-safe code execution with human review
- **Key features**: Sandboxed environment prevents unintended side effects; HITL approval gate; code execution logs
- **Paper**: Wang et al. (2024). arXiv:2407.16741 → [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Wang-2024-OpenHands]]
- **Declaration**: All generated code reviewed and validated; declared in Section 1.8

### OpenCode
- **URL**: https://opencode.ai
- **Function**: AI-powered terminal CLI assistant
- **Phase**: F2 – F4
- **PUMA use**: Intelligent command completion for Docker, PostgreSQL, Qdrant administration; error explanation; diagnostic command suggestions
- **Justification**: Reduces cognitive load on DevOps tasks (Docker compose, psql queries) allowing focus on PM+LLM research contributions

### Warp AI Terminal
- **URL**: https://www.warp.dev
- **Function**: AI-integrated smart terminal (macOS/Linux)
- **Phase**: F2 – F4
- **PUMA use**: Shell command autocompletion; inline error explanation; Ollama model management commands; productivity on DevOps operations
- **Justification**: Reduces time on system administration; all suggested commands reviewed before execution

---

## Infrastructure & Containerisation

### Docker Desktop + Docker Compose
- **URL**: https://www.docker.com
- **Function**: Full containerisation of the PUMA stack
- **Reference**: Laster, B. (2018). *Docker in action* (2nd ed.). Manning. https://www.manning.com/books/docker-in-action-second-edition
- **Phase**: F2 – F4
- **PUMA use**: Complete reproducible deployment of all PUMA services:
  ```yaml
  services:
    ollama:        # Local LLM inference
    qdrant:        # Vector database
    postgres:      # LangGraph checkpoint store
    fastapi:       # PUMA REST API
    streamlit:     # Results dashboard
  ```
- **Justification**: Reproducibility (Constitution Article 1) — Docker Compose + fixed versions = identical environment on any machine. Alternative to `requirements.txt` only approaches.
- **Docker image tag strategy**: All images pinned to specific digest (not `latest`)

### Poetry
- **URL**: https://python-poetry.org
- **Function**: Python dependency management with exact version locking
- **Phase**: F2 – F4
- **PUMA use**: `pyproject.toml` as single source of truth for all Python dependencies; `poetry.lock` for exact reproducible installs
- **Justification**: Stronger reproducibility than `requirements.txt`; handles transitive dependencies correctly
- **Key command**: `poetry install --no-root --sync` for clean environment replication

---

## Version Control & CI/CD

### Git + GitHub
- **URL**: https://github.com
- **Function**: Version control and open-source publication
- **Phase**: F2 – F5
- **PUMA use**:
  - All experiment code versioned (each experiment run tagged)
  - Commit messages as audit trail of design decisions
  - Public repository with MIT licence before project release (OE8)
  - README: ≤10 commands from zero to reproduced results
- **Branch strategy**: `main` (stable) / `experiment/stage-N` (active) / `release/v1.0` (project final)

### GitHub Actions
- **URL**: https://github.com/features/actions
- **Function**: Automated CI/CD pipelines
- **Phase**: F4 – F5
- **PUMA use**:
  - Automated test execution on each commit (pytest)
  - Code quality checks (flake8, black)
  - Docker image build verification
  - Reproducibility check: run Stage 1 mini-experiment (10 issues) and compare to stored expected results

---

## Agent Orchestration Frameworks

### LangGraph (LangChain)
- **URL**: https://langchain-ai.github.io/langgraph
- **Function**: Stateful multi-agent workflow framework with cyclic graph support
- **Phase**: F2 – F4
- **PUMA use**:
  - **Stage 4**: ReAct agent graph: retrieve → classify → reflect → output
  - **Stage 5**: SmartPMO cyclic state machine: triage agent → estimation agent → risk agent → manager orchestration
  - Checkpoint persistence in PostgreSQL for long-running agent workflows
- **Key patterns**: `StateGraph`, `TypedDict` state, conditional edges, human-in-the-loop interrupt points
- **Install**: `pip install langgraph langchain-community`
- **Related**: [[20 - Literature/20.1 Papers/Agent-Architectures/LN-IntelligentSparkAgents-2024]]

### CrewAI
- **URL**: https://docs.crewai.com
- **Function**: Declarative multi-agent role definition framework
- **Phase**: F2 – F3
- **PUMA use**: Defining agent roles, goals, and backstories for Stage 5 Smart PMO; complementary to LangGraph (CrewAI defines WHAT agents do; LangGraph defines HOW they are orchestrated)
- **Pattern**: `Crew([TriageAgent, EstimationAgent, PlanningAgent], process=Process.hierarchical)`
- **Reference repositories**: `vency-ai/agentic-scrum` (Scrum role patterns)

### Pydantic AI
- **URL**: https://ai.pydantic.dev
- **Function**: LLM output schema validation; automatic retry on validation failure
- **Phase**: F3 – F4
- **PUMA use**: Ensuring all agent outputs conform to defined schemas:
  - `TriageResult(priority: Literal["Blocker","Critical","Major","Minor"], reasoning: str)`
  - `EstimationResult(story_points: int, confidence: float, reasoning: str)`
- **Justification**: Reduces triage success rate failures (target >95%); schema violations trigger automatic retry (max 3)

---

## API & Observability

### FastAPI
- **URL**: https://fastapi.tiangolo.com
- **Function**: Python REST API framework with automatic Swagger UI
- **Phase**: F2 – F4
- **PUMA use**: Backend REST API exposing PUMA triage/estimation endpoints; async I/O for concurrent Ollama calls; auto-generated OpenAPI spec for documentation
- **Key endpoint examples**:
  - `POST /triage` — classify issue priority
  - `POST /estimate` — predict story points
  - `GET /results/{run_id}` — retrieve experiment results

### Streamlit
- **URL**: https://streamlit.io
- **Function**: Python-native dashboard framework
- **Phase**: F3 – F4
- **PUMA use**: Results visualisation dashboard: F1-macro by condition (model × strategy), MAE comparison tables, carbon footprint per condition, confusion matrices
- **Justification**: Zero front-end expertise required; native pandas/plotly integration; rapid iteration on visualisations

### Arize Phoenix
- **URL**: https://phoenix.arize.com
- **Function**: LLM observability — trace recording, latency, hallucination detection
- **Phase**: F3 – F4
- **PUMA use**: Recording complete agent reasoning traces (chain-of-thought steps, tool calls, observations); auditable decision chains for governance section (1.3); detecting hallucination patterns in triage agent
- **Key metrics tracked**: Token usage per call, latency distribution, prompt → response pairs
- **Justification**: Transparency requirement (Constitution Article 7; EU AI Act alignment)

---

## Specification Frameworks

### OpenSpec
- **URL**: https://openspec.dev
- **Function**: Spec-Driven Development framework for AI agents; change delta specification
- **Phase**: F2 – F4
- **PUMA use**: Managing iterative spec changes for PUMA modules; each feature change produces a spec delta capturing requirement modifications; enables reviewers to understand changes without reading all code
- **Integration**: Works alongside [[SP-Architecture]] and [[SP-Triage-Agent]]
- **Related**: [[30 - Permanent/33 Frameworks/PN-SDD-Framework]]

---

## Related Notes

- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] — Reproducibility + open source requirements
- [[50 - Areas/53 Code-Dev/Code-Review-Log]]
- [[20 - Literature/20.6 Tools/LN-Tools-Ollama-ClaudeCode-OpenCode-BrowserOS]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
