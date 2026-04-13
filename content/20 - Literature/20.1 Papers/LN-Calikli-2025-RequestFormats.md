---
type: literature
title: "Request Formats and Effort Estimation with LLMs"
authors: ["Calikli, Gul", "Alhamed, Arwa"]
first-author: "Calikli"
year: 2025
status: reviewed
topic: effort-estimation
relevance: 5
citekey: "@Calikli2025RequestFormats"
venue: "ACM Transactions on Software Engineering and Methodology"
doi: "10.1145/3715771"
tags: [literature, effort-estimation, prompting, llm, puma-core, academic-writing, baseline, benchmark, bibliography, chain-of-thought, citation, code-review, cot, dataset, evaluation, few-shot, github, hypothesis, jira, keshav, literature-note, moc, permanent-note, project-management, reading-method, research, research-methodology, software-engineering, story-points, tawos, zero-shot]
created: 2026-03-08
updated: 2026-04-06
keshav-pass: 3
---

# LN: Calikli & Alhamed (2025) — Request Formats and Effort Estimation

**Citation**: Calikli, G., & Alhamed, A. (2025). Request formats and effort estimation with LLMs. *ACM Transactions on Software Engineering and Methodology*. https://doi.org/10.1145/3715771

---

## Pass 1 Summary (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Empirical evaluation (controlled experiment) |
| **Context** | Builds on CoGEE (Tawosi 2024), Few-Shot LLM literature |
| **Correctness** | Strong empirical design. Multiple datasets. |
| **Contributions** | Prompt format has **non-monotonic, counter-intuitive effects** on estimation quality. More examples ≠ better. |
| **Clarity** | Excellent. Clear experimental design. |

**Relevance**: ⭐⭐⭐⭐⭐ (5/5) — **Directly justifies PUMA's systematic prompting comparison (H2)**

---

## Pass 2 Key Points

**Core finding**: The relationship between number of examples (k in few-shot) and estimation quality is **non-monotonic**. Neither zero-shot nor maximum-shot is consistently best. The optimal k varies by dataset, model, and task type.

**Why this is critical for PUMA**: This is the empirical justification for testing multiple prompting strategies (zero-shot, few-shot-3, few-shot-6, CoT) rather than assuming more examples = better. PUMA's independent variable (prompting strategy) is justified by this finding.

**Counter-intuitive result**: In some conditions, zero-shot outperforms few-shot, because providing examples can inadvertently anchor the model to non-representative examples from the training set.

**PUMA connection**: H₀₂ (null: no configuration with few-shot outperforms mean historical baseline) must be tested because assuming few-shot wins without evidence repeats the error Calikli identifies.

---

## Pass 3 — Reconstruction

The paper likely tests:
- k ∈ {0, 1, 3, 5, 10} examples per prompt
- Multiple models (including proprietary)
- TAWOS or similar dataset

**Key weakness**: Does not test CoT explicitly — PUMA adds this as Strategy 4.

---

## Permanent Note Generated

[[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]]

---

## PUMA Integration

**Used in**: Section 1.1 (Limitation 2 — gap: no systematic prompting comparison), Section 2.3 (justification for 4-strategy design), H₀₂ framing

**Key claim for PUMA Project**: "Calikli & Alhamed (2025) demonstrate that prompt format has non-monotonic effects on LLM estimation quality — an effect no existing PM benchmark controls systematically."

---

## 🔗 Connected Notes

**Permanent note:** [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] (Few-Shot section)
**Dataset:** [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] (TAWOS)
**Hypothesis:** [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] (H2 — why we test multiple strategies)
**PM concepts:** [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] (story point estimation)
**Methods:** [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] (§3.4 prompting strategies)
**Chapter 1:** [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] (§1.1 Limitation 2, §1.3 gap justification)
**Chapter 2:** [[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-Ch2-Ch3-Ch4-Ch5]] (§2.3 effort estimation related work)
**Related paper:** [[20 - Literature/20.1 Papers/LN-KeyPapers-CoGEE-Angermeir-Flyvbjerg]] (CoGEE section)
**MOC:** [[80 - MOC/81 Topic-Maps/MOC-Literature-Review]] · [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]] · [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
