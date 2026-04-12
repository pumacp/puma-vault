---
id: "GT-Weekly-{{year}}-W{{week}}"
title: "Weekly Review — {{year}} W{{week}}"
type: gtd-weekly
tags: [gtd, weekly-review]
week: "{{year}}-W{{week}}"
created: "{{date}}"
---

# 📆 Weekly Review — "{{year}}" W"{{week}}"

> *The Weekly Review is the master key to GTD. Without it, the system collapses.* — David Allen

---

## 1️⃣ GET CLEAR — Process All Inboxes

- [ ] Process physical notes / loose papers
- [ ] Process `10 - Inbox/` in Obsidian (all fleeting notes → permanent or delete)
- [ ] Process email (zero inbox or GTD-tagged)
- [ ] Process Zotero unsorted items
- [ ] Process GitHub notifications
- [ ] Process Slack / messages

**Inbox count before:** "{{N}}" | **After:** "{{N}}"

---

## 2️⃣ GET CURRENT — Review Your System

### Projects Review

```dataview
TABLE status, next-action, deadline
FROM "40 - Projects"
WHERE type = "project"
SORT deadline ASC
```

- [ ][[| PUMA Ch1 Introduction → [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]]
- [ ][[| PUMA Ch2 Literature → [[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-Ch2-Literature]]
- [ ][[| PUMA Triage Module → [[40 - Projects/PUMA/41.7 Experiments/EX-Stage1-Triage-Overview]]

### Next Actions Review

- [ ] Check all `@waiting-for` items
- [ ] Check all `@someday-maybe` items
- [ ] Check calendar for next week

### Deadlines This Week

| Deadline | Task | Status |
|----------|------|--------|
| "{{date}}" | "{{PEC2 submission}}" | 🔄 |

---

## 3️⃣ GET CREATIVE — Horizon Review

**Horizon 1 — Projects (1-3 months):**
"{{What PUMA deliverables are coming up?}}"

**Horizon 2 — Areas of focus (3-12 months):**
"{{How is the research area evolving? Any new gaps emerging?}}"

**Horizon 3 — Goals (1-2 years):**
"{{Where does this PUMA Project fit in your academic/professional trajectory?}}"

---

## 4️⃣ METRICS — Weekly Progress

| Metric | This Week | Total | Target |
|--------|-----------|-------|--------|
| Papers read & processed | "{{N}}" | "{{N}}" | ≥40 total |
| Permanent notes created | "{{N}}" | "{{N}}" | — |
| Experiment runs completed | "{{N}}" | "{{N}}" | — |
| Words written (thesis) | "{{N}}" | "{{N}}" | — |
| Prompts tested & logged | "{{N}}" | "{{N}}" | — |

---

## 5️⃣ RESEARCH PIPELINE CHECK

| Phase | PRISMA Stage | Status |
|-------|-------------|--------|
| Identification | Search strings run | "{{Y/N}}" |
| Screening | Title/abstract reviewed | "{{N/total}}" |
| Eligibility | Full-text reviewed | "{{N/total}}" |
| Included | Final set | "{{N}}" |

---

## 6️⃣ AI TOOLS LOG (Week Summary)

| Tool | # Interactions | Main use | Value |
|------|---------------|---------|-------|
| Claude | "{{N}}" | "{{main use}}" | "{{H/M/L}}" |
| Perplexity | "{{N}}" | | |
| DeepSeek | "{{N}}" | | |
| Cursor/Copilot | "{{N}}" | | |
| NotebookLM | "{{N}}" | | |

---

## 7️⃣ REFLECTIONS

**What went well this week:**
"{{Free text}}"

**What was hard or blocked:**
"{{Free text}}"

**One methodological insight:**
"{{Something you learned about research or your workflow}}"

**One prompt that worked particularly well:**
"{{Describe or link the prompt}}"

**Next week's single most important outcome:**
"{{The one thing that, if done, makes the week a success}}"
