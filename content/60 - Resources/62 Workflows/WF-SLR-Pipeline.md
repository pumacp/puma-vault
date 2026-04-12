---
id: WF-SLR-Pipeline
title: "Workflow: SLR + PRISMA Pipeline"
type: workflow
tags: [workflow, slr, prisma, literature-review, ebse]
created: 2026-03-01
---

# Workflow: SLR + PRISMA Pipeline

> Step-by-step workflow for the PUMA Systematic Literature Review.
> Methodology: [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]]

---

## Phase 0 — Protocol Registration

Before searching, register the protocol to prevent bias:

```
Protocol document: PR-PUMA-SLR-Protocol
Research question: [locked — not modifiable after registration]
Search strings: [locked]
Inclusion/exclusion criteria: [locked]
Quality assessment criteria: [locked]
Data extraction form: [locked]
Registration date: [DATE]
```

**Inclusion criteria:**
- Published 2022–2026
- Includes LLM component
- Includes PM, SE, issue tracking, or estimation task
- Reports quantitative metrics
- Uses real-world data (not synthetic only)

**Exclusion criteria:**
- Opinion/position papers without evaluation
- Duplicate studies (keep most recent/complete)
- No accessible full text
- Only proprietary data with no public baseline

---

## Phase 1 — Identification

**Databases to search:**
- [ ] arXiv (cs.SE, cs.AI, cs.LG)
- [ ] IEEE Xplore
- [ ] ACM Digital Library
- [ ] Semantic Scholar (API)
- [ ] Google Scholar (top 100 results)
- [ ] ResearchGate (supplementary)

**Search strings:** [[60 - Resources/61 Prompts/61.2 Research-Tools/PT-Research-Discovery-Prompts]] (Boolean Search Strings section)

**AI assistance (PRISMA-DFLLM):**
- Tool: Perplexity AI + Elicit
- Task: Suggest additional search terms, identify missed papers
- Validation: All AI suggestions verified in primary source
- Log: [[50 - Areas/51 Research/AI-Use-Log]]

---

## Phase 2 — Deduplication

```python
# Automated deduplication via DOI/title matching
# Tool: Zotero "Find Duplicates" + manual review

# Log:
# Total records: [N]
# Duplicates removed: [N]
# Records for screening: [N]
```

---

## Phase 3 — Screening (Title + Abstract)

**Tool:** Elicit (AI-assisted) + manual verification

For each paper, record in PRISMA log:

| Paper | Decision | AI suggestion | Human final | Exclusion reason |
|-------|----------|--------------|-------------|-----------------|
| {{Title}} | {{Include}} | {{Include}} | {{Include}} | — |
| {{Title}} | {{Exclude}} | {{Uncertain}} | {{Exclude}} | Not empirical |

**AI-assisted screening protocol (PRISMA-trAIce):**
1. Upload abstract batch to Elicit
2. Configure extraction: empirical? LLM? PM task? Public data?
3. Download Elicit suggestions
4. Human reviews all "Uncertain" + random 20% sample of "Include/Exclude"
5. Log disagreements and final decisions

---

## Phase 4 — Eligibility (Full Text)

- [ ] Retrieve all full-texts (Zotero, IEEE/ACM, Sci-Hub as last resort)
- [ ] Apply inclusion/exclusion criteria to full paper
- [ ] Record quality assessment score (1-5 scale per criterion)
- [ ] Extract data into structured form

**Data extraction form:**

```
Paper ID: [Zotero key]
Authors + year:
Venue:
DOI:
Task (triage/estimation/planning/other):
Datasets used (name + public/private):
Models used:
Prompting strategy:
Main metric + value:
Baseline comparison:
Code available (Y/N + URL):
Reproducible (Y/N, explain):
Carbon measurement (Y/N):
Notes:
```

---

## Phase 5 — Synthesis

- [ ] Build comparison table (≥40 papers minimum)
- [ ] Identify patterns across studies
- [ ] Quantify research gaps:
  - Reproducibility rate: X/N papers with runnable code
  - Local model rate: X/N papers using local models
  - Carbon measurement rate: X/N papers measuring footprint
  - Prompting comparison rate: X/N papers comparing strategies
- [ ] Map to PUMA positioning

---

## PRISMA Flow Diagram Data

```
Records identified through database searching: [N]
  arXiv: [N] | IEEE: [N] | ACM: [N] | Scholar: [N] | Other: [N]
Additional records through other sources: [N]
Records after duplicates removed: [N]
Records screened (title/abstract): [N]
Records excluded: [N] — reason: [breakdown]
Full-text assessed for eligibility: [N]
Full-text excluded: [N] — reasons: [breakdown]
Studies included in synthesis: [N]
```

---

## 🔗 Related Notes

[[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] | [[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-Ch2-Literature]]
[[60 - Resources/61 Prompts/61.2 Research-Tools/PT-Research-Discovery-Prompts]]
[[60 - Resources/63 Checklists/CL-SLR-Quality-Criteria]]
