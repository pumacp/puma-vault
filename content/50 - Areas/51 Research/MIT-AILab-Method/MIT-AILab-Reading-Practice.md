---
id: MIT-AILab-Reading-Practice
title: "📖 MIT AI Lab Q1/Q2/Q3 — Applied Reading Log"
type: area-note
tags: [mit-ai-lab, wp316, reading, research, active-reading, puma]
created: 2026-04-06
updated: 2026-04-06
---

# 📖 MIT AI Lab Q1/Q2/Q3 — Applied Reading Log

> **Source**: MIT AI Lab Working Paper 316 (1988) — *"How to Do Research at the MIT AI Lab"*
> **Three active reading questions** (informal, not a formalised methodology):
> - **Q1**: "How can I use this?"
> - **Q2**: "Does this really do what the author claims?"
> - **Q3**: "What if…?"
>
> Apply these questions during **Keshav Pass 3** on core PUMA papers.
> Literature notes: [[20 - Literature/20.1 Papers/Research-Methods/LN-MITAILab-WP316-HowToDoResearch]]
> Permanent note: [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method-Complete]]

---

## How to Use This Log

For each core paper where you apply the three questions, fill one row:

| Paper | Q1: How can I use this? | Q2: Does it do what it claims? | Q3: What if…? | PN created? |
|-------|------------------------|-------------------------------|---------------|-------------|
| Angermeir 2025 (Reproducibility) | Use 4-failure taxonomy as PUMA checklist: missing deps, undocumented preprocessing, non-deterministic calls, absent seeds | "Only 5/18 executable" — operationalisation unclear: what counts as "executable"? Does partial reproduction count? | What if we measured reproducibility *after* 1 year of model API drift? Local models would still work; cloud API papers would not. | [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] |
| Calikli & Alhamed 2025 (Request Formats) | Non-monotonic k effect → justifies testing 4 strategies not just "more examples = better" | Uses proprietary models — does non-monotonicity hold for 8B local models with constrained context? | What if we included CoT *reasoning chains* as few-shot examples, not just label pairs? | [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] |
| Tawosi et al. 2024 (CoGEE) | Use their MAE baselines for MESOS/APSTUD/XD as direct comparison targets | They use GPT-4 via API — results not reproducible locally. Selection of similar examples may introduce leakage if done naively. | What if we used nomic-embed-text (local) instead of OpenAI embeddings for example selection? | [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] |
| Spichkova 2025 (Cognitive Agents) | Evaluate same 5 PM tasks (triage, estimation, sprint planning, risk, reporting) as structured comparison | Proprietary GPT-4 only; no systematic prompting comparison; no carbon measurement | What if we disaggregated performance by task type — do LLMs specialise better at triage or estimation? | — |
| Flyvbjerg & Gardner 2023 | Use Uniqueness Trap as theoretical framing for why historical data (TAWOS) matters | Not an empirical paper — book-length argument. Anecdotal evidence from large infrastructure projects, may not generalise to agile software sprints. | What if we measured uniqueness trap quantitatively: do teams that consult historical data actually estimate better? | [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] |

---

## Q1 Deep Dive: PUMA Resource Map

Papers → PUMA components:

| Paper | Metric borrowed | Dataset borrowed | Method borrowed | Baseline borrowed |
|-------|----------------|-----------------|-----------------|-------------------|
| Angermeir 2025 | Reproducibility checklist | — | 4-failure taxonomy | — |
| Calikli 2025 | MAE per format | TAWOS | 4-strategy design | — |
| CoGEE (Tawosi 2024) | MAE, SA | TAWOS (MESOS, APSTUD, XD) | Few-shot with similarity selection | MAE baselines |
| Ortu et al. 2015 | F1-macro | Jira SR | Stratified evaluation | Majority-class baseline |
| Strubell 2019 | gCO₂eq | — | CodeCarbon methodology | — |
| Wei et al. 2022 | — | — | CoT prompt design | — |
| Brown et al. 2020 | — | — | Few-shot in-context learning | — |

---

## Q2 Deep Dive: Critical Scrutiny Tracker

Papers where the claim requires scrutiny before PUMA cites them:

| Paper | Claim | Scrutiny | PUMA action |
|-------|-------|----------|-------------|
| CoGEE | "59.34% MAE improvement vs zero-shot" | Improvement measured on their own example selection method, not on standard few-shot-3 | Report their number as reference, not as direct comparison |
| Spichkova 2025 | "CoT improves PM task performance" | Uses GPT-4; 1 model; no statistical test reported | Cannot generalise to local 8B models; report as hypothesis to test |
| Angermeir 2025 | "0/18 papers fully reproducible" | "Fully reproducible" not formally defined | Use their taxonomy; define PUMA's own reproducibility criteria explicitly |

---

## Q3 Deep Dive: "What if…?" Research Extensions

Generated questions for PUMA future work section:

1. **What if** local 8B models are fine-tuned (LoRA) on Jira SR? Would they match CoGEE's GPT-4 MAE?
2. **What if** the prompting strategy effect is task-specific — CoT helps triage but not estimation?
3. **What if** we measured carbon per unit accuracy gain (gCO₂eq per F1-macro point)? Which strategy is most carbon-efficient?
4. **What if** RAG retrieval quality degrades for projects not in the training distribution?
5. **What if** a human-calibrated reference class (Flyvbjerg RCF) was injected as few-shot context?

> These questions populate the **Conclusiones y trabajos futuros** section.

---

## Prompt for AI-Assisted Q1/Q2/Q3 Application

```
ROLE: Senior research assistant specialising in empirical software engineering.
CONTEXT: I am reading papers for the PUMA Project SLR. PUMA evaluates local LLMs (Llama 3.2 8B, Mistral 7B via Ollama) on issue triage (Jira SR, F1-macro) and effort estimation (TAWOS, MAE). Reproducibility and carbon measurement are first-class experimental variables.
OBJECTIVE: Apply the MIT AI Lab three active reading questions to the following paper.
INSTRUCTIONS:
  Q1 "How can I use this?" — identify concrete borrowable elements (metrics/methods/datasets/baselines/framings).
  Q2 "Does this really do what the author claims?" — identify validity threats, over-claims, reproducibility gaps.
  Q3 "What if…?" — generate 3 falsifiable research extensions relevant to PUMA.
FORMAT: Three labelled sections (Q1 / Q2 / Q3), each ≤150 words.
[Paste abstract + methods summary]
```
