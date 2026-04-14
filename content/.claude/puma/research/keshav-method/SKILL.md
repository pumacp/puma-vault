---
name: puma-keshav-method
description: Implements Keshav's Three-Pass Method (2007) for reading academic papers in the PUMA Vault. Use whenever reading a new paper, creating a literature note (LN-), or preparing a paper for Zettelkasten integration. This is the mandatory reading protocol for all PUMA papers — each pass produces structured output that feeds the literature note template. Also governs the Keshav Reading Log and LLM Wiki ingest flow for papers.
---

# PUMA Keshav Three-Pass Method

## Overview

Keshav's Three-Pass Method (Keshav, 2007) is the primary reading protocol for all papers in PUMA. It ensures efficient, structured reading that produces actionable notes without wasting time.

**Source**: Keshav, S. (2007). How to read a paper. *ACM SIGCOMM Computer Communication Review*, 37(3), 83–84.

> Note: "MIT Student Method" is NOT a valid academic citation. Always reference Keshav (2007) for reading methodology.

## The Three Passes

### Pass 1 — Bird's Eye View (5–10 minutes)

**Goal**: Decide if the paper deserves further reading.

Read in order:
1. Title, abstract, introduction
2. Section and sub-section headings
3. Conclusions
4. References (scan for familiar works)

**Output** (fill in LN- frontmatter):
```yaml
pass1_summary: "One-sentence summary of what this paper does"
pass1_category: "measurement | analysis | system | position paper | survey"
pass1_context: "Papers this builds on (key refs)"
pass1_correctness: "Are assumptions valid? (yes/probably/uncertain)"
pass1_contributions: "Main claimed contributions (bullet list)"
pass1_clarity: "Is paper well-written? (yes/somewhat/no)"
pass1_decision: "read-further | skim | skip"
```

**PUMA inclusion criteria for Pass-1 decision**:
- Relevant to: LLM agents, issue triage, effort estimation, benchmarking, project management AI
- Published: 2019–2026 preferred (pre-2019 for foundational works)
- Venue: ICSE, FSE, ASE, MSR, EMSE, IEEE TSE, ACM TOSEM, or top AI venues (NeurIPS, ICML, ICLR, ACL)
- If decision = `skip` → do not create LN-; note reason in Keshav-Reading-Log.md

### Pass 2 — Careful Reading (up to 1 hour)

**Goal**: Understand paper's main thrust (not every detail).

Read with pen in hand:
1. Read the paper carefully, ignoring proofs
2. Note key points in margins
3. Mark unread references to follow up
4. Understand figures, diagrams, tables

**Output** (LN- body sections):
```markdown
## Key Contributions
- [List main technical contributions]

## Methodology
- [How did they do it? Dataset, model, evaluation]

## Key Results
- [What did they find? Exact numbers if reported]

## Limitations
- [What do they acknowledge as limitations?]

## Connections to PUMA
- [How does this relate to PUMA's research questions?]
- Related notes: [[PN-concept]], [[LN-related-paper]]
```

**Decision after Pass-2**:
- `proceed-to-pass3`: paper is highly relevant and contains insights to integrate
- `literature-only`: paper is context but won't generate new permanent notes
- `citation-only`: useful as reference but not worth full reading

### Pass 3 — Deep Understanding (1–5 hours)

**Goal**: Virtually re-implement the paper. Understand every assumption, every proof.

For PUMA's most critical papers only:

1. Challenge every assumption
2. Identify innovations vs. standard techniques
3. Identify strong points and weaknesses
4. Identify missed references
5. Identify future work

**Output** (permanent note creation):
```markdown
## Critical Analysis
- [Challenge: assumption X may not hold because...]
- [Innovation: novel contribution is Y]
- [Weakness: evaluation is limited by Z]
- [Future work: extending to W would require...]

## Permanent Note Candidates
- PN-[Concept1]: [Why this deserves its own note]
- PN-[Concept2]: [Key insight to preserve]

## Integration Actions
- Update: [[PN-existing-note]] with new evidence from this paper
- Create: [[PN-new-concept]] for [novel concept found]
- Flag: Contradiction with [[PN-other-note]] re: [specific claim]
```

## Keshav Reading Log Protocol

Update `50-Areas/51-Research/Keshav-ThreePass/Keshav-Reading-Log.md` after each paper:

```markdown
| Date | Paper | Pass1 | Pass2 | Pass3 | LN- Created | PN- Created/Updated | Notes |
|------|-------|-------|-------|-------|-------------|---------------------|-------|
| 2026-04-14 | LN-Author-Year-Title | ✅ | ✅ | — | Yes | PN-Concept | decision: literature-only |
```

## Template Usage

Template location: `00-Meta/Templates/Template-Keshav-ThreePass.md`

Copy template for each new paper:
```bash
# In vault root:
cp "00 - Meta/Templates/Template-Keshav-ThreePass.md" \
   "20 - Literature/20.1-Papers/[Topic]/LN-Author-Year-Title.md"
```

Fill in YAML frontmatter and each pass section progressively.

## Integration with LLM Wiki

After Pass-3 (or Pass-2 for less critical papers):

1. Identify which wiki pages (permanent notes) this paper touches
2. Update those PN- notes with new evidence
3. Flag contradictions with `[!contradiction]` callout
4. Create new PN- notes for novel concepts
5. Update `ZK-Hub-PUMA.md` index
6. Append to `AI-Use-Log.md`

## AI-Assisted Reading

Use Claude for each pass with RCOIF framing:

**Pass-1 prompt**:
```
ROLE: Research analyst in software engineering and AI agents
CONTEXT: PUMA project investigates LLM agents for issue triage and story point estimation
OBJECTIVE: Perform Keshav Pass-1 on the attached paper
INSTRUCTIONS:
1. Read title, abstract, introduction, headings, conclusions, references
2. Fill in all Pass-1 fields
3. Give inclusion decision for PUMA vault
FORMAT: YAML block for frontmatter fields + one-paragraph justification
```

**Pass-3 prompt** (for critical papers):
```
ROLE: Critical reviewer at top software engineering venue
CONTEXT: [paper summary from Pass-2]
OBJECTIVE: Perform Keshav Pass-3 critical analysis
INSTRUCTIONS:
1. Challenge every key assumption
2. Identify innovations vs. standard techniques  
3. Identify strong points and weaknesses
4. List permanent note candidates for PUMA Zettelkasten
FORMAT: Structured markdown with sections for each Pass-3 element
```
