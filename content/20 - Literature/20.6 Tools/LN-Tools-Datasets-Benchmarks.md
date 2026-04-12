---
id: LN-Tools-Datasets-Benchmarks
title: "📊 Tools — Datasets, Benchmarks & Data Access"
type: literature-tools
tags: [tools, datasets, benchmarks, jira-sr, tawos, swe-bench, puma]
created: 2026-04-06
updated: 2026-04-06
phase: [F0, F1, F2, F3, F4]
---

# 📊 Tools — Datasets, Benchmarks & Data Access

> All datasets and data access platforms used in PUMA experiments.
> Reproducibility principle: all datasets have stable DOIs or permanent URLs.

---

## Primary Experiment Datasets

### Jira Social Repository (Jira SR)
- **Source**: Zenodo — DOI: 10.5281/zenodo.5901893
- **URL**: https://zenodo.org/record/5901893
- **Alternative URL**: https://mcislab.github.io/publications/2015/ortu_promise.pdf
- **Content**: 50,000+ real Jira issues from Apache Software Foundation projects (Kafka, Spark, Hadoop, etc.) with manually assigned priority labels (Blocker/Critical/Major/Minor/Trivial)
- **License**: CC BY 4.0
- **Phase**: F2 – F4 (Stage 1: triage benchmark)
- **PUMA use**: PRIMARY dataset for Stage 1 triage evaluation; ground truth = human-assigned priority labels verified by Apache community
- **Sampling strategy**: Stratified sample of 200 issues (50 per priority class), seed=42, `StratifiedShuffleSplit`
- **Key statistics**: ~60% Major, ~25% Minor, ~10% Critical, ~5% Trivial/Blocker → imbalanced → F1-macro required
- **Paper**: Ortu, M., et al. (2015). MSR 2015. → [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]

### TAWOS (The Agile Workflow Optimisation Suite)
- **Source**: figshare — DOI: 10.5522/04/21308124
- **GitHub**: https://github.com/SOLAR-group/TAWOS
- **Content**: 23,000+ real Agile user stories from 26 open-source projects with developer-assigned story point estimates
- **License**: Apache 2.0
- **Phase**: F3 (Stage 2: effort estimation benchmark)
- **PUMA use**: PRIMARY dataset for Stage 2 story point estimation; ground truth = team planning estimates
- **Key projects**: MESOS (baseline MAE ~2.9 SP), APSTUD (baseline MAE ~3.8 SP), XD (baseline MAE ~4.1 SP)
- **Paper**: Tawosi, V., et al. (2022). MSR 2022. → [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]

---

## Comparative Benchmark Datasets

### SWE-bench
- **Source**: HuggingFace — `princeton-nlp/SWE-bench`
- **GitHub**: https://github.com/princeton-nlp/SWE-bench
- **URL**: https://huggingface.co/datasets/princeton-nlp/SWE-bench
- **Content**: 2,294 real GitHub issues from 12 Python repositories with verified code resolutions
- **Phase**: F0 – F1 (background reference)
- **PUMA use**: Benchmark design reference — SWE-bench's "real-world tasks with verified ground truth" principle mirrors PUMA's design; comparison point for positioning PUMA's contribution
- **Paper**: Jimenez et al. (2023). arXiv:2310.06770 → [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Jimenez-2023-SWEbench]]

---

## Supplementary Data Sources

### GitHub Archive
- **URL**: https://www.gharchive.org / BigQuery public dataset
- **Content**: Public GitHub events: commits, PRs, issues, releases (projects: Apache, VSCode, Linux)
- **Phase**: F3 (optional — Stage 5 component)
- **PUMA use (optional)**: Development activity telemetry for Smart PMO Stage 5; commit velocity analysis; PR merge time tracking
- **Access**: Via Google BigQuery (free tier: 1TB/month queries); direct download via gharchive.org

### PROMISE Repository
- **URL**: http://openscience.us/repo
- **Content**: NASA software quality metrics datasets (JM1, PC1, KC1) with defect labels
- **Phase**: F3 (optional)
- **PUMA use (optional)**: Input features for risk prediction model component; defect prediction baselines
- **Note**: Optional Stage 3+ extension; not required for MVP

---

## Data Processing Stack

### pandas
- **Install**: `pip install pandas`
- **PUMA use**: Loading Jira SR CSV; stratified sampling; results table generation
- **Key operations**: `StratifiedShuffleSplit`, `groupby`, `value_counts`, DataFrame to LaTeX tables

### scikit-learn
- **Install**: `pip install scikit-learn`
- **PUMA use**:
  - `StratifiedShuffleSplit` for balanced 200-issue sample
  - `f1_score(average='macro')` for triage metric
  - `TfidfVectorizer + SVC` for baseline classifier
  - `confusion_matrix` for error analysis

### scipy
- **Install**: `pip install scipy`
- **PUMA use**: `scipy.stats.wilcoxon` for H1/H2 statistical tests (two-sided, α=0.05)

### matplotlib + seaborn
- **Install**: `pip install matplotlib seaborn`
- **PUMA use**: F1-macro bar charts by condition; MAE comparison plots; confusion matrices; carbon footprint bar charts

---

## Related Notes

- [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]
- [[40 - Projects/PUMA/41.6 Specs/SP-Estimation-Dataset-Specs]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
