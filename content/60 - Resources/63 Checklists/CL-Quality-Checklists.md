---
id: CL-SLR-Quality-Criteria
title: "Checklist: SLR Quality Assessment Criteria"
type: checklist
tags: [checklist, slr, quality, prisma, ebse]
created: 2026-03-01
---

# Checklist: SLR Quality Assessment Criteria

> Apply to every paper included in the PUMA SLR. Score each criterion 1 (poor) – 3 (good).

## Quality Assessment Form

**Paper:** {{Title — Authors (Year)}}
**Zotero key:** {{key}}
**Assessor:** PUMA researcher
**Date assessed:** {{date}}

---

### Q1 — Research Question Clarity
- [ ] 1 — RQ is absent or very vague
- [ ] 2 — RQ is stated but imprecise
- [ ] 3 — RQ is clear, specific, and answerable

### Q2 — Study Design Appropriateness
- [ ] 1 — Design is misaligned with RQ
- [ ] 2 — Design is adequate but has significant gaps
- [ ] 3 — Design is appropriate and justified

### Q3 — Dataset Quality & Transparency
- [ ] 1 — Dataset not described or not public
- [ ] 2 — Dataset described but not easily replicable
- [ ] 3 — Public dataset with DOI/URL, size and composition described

### Q4 — Metric Appropriateness
- [ ] 1 — Metric choice not justified or inappropriate
- [ ] 2 — Standard metrics used without discussion of alternatives
- [ ] 3 — Metric choice justified with discussion of alternatives and limitations

### Q5 — Baseline Comparison
- [ ] 1 — No baseline comparison
- [ ] 2 — Baseline used but not well-documented
- [ ] 3 — Clear, reproducible baseline with documented implementation

### Q6 — Statistical Rigour
- [ ] 1 — No statistical testing
- [ ] 2 — Some statistical testing but incomplete (e.g., missing effect sizes)
- [ ] 3 — Full statistical analysis with test choice justified, effect sizes, confidence intervals

### Q7 — Reproducibility
- [ ] 1 — Code/data not available
- [ ] 2 — Code/data partially available or incomplete
- [ ] 3 — Fully reproducible: code, data, and instructions publicly available

### Q8 — Threats to Validity
- [ ] 1 — Threats not discussed
- [ ] 2 — Some threats mentioned
- [ ] 3 — Comprehensive validity analysis (internal, external, construct)

---

**Total score:** {{sum}}/24
**Quality category:**
- 18–24: High quality
- 12–17: Moderate quality
- <12: Low quality

**PUMA inclusion decision:**
- [ ] Include as primary evidence
- [ ] Include as secondary evidence (acknowledge limitations)
- [ ] Exclude (score < 12 AND critical flaw in Q3 or Q7)

---
---
id: CL-Reproducibility-Experiment
title: "Checklist: PUMA Experiment Reproducibility"
type: checklist
tags: [checklist, reproducibility, experiment, puma]
created: 2026-03-01
---

# Checklist: PUMA Experiment Reproducibility

> Complete before each experiment run. All items must be checked.

## Pre-Run Checklist

### Environment
- [ ] Python version logged: `python --version` → `3.11.x`
- [ ] All packages installed from pinned `requirements.txt`
- [ ] Ollama version logged: `ollama --version`
- [ ] Model versions pulled and verified: `ollama list`
- [ ] `seed=42` set in all random operations
- [ ] `temperature=0` confirmed in Ollama API calls

### Dataset
- [ ] Dataset loaded from original source file (not modified copy)
- [ ] Stratified subset verified: 50 samples per class × 4 classes = 200 total
- [ ] Subset saved as `data/processed/jira_sr_subset_seed42.csv`
- [ ] SHA256 hash of subset file recorded in experiment log

### Measurement
- [ ] CodeCarbon tracker initialised with project name matching experiment ID
- [ ] Carbon output directory set to `results/carbon/`
- [ ] Latency timer using `time.time()` before/after Ollama call

## During-Run Checklist
- [ ] Progress logged to structured JSON (not just console)
- [ ] Any errors caught and logged (not silently swallowed)
- [ ] Raw model responses saved (not just parsed labels)

## Post-Run Checklist
- [ ] Results saved with timestamp: `results/triage_{model}_{strategy}_{timestamp}.json`
- [ ] Carbon report saved: `results/carbon/`
- [ ] Git commit made with tag: `run-{experiment_id}-{date}`
- [ ] Metrics calculated and recorded in experiment note
- [ ] Wilcoxon test run and p-value recorded
- [ ] Experiment note in Obsidian updated

---
---
id: CL-AI-Validation
title: "Checklist: AI Output Validation (Marco Veritas)"
type: checklist
tags: [checklist, ai-use, validation, marco-veritas, ethics]
created: 2026-03-01
---

# Checklist: AI Output Validation (Marco Veritas)

> Apply whenever AI output is being considered for incorporation into thesis or research decisions.

## Before Using AI Output

- [ ] I have a clear objective for this AI interaction
- [ ] I have provided sufficient context (RCOIF structured prompt)
- [ ] I understand what the AI cannot know or verify

## Evaluating the Output

### For factual claims (numbers, citations, statistics):
- [ ] Every specific claim traced to a primary source
- [ ] Every paper citation verified in Google Scholar / arXiv / IEEE
- [ ] Every DOI verified as resolving to the correct paper
- [ ] Any claim that cannot be verified → discarded or flagged

### For analytical outputs (synthesis, gap analysis, argumentation):
- [ ] I have read the primary sources myself, not relying solely on AI summary
- [ ] AI analysis compared against my own prior assessment
- [ ] Discrepancies investigated before accepting AI version
- [ ] AI output rewritten entirely in my own words before incorporation

### For code outputs (Claude Code, Copilot, Cursor):
- [ ] I understand every line of generated code
- [ ] I can explain what the code does and why
- [ ] Tests written for generated code
- [ ] Edge cases considered and handled

## Logging
- [ ] Interaction logged in [[50 - Areas/51 Research/AI-Use-Log]]
- [ ] Tool, purpose, and validation method recorded
- [ ] Any discarded output documented with reason
