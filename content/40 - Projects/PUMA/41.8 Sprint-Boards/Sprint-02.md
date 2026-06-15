---
id: Sprint-02-Milestone 2
title: "🏃 Sprint 02: Triage Module"
type: sprint-board
sprint: 2
start-date: 2026-03-29
end-date: 2026-04-08
goal: Implement complete triage module (Stage 1), run benchmark with all 4 prompting strategies, generate results table with Wilcoxon analysis
tags:
  - sprint
  - kanban
  - gtd
  - agile
  - puma
  - architecture
  - backlog
  - baseline
  - benchmark
  - carbon-footprint
  - chain-of-thought
  - codecarbon
  - cot
  - dataset
  - effect-size
  - effort-estimation
  - evaluation
  - falsifiability
  - few-shot
  - github
  - hypothesis
  - issue-triage
  - jira
  - literature-review
  - llama
  - local-llm
  - meta
  - metrics
  - mistral
  - non-parametric
  - ollama
  - popper
  - precision-recall
  - qualitative-research
  - research-methodology
  - slr
  - statistics
  - story-points
  - sustainability
  - template
  - triage
  - wilcoxon
  - zero-shot
created: 2026-03-29
---

# 🏃 Sprint 02: Triage Module + Baseline

**Goal**: Functional triage module with 4 prompting strategies evaluated on Jira SR subset (200 issues, stratified), baseline implemented, Wilcoxon test applied.
**Period**: 2026-03-29 → 2026-04-08
**Milestone 2 Deadline**: 2026-04-08

---

## 📋 Backlog

- [ ] Download and verify Jira SR dataset (DOI: 10.5281/zenodo.5901893) 📅 2026-03-30
- [ ] Implement stratified sampling script (50 issues × 4 priority classes = 200 total, seed=42) 📅 2026-03-31
- [ ] Implement heuristic baseline (majority class + TF-IDF+SVM) 📅 2026-04-01
- [ ] Implement Zero-Shot prompting template for triage agent 📅 2026-04-01
- [ ] Implement Few-Shot-3 prompting template 📅 2026-04-02
- [ ] Implement Few-Shot-6 prompting template 📅 2026-04-02
- [ ] Implement Chain-of-Thought (CoT) prompting template 📅 2026-04-02
- [ ] Run benchmark: Llama 3.2 8B × 4 strategies × 200 issues (temperature=0, seed=42) 📅 2026-04-03
- [ ] Run benchmark: Mistral 7B × 4 strategies × 200 issues 📅 2026-04-04
- [ ] Generate F1-macro / Precision / Recall results table 📅 2026-04-05
- [ ] Run Wilcoxon signed-rank test (α=0.05), compute effect size r 📅 2026-04-05
- [ ] Write error analysis by issue type (qualitative) 📅 2026-04-06
- [ ] Integrate CodeCarbon measurement per condition 📅 2026-04-06
- [ ] Update Ch.2 + Ch.3 with methodology description 📅 2026-04-07
- [ ] Commit reproducible code to GitHub with seed=42, requirements.txt fixed 📅 2026-04-07
- [ ] Final review + Milestone 2 submission 📅 2026-04-08

---

## 🔄 In Progress

- [ ] Validate Ollama inference environment (Llama 3.2 8B + Mistral 7B running, latency < 60s) 📅 2026-03-30

---

## 👁️ Review

- [ ] Architecture spec updated (SP-Architecture) — awaiting advisor feedback

---

## ✅ Done

- [x] Environment setup: Ollama + models + test inference log ✅ 2026-03-08
- [x] Milestone 1: Chapter 1 complete ✅ 2026-03-08
- [x] H1 + H2 hypotheses formalised ✅ 2026-03-08
- [x] SLR initial: ≥40 references reviewed ✅ 2026-03-08

---

## 📊 Sprint Metrics

| Metric | Value |
|--------|-------|
| Total tasks | 16 backlog + 1 in progress |
| Completed | 4 |
| Carried over from Sprint 1 | 0 |
| Target velocity | 16 tasks / 10 days |

---

## 🔍 Sprint 1 Retrospective

**What went well**: Milestone 1 delivered on time with strong theoretical framing. 40+ references reviewed. Hypotheses formally falsifiable.

**What to improve**: Start coding earlier. Set up CodeCarbon before running any experiments.

**Sprint 2 focus**: Execution. Every day should produce measurable output (code / results / text).

---

## 🔗 Related

- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] — H1 formal definition
- [[SP-Triage-Agent]] — Triage spec
- [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]] — Prompting strategies
- [[50 - Areas/54 Sustainability/Carbon-Tracking-Log]] — CodeCarbon log
