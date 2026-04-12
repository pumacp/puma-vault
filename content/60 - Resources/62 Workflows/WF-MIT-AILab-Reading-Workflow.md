---
id: WF-MIT-AILab-Reading-Workflow
title: "🔄 Workflow — MIT AI Lab Q1/Q2/Q3 + Keshav Integrated Reading"
type: workflow
tags: [workflow, keshav, mit-ai-lab, wp316, reading, slr, puma]
created: 2026-04-06
updated: 2026-04-06
---

# 🔄 Workflow — MIT AI Lab Q1/Q2/Q3 + Keshav Integrated Reading

> **Purpose**: Step-by-step protocol for processing a paper using Keshav Three-Pass as structure and MIT AI Lab WP 316 Q1/Q2/Q3 as the active reading mindset.
>
> **Time**: Pass 1: 10 min · Pass 2: 1h · Pass 3 + Q1/Q2/Q3: 2–5h
>
> **Output**: Fleeting note → Literature note → Permanent note(s)

---

## Pre-conditions

- [ ] Paper is in Zotero with correct metadata
- [ ] Citekey is assigned (e.g., `@Angermeir2025Reproducibility`)
- [ ] Paper is in the SLR screening queue

---

## Step 1: Keshav Pass 1 (10 min)

**Read**: title, abstract, introduction, section headings, conclusions, glance at references.

**Evaluate 5Cs**:
- **Category**: measurement / analysis / description / proposal / survey
- **Context**: which papers does it build on? What theoretical basis?
- **Correctness**: do the assumptions appear valid?
- **Contributions**: what are the 3 main contributions?
- **Clarity**: is it well written?

**Create**: Fleeting note in `10 - Inbox/Fleeting-Notes/` with 5Cs and decision.

**Decision gate**:
- [ ] Relevant → **CONTINUE to Pass 2**
- [ ] Not relevant → add to PRISMA exclusion log with reason

---

## Step 2: Keshav Pass 2 (≤1 hour)

**Read**: carefully but skip proofs and detailed derivations.

**Note**:
- Key arguments and supporting evidence
- Important figures, tables, and charts
- Unread references worth following up

**Create**: Literature note in `20 - Literature/20.1 Papers/[topic]/` using `Template-Keshav-ThreePass`.

**Fill frontmatter**: type, authors, year, status (→ reading), relevance (1–5), citekey, topic.

**Decision gate**:
- [ ] Core paper (relevance ≥ 4) → **CONTINUE to Pass 3 + Q1/Q2/Q3**
- [ ] Supporting paper → mark status as `completed`; create brief summary; done.

---

## Step 3: Keshav Pass 3 + MIT AI Lab Q1/Q2/Q3 (2–5 hours)

*For core papers only (relevance ≥ 4)*

### 3a. Virtual Re-implementation (Keshav Pass 3)

Attempt to reconstruct the paper's core contribution from scratch:
- What assumptions did the authors make?
- What choices would you have made differently?
- What are the hidden failings or missing citations?

### 3b. Q1 — "How can I use this?" (WP 316)

Map to PUMA components:
- [ ] Metrics borrowed → which metric, for which PUMA stage?
- [ ] Methods borrowed → which experimental design element?
- [ ] Datasets borrowed → does it use Jira SR / TAWOS / comparable data?
- [ ] Baselines borrowed → does it provide numbers I can compare against?
- [ ] Framings borrowed → does it provide theoretical language for my problem?

### 3c. Q2 — "Does this really do what it claims?" (WP 316)

Critical scrutiny:
- [ ] Are the baselines appropriate and fair?
- [ ] Is the evaluation metric the right one for the claim?
- [ ] Is the claim over-stated relative to the evidence?
- [ ] Is the study reproducible? (check: code available? data available? seeds reported?)
- [ ] Does it generalise to my context (local models, PM domain, 8B parameters)?

### 3d. Q3 — "What if…?" (WP 316)

Generate extensions:
- [ ] What if we relaxed assumption X?
- [ ] What if we applied this to PUMA's specific domain?
- [ ] What would break if the dataset distribution were different?
- [ ] What future work does this paper implicitly call for?

---

## Step 4: Create Permanent Note(s)

For each *original insight* generated in Pass 3 + Q1/Q2/Q3:

1. Check: Is this truly one atomic idea?
2. Write a **declarative title** (the title IS the claim)
3. Place in appropriate `30 - Permanent/` subfolder
4. Link to: source LN, related PNs, relevant MOC

**Do NOT create a permanent note that just summarises the paper.** Permanent notes capture YOUR synthesised insights, not the paper's content.

---

## Step 5: Update Reading Log

Update `50 - Areas/51 Research/MIT-AILab-Method/MIT-AILab-Reading-Practice` with:
- Q1 answers → the PUMA Resource Map table
- Q2 answers → the Critical Scrutiny Tracker
- Q3 answers → the Research Extensions list

Update `50 - Areas/51 Research/Keshav-ThreePass/Keshav-Reading-Log` with paper status → `reviewed`.

---

## Step 6: Update MOC and Bibliography

- Add to relevant MOC (e.g., `MOC-Literature-Review`)
- Verify Zotero has full APA 7 metadata
- If not yet in `BIB-Master-APA7`, add manually

---

## AI Assistance Points (CDD)

| Step | AI tool | Purpose |
|------|---------|---------|
| Pass 1 discovery | Perplexity / Consensus / Elicit | Finding papers, not reading them |
| Q1 mapping | Claude (RCOIF prompt) | Structured extraction of PUMA-relevant elements |
| Q2 scrutiny | Claude (AMI prompt — critique mode) | Identifying validity threats |
| Q3 generation | Claude (EGI prompt) | Brainstorming extensions |
| Permanent note draft | Claude (DRCA prompt) | Deconstruct → reconstruct the idea |

**Critical rule**: AI generates *options*. You decide what is true, what applies, what to write. The permanent note must be in your own words.

---

*Workflow v1.0 · April 2026 · Adapted from MIT AI Lab WP 316 + Keshav (2007)*
