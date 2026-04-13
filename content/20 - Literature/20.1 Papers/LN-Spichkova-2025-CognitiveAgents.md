---
type: literature
title: "Cognitive Agents for Agile Software Project Management"
authors: ["Spichkova, Maria", "Georgievski, Ilche", "Čizmić, Benjamin"]
first-author: "Spichkova"
year: 2025
status: reading
topic: LLM-agents-PM
relevance: 5
citekey: "@Spichkova2025CognitiveAgents"
venue: "EASE 2025"
arxiv: "2508.16678"
tags: [literature, llm-agents, agile, project-management, benchmark, puma-core, academic-writing, api, bibliography, carbon-footprint, chain-of-thought, citation, code-review, codecarbon, cot, critical-thinking, dataset, effort-estimation, github, gpt, hypothesis, issue-triage, jira, keshav, literature-note, literature-review, llm, metrics, moc, openai, permanent-note, planning, precision-recall, reading-method, red-teaming, research, research-methodology, slr, sprint, story-points, sustainability, tawos, triage]
created: 2026-03-10
updated: 2026-04-06
keshav-pass: 2
---

# LN: Spichkova (2025) — Cognitive Agents for Agile PM

**Citation**: Spichkova, M., Georgievski, I., & Čizmić, B. (2025). Cognitive agents for Agile software project management. In *Proceedings of EASE 2025* [Preprint]. arXiv:2508.16678.

---

## Pass 1 Summary (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Empirical evaluation + system proposal |
| **Context** | Builds on CoGEE; related to PM+LLM emerging body of work |
| **Correctness** | Uses proprietary models (GPT-4) — limited reproducibility |
| **Contributions** | Evaluates 5 Agile PM tasks with LLM agents. Shows CoT helps for structured tasks. |
| **Clarity** | Good. Task definitions clear. |

**Relevance**: ⭐⭐⭐⭐⭐ (5/5) — **Direct competitor / predecessor to PUMA**

---

## Pass 2 Key Points

**Five PM tasks evaluated**:
1. Story point estimation
2. Issue triage (priority classification)
3. Sprint planning
4. Risk identification
5. Status reporting

**Key limitation (relevant to PUMA)**: Uses GPT-4 via API. Not reproducible without payment. No systematic prompting strategy comparison. No carbon measurement.

**PUMA's differentiation**:
- Local models (no API cost)
- Systematic 4-strategy prompting comparison
- CodeCarbon measurement
- Open-source reproducible benchmark

**Metrics used**: F1 (triage), MAE (estimation), BLEU/ROUGE (text tasks). PUMA uses same for consistency.

---

## PUMA Integration

**Used in**: Section 1.1 (gap: reproducibility + systematic prompting), SLR evidence table

**Supports**: Research gap justification (Limitation 2: no systematic prompting strategy comparison)

---

## Pass 3 TODO

- [ ] Reconstruct their triage prompting approach
- [ ] Compare their F1 results to PUMA baselines when available
- [ ] Generate permanent note: insight about task-specific prompt design

---

## 🔗 Connected Notes

**Superseded by**: [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Cinkusz-2025-CognitiveAgentsAgilePM]] (corrected author metadata — Cinkusz is first author)

**Permanent notes:**
- [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — core PM tasks evaluated
- [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] — CoT effectiveness shown here
- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — reproducibility gap this paper exhibits

**PUMA project:**
- [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] — cited as Gap 2 (systematic prompting)
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] — F1 and MAE baselines
- [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] — datasets used

**MOCs:**
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
- [[80 - MOC/81 Topic-Maps/MOC-Literature-Review]]
