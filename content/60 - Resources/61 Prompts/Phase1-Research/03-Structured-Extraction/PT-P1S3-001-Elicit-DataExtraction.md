---
id: PT-P1S3-001
title: "Elicit — Structured Data Extraction for PUMA SLR"
type: prompt-note
tool: elicit
phase: Phase1-Research
step: "03-Structured-Extraction"
methodology: [SLR, PRISMA, Data-Extraction]
tags: [prompt, elicit, data-extraction, slr, puma]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 📊 Elicit — Structured Data Extraction for PUMA SLR

**Tool**: Elicit (https://elicit.org)
**Phase**: Phase 1 — Research
**Step**: 03 — Structured Extraction
**Methodology**: SLR / PRISMA Data Extraction

---

## Prompt A — Core Extraction Schema

```
For each paper in the collection, extract the following fields in a structured table:
1. Research question / main objective
2. Study type (empirical, survey, position paper, benchmark)
3. AI/LLM method used (model name, framework, local/API)
4. Dataset name and size (number of issues, projects, samples)
5. Task performed (triage, estimation, risk detection, planning, other)
6. Evaluation metrics reported (F1, MAE, Precision, Recall, Accuracy, other)
7. Key numerical result (best metric value achieved)
8. Baseline compared against (heuristic, ML, prior LLM, human)
9. Reproducibility (code available Y/N, data available Y/N, seed reported Y/N)
10. Main limitation stated by authors
11. Relevance to PUMA (High/Medium/Low with one-sentence justification)
```

## Prompt B — Metrics-Focused Extraction

```
From each paper, extract only the quantitative evaluation results: (1) metric name, (2) metric value for the proposed method, (3) metric value for the baseline, (4) relative improvement percentage, (5) statistical significance test used (if any), (6) whether p-value < 0.05 was achieved. Return as a compact table for cross-study comparison.
```

## Prompt C — Dataset Registry Extraction

```
Identify all datasets mentioned across the literature collection. For each dataset: (1) name, (2) source (GitHub, Jira, synthetic, etc.), (3) size, (4) task it was used for, (5) whether it is publicly available, (6) URL or citation for access, (7) relevance to PUMA tasks (triage/estimation). Flag datasets that PUMA could directly reuse.
```

## Prompt D — Prompt Strategy Extraction

```
From papers that describe using LLMs for issue triage or effort estimation, extract the prompt engineering strategy used: (1) zero-shot, (2) few-shot (how many examples?), (3) chain-of-thought, (4) retrieval-augmented, (5) fine-tuned, (6) system prompt described Y/N, (7) examples of actual prompts if available. Create a comparison table of strategies vs. performance outcomes.
```

---

## Integration with PUMA PRISMA Protocol

After extraction:
1. Populate [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]] with extracted data
2. Use metric values to set PUMA baseline targets (F1-macro ≥ 0.55, MAE ≤ 3.0)
3. Dataset registry feeds [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]

---

## PUMA Relevance

Elicit's automatic extraction eliminates the need to manually read all 40+ papers in the SLR corpus. The metrics extraction directly informs the justification for PUMA's success thresholds. The dataset registry prevents redundant data collection.

---

## Related Notes

- [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]
- [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
- [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]]
