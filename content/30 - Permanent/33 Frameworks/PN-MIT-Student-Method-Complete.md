---
id: PN-MIT-Student-Method-Complete
title: "The MIT AI Lab three questions (Q1/Q2/Q3) activate deep reading when combined with Keshav Three-Pass as the PUMA research protocol"
type: permanent
created: 2026-04-06
updated: 2026-04-06
tags: [permanent-note, keshav, mit-ai-lab, reading-method, research-methodology, wp316]
---

# The MIT AI Lab three questions (Q1/Q2/Q3) activate deep reading when combined with Keshav Three-Pass as the PUMA research protocol

Reading a research paper well requires two distinct cognitive modes: **systematic coverage** (knowing what to look at and in what order) and **generative engagement** (actively thinking while reading). The Keshav Three-Pass Method provides the former; MIT AI Lab Working Paper 316 provides the latter.

---

## What WP 316 Actually Says

MIT AI Lab Working Paper 316 — *"How to Do Research at the MIT AI Lab"* (1988, ed. David Chapman) — is an informal internal guide, not a peer-reviewed publication. It mentions three reading questions as habits of mind:

**Q1 — "How can I use this?"**
Map the paper's methods, metrics, datasets, or framings to your own research. This prevents passive absorption: every paper becomes a candidate resource for your own work.

**Q2 — "Does this really do what the author claims?"**
Active scepticism. Evaluate whether the evaluation is rigorous, whether baselines are fair, whether the claim is over-stated relative to the evidence.

**Q3 — "What if…?"**
Generative extension. Relax an assumption. Apply the method to a different domain. Think about what would break. This is the seed of research contributions.

These questions are **informal suggestions** in WP 316, not a formalised methodology. They are most useful during deep reading (Keshav Pass 3 equivalent).

---

## The Integrated PUMA Reading Protocol

For PUMA's SLR (≥40 papers, OE1), the reading protocol combines both frameworks:

```
PAPER ENCOUNTERED
      ↓
KESHAV PASS 1 (5–10 min)
   → Read: title, abstract, intro, headings, conclusions, references
   → Evaluate 5Cs: Category · Context · Correctness · Contributions · Clarity
   → Decision: PASS 2 or ARCHIVE
      ↓ (if relevant)
KESHAV PASS 2 (≤1 hour)
   → Read carefully, skip proofs
   → Note key points, mark unread references
   → Fleeting note → Literature note in [20 - Literature/]
      ↓ (for core papers only)
KESHAV PASS 3 + WP316 Q1/Q2/Q3 (2–5 hours)
   → Q1: "How can I use this?" → map to PUMA tasks/metrics/datasets
   → Q2: "Does this really do what the author claims?" → scrutinise baselines, evaluation
   → Q3: "What if…?" → generate extensions, challenges, new hypotheses
   → Virtual re-implementation of core contribution
   → Permanent note in [30 - Permanent/] with declarative title
```

---

## AI-Assisted Application (CDD + RCOIF)

Each WP 316 question can be operationalised with a targeted AI prompt using RCOIF:

**Q1 prompt template**:
```
ROLE: Expert researcher in LLM benchmarking for PM tasks.
CONTEXT: I am building PUMA, a reproducible local-LLM benchmark for ICT project management.
OBJECTIVE: Extract from the following paper abstract all methods, metrics, datasets, and framings directly applicable to PUMA.
INSTRUCTIONS: For each applicable element, state: what it is, how it applies, and what would need to be adapted.
FORMAT: Bullet list grouped by: Metrics | Methods | Datasets | Framings.
[Paste paper abstract]
```

**Q2 prompt template**:
```
ROLE: Statistical critic reviewing a paper for a peer-reviewed venue.
CONTEXT: [Paste paper claim + methods section excerpt]
OBJECTIVE: Identify all validity threats: are baselines appropriate? Is the evaluation fair? Is the claim over-stated?
INSTRUCTIONS: Apply AMI — diagnose weaknesses first, then suggest how the authors could have strengthened the study.
FORMAT: (1) Weaknesses list · (2) Suggested improvements · (3) PUMA implication.
```

**Q3 prompt template**:
```
ROLE: Creative research thinker specialising in LLM evaluation.
CONTEXT: [Paste paper core contribution in 2 sentences]
OBJECTIVE: Generate 5 "What if…?" extensions that a researcher could investigate.
INSTRUCTIONS: Each extension must be: (a) falsifiable, (b) relevant to PM+LLM, (c) distinct from what the paper already tests.
FORMAT: Numbered list with: Extension · Why interesting · Connection to PUMA.
```

---

## The "MIT Student Method" Label

Various Spanish-language academic guides label the combination of WP 316's three questions + Keshav Three-Pass + AI-prompting frameworks (RCOIF, EGI, AMI, DRCA, IIPR) as the "MIT Student Method." This label is a pedagogical shorthand, not an official MIT publication. For academic rigour, PUMA cites:
- WP 316 directly for the three questions
- Keshav (2007) for the Three-Pass protocol
- Individual references for each prompting framework

---

## Relationship to Other PUMA Frameworks

| Framework | Role | When to use |
|-----------|------|------------|
| Keshav Three-Pass | Systematic reading protocol | Every paper in SLR |
| WP 316 Q1/Q2/Q3 | Active engagement mindset | During Pass 3 of core papers |
| RCOIF | AI prompt structure | Any AI-assisted question |
| EGI | Exploratory AI dialogue | Unfamiliar territory / new topic |
| AMI | Iterative AI self-critique | Improving writing or prompts |
| DRCA | Deep concept deconstruction | Complex methodological papers |
| IIPR | Reverse-engineer AI failures | When prompts underperform |

---

## References

- MIT AI Lab. (1988). *How to do research at the MIT AI Lab* (AI Lab Working Paper 316). MIT.
- Keshav, S. (2007). How to read a paper. *ACM SIGCOMM Computer Communication Review*, 37(3), 83–84.
- [[20 - Literature/20.1 Papers/Research-Methods/LN-MITAILab-WP316-HowToDoResearch]]

## Related Permanent Notes

- [[30 - Permanent/33 Frameworks/PN-EGI-Framework]]
- [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]]
- [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]]
- [[50 - Areas/51 Research/MIT-AILab-Method/MIT-AILab-Reading-Practice]]
- [[50 - Areas/51 Research/Keshav-ThreePass/Keshav-Reading-Log]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]]
