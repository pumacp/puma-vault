---
id: PR-PUMA-Ch3-Methods
title: "Chapter 3 — Materials & Methods"
type: project-note
tags: [project, chapter, methods, dsr, experiment-design, puma]
status: in-progress
deadline: 2026-05-10
pec: PEC3
word_count_target: 5000
word_count_current: 0
created: 2026-03-18
updated: 2026-03-18
---

# Chapter 3 — Materials & Methods

> **Goal:** Provide a complete, reproducible description of the PUMA benchmark.
> Anyone with this chapter should be able to replicate the experiment independently.
> **SDD approach:** Write specs first → describe implementation in this chapter.

---

## Chapter Outline

### 3.1 Research Paradigm

**DSR framing (Hevner 2004, Peffers 2007):**
- Research type: Design Science Research
- Artefact: PUMA benchmark framework (modular Python code, MIT licence)
- Evaluation: Empirical, quantitative, on public datasets with verified labels
- Communication: PUMA Project document + GitHub repository (public)

**PUMA within the DSR cycle:**
```
Problem identification (Ch.1 §1.1)
      ↓
Research objectives (Ch.1 §1.2)
      ↓
Design & development (Ch.3 — this chapter)
      ↓
Demonstration (Ch.4 — running experiments)
      ↓
Evaluation (Ch.4 — metrics, statistical tests)
      ↓
Communication (PUMA Project document + GitHub)
```

### 3.2 Datasets

#### 3.2.1 Jira Social Repository (Stage 1)

- **Source:** Zenodo DOI: 10.5281/zenodo.5901893 (Ortu et al., 2015)
- **Full size:** 50,000+ issues from Apache Software Foundation projects
- **PUMA subset:** 200 issues, stratified (50 per priority class), seed=42
- **Priority schema:** Critical | High | Medium | Low (4 classes)
- **Preparation script:** `src/data/prepare_jira_sr.py`

> See spec: [[40 - Projects/PUMA/41.6 Specs/SP-Estimation-Dataset-Specs]]

#### 3.2.2 TAWOS (Stage 2)

- **Source:** GitHub: SOLAR-group/TAWOS (Tawosi et al., 2022)
- **Full size:** 23,000+ Agile user stories
- **PUMA subset:** 350 stories, stratified (50 per SP class), seed=42
- **SP schema:** Fibonacci {1, 2, 3, 5, 8, 13, 21}
- **Preparation script:** `src/data/prepare_tawos.py`

### 3.3 Models

| Model | Tag | Quantization | RAM | Ollama |
|-------|-----|-------------|-----|--------|
| Llama 3.2 (Meta, 2024) | `llama3.2:8b` | Q4_K_M | ~5 GB | ≥ 0.5.0 |
| Mistral 7B (Jiang et al., 2023) | `mistral:7b` | Q4_K_M | ~4.5 GB | ≥ 0.5.0 |
| Phi-3.5 Mini (fallback) | `phi3.5:3.8b` | Q4_K_M | ~2.5 GB | ≥ 0.5.0 |

**Determinism:** `seed=42`, `temperature=0` on every Ollama API call.

### 3.4 Prompting Strategies (Independent Variables)

| ID | Strategy | Description | Prompt |
|----|---------|-------------|--------|
| S1 | Zero-shot | No examples, direct instruction | [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]] |
| S2 | Few-shot-3 | 3 labelled examples (1 per Critical/Low/Medium) | idem |
| S3 | Few-shot-6 | 6 examples (2 per Critical, High, Low) | idem |
| S4 | CoT | Step-by-step reasoning before label | idem |

**Example selection (S2, S3):** Stratified from training split (not evaluation subset), seed=42. No semantic similarity optimisation (unlike CoGEE) — this is an explicit design choice for simplicity and reproducibility.

### 3.5 Baselines

| ID | Baseline | Implementation |
|----|---------|---------------|
| B1 | Keyword heuristic | `src/baselines/keyword_classifier.py` |
| B2 | TF-IDF + SVM | `src/baselines/tfidf_svm.py` (sklearn) |
| B3 | Historical mean (Stage 2) | Per-project story point mean from TAWOS train split |

### 3.6 Evaluation Metrics

**Stage 1 (Triage):**
```python
from sklearn.metrics import f1_score, precision_recall_fscore_support

f1_macro = f1_score(y_true, y_pred, average='macro')
per_class = precision_recall_fscore_support(y_true, y_pred, average=None, labels=CLASSES)
```

**Stage 2 (Estimation):**
```python
import numpy as np
mae = np.mean(np.abs(np.array(y_pred) - np.array(y_true)))
rmse = np.sqrt(np.mean((np.array(y_pred) - np.array(y_true))**2))
```

**System metrics (all conditions):**
- Latency: wall-clock seconds per Ollama call
- Carbon: gCO₂eq per condition (CodeCarbon)

### 3.7 Statistical Analysis Protocol

**Test:** Wilcoxon signed-rank (two-sided), α = 0.05
**Why Wilcoxon:** Per-issue scores are not normally distributed; paired comparison
**Effect size:** r = |Z| / √N (Wilcoxon normal approximation)
**Multiple comparisons:** Bonferroni correction applied across 8 LLM conditions

```python
from scipy import stats
stat, p = stats.wilcoxon(llm_scores, baseline_scores, alternative='two-sided')
```

### 3.8 Reproducibility Protocol

1. All random operations: `seed=42`
2. All LLM inference: `temperature=0`
3. Package versions pinned in `requirements.txt`
4. Datasets: downloaded from stable DOIs/GitHub tags, SHA256 verified
5. Verification script: `python src/verify_reproducibility.py`
6. Docker Compose: available as alternative execution environment
7. GitHub: all code public, MIT licence, ≤10 install commands

### 3.9 Environmental Measurement

```python
from codecarbon import EmissionsTracker
tracker = EmissionsTracker(
    project_name=f"puma-{model}-{strategy}",
    country_iso_code="ESP",
    save_to_file=True,
    output_dir="results/carbon/"
)
```

Results logged in: [[50 - Areas/54 Sustainability/Carbon-Tracking-Log]]

---

## Writing Checklist

- [ ] 3.1 DSR paradigm framed
- [ ] 3.2 Both datasets described with all parameters
- [ ] 3.3 Models: versions, quantization, RAM documented
- [ ] 3.4 Four prompt strategies: rationale + exact templates in Appendix A
- [ ] 3.5 Three baselines implemented and documented
- [ ] 3.6 Metrics: formulas and sklearn/numpy implementation
- [ ] 3.7 Stats: Wilcoxon justification + code + Bonferroni plan
- [ ] 3.8 Reproducibility: all 7 items addressed
- [ ] 3.9 CodeCarbon: configuration and output format

---

## 🔗 Related Notes

**Specs & architecture:**
[[SP-Architecture]] · [[SP-Triage-Agent]] · [[40 - Projects/PUMA/41.6 Specs/SP-Estimation-Dataset-Specs]] · [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]]

**Hypotheses & experiments:**
[[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] · [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]]

**Research paradigm (§3.1):**
[[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] — DSR + SLR · [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] — Statistical methods

**Datasets (§3.2):**
[[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] — Jira SR + TAWOS · [[20 - Literature/20.1 Papers/LN-Angermeir-2025-Reproducibility]]

**Prompting strategies (§3.4):**
[[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] — CoT + Few-Shot theory · [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]]

**PM concepts (§3.2, §3.6):**
[[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — F1-macro + MAE metrics

**Carbon tracking (§3.9):**
[[50 - Areas/54 Sustainability/Carbon-Tracking-Log]]

**Navigation:**
[[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] · [[40 - Projects/PUMA/41.4 Results/PR-PUMA-Ch4-Results]] · [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
