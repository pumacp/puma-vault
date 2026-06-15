---
id: TASKS-Active
title: "✅ Active Tasks — PUMA"
type: gtd-tasks
tags: [gtd, tasks, active, academic-writing, ai-tools, api, architecture, baseline, bdd, benchmark, bibliography, carbon-footprint, chain-of-thought, citation, codecarbon, cot, dataset, effort-estimation, evaluation, few-shot, github, issue-triage, jira, literature-review, llama, local-llm, meta, metrics, mistral, non-parametric, obsidian, ollama, openspec, perplexity, precision-recall, prompt-engineering, puma, research, research-tools, sdd, slr, statistics, story-points, sustainability, tawos, template, triage, wilcoxon, zero-shot, zotero]
created: 2026-03-01
updated: 2026-03-01
---

# ✅ Active Tasks — PUMA

> **GTD Task Master List.** Process this with Obsidian Tasks plugin.

> [!info] Overview
> Format: `- [ ] Task #tag 📅 YYYY-MM-DD ⏫/🔼/🔽`
> Priority: ⏫ urgent · 🔼 high · = normal · 🔽 low

---

## 🔴 Phase F1 — Design (Mar 9–28)

- [ ] Design zero-shot prompt template for triage (v1) [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]] 🔼 📅 2026-03-15
- [ ] Design few-shot-3 prompt template for triage (v1) 🔼 📅 2026-03-15
- [ ] Design CoT prompt template for triage (v1) 🔼 📅 2026-03-17
- [ ] Implement heuristic keyword baseline classifier 🔼 📅 2026-03-20
- [ ] Implement TF-IDF + SVM baseline classifier 🔼 📅 2026-03-20
- [ ] Define stratified sampling script for Jira SR (seed=42) 🔼 📅 2026-03-22
- [ ] Write SP-Triage-Agent spec (OpenSpec format) [[SP-Triage-Agent]] 🔼 📅 2026-03-18
- [ ] Write BDD scenarios for TriageAgent 🔼 📅 2026-03-20
- [ ] Document architecture decisions in SP-Architecture = 📅 2026-03-25
- [ ] Draft Chapter 2 structure + outline 🔼 📅 2026-03-28

## 🟡 Phase F2 — Prototype (Mar 29 – Apr 8)

- [ ] Implement OllamaClient wrapper (seed=42, temp=0) = 📅 2026-03-30
- [ ] Implement TriageAgent class (all 4 strategies) = 📅 2026-04-02
- [ ] Implement EvaluationEngine (F1-macro, Wilcoxon) = 📅 2026-04-03
- [ ] Integrate CodeCarbon into experiment runner = 📅 2026-04-03
- [ ] Run full benchmark: 2 models × 4 strategies × 200 issues = 📅 2026-04-05
- [ ] Generate results table (Stage 1) = 📅 2026-04-06
- [ ] Run Wilcoxon tests vs baselines = 📅 2026-04-06
- [ ] Write Milestone 2 submission document ⏫ 📅 2026-04-08
- [ ] Commit v0.1 tag to GitHub = 📅 2026-04-08

## 🟢 Phase F3 — Extension (Apr 9 – May 10)

- [ ] Download and prepare TAWOS subset (seed=42) = 📅 2026-04-12
- [ ] Design estimation prompts (zero-shot, few-shot, CoT) = 📅 2026-04-15
- [ ] Implement EstimationAgent = 📅 2026-04-20
- [ ] Run Stage 2 benchmark (MAE vs baselines) = 📅 2026-04-25
- [ ] Write Chapter 3 (Materials & Methods) draft = 📅 2026-05-08
- [ ] Submit Milestone 3 ⏫ 📅 2026-05-10

## 🔵 Phase F4 — Analysis (May 1 – Jun 7)

- [ ] Full statistical analysis (all conditions) = 📅 2026-05-20
- [ ] Carbon footprint report (all conditions) = 📅 2026-05-22
- [ ] Write Chapter 4 (Results) = 📅 2026-05-30
- [ ] Write Chapter 5 (Conclusions) = 📅 2026-06-04
- [ ] Final reproducibility verification (clean env) = 📅 2026-06-05
- [ ] Submit Milestone 4 ⏫ 📅 2026-06-07

## ⚫ Phase F5 — Closure (Jun 8–23)

- [ ] Publish GitHub repository (MIT licence, README, v1.0 tag) = 📅 2026-06-15
- [ ] Record explainer video (≤20 min) = 📅 2026-06-18
- [ ] Final project documentation review = 📅 2026-06-20
- [ ] Submit final PUMA Project ⏫ 📅 2026-06-23

---

## 📚 Literature Tasks (Ongoing)

- [ ] Read and process LN-Tawosi2022-TAWOS (full paper) 🔼 📅 2026-03-10
- [ ] Read and process LN-Angermeir2025-Reproducibility (full paper) 🔼 📅 2026-03-10
- [ ] Read and process LN-Calikli2025-RequestFormats (full paper) 🔼 📅 2026-03-12
- [ ] Read and process LN-Wei2022-CoT (full paper) = 📅 2026-03-14
- [ ] Complete SLR screening (title/abstract) for 40+ papers = 📅 2026-03-20
- [ ] Verify all Perplexity-sourced citations in primary sources = 📅 2026-03-08

---

## 🔧 Setup Tasks (Immediate)

- [ ] Pull Llama 3.2 8B via Ollama ⏫ 📅 2026-03-05
- [ ] Pull Mistral 7B via Ollama ⏫ 📅 2026-03-05
- [ ] Test Ollama API with seed=42 verification ⏫ 📅 2026-03-05
- [ ] Set up Zotero PUMA library with Better BibTeX ⏫ 📅 2026-03-06
- [ ] Configure Obsidian Git auto-commit ⏫ 📅 2026-03-05
- [ ] Create GitHub repo (public, MIT licence) ⏫ 📅 2026-03-06
- [ ] Install CodeCarbon: `pip install codecarbon` ⏫ 📅 2026-03-05

---

## ⏳ Completed

- [x] Milestone 1 submitted ✅ 2026-03-08
- [x] Environment verified (Ollama + models running) ✅ 2026-03-06
- [x] Chapter 1 written and reviewed ✅ 2026-03-08
- [x] Jira SR dataset downloaded from Zenodo ✅ 2026-03-04
- [x] TAWOS dataset downloaded from GitHub ✅ 2026-03-04
