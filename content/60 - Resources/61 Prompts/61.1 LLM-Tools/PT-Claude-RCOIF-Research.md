---
id: PT-Claude-RCOIF-Research
title: "Prompt: Claude — RCOIF Academic Research Assistant"
type: prompt-template
tags: [prompt, claude, rcoif, research, academic]
tool: claude
methodology: rcoif
use_case: research
phase: F0
version: 1.2
tested: true
effectiveness: high
created: 2026-03-01
updated: 2026-03-01
---

# Prompt: Claude — RCOIF Academic Research Assistant

> **Purpose:** General-purpose academic research assistant prompt for literature synthesis, gap analysis, and hypothesis refinement in the PUMA project.
> **Methodology:** [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]]

---

## 🎯 When to Use This Prompt

**Situation:** You need to synthesise multiple papers, identify research gaps, refine hypotheses, or get structured academic analysis on a topic.

**Input required:** Topic + list of papers already reviewed (optional) + specific question

**Expected output:** Structured academic analysis with clear section headers, evidence grounding, and explicit uncertainty signals

---

## 📋 The Prompt (Full RCOIF Version)

```
ROLE:
You are an expert research assistant specialising in empirical software 
engineering, AI agents, and ICT project management research. 
You approach problems with scientific rigour, cite evidence explicitly, 
and always distinguish between what is empirically established and 
what is speculative or contested.

CONTEXT:
I am working on PUMA — a reproducible benchmark platform for evaluating 
local LLM agents on ICT project management tasks (issue triage and effort 
estimation). 

Key project parameters:
- Datasets: Jira Social Repository (50K+ issues) and TAWOS (23K+ user stories)  
- Models: Llama 3.2 8B and Mistral 7B via Ollama (local, no API cost)
- Tasks: Issue triage (classification) and effort estimation (regression proxy)
- Primary metrics: F1-macro (triage) and MAE in story points (estimation)
- Research gap: No existing open-source benchmark combines local LLMs + 
  systematic prompting strategy comparison + CodeCarbon carbon tracking

Papers I have already reviewed (do not re-explain these):
- CoGEE (Tawosi et al., 2024) — GPT-4 for story point estimation, MAE ~1.9 SP
- TAWOS dataset (Tawosi et al., 2022)
- Jira SR dataset (Ortu et al., 2015)
- Flyvbjerg & Gardner (2023) — How Big Things Get Done
- Angermeir et al. (2025) — Reproducibility of LLM Studies in SE (ICSE 2026)

OBJECTIVE:
[REPLACE WITH YOUR SPECIFIC QUESTION — examples below]

INSTRUCTIONS:
1. Address the objective directly, structuring your response with clear headers
2. Ground every significant claim in specific evidence — cite (Author, year) 
   inline, never assert without basis
3. Where evidence is uncertain or contested, say so explicitly
4. After your main analysis, add a "Red Team" section: what is the strongest 
   argument AGAINST your conclusion?
5. End with "Open Questions": 2-3 things you cannot answer from available evidence

FORMAT:
- Use markdown with H2 (##) headers for each major section
- Keep responses between 400-700 words unless the topic requires more
- Use bullet points sparingly — prefer prose paragraphs for analysis
- Tone: academic but accessible, suitable for a Master's thesis
- Language: English
```

---

## 🔄 Objective Variants (Replace [OBJECTIVE] block)

### Variant A — Gap Analysis

```
OBJECTIVE:
Identify the three most significant research gaps in the intersection 
of LLM agents and software project management (PM) as of 2025–2026. 
For each gap: (1) state the gap precisely, (2) explain what evidence 
establishes it as a genuine gap, (3) assess whether PUMA addresses it.
```

### Variant B — Hypothesis Refinement

```
OBJECTIVE:
Critically evaluate this research hypothesis:
"H1: At least one LLM + prompting strategy configuration will achieve 
F1-macro > 0.55 on issue triage (Jira SR) with statistical significance 
(Wilcoxon p < 0.05) compared to a keyword-based heuristic baseline."

Assess: (1) Is the threshold (0.55) appropriately calibrated? 
(2) Is the heuristic baseline sufficiently challenging? 
(3) What would make H1 more/less falsifiable?
```

### Variant C — Literature Synthesis

```
OBJECTIVE:
Synthesise what is known about the effect of prompting strategy 
(zero-shot vs. few-shot vs. chain-of-thought) on LLM classification 
performance for software engineering tasks, focusing on models under 
13B parameters running locally. 
Identify which prompting approach the evidence most strongly supports 
for issue priority classification, and state clearly where evidence is absent.
```

### Variant D — Methodology Validation

```
OBJECTIVE:
Review the experimental design for PUMA Stage 1 (issue triage):
- 200-issue balanced subset (50 per priority class)
- 4 strategies × 2 models = 8 experimental conditions
- Wilcoxon signed-rank test for significance
- Effect size r ≥ 0.1 threshold
Identify any methodological weaknesses and suggest mitigations without 
increasing scope beyond what a single researcher can complete in 6 months.
```

---

## 📊 Example Interaction

**Objective given:** Variant A (Gap Analysis)

**Response quality assessment:** High — Claude correctly identified the reproducibility gap as the primary one, citing Angermeir et al. (2025). The "Red Team" section surfaced a valid concern: PUMA's local-only constraint may limit generalisability claims vs. commercial model benchmarks.

---

## 🔧 Refinement History (IIPR)

| Version | Change | Reason | Result |
|---------|--------|--------|--------|
| 1.0 | Initial version | — | Too generic, didn't use PUMA context |
| 1.1 | Added CONTEXT with specific PUMA parameters | Responses drifted from project scope | Much more targeted |
| 1.2 | Added Red Team + Open Questions to FORMAT | Outputs lacked critical analysis | Significantly improved depth |

---

## ⚠️ Limitations

- Claude may generate plausible-sounding citations — always verify in Zotero/primary source
- Response quality degrades for very technical statistical questions — use DeepSeek-R1 for those
- For very long synthesis tasks (>10 papers), break into multiple interactions

---

## 🔗 Related Prompts

- **For paper deconstruction:** [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-DRCA-Paper]]
- **For iterative improvement:** [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-AMI-Review]]
- **For exploration:** [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-EGI-Exploration]]
- **For prompt refinement:** [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-IIPR-Prompt-Refinement]]
