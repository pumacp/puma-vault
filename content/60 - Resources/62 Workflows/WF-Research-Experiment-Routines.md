---
id: WF-Daily-Research-Routine
title: "Workflow: Daily Research Routine"
type: workflow
tags: [workflow, gtd, daily, routine, mit-student-method]
created: 2026-03-01
---

# Workflow: Daily Research Routine

> **The daily cadence that keeps the research moving.** Takes 20–30 min for planning + processing; rest is focused work.

---

## ⏰ Morning Routine (20 min)

```
1. Open Obsidian → [[00 - Home]] (2 min)
   → Check upcoming deadlines
   → Review active tasks from [[90 - GTD/91 Tasks/TASKS-Active]]

2. Process Inbox (10 min)
   → Process ALL notes in 10 - Inbox/Fleeting-Notes/
   → Each note: decide → Literature Note / Permanent Note / Delete
   → Inbox must be zero before starting deep work

3. Set Today's MITs (3 min)
   → Open [[00 - Meta/Templates/Template-Daily-Review]] via QuickAdd
   → Choose 1–3 Most Important Tasks
   → Write them at the top of today's note

4. Check AI Use Log (5 min)
   → Log any AI interactions from yesterday not yet recorded
   → [[50 - Areas/51 Research/AI-Use-Log]]
```

---

## 📚 Paper Processing Routine (per paper, 45–90 min)

Follow the **MIT Student Method** fully:

```
Step 1 — SCAN (5 min)
  Read: Abstract, Introduction, Conclusion, Figures
  Decision: Worth full read? (Y/N)
  If N → flag #exclude in Zotero, done

Step 2 — READ (20–40 min)
  Read full paper with Cornell notes open
  Left column: Write questions and key terms as you read
  Right column: Notes in YOUR OWN words (never copy-paste)

Step 3 — DRCA (10–15 min)
  Deconstruct: What is the paper's argument structure?
  Reconstruct: Restate in your own conceptual vocabulary
  Critical: What would falsify this? What did they miss?
  Advance: What permanent note does this generate?

Step 4 — CREATE (10–15 min)
  Create Literature Note from template
  → [[00 - Meta/Templates/Template-Literature-Note-Paper]]
  Create 0–3 Permanent Notes from insights
  → [[00 - Meta/Templates/Template-Permanent-Note]]

Step 5 — CONNECT (5 min)
  Link all new notes to relevant MOCs
  Update [[80 - MOC/81 Topic-Maps/MOC-Literature-Review]] table
  Update Zotero: add #puma-include tag, verify DOI

Step 6 — AI CHECK (optional, 5–10 min)
  If needed: Use RCOIF prompt to get Claude's analysis
  → Compare with your own notes (don't replace them)
  → Log interaction in [[50 - Areas/51 Research/AI-Use-Log]]
```

---

## 💻 Code Development Session (per session, 60–120 min)

```
Step 1 — Review spec (5 min)
  Open relevant spec: [[40 - Projects/PUMA/41.6 Specs/]]
  Review BDD scenarios for today's component

Step 2 — Write tests first (15 min) [BDD/TDD]
  Write failing tests in tests/ directory
  Tests must match BDD scenarios

Step 3 — Implement (30–60 min)
  Use Claude Code or Cursor AI for scaffolding
  Review ALL generated code line by line
  Ensure you can explain every function

Step 4 — Verify (15 min)
  Run tests: all must pass
  Verify seed=42, temperature=0 in all Ollama calls
  Check reproducibility constraint satisfied

Step 5 — Commit (5 min)
  Git commit with descriptive message
  Update [[90 - GTD/91 Tasks/TASKS-Active]] → check done
  Log any AI assistance in [[50 - Areas/51 Research/AI-Use-Log]]
```

---

## 🌙 Evening Close (10 min)

```
1. Complete today's review note
   → Record MITs completed
   → Record one thing learned
   → Set tomorrow's priority

2. Process any remaining fleeting notes
   → 10 - Inbox must be empty

3. Git commit vault
   → Obsidian Git: Ctrl+Shift+G → commit
   → Message: "daily: [date] — [main achievement]"
```

---

## 🔗 Related Notes

[[90 - GTD/95 Reviews/Daily-Review-Template]] | [[00 - Meta/Templates/Template-Daily-Review]]
[[30 - Permanent/33 Frameworks/PN-MIT-Student-Method]]

---
---
id: WF-New-Paper-Processing
title: "Workflow: New Paper → Vault"
type: workflow
tags: [workflow, paper, literature, zotero, processing]
created: 2026-03-01
---

# Workflow: New Paper → Vault

> **Quick reference for processing a new paper from discovery to permanent note.**

---

## 5-Step Pipeline

```
DISCOVER
  Found via: Perplexity / Semantic Scholar / Connected Papers / SLR search
  ↓
CAPTURE (2 min)
  Add to Zotero (browser extension or DOI import)
  Tag: #puma-pending
  Download PDF to Zotero library
  ↓
SCREEN (5 min)
  Read abstract + skim introduction + conclusion
  Decision: Include / Exclude?
  If Include: Tag #puma-include | If Exclude: Tag #puma-exclude + reason
  Record in [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]
  ↓
PROCESS (45–90 min) [see WF-Daily-Research-Routine]
  Create Literature Note from template
  Cornell notes + DRCA
  0–3 Permanent Notes
  ↓
CONNECT (5 min)
  Add to [[80 - MOC/81 Topic-Maps/MOC-Literature-Review]] table
  Link to relevant Permanent Notes and MOCs
  Update [[80 - MOC/82 Index/Master-Index]]
```

---
---
id: WF-Experiment-Run
title: "Workflow: Running a PUMA Experiment"
type: workflow
tags: [workflow, experiment, benchmark, reproducibility, puma]
created: 2026-03-01
---

# Workflow: Running a PUMA Experiment

> **Step-by-step protocol for each experimental condition in PUMA.**

---

## Pre-Run (30 min, first time only)

```bash
# 1. Verify environment
python --version  # must be 3.11.x
ollama --version
ollama list  # verify models present

# 2. Verify reproducibility baseline
python src/verify_reproducibility.py
# Must output: "✅ Reproducibility check PASSED"

# 3. Record environment snapshot
pip freeze > results/env_snapshot_$(date +%Y%m%d).txt
```

## Run Checklist

- [ ] Open Experiment Note template: [[00 - Meta/Templates/Template-Experiment-Note]]
- [ ] Fill all metadata (model, strategy, dataset, seed, temperature, hardware)
- [ ] Paste exact prompt template used
- [ ] Start CodeCarbon tracker in code before any inference
- [ ] Run: `python src/run_benchmark.py --model [model] --strategy [strategy] --seed 42`
- [ ] Wait for completion (estimated time: X min on 16GB CPU)
- [ ] Verify: results JSON saved to `results/`
- [ ] Verify: carbon report saved to `results/carbon/`

## Post-Run (20 min)

```python
# Run analysis script
python src/analysis/compute_metrics.py --results results/[experiment_file].json
# Outputs: F1-macro, per-class F1, Wilcoxon vs baseline, effect size r

# Review outputs
cat results/[experiment]_metrics.json
```

- [ ] Record metrics in Experiment Note
- [ ] Run Wilcoxon test: record W, p-value, effect r
- [ ] Record carbon: emissions_gco2 from CodeCarbon report
- [ ] Analyse top-3 failure cases
- [ ] Git commit: `git tag run-[experiment-id]-$(date +%Y%m%d)`
- [ ] Update [[40 - Projects/PUMA/41.4 Results/PR-PUMA-Ch4-Results]] with new data point
