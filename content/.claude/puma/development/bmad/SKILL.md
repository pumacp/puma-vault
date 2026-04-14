---
name: puma-bmad
description: BMAD (Business Module Agentic Design / Build-Manage-Adapt-Deploy) methodology for PUMA's multi-agent orchestration. Use when designing agent teams, writing PRDs, defining agent roles, running BMAD sessions, or coordinating specialized agents for research tasks. Contains agent roster, PRD format, and session protocols. Load when working in 40-Projects/PUMA/41.9-BMAD-Agents/ or coordinating multi-agent workflows.
---

# PUMA BMAD — Agentic Project Management

## What is BMAD?

BMAD is an AI-native project management methodology that orchestrates specialized AI agents through clearly defined roles, using structured PRDs and sprint boards. In PUMA, BMAD serves as the framework for simulating a complete research team using LLM agents.

**BMAD in PUMA context**: Each research function (ideation, literature review, experiment design, writing, review) is handled by a specialized agent role. Claude Code acts as the orchestrator.

## PUMA Agent Roster

Defined in `40-Projects/PUMA/41.9-BMAD-Agents/BMAD-Agent-Roster.md`

| Role | Agent Name | Primary Responsibility | Key Skills |
|------|-----------|------------------------|------------|
| Analyst | Research-Analyst | Literature review, gap analysis | puma-literature-review, puma-keshav-method |
| Architect | System-Architect | Agent design, spec writing | puma-sdd, puma-openspec, puma-spec-kit |
| Developer | Pipeline-Dev | Experiment implementation | puma-experiment, puma-cdd |
| QA | Reproducibility-QA | Testing, validation, CodeCarbon | puma-experiment, puma-rules |
| Writer | Academic-Writer | Chapter drafting, revision | puma-research, puma-rcoif |
| Orchestrator | PUMA-PM | Sprint planning, coordination | puma-agile, puma-bmad |

## PRD Format

Location: `40-Projects/PUMA/41.9-BMAD-Agents/BMAD-PRD-PUMA.md`

```markdown
# PUMA PRD — [Sprint / Phase Name]

## Vision
[1–2 sentence project vision for this sprint]

## Problem Statement
[What specific problem are we solving in this sprint?]

## Success Criteria
- SC-01: [Measurable criterion]
- SC-02: [...]

## Agent Team for This Sprint
| Agent | Role | Tasks |
|-------|------|-------|
| Research-Analyst | Analyst | [task list] |
| Pipeline-Dev | Developer | [task list] |

## Sprint Backlog
- [ ] TASK-001: [Description] → [Agent]
- [ ] TASK-002: [Description] → [Agent]

## Definition of Done
- All tasks completed and committed to GitHub
- Results logged in experiment note EX-NNN
- AI-Use-Log updated
- Carbon emissions recorded

## Dependencies
[What must be done before this sprint starts?]

## Risks
[What could block this sprint?]
```

## BMAD Session Protocol

### Starting a BMAD Session

```
1. Open BMAD-PRD-PUMA.md — verify sprint goals
2. Open Sprint-NN.md in 41.8-Sprint-Boards/
3. Select the agent role for this session
4. Load the relevant puma-* skills for that role
5. Declare: "I am acting as [Agent Name], [Role]. My task is [TASK-NNN]."
6. Complete task following role's skill protocols
7. Log completion in sprint board and AI-Use-Log
```

### Agent Handoff Protocol

When switching from one agent to another:

```markdown
## Handoff from [Agent-A] to [Agent-B]

**Completed**: [What Agent-A finished]
**Output**: [Files created/modified]
**Context for Agent-B**: [What Agent-B needs to know]
**Next task**: TASK-NNN — [description]
**Blockers**: [Any unresolved issues]
```

### Context Management in BMAD

Each agent loads only its relevant skills (context budget):
- Always: `puma-core` + `puma-rules`
- Role-specific: 2–3 relevant `puma-*` skills
- Task-specific: relevant spec (SP-) and experiment (EX-) notes
- Never: load all skills at once (exceeds context budget)

## Sprint Board Format

Location: `40-Projects/PUMA/41.8-Sprint-Boards/Sprint-NN.md`

Kanban columns: `Backlog | To Do | In Progress | Review | Done`

```markdown
## Sprint NN — [Sprint Name]
**Dates**: YYYY-MM-DD → YYYY-MM-DD
**Goal**: [One-sentence sprint goal]

## Backlog
- TASK-NNN: [Description] | Agent: [role] | Priority: high/medium/low

## To Do
(pulled from Backlog at sprint start)

## In Progress
- TASK-NNN: [Description] | Agent: [role] | Started: YYYY-MM-DD

## Review
- TASK-NNN: [Description] | Output: [[link]] | Reviewer: [name]

## Done
- TASK-NNN: [Description] | Completed: YYYY-MM-DD | Commit: [hash]
```

## BMAD vs. Other SDD Frameworks (Decision Guide)

| Need | Use |
|------|-----|
| Full agent team with roles and PRD | **BMAD** |
| Lightweight component spec | **Spec Kit** |
| Machine-readable interface spec | **OpenSpec** |
| Solo development, single spec | **SDD** |
| Context window management | **CDD** |

## Integration with Agile (PUMA-AGILE)

BMAD sprints map to PUMA's academic calendar:
- Sprint = PEC delivery period
- PRD = PEC deliverable scope
- Sprint Review = PEC submission + tutor feedback
- Retrospective = lessons learned for next PEC

See `puma-agile` skill for sprint cadence details.
