---
name: puma-agile
description: Agile conventions adapted for AI-assisted PUMA research cycles — sprint planning, task management, kanban board maintenance, and sprint reviews aligned with UOC PEC calendar. Integrates GTD with Agile for academic project management. Use when planning research sprints, managing tasks, updating kanban boards, or preparing PEC deliverables. Includes the GSD (Get Shit Done) execution mode for high-output sessions.
---

# PUMA Agile — AI-Assisted Research Sprints

## PUMA Sprint Calendar

Sprints are aligned with UOC PEC (Prova d'Evaluació Continuada) deadlines:

| Sprint | PEC | Focus | Duration |
|--------|-----|-------|----------|
| Sprint-01 | PEC1 | Introduction + planning | ~4 weeks |
| Sprint-02 | PEC2 | Methods + Results | ~6 weeks |
| Sprint-03 | PEC3 | Discussion + Conclusions | ~4 weeks |
| Sprint-04 | TFG final | Review + submission | ~4 weeks |

Current sprint: `40-Projects/PUMA/41.8-Sprint-Boards/Sprint-NN.md`

## Sprint Planning Protocol

### Sprint Start (Monday / PEC period start)

1. Open `BMAD-PRD-PUMA.md` → define sprint goal
2. Create `Sprint-NN.md` from template
3. Populate Backlog from:
   - Previous sprint's remaining tasks
   - Tutor feedback items
   - Experiment pipeline next steps
4. Prioritize using MoSCoW: Must | Should | Could | Won't
5. Move "Must" tasks to "To Do"

### Sprint Goal Format

```
Sprint NN Goal: [One sentence that defines Done for this sprint]
Example: "Complete H₁ triage experiments with statistical validation 
          and draft Chapter 3 Methods section."
```

## Task Format

```markdown
- [ ] TASK-NNN: [Action verb + deliverable] 📅 YYYY-MM-DD
  - Agent: [Research-Analyst | Pipeline-Dev | Academic-Writer | ...]
  - Spec: [[SP-NNN]] or [[EX-NNN]]
  - Output: [[expected-file-or-result]]
  - Estimate: [1 | 2 | 3 | 5 | 8] hours
```

## Kanban Board (Sprint-NN.md)

```markdown
## Sprint NN — [Sprint Name]
**Goal**: [One sentence]
**Dates**: YYYY-MM-DD → YYYY-MM-DD
**Status**: 🟡 In Progress

---
## Backlog
- [ ] TASK-NNN: Description 📅 YYYY-MM-DD

## To Do (Sprint Committed)
- [ ] TASK-NNN: Description 📅 YYYY-MM-DD

## In Progress 🔄
- [ ] TASK-NNN: Description | Started: YYYY-MM-DD

## Review 🔍
- [ ] TASK-NNN: Description | Output: [[link]]

## Done ✅
- [x] TASK-NNN: Description | Completed: YYYY-MM-DD | Commit: abc123f
```

## Daily GTD Workflow

**Morning (10 min)**:
1. Open `90-GTD/95-Reviews/Daily-Review-Template.md` → create daily note
2. Check `90-GTD/91-Tasks/TASKS-Active.md` for due/overdue
3. Check `10-Inbox/` for unprocessed fleeting notes
4. Pick 1–3 tasks for today using GSD mode

**During work**:
- New ideas → `10-Inbox/Fleeting-Notes/FL-YYYY-MM-DD-topic.md`
- New papers → Zotero → route to `20-Literature/`
- New tasks → inline `- [ ] Task 📅 YYYY-MM-DD` in current context

**Evening (5 min)**:
- Update task statuses in sprint board
- Commit changes: `git add . && git commit -m "Daily: [brief description]"`
- Process inbox

## Weekly GTD Review (Sundays)

Open `90-GTD/95-Reviews/Weekly-Review-Template.md`:

1. **Inbox zero**: Process all fleeting notes
2. **Project review**: Check PEC progress, experiment pipeline
3. **Note lifecycle**: FL- → LN- or PN- (convert accumulated fleeting notes)
4. **MOC update**: Add new notes to relevant MOCs
5. **Waiting for**: Check tutor feedback, GitHub issues
6. **Plan**: Set next week's "must" tasks
7. **Audit**: Run Zettelkasten lint (orphan notes, missing links)
8. **Carbon**: Check CodeCarbon log

## GSD (Get Shit Done) Mode

When execution matters more than planning:

```
GSD Session Protocol:
1. Pick ONE task from "To Do" column
2. Define Done in one sentence before starting
3. Set timer: 25 min Pomodoro
4. Execute — no context switching
5. Commit output immediately
6. Update board: move to Done
7. Log in AI-Use-Log.md
8. Repeat or stop
```

**GSD rules**:
- ONE task at a time
- Done means committed to git
- Defer all scope creep to Backlog
- Log energy level and blockers for retrospective

## Sprint Review / PEC Submission

Before each PEC submission:

**Content checklist**:
- [ ] All committed tasks have outputs
- [ ] Results match experimental notes (EX-)
- [ ] Carbon emissions recorded for all runs
- [ ] AI use declared (Marco Veritas)
- [ ] References in APA 7th format
- [ ] Spanish language verified throughout
- [ ] UOC template used correctly

**Technical checklist**:
- [ ] Git pushed to github.com/pumacp
- [ ] Word document generated correctly (docx library)
- [ ] Python validation script passed
- [ ] All links in vault are valid (Obsidian link check)

## Sprint Retrospective

After each PEC feedback:

```markdown
## Sprint NN Retrospective

### What went well
- [...]

### What to improve
- [...]

### Tutor feedback integration
- Feedback: [quote key feedback]
- Action: TASK-NNN — [how to address it]

### Velocity
- Planned: N tasks
- Completed: N tasks
- Carried over: N tasks
```

## Agile Metrics for PUMA

| Metric | How tracked |
|--------|-------------|
| Velocity | Tasks completed per sprint |
| Lead time | TASK creation → Done date |
| Cycle time | "In Progress" start → Done |
| Experiment throughput | EX- notes per sprint |
| Writing output | Pages drafted per sprint |
| Carbon efficiency | gCO₂eq per experiment |
