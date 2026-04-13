---
id: PR-PUMA-Ch2-Literature
title: "Chapter 2 — Literature Review (State of the Art)"
type: project-note
tags: [project, chapter, literature-review, slr, state-of-art, academic-writing, agile, artefact, baseline, benchmark, carbon-footprint, chain-of-thought, code-review, codecarbon, cornell-notes, cot, dataset, devops, docker, dsr, effect-size, effort-estimation, evaluation, few-shot, finer, github, gpt, hypothesis, issue-triage, jira, llama, llm, local-llm, meta, metrics, mistral, moc, navigation, non-parametric, note-taking, ollama, openai, pec, pipeline, precision-recall, prisma, project-management, project-note, puma, python, reasoning, research, research-methodology, software-engineering, statistics, story-points, sustainability, swe-bench, tawos, triage, wilcoxon, workflow, zero-shot]
status: in-progress
deadline: 2026-04-08
pec: PEC2
word_count_target: 4000
created: 2026-03-01
---

# Chapter 2 — State of the Art

> **Goal:** Systematic, reproducible review of ≥40 papers. Establishes the three research gaps that PUMA addresses.
> **Protocol:** SLR + PRISMA 2020 + PRISMA-DFLLM
> **Full workflow:** [[60 - Resources/62 Workflows/WF-SLR-Pipeline]]

---

## Chapter Structure

### 2.1 Background
- [ ] 2.1.1 LLMs and their emergence as general-purpose tools
- [ ] 2.1.2 Project management fundamentals (PMBOK 7, Agile, ITIL 4)
- [ ] 2.1.3 The PM+LLM convergence (Manzoor et al., 2025 — survey)

### 2.2 Related Work: Issue Triage
- [ ] Manual triage — problem and cost (Jira SR evidence)
- [ ] ML-based triage (traditional approaches)
- [ ] LLM-based triage (recent papers)
- [ ] Comparison table (metric, dataset, reproducibility)

### 2.3 Related Work: Effort Estimation
- [ ] Story points and estimation challenges (TAWOS evidence)
- [ ] Deep-SE and classical approaches
- [ ] CoGEE (Tawosi et al., 2024) — state of art
- [ ] Local LLM approaches (Yonathan, 2025)
- [ ] Comparison table (MAE, model, reproducibility)

### 2.4 Related Work: Benchmarks
- [ ] Existing PM+LLM benchmarks (PM-LLM-Benchmark, Berti et al., 2024)
- [ ] SE benchmarks (SWE-bench, NLBSE, SELU)
- [ ] Reproducibility crisis (Angermeir et al., 2025)

### 2.5 Research Gaps
- [ ] Gap 1: Reproducibility (evidence → PUMA response)
- [ ] Gap 2: Prompting strategy comparison (evidence → PUMA response)
- [ ] Gap 3: Carbon measurement (evidence → PUMA response)

### 2.6 PUMA Positioning
- [ ] How PUMA fills the identified gaps
- [ ] What PUMA does NOT claim to solve

---

## Paper Processing Status

```dataview
TABLE authors, year, read_status, prisma_decision, puma_relevance
FROM "20 - Literature/20.1 Papers"
WHERE type = "literature-note"
SORT year DESC
```

---

## Key Comparison Tables (Draft)

### Triage Papers Comparison

| Paper | Year | Model | Dataset | F1 | Reproducible | Local |
|-------|------|-------|---------|-----|-------------|-------|
| *[to fill during SLR]* | | | | | | |
| PUMA (this work) | 2026 | Llama3.2+Mistral | Jira SR | TBD | ✅ | ✅ |

### Estimation Papers Comparison

| Paper | Year | Model | Dataset | MAE | Reproducible | Local |
|-------|------|-------|---------|-----|-------------|-------|
| CoGEE (Tawosi 2024) | 2024 | GPT-4 | TAWOS | ~1.9 SP | ❌ | ❌ |
| Yonathan 2025 | 2025 | Local LLM | TAWOS | ~3.2 SP | Partial | ✅ |
| PUMA (this work) | 2026 | Llama3.2+Mistral | TAWOS | TBD | ✅ | ✅ |

---

## Writing Notes

*(Add feedback and revision notes here)*

---
---
id: PR-PUMA-Ch3-Methods
title: "Chapter 3 — Materials & Methods"
type: project-note
tags: [project, chapter, methods, dsr, experiment-design]
status: in-progress
deadline: 2026-05-10
pec: PEC3
word_count_target: 5000
created: 2026-03-01
---

# Chapter 3 — Materials & Methods

> **Goal:** Full, reproducible description of the PUMA benchmark design.
> Anyone reading this chapter should be able to replicate the experiment independently.

---

## Chapter Structure

### 3.1 Research Paradigm — DSR
- Research type: Design Science Research (Hevner 2004, Peffers 2007)
- Artefact: PUMA benchmark framework
- Evaluation criteria: F1-macro ≥ 0.55 / MAE ≤ 3.0 SP / 100% reproducible

### 3.2 Datasets
- Jira SR: source, version (DOI), size, class distribution, preparation script
- TAWOS: source, version (GitHub), size, SP distribution, preparation script
- Stratified sampling: seed=42, 50 per class × 4 classes = 200 issues

### 3.3 Models
- Llama 3.2 8B (Meta) via Ollama — version, quantization (Q4_K_M)
- Mistral 7B via Ollama — version, quantization
- Determinism settings: seed=42, temperature=0

### 3.4 Prompting Strategies (Independent Variables)
- Zero-shot (baseline condition)
- Few-shot k=3 (stratified example selection)
- Few-shot k=6 (extended examples)
- Chain-of-thought (structured reasoning)
- Exact prompt templates: Appendix A

### 3.5 Baselines
- Heuristic keyword classifier (implemented, open-source)
- TF-IDF + SVM classifier (sklearn)
- Historical mean estimator (TAWOS project mean)
- Published baselines: Deep-SE, CoGEE (values from literature)

### 3.6 Metrics
- F1-macro (triage): sklearn.metrics.f1_score(average='macro')
- MAE (estimation): mean(|predicted − actual|)
- Latency: wall-clock time per Ollama call
- Carbon: gCO₂eq per condition (CodeCarbon)

### 3.7 Statistical Analysis
- Wilcoxon signed-rank test (scipy.stats.wilcoxon, two-sided)
- Significance threshold: α = 0.05
- Effect size: r = Z / √N
- Pre-registration: conditions locked before data collection

### 3.8 Reproducibility Protocol
- seed=42, temperature=0 universally
- Docker Compose option for hardware isolation
- GitHub: requirements.txt pinned, README ≤10 install commands
- Verification script: `python src/verify_reproducibility.py`

### 3.9 Environmental Measurement
- CodeCarbon v2.x, MIT licence
- Per-condition tracking (not aggregate)
- Hardware: CPU-only, 16GB RAM (documented)
- Country: Spain (EU grid mix)

---
---
id: PR-PUMA-Ch4-Results
title: "Chapter 4 — Results"
type: project-note
tags: [project, chapter, results, metrics, statistics]
status: pending
deadline: 2026-06-07
pec: PEC4
created: 2026-03-01
---

# Chapter 4 — Results

> **Goal:** Present all experimental results with full statistical analysis.
> All tables and figures generated programmatically from `results/` directory.

---

## Chapter Structure

### 4.1 Stage 1 — Issue Triage Results
- Table: F1-macro × model × strategy (8 conditions + 2 baselines)
- Figure: Heatmap of F1 per class × condition
- Statistical analysis: Wilcoxon results for each condition vs baseline
- Error analysis: Top-3 failure patterns with examples
- H1 assessment: Rejected / Not Rejected

### 4.2 Stage 2 — Effort Estimation Results
- Table: MAE × model × strategy (6 conditions + 3 baselines)
- Figure: MAE comparison bar chart
- Statistical analysis: Wilcoxon vs historical mean
- H2 assessment: Rejected / Not Rejected

### 4.3 Performance Analysis
- Latency per condition (seconds per query)
- Carbon footprint per condition (gCO₂eq)
- Carbon vs quality tradeoff analysis

### 4.4 Cross-Stage Analysis
- Which model performs better overall?
- Which strategy is most consistent?
- Cost-quality frontier

---

## Results Tables (Empty — to fill during F4)

### Stage 1: Triage F1-macro

| Model | Strategy | F1-macro | p-value | Effect r | ≥0.55? | ≥0.70? |
|-------|---------|---------|---------|---------|-------|-------|
| Heuristic baseline | — | *TBD* | — | — | — | — |
| TF-IDF+SVM | — | *TBD* | — | — | — | — |
| llama3.2:8b | zero-shot | *TBD* | *TBD* | *TBD* | — | — |
| llama3.2:8b | few-shot-3 | *TBD* | | | | |
| llama3.2:8b | few-shot-6 | *TBD* | | | | |
| llama3.2:8b | cot | *TBD* | | | | |
| mistral:7b | zero-shot | *TBD* | | | | |
| mistral:7b | few-shot-3 | *TBD* | | | | |
| mistral:7b | few-shot-6 | *TBD* | | | | |
| mistral:7b | cot | *TBD* | | | | |

### Stage 2: Estimation MAE (SP)

| Model | Strategy | MAE | p-value | Effect r | ≤3.0 SP? | ≤1.5 SP? |
|-------|---------|-----|---------|---------|---------|---------|
| Historical mean | — | *TBD* | — | — | — | — |
| Deep-SE | — | ~3.2 | — | — | — | — |
| CoGEE (GPT-4) | — | ~1.9 | — | — | — | — |
| llama3.2:8b | zero-shot | *TBD* | | | | |
| llama3.2:8b | few-shot-3 | *TBD* | | | | |
| llama3.2:8b | cot | *TBD* | | | | |
| mistral:7b | zero-shot | *TBD* | | | | |
| mistral:7b | few-shot-3 | *TBD* | | | | |
| mistral:7b | cot | *TBD* | | | | |

### Carbon Footprint

| Model | Strategy | Task | gCO₂eq | Latency (s/q) |
|-------|---------|------|---------|--------------|
| llama3.2:8b | zero-shot | triage | *TBD* | *TBD* |
| *...* | | | | |

---

## Navigation

**Datasets:** [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] · **Key Papers:** [[20 - Literature/20.1 Papers/LN-KeyPapers-CoGEE-Angermeir-Flyvbjerg]]
**SLR Workflow:** [[60 - Resources/62 Workflows/WF-SLR-Pipeline]] · **PRISMA Log:** [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]
**Methods:** [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] · [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]]
**Prompting:** [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] · **Triage+Estimation:** [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]]
**Hypotheses:** [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] · **Discussion:** [[40 - Projects/PUMA/41.5 Discussion/PR-PUMA-Ch5-Discussion]]
**MOC:** [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]] · [[80 - MOC/81 Topic-Maps/MOC-Literature-Review]]
