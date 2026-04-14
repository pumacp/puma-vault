---
name: puma-orchestrator
description: Multi-agent orchestration protocols for PUMA — coordinating specialized agent roles, managing inter-agent handoffs, context routing, and session lifecycle. Use when coordinating multiple BMAD agents, running parallel research tasks, managing agent handoffs, or designing multi-agent workflows. Implements Agent OS patterns and Supervisor/Manager orchestration. Load when acting as the PUMA-PM orchestrator agent or when designing complex multi-step agent pipelines.
---

# PUMA Orchestrator — Multi-Agent Coordination

## Orchestration Philosophy

PUMA uses a **supervisor pattern**: the PUMA-PM orchestrator coordinates specialized agents, routing tasks to agents with the right skills and managing state across handoffs.

```
PUMA-PM (Orchestrator)
├── Research-Analyst  → literature review, paper reading
├── System-Architect  → spec writing, architecture design
├── Pipeline-Dev      → experiment code, data processing
├── Reproducibility-QA → testing, validation
└── Academic-Writer   → chapter drafting, revision
```

## Orchestrator Responsibilities

1. **Sprint management**: maintain sprint board, prioritize tasks
2. **Task routing**: assign tasks to appropriate agents
3. **Context packaging**: prepare relevant context for each agent
4. **Handoff coordination**: validate agent outputs before handoff
5. **Blocker resolution**: identify and escalate blockers
6. **State logging**: maintain AI-Use-Log and sprint board

## Session Initialization Protocol

At the start of each Claude Code session:

```markdown
## Session Init Checklist

1. Load puma-core → confirm project identity and current results
2. Load puma-rules → activate governance
3. Open Sprint-NN.md → identify current task
4. Check AI-Use-Log.md → review last 5 entries (grep "^## \[")
5. Check TASKS-Active → identify overdue/due-today
6. Load role-specific skills for today's tasks
7. Declare: "Session started. Agent: [Role]. Task: TASK-NNN. Goal: [Done definition]."
```

## Task Routing Matrix

| Task Type | Primary Agent | Supporting Agents | Skills to Load |
|-----------|--------------|-------------------|----------------|
| New paper | Research-Analyst | — | keshav-method, zettelkasten, llm-wiki |
| Literature synthesis | Research-Analyst | Academic-Writer | literature-review, moc, zettelkasten |
| Spec writing | System-Architect | Research-Analyst | sdd, openspec, spec-kit |
| Experiment design | System-Architect | Pipeline-Dev | sdd, experiment, cdd |
| Experiment coding | Pipeline-Dev | Reproducibility-QA | experiment, cdd, rcoif |
| Result analysis | Reproducibility-QA | Academic-Writer | experiment, research |
| Chapter writing | Academic-Writer | Research-Analyst | research, rcoif, zettelkasten |
| Prompt design | Pipeline-Dev | — | prompting, rcoif, cot, cdd |
| Sprint planning | PUMA-PM | All | agile, bmad |

## Inter-Agent Handoff Protocol

```markdown
## Handoff Record

**From**: [Agent-A / Role]
**To**: [Agent-B / Role]
**Date**: YYYY-MM-DD
**Task**: TASK-NNN

### Completed
- [What was done]
- Files created: [[file1]], [[file2]]
- Results: [key metrics or outputs]

### Context for Next Agent
- [Critical context agent-B needs]
- Key decisions made: [decision + rationale]
- Open questions: [anything unresolved]

### Next Task
TASK-NNN+1: [Description]
Spec reference: [[SP-NNN]]
Expected output: [[file-or-result]]
Deadline: YYYY-MM-DD
```

## Parallel Task Coordination

For tasks that can run in parallel:

```markdown
## Parallel Sprint: [Sprint Goal]

### Stream A (Research-Analyst)
- TASK-A01: Process papers [20-Literature batch]
- TASK-A02: Update MOC-LLM-Agents

### Stream B (Pipeline-Dev)
- TASK-B01: Implement zero-shot triage pipeline
- TASK-B02: Run experiment EX-001

### Synchronization point (end of sprint)
- Academic-Writer needs: A02 complete (for literature chapter)
- Reproducibility-QA needs: B02 complete (for validation)
- Merge: Sprint-NN retrospective
```

## Context Budget Management (Orchestrator)

The orchestrator loads lightweight context and delegates details to agents:

```
Orchestrator context (per session):
├── puma-core: ~500 tokens (always)
├── puma-rules: ~400 tokens (always)
├── puma-agile: ~300 tokens (sprint mgmt)
├── puma-bmad: ~400 tokens (agent roster)
├── Sprint-NN.md current state: ~200 tokens
└── AI-Use-Log last 5 entries: ~300 tokens
Total orchestrator context: ~2100 tokens (leaves room for decisions)

Agent context (per task):
├── puma-core: ~500 tokens
├── puma-rules: ~400 tokens
├── Role-specific skill (1-2): ~600-1200 tokens
├── Task spec (SP-/EX-): ~300-500 tokens
└── Input data: variable
```

## Conflict Resolution

When agents produce conflicting outputs:

1. Check `SP-PUMA-Constitution.md` — is there a governing rule?
2. Check relevant spec (SP-) — does it specify the behavior?
3. If conflict is a contradiction in research: create `[!contradiction]` in relevant PN-
4. If conflict is an implementation decision: escalate to human (user)
5. Log all conflicts and resolutions in `AI-Use-Log.md`

## 12-Factor Agent Reliability Patterns

Applied from "12 Factor Agents" (VID-AGT-002):

1. **Stateless agents**: Each agent starts fresh from files, not memory
2. **Explicit state**: All state lives in markdown files (not implicit)
3. **Atomic outputs**: Each agent produces one well-defined deliverable
4. **Idempotent runs**: Running an agent twice yields same result
5. **Fail loudly**: Agents log errors to AI-Use-Log, do not silently fail
6. **Audit trail**: Every agent action is logged with timestamp
7. **Human checkpoints**: Experiments need human approval before locking
8. **Single responsibility**: Each agent handles one aspect of research
9. **Config in files**: All configs in SP-/PT-/EX- files, not hardcoded
10. **Reproducibility**: All runs with seed=42, temp=0.0 for determinism

## Session Closing Protocol

At end of each Claude Code session:

```markdown
## Session Close Checklist

1. Update sprint board (tasks completed → Done column)
2. Append to AI-Use-Log.md:
   ## [YYYY-MM-DD] [operation type] | [description]
3. Commit changes: git add . && git commit -m "[task]: [brief description]"
4. Push: git push origin main
5. Note any blockers for next session in Quick-Capture-Log.md
6. Declare: "Session closed. Completed: TASK-NNN. 
             Next: TASK-NNN+1 (Agent: [Role])."
```
