---
name: puma-gsd
description: GSD (Get Shit Done) execution mode for PUMA — high-output, low-ceremony protocol for sprint execution. Use when moving from planning to action, running focused work sessions, executing tasks from the sprint board, or applying the Pomodoro technique to PUMA research. Anti-procrastination protocol that converts tasks into commits. Load during active execution phases of any PUMA task.
---

# PUMA GSD — Get Shit Done

## What is GSD?

GSD is a minimal-ceremony execution protocol. It answers one question: **how do you stop planning and start shipping?**

GSD strips away everything except: pick task → define done → execute → commit → repeat.

## GSD Session Protocol

### 1. Task Selection (2 min)
```
Open Sprint-NN.md
Pick ONE task from "To Do" column
Move it to "In Progress"
Write: "GSD Session — [TASK-NNN]: [description] | Start: [HH:MM]"
```

### 2. Define Done (1 min)
Before writing a single line:
```
"This task is done when: [one specific, testable outcome]"

Examples:
✅ "Done when: EX-001 runs without errors and results are in EX-001.md"
✅ "Done when: PR-PUMA-Ch3-Methods.md has the statistical methods section"
✅ "Done when: PN-CoT-Improves-Estimation.md is created and linked in ZK-Hub"
❌ "Done when: I've worked on this for an hour" (not testable)
```

### 3. Execute (25–90 min, no interruptions)
```
Rules during execution:
- ONE task only
- No context switching
- New ideas → Quick-Capture-Log.md (don't act on them now)
- Scope creep → create new task in Backlog, keep current task focused
- Blockers → document, move task back to To Do, pick another
```

### 4. Commit Output (5 min)
```bash
# Every completed task ends with a commit
cd $VAULT
git add .
git commit -m "TASK-NNN: [brief description of what was done]"
git push origin main
```

### 5. Board Update (2 min)
```markdown
## Done ✅
- [x] TASK-NNN: [description] | Completed: YYYY-MM-DD HH:MM | Commit: abc123f
```

### 6. Log Entry (1 min)
```bash
echo "## [$(date +%Y-%m-%d)] GSD | TASK-NNN: [description]" >> \
  "$VAULT/50 - Areas/51-Research/AI-Use-Log.md"
```

### 7. Repeat or Stop
```
Energy: High → pick next task
Energy: Low → stop, rest, return refreshed
Never: push through fatigue on research tasks (quality drops)
```

## GSD for Research Tasks

### GSD: Paper Ingest
```
Task: Process LN-Author-Year-Title
Done when: LN- file created, ZK-Hub updated, AI-Use-Log entry added
Time box: 45 min

Step 1 (10 min): Keshav Pass-1 → fill frontmatter
Step 2 (20 min): Keshav Pass-2 → fill body sections  
Step 3 (10 min): Identify and update permanent notes
Step 4 (5 min): Update ZK-Hub + commit
```

### GSD: Experiment Run
```
Task: Run EX-NNN
Done when: Results logged, reproducibility table complete, committed
Time box: 60 min

Step 1 (5 min): Pre-flight checklist (spec locked, Ollama running)
Step 2 (30 min): Execute 3 runs, log results
Step 3 (15 min): Statistical validation (Wilcoxon, effect size)
Step 4 (10 min): Fill EX-NNN.md, update dashboards, commit
```

### GSD: Writing Session
```
Task: Draft [Section name] for Chapter N
Done when: Section complete in PR-PUMA-ChN.md, word count target met
Time box: 60–90 min

Step 1 (5 min): Load relevant PN- and LN- notes for context
Step 2 (60 min): Write using RCOIF + AMI (draft → self-critique → revise)
Step 3 (10 min): Save, check word count, commit
```

### GSD: Prompt Design
```
Task: Create/refine PT-[name]-vN
Done when: Prompt validates with puma-rcoif checklist, status: validated
Time box: 30 min

Step 1 (5 min): Review existing prompt or start with RCOIF template
Step 2 (15 min): Apply AMI loop (draft → critique → revise)
Step 3 (5 min): Red-team check (3 adversarial inputs)
Step 4 (5 min): Save as PT-name-vN.md, update status, commit
```

## GSD Energy Levels

Match task to energy level:

| Energy | Task Type |
|--------|-----------|
| 🔥 High | Writing, experimental design, spec creation |
| ⚡ Medium | Paper reading (Pass-2), prompt refinement, code |
| 🔵 Low | Literature note formatting, tagging, git commits |
| 😴 Very low | Stop — rest is more productive |

## GSD Anti-Patterns

- ❌ Starting 3 tasks at once → one task only
- ❌ "Just 5 more minutes on another thing" → commit current, then switch
- ❌ Optimizing before shipping → ship first, optimize in next task
- ❌ Skipping the commit → if it's not committed, it didn't happen
- ❌ Ignoring scope creep → capture in Backlog, stay focused

## GSD Weekly Metrics

Track in Sprint retrospective:
```
GSD sessions: N
Tasks per session: avg N
Commit rate: N% (tasks with commit / total tasks)
Scope creep rate: N backlog items created during GSD
Best energy slot: [morning | afternoon | evening]
```
