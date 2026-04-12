---
id: LN-Tawosi2024-CoGEE
title: "CoGEE: Search-Based Optimisation of LLM Learning Shots for Story Point Estimation"
type: literature-note
subtype: paper
tags: [literature, paper, story-points, estimation, llm, cogee, gpt4, few-shot]
authors: ["Tawosi, Vali", "Alamir, Serena", "Liu, Xiaomo"]
year: 2024
venue: "SSBSE 2023 / EASE 2024"
doi: "10.1007/978-3-031-48796-5_9"
arxiv: "2403.08430"
url: "https://arxiv.org/abs/2403.08430"
zotero_key: "Tawosi2024"
datasets_used: ["TAWOS"]
models_used: ["GPT-4", "GPT-3.5-turbo"]
metrics: ["MAE", "RMSE"]
reproducible: false
open_access: true
relevance: high
puma_relevance: "Primary baseline for H2 — MAE ~1.9 SP with GPT-4 is the state-of-the-art target. PUMA tests whether local models (Llama 3.2, Mistral 7B) can approach this without API costs."
read_status: processed
prisma_decision: include
created: 2026-03-01
---

# CoGEE: Story Point Estimation with Generative AI

> **One-sentence summary:** CoGEE uses search-based optimisation (genetic algorithms) to find the best k-shot example set from a project's history, achieving MAE ~1.9 SP with GPT-4 on the TAWOS dataset — the current state of the art.

---

## 📋 Bibliographic Reference

**Authors:** Tawosi, Vali · Alamir, Serena · Liu, Xiaomo
**Year:** 2024 | **Venue:** EASE 2024 | **arXiv:** 2403.08430

---

## 🎯 Core Contribution

**Problem:** Which examples to include in few-shot prompts for story point estimation is not obvious — random selection performs poorly.

**Main claim:** Search-based optimisation of the example set (selecting the k stories most similar to the target) significantly improves GPT-4 estimation quality compared to random few-shot selection.

**Key insight:** The *selection* of few-shot examples matters as much as the *number* of examples. Semantically similar historical stories provide better anchoring than random ones.

---

## 🔬 Methods & Results

| Aspect | Detail |
|--------|--------|
| **Model** | GPT-4, GPT-3.5-turbo |
| **Dataset** | TAWOS (23,000+ user stories) |
| **Approach** | Genetic algorithm selects optimal k examples |
| **Best MAE** | ~1.9 SP (GPT-4 + optimised few-shot) |
| **Baseline MAE** | ~3.5 SP (historical mean) |
| **Reproducibility** | Code not publicly available |

---

## 🧠 Critical Analysis (DRCA + Red Team)

**Strengths:**
- Uses TAWOS — the standard dataset, enabling comparison
- Clearly demonstrates few-shot selection matters
- Large-scale empirical evaluation

**Limitations (authors):**
- Relies on proprietary GPT-4 API — cost and reproducibility concerns
- Optimisation is expensive at inference time

**Limitations (mine — Red Team):**
- Genetic algorithm overhead makes this impractical for real-time triage
- No comparison with local models → unknown if technique transfers
- No carbon/energy measurement
- Code not published → reproducibility gap (the gap PUMA directly addresses)

**Relation to PUMA gap:**
- CoGEE uses GPT-4 (API, closed) → PUMA uses Llama 3.2 + Mistral (local, open)
- CoGEE doesn't compare prompting strategies → PUMA explicitly compares 4 strategies
- CoGEE doesn't measure CO₂ → PUMA does (CodeCarbon)

---

## 🔗 Connections

**Dataset:** [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]
**Task:** [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] (Story Points section)
**Hypothesis:** [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] (H2 baseline — PUMA must approach CoGEE's MAE)
**Methods:** [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] (§3.5 baselines)

---
---
id: LN-Angermeir2025-Reproducibility
title: "Reproducibility of LLM Studies in Software Engineering (ICSE 2026)"
type: literature-note
subtype: paper
tags: [literature, paper, reproducibility, llm, se, benchmark, icse]
authors: ["Angermeir, Florian", "et al."]
year: 2025
venue: "ICSE 2026"
arxiv: "2510.25506"
url: "https://arxiv.org/abs/2510.25506"
zotero_key: "Angermeir2025"
relevance: high
puma_relevance: "Primary empirical evidence for PUMA's Gap 1 (reproducibility). The finding that only 5/18 papers with published artefacts are actually executable is the core empirical motivation for PUMA's reproducibility-first design."
read_status: processed
prisma_decision: include
created: 2026-03-01
---

# Reproducibility of LLM Studies in Software Engineering

> **One-sentence summary:** A large-scale meta-study of 85 LLM papers in SE finds that only 5 of 18 papers with published artefacts can actually be executed, and none are fully reproducible — establishing the primary research gap that PUMA addresses.

---

## 🎯 Core Contribution

**Problem:** LLM research in SE is rapidly growing but poorly reproducible, making scientific accumulation of knowledge difficult.

**Main claim:** Reproducibility is systemically absent: most papers either don't publish code/data, or publish incomplete artefacts that cannot be executed.

**Key figures:**
- 85 papers analysed
- 18 with published artefacts
- 5 of 18 artefacts executable
- **0 of 18 fully reproducible** (same results, clean environment)

---

## 🧠 Critical Analysis

**This is the strongest single justification for PUMA's design.**
PUMA is explicitly designed to be the counter-example: 100% reproducible, seed=42, temperature=0, Docker option, MIT licence, ≤10 install commands.

**Red Team:** Could reproducibility have improved since the paper's data collection (papers likely from 2023–2024)? Possibly, but the structural incentives haven't changed. PUMA's approach is still needed.

---

## 🔗 Connections

**Defines:** [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] (Reproducibility section)
**Motivates:** [[SP-Architecture]] · [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] (Art. 1)
**Cited in:** [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] (Gap 1)
**Cluster:** [[30 - Permanent/30 Zettelkasten-Hub/ST-Reproducibility-Cluster]]

---
---
id: LN-Flyvbjerg2023-BigThings
title: "How Big Things Get Done — Flyvbjerg & Gardner (2023)"
type: literature-note
subtype: book
tags: [literature, book, project-management, planning-fallacy, uniqueness-trap]
authors: ["Flyvbjerg, Bent", "Gardner, Dan"]
year: 2023
venue: "Crown Publishers"
isbn: "978-0593239513"
zotero_key: "Flyvbjerg2023"
relevance: high
puma_relevance: "Introduces the 'Uniqueness Trap' (treating each project as unique, preventing statistical learning) — the third dimension of the PM problem that PUMA addresses via historical pattern learning."
read_status: processed
created: 2026-03-01
---

# How Big Things Get Done

> **One-sentence summary:** Flyvbjerg & Gardner demonstrate empirically that large projects systematically fail due to cognitive biases — especially the "Uniqueness Trap" — and argue for statistical learning from reference classes of similar projects.

---

## 🎯 Core Contribution for PUMA

**The Uniqueness Trap** (Chapter relevant to PUMA):
Project managers systematically resist using historical data from past similar projects because they perceive their current project as unique. This prevents statistical learning and generates systematic forecast errors.

**PUMA connection:** LLMs can act as a "reference class database" — providing probabilistic estimates grounded in historical patterns (few-shot examples from past similar issues/stories) rather than treating each issue as unique. This is exactly what the few-shot prompting strategy implements in PUMA.

---

## Cornell Notes

| **Questions** | **Notes** |
|--------------|-----------|
| What is the Uniqueness Trap? | PM tendency to reject historical analogies as "not applicable to my unique project" |
| How does PUMA address this? | Few-shot prompts provide historical examples, forcing anchoring to base rates |
| What is "Reference Class Forecasting"? | Using statistics from similar past projects to anchor estimates |

**Summary:** The book provides the non-technical PM justification for why AI assistance in project management has value: humans are systematically biased in ways that statistical models are not. PUMA benchmarks whether LLMs can overcome these biases in triage and estimation tasks.

---

## 🔗 Connections

**Defines concept:** [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] (Uniqueness Trap section)
**Key thinker:** [[30 - Permanent/37 Persons/PER-Flyvbjerg-Bent]]
**Cited in:** [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] (§1.1 problem 3)
**Supports:** [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] (H2 rationale — few-shot as reference class)
**Applied via:** [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] (few-shot examples as reference class)
