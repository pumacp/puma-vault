---
id: PN-Integrated-Reading-Method
title: "Keshav Three-Pass and MIT AI Lab Three Questions: An Integrated Academic Reading Protocol for PUMA"
type: permanent
created: 2026-04-29
updated: 2026-04-29
tags: [permanent-note, keshav, paper-reading, methodology, literature, academic-writing, ami, benchmark, drca, egi, falsifiability, fleeting-note, hypothesis, ict, iipr, literature-note, literature-review, llm, mit-ai-lab, moc, pipeline, popper, project-management, prompt-engineering, prompting, rcoif, reading-method, research, slr, template, validity, vault, wp316, zettelkasten]
---

# Keshav Three-Pass and MIT AI Lab Three Questions: An Integrated Academic Reading Protocol for PUMA

> [!abstract] Atomic Claim
> Effective reading of research papers requires both systematic coverage (Keshav’s three passes) and generative engagement (MIT AI Lab WP 316’s three questions). Integrating these frameworks produces a reproducible protocol tailored to the demands of a systematic literature review.

> [!info] Overview
> Reading a research paper should be done in multiple passes of increasing depth, not in a single linear read from start to finish. Meanwhile, active questions keep the reader from slipping into passive consumption. Together they ensure every paper in the SLR yields actionable notes, critical scrutiny, and creative extensions.

---

## 1. Keshav Three-Pass Method

S. Keshav (University of Waterloo) published “How to Read a Paper” (2007, *ACM SIGCOMM Computer Communication Review*, 37(3), 83–84). The method defines three passes, each with a distinct time budget, goal, and output for a Zettelkasten vault.

| Pass | Time Budget | Goal | Vault Output |
|------|-------------|------|-------------|
| **Pass 1** | 5–10 min | Decide if worth reading further (5 Cs) | Fleeting note |
| **Pass 2** | ≤ 1 hour | Grasp content + main thrust | Literature note |
| **Pass 3** | 2–5 hours | Virtual re-implementation → deep understanding | Permanent note |

**Pass 1 – The Survey (5–10 minutes)**
Read the title, abstract, introduction, section headings, and conclusions. Glance at the references. Evaluate the paper using the **5 Cs**:
- **Category:** What type of paper is this (measurement study, system description, theory, etc.)?
- **Context:** How does it relate to other work? Which references are likely to be important?
- **Correctness:** Do the assumptions appear valid?
- **Contributions:** What are the paper’s main contributions?
- **Clarity:** Is the paper well written?

At the end of Pass 1 you make a deliberate **in/out** decision: move to Pass 2 or archive with a fleeting note capturing why the paper was rejected.

**Pass 2 – The Careful Read (≤ 1 hour)**
Read the paper carefully but ignore detailed proofs, derivations, or implementation minutiae. As you read:
- Note key points in the margin or in a temporary holding file.
- Mark unread references that may become later reading targets.
- Try to summarise the main thrust of the paper and its supporting evidence.

The output is a **literature note** stored in `20 - Literature/`. It captures the paper’s core argument, method, results, and limitations in your own words.

**Pass 3 – The Deep Reconstruction (2–5 hours)**
Attempt to virtually re-implement the paper: make the same assumptions and reconstruct the work from scratch. This exposes hidden failings, implicit assumptions, missing citations, and potential extensions. The output is a **permanent note** in `30 - Permanent/` with a declarative title that synthesises the insight in your own words.

---

## 2. The MIT AI Lab Three Questions (WP 316)

MIT AI Lab Working Paper 316 — *“How to Do Research at the MIT AI Lab”* (1988, ed. David Chapman) — is an informal internal guide for graduate students. It mentions three reading questions that cultivate active, generative engagement with research papers:

**Q1 — “How can I use this?”**
Map the paper’s methods, metrics, datasets, or framings directly onto your own research. This prevents passive absorption: every paper becomes a candidate resource, not just an object to consume.

**Q2 — “Does this really do what the author claims?”**
Practise active scepticism. Evaluate whether the evaluation is rigorous, whether the baselines are fair, and whether the claim is over-stated relative to the evidence presented.

**Q3 — “What if…?”**
Generate extensions. Relax an assumption, apply the method to a different domain, think about what would break. This is the seed of future research contributions and is directly linked to hypothesis formation (falsifiability).

These questions are not a formalised methodology; they are habits of mind. They are most effective when applied during the deepest level of engagement — Keshav Pass 3.

---

## 3. The Integrated PUMA Reading Protocol

For the PUMA systematic literature review (≥ 40 papers, OE1), the reading protocol combines systematic coverage and generative questioning into a reproducible pipeline.

```
PAPER ENCOUNTERED
      ↓
KESHAV PASS 1 (5–10 min)
   → Read: title, abstract, intro, section headings, conclusions, references
   → Evaluate 5Cs: Category · Context · Correctness · Contributions · Clarity
   → Decision: PASS 2 or ARCHIVE (fleeting note)
      ↓ (if relevant)
KESHAV PASS 2 (≤ 1 hour)
   → Read carefully, skip proofs/derivations
   → Note key points; mark unread references
   → Literature note saved in [20 - Literature/]
      ↓ (for core papers only)
KESHAV PASS 3 + WP316 Q1/Q2/Q3 (2–5 hours)
   → Q1: "How can I use this?" → map to PUMA tasks, metrics, datasets
   → Q2: "Does this really do what the author claims?" → scrutinise baselines, evaluation, validity
   → Q3: "What if…?" → generate extensions, challenges, new hypotheses
   → Virtual re-implementation of core contribution
   → Permanent note saved in [30 - Permanent/] with declarative title
```

---

## 4. AI-Assisted Application of the Integrated Protocol

Each stage can be augmented with targeted prompting frameworks to increase speed, depth, and reproducibility.

### 4.1 General AI Prompting Frameworks per Pass

| Pass | AI Framework | Purpose |
|------|--------------|---------|
| Pass 1 + EGI | Exploración Guiada Interactiva | Map unfamiliar domains, identify key terminology and foundational references quickly |
| Pass 2 + AMI | Autodiagnóstico y Mejora Iterativa | Have the AI critique your draft summary; iteratively improve the literature note |
| Pass 3 + DRCA | Deconstrucción y Reconstrucción Conceptual | Deeply rebuild the paper’s argument, expose assumptions, and compare with related work |
| Any pass + RCOIF | Role-Context-Objective-Instructions-Format | Structure any AI query for clarity and reproducibility |

### 4.2 Operationalising the WP 316 Questions with RCOIF

**Q1 prompt template** (How can I use this?)
```
ROLE: Expert researcher in LLM benchmarking for PM tasks.
CONTEXT: I am building PUMA, a reproducible local-LLM benchmark for ICT project management.
OBJECTIVE: Extract from the following paper abstract all methods, metrics, datasets, and framings directly applicable to PUMA.
INSTRUCTIONS: For each applicable element, state: what it is, how it applies, and what would need to be adapted.
FORMAT: Bullet list grouped by: Metrics | Methods | Datasets | Framings.
[Paste paper abstract]
```

**Q2 prompt template** (Does this really do what the author claims?)
```
ROLE: Statistical critic reviewing a paper for a peer-reviewed venue.
CONTEXT: [Paste paper claim + methods section excerpt]
OBJECTIVE: Identify all validity threats: are baselines appropriate? Is the evaluation fair? Is the claim over-stated?
INSTRUCTIONS: Apply AMI — diagnose weaknesses first, then suggest how the authors could have strengthened the study.
FORMAT: (1) Weaknesses list · (2) Suggested improvements · (3) PUMA implication.
```

**Q3 prompt template** (What if…?)
```
ROLE: Creative research thinker specialising in LLM evaluation.
CONTEXT: [Paste paper core contribution in 2 sentences]
OBJECTIVE: Generate 5 "What if…?" extensions that a researcher could investigate.
INSTRUCTIONS: Each extension must be: (a) falsifiable, (b) relevant to PM+LLM, (c) distinct from what the paper already tests.
FORMAT: Numbered list with: Extension · Why interesting · Connection to PUMA.
```

---

## 5. Relationship to Other PUMA Frameworks

| Framework | Role | When to Use |
|-----------|------|------------|
| **Keshav Three-Pass** | Systematic reading protocol | Every paper in the SLR |
| **WP 316 Q1/Q2/Q3** | Active engagement mindset | During Pass 3 of core papers |
| **RCOIF** | AI prompt structure | Any AI-assisted question |
| **EGI** | Exploratory AI dialogue | Unfamiliar territory / new topic |
| **AMI** | Iterative AI self-critique | Improving writing, summaries, or prompts |
| **DRCA** | Deep concept deconstruction | Complex methodological papers |
| **IIPR** | Reverse-engineer AI failures | When prompts underperform |

The Zettelkasten conversion of each pass — fleeting note → literature note → permanent note — ensures that every read paper produces at least one atomic, linked, reusable insight. This aligns the protocol with the vault’s note-type hierarchy and makes the SLR output natively navigable.

---

## 6. The “MIT Student Method” Label

> [!warning] Nomenclature Clarification
> Several Spanish-language academic guides use the term “MIT Student Method” to refer to the combination of WP 316’s three questions, Keshav’s Three-Pass, and the RCOIF/EGI/AMI/DRCA/IIPR prompting frameworks. This label is a pedagogical shorthand; it does not correspond to any single official MIT publication or verified methodology.
>
> For academic rigour, PUMA cites:
> - WP 316 directly for the three questions,
> - Keshav (2007) for the Three-Pass protocol,
> - Individual references for each prompting framework.

---

## 7. Why This Matters for PUMA

The systematic literature review requires examining a large corpus of papers (≥ 40). Without a structured reading protocol, the process becomes inefficient and produces shallow, non-reproducible notes. The integrated Keshav+WP316 protocol:

- Prevents reading papers linearly from start to finish.
- Guarantees a deliberate decision at each depth level, saving time on marginal papers.
- Forces active, sceptical engagement with each core paper.
- Yields a permanent, atomic note that can feed directly into the research pipeline, benchmark design, and hypothesis generation.

---

## 8. References

- Keshav, S. (2007). How to read a paper. *ACM SIGCOMM Computer Communication Review*, *37*(3), 83–84.
- MIT AI Lab. (1988). *How to do research at the MIT AI Lab* (AI Lab Working Paper 316). MIT. Available at http://www.ai.mit.edu/
- [[20 - Literature/20.1 Papers/Research-Methods/LN-MITAILab-WP316-HowToDoResearch]]
- [[30 - Permanent/33 Frameworks/PN-EGI-Framework]]
- [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]]
- [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]]

## Related Notes

- [[50 - Areas/51 Research/Keshav-ThreePass/Keshav-Reading-Log]]
- [[50 - Areas/51 Research/MIT-AILab-Method/MIT-AILab-Reading-Practice]]
- [[00 - Meta/Templates/Template-Keshav-ThreePass]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]]
