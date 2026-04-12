---
id: PT-METH-004
title: "Grounded Theory — Qualitative Analysis of Agent Failures"
type: prompt-note
tool: claude
phase: Phase1-Research
step: "07-Critical-Review"
methodology: [GroundedTheory, Qualitative-Analysis, Strauss-Corbin]
tags: [prompt, grounded-theory, qualitative, error-analysis, puma]
rating: 4
created: 2026-04-07
updated: 2026-04-07
---

# 🌱 Grounded Theory — Qualitative Analysis of Agent Failures

**Tool**: Claude
**Phase**: Phase 1 — Research / Phase 2 — Development
**Methodology**: Grounded Theory (Strauss & Corbin, 1990)

---

## Open Coding Prompt

```
Role: Qualitative researcher applying Grounded Theory (Strauss & Corbin, 1990) open coding.

Context: PUMA's experiments produce cases where the LLM agent misclassifies issue priority or produces incorrect story point estimates. I have collected [N] failure cases with: the original issue text, the predicted priority/estimate, the ground truth, and the model's reasoning.

Objective: Apply open coding to identify emergent categories of failure.

Instructions:
1. Read each failure case without predetermined categories.
2. Assign descriptive codes to each failure: what happened (one-phrase description), not why.
3. Each code = one observed behavior or pattern.
4. List all codes with one example from the data.

Format: Code list with data example. No interpretation yet — pure observation.

Failure cases:
[PASTE FAILURE CASES WITH REASONING]
```

## Axial Coding Prompt

```
Role: Qualitative researcher applying Grounded Theory axial coding.

Context: I have completed open coding on PUMA's agent failure cases and have [N] codes.

Objective: Group codes into categories (axial coding).

Instructions:
1. Group related codes into broader categories (6–10 max).
2. For each category: name, definition, included codes, properties (dimensions along which the category varies).
3. Identify relationships between categories: causal links, conditional links, contextual factors.
4. Flag the most frequent category (core category candidate).

Open codes from previous step: [PASTE CODES]

Format: Category table (Name | Definition | Codes | Properties). Relationship diagram in text.
```

## Selective Coding — Core Category Identification

```
Role: Grounded theorist identifying the core category.

Context: I have completed axial coding on PUMA's failure analysis with [N] categories.

Objective: Apply selective coding to identify the core category — the phenomenon that best explains the failure pattern.

Instructions:
1. Identify the core category: which category connects and explains all others?
2. Build the substantive theory in 100–150 words: what is happening and why?
3. Generate the relationship diagram: how do the other categories relate to the core category?
4. Derive 3 prompt engineering improvements from the core category.
5. Write a 100-word methodological memo documenting the coding decisions.

Categories from previous step: [PASTE CATEGORIES]

Format: Core category identification. Theory statement. Diagram in text. Improvements list. Memo.
```

---

## PUMA Relevance

Grounded Theory is used in PUMA to analyze qualitative patterns in the agent failure cases — what types of errors the LLMs make and why. This goes beyond quantitative F1-macro to provide interpretive richness for Section 4 (Conclusions and Future Work). The categories discovered may inform future prompt engineering improvements.

---

## Related Notes

- [[40 - Projects/PUMA/41.4 Results/PR-PUMA-Ch4-Results]]
- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
