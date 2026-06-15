---
type: literature
title: "Cognitive Agents Powered by Large Language Models for Agile Software Project Management"
authors: ["Cinkusz, Konrad", "Barański, Mateusz", "Brodowski, Michał", "Kowalczyk, Rafał", "Spichkova, Maria"]
first-author: "Cinkusz"
year: 2025
status: reviewed
topic: agentic-pm
relevance: 5
citekey: "@Cinkusz2025CognitiveAgentsPM"
venue: "EASE 2025"
arxiv: "2508.16678"
doi: "10.48550/arXiv.2508.16678"
url: "https://arxiv.org/abs/2508.16678"
tags: [literature, cognitive-agents, agile-pm, llm, benchmark, puma-core, academic-writing, agile, api, architecture, bibliography, carbon-footprint, chain-of-thought, citation, code-review, codecarbon, cot, critical-thinking, effort-estimation, few-shot, github, gpt, hypothesis, issue-triage, keshav, literature-note, literature-review, local-llm, metrics, moc, obsidian, ollama, openai, planning, precision-recall, project-management, reading-method, red-teaming, research, research-methodology, slr, sprint, story-points, sustainability, triage, vault, zero-shot]
created: 2026-04-06
updated: 2026-06-15
keshav-pass: 3
---

# LN: Cinkusz et al. (2025) — Cognitive Agents Powered by LLMs for Agile Software PM

> [!cite] Bibliographic Reference
> **Citation**: Cinkusz, K., Barański, M., Brodowski, M., Kowalczyk, R., & Spichkova, M. (2025). *Cognitive agents powered by large language models for agile software project management*. arXiv:2508.16678. EASE 2025. https://arxiv.org/abs/2508.16678

> [!warning] Important Note

> [!info] Overview
> The bibliography entry lists "Spichkova, M., Georgievski, I., & Čizmić, B." as the author list. The **verified** first author is **Konrad Cinkusz**. Spichkova is the last author. Georgievski and Čizmić do not appear in the verified paper.

*(Also exists in vault as [[20 - Literature/20.1 Papers/LN-Spichkova-2025-CognitiveAgents]] — this note supersedes with corrected author metadata.)*

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Empirical evaluation + system proposal |
| **Context** | Evaluates LLM agents on 5 Agile PM tasks using GPT-4 and others |
| **Correctness** | Uses proprietary models — limited reproducibility |
| **Contributions** | (1) Evaluation of 5 Agile PM tasks (triage, estimation, sprint planning, risk, reporting); (2) CoT improves structured task performance; (3) First systematic multi-task PM benchmark with agents |
| **Clarity** | Good. Tasks clearly defined. |

> [!success] Relevance: ⭐⭐⭐⭐⭐
> Direct predecessor to PUMA. PUMA's three differentiating contributions address the three limitations of this paper.

---

## Pass 3 — Virtual Reconstruction

**Three limitations PUMA addresses (cited from this paper's gaps)**:

1. **Reproducibility**: Cinkusz et al. use GPT-4 via paid API. Results cannot be reproduced without payment and may change with model updates. PUMA uses Ollama + local models + seed=42.

2. **No systematic prompting comparison**: The paper tests CoT but does not systematically compare zero-shot vs. few-shot-3 vs. few-shot-6 vs. CoT. PUMA's 4-strategy design fills this gap.

3. **No environmental measurement**: No carbon footprint data. PUMA integrates CodeCarbon as a first-class experimental variable.

**Q3 (What if?)**: What if we apply the same 5-task evaluation framework but with local models? PUMA's Stage 1–3 covers 3 of those 5 tasks, enabling direct comparison with this paper's results.

---

## PUMA Integration

- **Section 1.1**: Three limitations → PUMA's three contributions → [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]]
- **Section 2 (SLR)**: Key comparison paper in evidence table → [[80 - MOC/81 Topic-Maps/MOC-Literature-Review]]
- **Results**: F1-macro and MAE results directly comparable → [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]
- **Reproducibility gap**: Underpins Gap 1 → [[20 - Literature/20.1 Papers/LN-Angermeir-2025-Reproducibility]]

## Related Permanent Notes

- [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — core tasks this paper evaluates
- [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] — prompting strategies compared
- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — reproducibility gap
- [[30 - Permanent/31 Concepts/PN-LLM-Local-vs-Cloud]] — local vs cloud gap
- [[20 - Literature/20.1 Papers/LN-Spichkova-2025-CognitiveAgents]] — related note (overlapping authorship)
- [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]] — PUMA's architecture addresses these gaps

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
