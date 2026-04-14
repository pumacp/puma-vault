---
name: puma-literature-review
description: Systematic Literature Review (SLR) execution protocol for PUMA — PRISMA 2020, PICO framework, inclusion/exclusion criteria, evidence synthesis, and LLM-assisted review. Use when conducting literature searches, screening papers, synthesizing findings, or updating the PRISMA log. Integrates LLM-Based Literature Review methodology with AI research tools (NotebookLM, Consensus, ResearchRabbit, Semantic Scholar). Load whenever working on the SLR phase or adding papers to the vault.
---

# PUMA Literature Review — SLR Protocol

## Methodology Stack

```
Primary: Evidence-Based Software Engineering (EBSE) + SLR
Protocol: PRISMA 2020
Framework: PICO (Population · Intervention · Comparison · Outcome)
Reading: Keshav Three-Pass (see puma-keshav-method)
AI tools: LLM-Based Literature Review
Log: 50-Areas/51-Research/SLR-PRISMA/PRISMA-Log.md
```

## PICO Framework for PUMA

| Element | PUMA Definition |
|---------|----------------|
| **Population** | Open-source software projects tracked via Jira (TAWOS, Jira SR) |
| **Intervention** | LLM agents with prompting strategies (zero-shot, few-shot, CoT) |
| **Comparison** | Baseline classifiers (TF-IDF+SVM, heuristic) and human expert estimates |
| **Outcome** | F1-macro (triage), MAE in story points (estimation), reproducibility |

## Search String

```
("large language model" OR "LLM" OR "GPT" OR "language model")
AND
("issue triage" OR "bug triage" OR "ticket classification" 
 OR "effort estimation" OR "story point" OR "agile estimation")
AND
("software project management" OR "Jira" OR "issue tracker" 
 OR "agile" OR "software engineering")
```

Databases: Semantic Scholar, Google Scholar, ACM DL, IEEE Xplore, arXiv, Scopus

## Inclusion Criteria

| Code | Criterion |
|------|-----------|
| IC-01 | Addresses LLM agents OR automated PM tasks in software engineering |
| IC-02 | Includes empirical evaluation (experiment, case study, survey) |
| IC-03 | Published 2019–2026 (pre-2019 only for foundational works) |
| IC-04 | Available in English (full text accessible) |
| IC-05 | Published in peer-reviewed venue OR high-quality preprint (arXiv, SSRN) |

## Exclusion Criteria

| Code | Criterion |
|------|-----------|
| EC-01 | No empirical evaluation (purely theoretical/opinion) |
| EC-02 | Focus on hardware/network project management (not software) |
| EC-03 | Duplicate publication (keep most complete version) |
| EC-04 | Not accessible (full text unavailable) |
| EC-05 | Not in English |

## PRISMA 2020 Flow

```
Records identified via:
├── Database search: N
├── ResearchRabbit snowballing: N
└── Manual search (references, citations): N
                    │
                    ▼
          Duplicate removal: -N
                    │
                    ▼
          Title/abstract screening: N remaining
          Excluded (IC/EC): -N (with reasons)
                    │
                    ▼
          Full-text eligibility: N assessed
          Excluded (with reasons): -N
                    │
                    ▼
          Included in SLR: N studies
```

Log each step in `PRISMA-Log.md`.

## LLM-Based Literature Review Protocol

### Step 1: AI-Assisted Discovery

```
Tool: Semantic Scholar
Query: [Search string above]
Action: Export top 50 results → import to Zotero → tag #puma-candidate

Tool: ResearchRabbit  
Action: Seed with 5 known key papers → expand 2 hops → import to Zotero

Tool: Consensus
Action: Evidence-based search with PICO framing → note contradictions

Tool: NotebookLM
Action: Upload batch to notebook → "What are the key findings on [topic]?"
```

### Step 2: AI-Assisted Screening

For each paper at Title/Abstract stage:

```
ROLE: Systematic reviewer for software engineering SLR
CONTEXT: PUMA SLR on LLM agents for issue triage and effort estimation
PICO: [paste PICO above]
OBJECTIVE: Screen this paper for inclusion/exclusion
INSTRUCTIONS:
1. Read title and abstract
2. Check each inclusion criterion (IC-01 to IC-05)
3. Check each exclusion criterion (EC-01 to EC-05)
4. Give decision: Include | Exclude | Uncertain
5. If Exclude: cite specific EC code(s)
6. If Uncertain: flag for human review
FORMAT: Decision | Reason | IC/EC codes violated
```

### Step 3: Data Extraction

For included papers, extract:

```markdown
## Extraction Form (per paper)

**Bibliographic**: Author(s), Year, Title, Venue, DOI
**Study type**: Experiment | Case study | Survey | Simulation
**Population**: [Which software projects/datasets?]
**Intervention**: [Which LLM / prompting method?]
**Comparison**: [What baseline?]
**Outcome measures**: [Metrics reported]
**Key findings**: [Main results with numbers]
**Limitations**: [Acknowledged limitations]
**Threats to validity**: [Internal | External | Construct | Conclusion]
**Datasets used**: [Which datasets? Publicly available?]
**Replication possible**: [Yes / Partial / No]
```

### Step 4: Evidence Synthesis

Use NotebookLM + Claude for synthesis:

```
ROLE: Senior researcher synthesizing evidence for SLR
CONTEXT: [Paste extraction forms for 5–10 papers]
OBJECTIVE: Synthesize findings on [specific research question]
INSTRUCTIONS:
1. Identify consistent findings across papers
2. Identify contradictions and explain possible causes
3. Identify research gaps not addressed by any paper
4. Rate evidence quality: Strong | Moderate | Weak | Conflicting
FORMAT: Structured synthesis with citations [Author, Year]
```

## PRISMA Log Update Protocol

After each screening stage, append to `PRISMA-Log.md`:

```markdown
## [YYYY-MM-DD] Stage: [Identification | Screening | Eligibility | Inclusion]

- Records: N
- Action: [What was done]
- Included: N
- Excluded: N (reasons: EC-01: N, EC-02: N, ...)
- Uncertain/flagged: N
- Tool used: [Semantic Scholar | ResearchRabbit | Zotero | Manual]
- Notes: [Any anomalies or decisions]
```

## AI Tool Reference

| Tool | Purpose | PUMA Notebooks/Profiles |
|------|---------|------------------------|
| NotebookLM | Deep synthesis of curated corpus | 10 dedicated notebooks |
| Consensus | Evidence-based academic search | 9 research step searches |
| ResearchRabbit | Citation network expansion | 2 folder shares |
| Semantic Scholar | Author/citation data | API + web |
| Zotero | Metadata + PDF management | Public library: pumacp |

## Zotero Workflow

1. Import paper → auto-fetch metadata + PDF
2. Tag: `#puma-candidate` (screening), `#puma-include` (approved)
3. Add to PUMA group collection
4. Use Obsidian Zotero Integration: `Ctrl+Shift+Z` → search → insert
5. Paper lands in `20-Literature/20.1-Papers/[Topic]/` as `@citekey.md`
6. Complete Keshav Three-Pass in the literature note

## Quality Assessment Checklist (per paper)

- [ ] Study has clear research questions
- [ ] Methodology is described in sufficient detail for replication
- [ ] Results are reported with metrics and sample sizes
- [ ] Threats to validity are acknowledged
- [ ] Data/code availability statement present
- [ ] Conflict of interest declared
