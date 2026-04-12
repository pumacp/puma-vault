---
id: ST-Prompting-Strategies
title: "ST: Prompting Strategies — Structure Note"
type: structure-note
tags: [zettelkasten, structure-note, prompting, llm, puma]
created: 2026-04-06
---

# ST: Prompting Strategies — Structure Note

> A **Structure Note** (ST) is a lightweight MOC inside the Zettelkasten. It groups permanent notes on a single theme without duplicating their content.

**Theme**: How do different prompting strategies affect LLM performance on PM tasks?

---

## Core Claims (linked permanent notes)

1. **CoT improves structured classification** → [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]]
2. **Few-shot k has non-monotonic effect on MAE** → [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]]
3. **Local LLMs trade capability for reproducibility** → [[30 - Permanent/31 Concepts/PN-LLM-Local-vs-Cloud]]
4. **RCOIF structures AI prompts for research tasks** → [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]]
5. **EGI maps unfamiliar domains iteratively** → [[30 - Permanent/33 Frameworks/PN-EGI-Framework]]
6. **AMI enables iterative self-improvement** → [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]]

---

## PUMA Experiment Connection

The four prompting strategies evaluated in Stage 1 and Stage 2:

| Strategy | Code | Literature basis |
|----------|------|-----------------|
| Zero-Shot | `S1` | Brown et al. 2020 |
| Few-Shot-3 | `S2` | Tawosi et al. 2024 (CoGEE) |
| Few-Shot-6 | `S3` | Calikli & Alhamed 2025 |
| Chain-of-Thought | `S4` | Wei et al. 2022 |

→ [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]
→ [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]]
→ [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]]
→ [[20 - Literature/20.1 Papers/LN-Calikli-2025-RequestFormats]] — non-monotonic k effect
→ [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] — evaluation datasets
→ [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — PUMA tasks measured
→ [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]] — All prompting methods
