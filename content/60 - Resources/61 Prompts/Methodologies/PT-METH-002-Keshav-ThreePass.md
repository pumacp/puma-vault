---
id: PT-METH-002
title: "Keshav's Three-Pass Method — Paper Reading Protocol for PUMA"
type: prompt-note
tool: notebooklm-claude
phase: Phase1-Research
step: "03-Structured-Extraction"
methodology: [Keshav-Three-Pass, Critical-Reading]
tags: [prompt, keshav, three-pass, reading, puma]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 📖 Keshav's Three-Pass Method — Paper Reading Protocol for PUMA

**Tool**: NotebookLM / Claude
**Phase**: Phase 1 — Research
**Methodology**: Keshav Three-Pass + MIT student critical questions

---

## Pass 1 — Bird's-Eye View (5–10 minutes per paper)

```
Apply Keshav Pass 1 to this paper:

Read only: title, abstract, introduction, section headings, conclusions, references.

Produce:
1. Paper type: empirical / survey / benchmark / position / tool paper
2. Main claim in 1 sentence
3. Evidence type: experiment / simulation / case study / analysis / opinion
4. Relevance to PUMA: High (directly applicable) / Medium (background) / Low (peripheral) / Exclude
5. Five categories: [category list based on the 5 C's below]

5 C's evaluation:
- Category: type of paper
- Context: theoretical basis, related papers
- Correctness: do assumptions seem valid?
- Contributions: what does this paper contribute?
- Clarity: is it well written?

Decision: PROCEED TO PASS 2 (High/Medium) or STOP (Low/Exclude)
```

## Pass 2 — Content Grasp (30–60 minutes per paper)

```
Apply Keshav Pass 2 to this paper (read carefully, skip proofs):

Extract:
1. Research question and hypothesis
2. Methodology: study design, sample, procedure
3. Dataset: name, size, source, availability
4. Main results: quantitative values (F1, MAE, accuracy, etc.)
5. Baseline compared: what does it beat and by how much?
6. Key figure or table (describe it in 2 sentences)
7. Limitations stated by authors
8. References to follow up (pick 3 most important)

Produce: a literature note suitable for the PUMA Zettelkasten (150 words max).
```

## Pass 3 — Virtual Re-implementation (2–5 hours per paper)

```
Apply Keshav Pass 3 to this paper (understand every detail):

For the 5 most important papers in PUMA's corpus:
1. Re-implement the methodology mentally: could you reproduce this study with PUMA's stack?
2. Identify hidden assumptions: what does the paper take for granted that might not hold for PUMA?
3. Deconstruct the evaluation: is the experimental design sound? What threats to validity are unaddressed?
4. Reconstruct for PUMA: how would you adapt this methodology to PUMA's context (local LLMs, Jira SR, TAWOS, Wilcoxon)?
5. Generate: (a) permanent note (declarative title, 4 sentences), (b) PUMA design principle derived from this paper.
```

## MIT Critical Questions Layer

```
After each pass, apply MIT-style critical questions:
1. How can I use this specific result in PUMA? (concrete application)
2. Does this paper actually prove what it claims? (methodological check)
3. What if the result doesn't hold for local 8B parameter models on Jira data? (generalization check)

For each question: answer in 2 sentences. Classify the claim as: Strong Evidence / Moderate / Weak / Needs Replication.
```

---

## PUMA Relevance

Keshav Three-Pass is PUMA's official paper reading protocol. All 40+ SLR papers are processed through this protocol. The literature notes generated feed [[50 - Areas/51 Research/Keshav-ThreePass/Keshav-Reading-Log]].

---

## Related Notes

- [[50 - Areas/51 Research/Keshav-ThreePass/Keshav-Reading-Log]]
- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
