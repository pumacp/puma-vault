---
id: PN-MIT-Student-Method
title: "Keshav Three-Pass Method: a verified academic paper-reading framework"
type: permanent
created: 2026-03-01
updated: 2026-04-06
tags: [permanent-note, keshav, paper-reading, methodology, literature]
---

# Keshav Three-Pass Method: a academic paper-reading framework

Reading a research paper should be done in multiple passes of increasing depth, not in a single linear read from start to finish.

---

## The Core Idea

S. Keshav (University of Waterloo) published "How to Read a Paper" (2007, ACM SIGCOMM Computer Communication Review, 37(3), 83–84). The method defines three passes:

**Pass 1** (5–10 minutes): Read title, abstract, intro, section headings, conclusions, glance at references. Goal: decide if the paper is worth reading further. Evaluate using the **5 Cs**: Category, Context, Correctness, Contributions, Clarity.

**Pass 2** (≤ 1 hour): Read carefully but skip proofs. Grasp content, note key points, mark unread references. Goal: understand the paper's main thrust with supporting evidence.

**Pass 3** (4–5 hours): Attempt to virtually re-implement the paper — make the same assumptions and reconstruct its key innovations from scratch. Goal: deep understanding sufficient to identify hidden failings, implicit assumptions, and missing citations.

---

## Why This Matters for PUMA

The SLR requires reviewing ≥ 40 papers. Without a systematic reading protocol, reading is inefficient and produces shallow, non-reproducible literature notes.

Keshav's method integrates naturally with Zettelkasten:
- **Pass 1** → Fleeting note (capture decision)
- **Pass 2** → Literature note (in `20 - Literature/`)
- **Pass 3** → Permanent note (in `30 - Permanent/`) — synthesised insight in your own words

---

## Note on "MIT Student Method"

The term "MIT Student Method" does not correspond to a verified, published methodology. The closest verified sources are:
1. Keshav (2007) — the Three-Pass Method (origin: University of Waterloo, referenced at MIT course 6.5950)
2. MIT AI Lab Working Paper 316 ("How to Do Research at the MIT AI Lab") — informal guidance for graduate students including reading with questions like "How can I use this?" and "What if...?"

Neither constitutes a formal 3-question method. In this vault, **Keshav's Three-Pass Method** is used as the verified framework, supplemented by the AMI/DRCA/IIPR prompting methodologies for AI-assisted processing.

---

## Integration with AI Prompting Methodologies

For each pass, combine with:
- **Pass 1 + EGI**: Use Exploración Guiada Interactiva to map unfamiliar domains quickly
- **Pass 2 + AMI**: Use Autodiagnóstico y Mejora Iterativa — have AI critique your summary
- **Pass 3 + DRCA**: Use Deconstrucción y Reconstrucción Conceptual to deeply rebuild the paper's argument
- **Any pass + RCOIF**: Frame AI queries with Role-Context-Objective-Instructions-Format for better responses

---

## References

- Keshav, S. (2007). How to read a paper. *ACM SIGCOMM Computer Communication Review*, *37*(3), 83–84.
- MIT AI Lab Working Paper 316. (1988). *How to do research at the MIT AI Lab*. Available at http://www.ai.mit.edu/

## Related Notes

- [[30 - Permanent/33 Frameworks/PN-EGI-Framework]]
- [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]]
- [[50 - Areas/51 Research/Keshav-ThreePass/Keshav-Reading-Log]]
- [[00 - Meta/Templates/Template-Keshav-ThreePass]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]]
