---
id: Sprint-02-Board-GTD
title: 🏃 Kanban Board — Sprint 02
type: kanban
sprint: 2
version: "1"
start-date: 2026-03-29
end-date: 2026-04-08
tags:
  - kanban
  - sprint
  - gtd
  - pec2
  - agile
  - architecture
  - backlog
  - baseline
  - carbon-footprint
  - chain-of-thought
  - codecarbon
  - cot
  - dataset
  - effort-estimation
  - evaluation
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
  - moc
  - non-parametric
  - ollama
  - pec
  - precision-recall
  - prompt-engineering
  - puma
  - research-methodology
  - slr
  - statistics
  - story-points
  - sustainability
  - tawos
  - template
  - triage
  - wilcoxon
  - zero-shot
created: 2026-03-29
---

# 🏃 Kanban Board — Sprint 02

> This is the **GTD execution view** of the sprint. See [[40 - Projects/PUMA/41.8 Sprint-Boards/Sprint-02]] for the full sprint plan with retrospective.

**Deadline**: 2026-04-08 · **Goal**: Functional triage module + Wilcoxon analysis

---

## 📋 Backlog

- [ ] Download + verify Jira SR (DOI: 10.5281/zenodo.5901893) 📅 2026-03-30 #puma #data
- [ ] Implement stratified sampler (200 issues, 4 classes, seed=42) 📅 2026-03-31 #puma #code
- [ ] Implement heuristic baseline (majority class) 📅 2026-04-01 #puma #code
- [ ] Implement TF-IDF + SVM baseline 📅 2026-04-01 #puma #code
- [ ] Implement Zero-Shot prompt template 📅 2026-04-01 #puma #code
- [ ] Implement Few-Shot-3 template 📅 2026-04-02 #puma #code
- [ ] Implement Few-Shot-6 template 📅 2026-04-02 #puma #code
- [ ] Implement CoT template 📅 2026-04-02 #puma #code
- [ ] Run Llama 3.2 8B × 4 strategies 📅 2026-04-03 #puma #experiment
- [ ] Run Mistral 7B × 4 strategies 📅 2026-04-04 #puma #experiment
- [ ] Generate F1/Precision/Recall table 📅 2026-04-05 #puma #analysis
- [ ] Wilcoxon test (all conditions vs baseline) 📅 2026-04-05 #puma #stats
- [ ] Error analysis by issue type 📅 2026-04-06 #puma #analysis
- [ ] CodeCarbon report per condition 📅 2026-04-06 #puma #sustainability
- [ ] Update Ch.3 Methods with prompting strategy descriptions 📅 2026-04-07 #puma #writing
- [ ] Commit reproducible code to GitHub 📅 2026-04-07 #puma #code
- [ ] PEC2 final review + submission 📅 2026-04-08 #puma

---

## 🔄 In Progress

- [ ] Validate Ollama inference: Llama 3.2 8B + Mistral 7B (latency check) 📅 2026-03-30 #puma #code

---

## 👁️ Review / Waiting

- [ ] Advisor feedback on architecture spec (SP-Architecture-v1) #waiting

---

## ✅ Done (Sprint 1)

- [x] Environment setup: Ollama + models + inference log 2026-03-08
- [x] PEC1: Chapter 1 complete 2026-03-08  
- [x] H1 + H2 hypotheses formalized 2026-03-08
- [x] SLR: ≥40 references reviewed and tabulated 2026-03-08
- [x] Datasets identified and DOIs verified 2026-03-08

---

## 📊 Dataview: All Active Tasks

```tasks
not done
tag includes #puma
sort by due
```

---

## 📊 Overdue Tasks

```tasks
not done
due before today
tag includes #puma
sort by due
```

---

## Key Specs & References

[[40 - Projects/PUMA/41.6 Specs/SP-Architecture]] · [[40 - Projects/PUMA/41.6 Specs/SP-Triage-Agent]] · [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]]
[[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]] · [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]
[[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] · [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]]
[[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]] · [[90 - GTD/91 Tasks/TASKS-Active]]
