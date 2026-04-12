---
id: LN-Jira-Social-Repository
title: "Jira Social Repository (Jira SR)"
type: literature-note
subtype: dataset
tags: [literature, dataset, jira, triage, classification, apache]
authors: ["Ortu, Marco", "Adams, Bram", "Murgia, Alessandro", "Bhatt, Reem"]
year: 2015
venue: "MSR 2015 (Mining Software Repositories)"
doi: "10.5281/zenodo.5901893"
url: "https://zenodo.org/records/5901893"
zotero_key: "Ortu2015"
dataset_size: "50,000+ issues"
license: "CC BY 4.0"
puma_task: "Issue Triage (Stage 1 — H1)"
puma_subset: "200 issues stratified (50 per priority class)"
read_status: processed
created: 2026-03-01
updated: 2026-03-01
---

# Jira Social Repository (Jira SR)

> **One-sentence summary:** A publicly available dataset of 50,000+ Jira issues from Apache Software Foundation projects, with manually assigned priority labels, used in PUMA as the ground truth for issue triage evaluation.

---

## 📋 Dataset Description

| Property | Value |
|----------|-------|
| **Size** | ~50,000 issues |
| **Source** | Apache Software Foundation projects |
| **Label** | Priority (Critical / High / Medium / Low) |
| **Format** | CSV with issue title, description, comments, priority |
| **Period** | 2002–2014 |
| **Projects** | Apache Hadoop, Spark, Kafka, Cassandra, and others |
| **Download** | `zenodo.org/records/5901893` |
| **License** | CC BY 4.0 |

---

## 📊 Class Distribution

| Priority | Count (approx.) | % |
|----------|----------------|---|
| Critical | ~4,000 | 8% |
| High | ~11,000 | 22% |
| Medium | ~22,500 | 45% |
| Low | ~12,500 | 25% |

**Imbalance note:** PUMA creates a **balanced evaluation subset** of 200 issues (50 per class) using stratified random sampling with seed=42.

---

## 🔬 Preparation for PUMA

```python
# Dataset preparation script (reproducible)
import pandas as pd
from sklearn.model_selection import train_test_split

# Load full dataset
df = pd.read_csv("jira_sr.csv")

# Filter to 4-class priority
df = df[df['priority'].isin(['Critical', 'High', 'Medium', 'Low'])]

# Stratified sample: 50 per class, seed=42
subset = df.groupby('priority').apply(
    lambda x: x.sample(n=50, random_state=42)
).reset_index(drop=True)

# Verify stratification
print(subset['priority'].value_counts())
# → Critical: 50, High: 50, Medium: 50, Low: 50
```

---

## 🧠 Key Findings from Literature on This Dataset

The Jira SR has been used to show: human-assigned priorities exhibit significant inconsistency across projects for technically equivalent issues. This is the core empirical motivation for automating triage in PUMA.

---

## 🔗 Connected Notes

**Defines task for:** [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] (Issue Triage section)
**Hypothesis:** [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] (H1)
**Experiment stages:** [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]]
**Methods:** [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] (§3.2.1)
**Navigation:** [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]

---
---
id: LN-TAWOS-Dataset
title: "TAWOS — The Agile Workflow Optimisation Suite"
type: literature-note
subtype: dataset
tags: [literature, dataset, tawos, story-points, estimation, agile]
authors: ["Tawosi, Vali", "Sarro, Federica", "Harman, Mark"]
year: 2022
venue: "MSR 2022"
doi: "10.1145/3524842.3528029"
url: "https://github.com/SOLAR-group/TAWOS"
zotero_key: "Tawosi2022"
dataset_size: "23,000+ user stories"
license: "Apache 2.0"
puma_task: "Effort Estimation (Stage 2 — H2)"
read_status: processed
created: 2026-03-01
---

# TAWOS — The Agile Workflow Optimisation Suite

> **One-sentence summary:** A dataset of 23,000+ real Agile user stories with story point estimates from diverse teams, used in PUMA Stage 2 to benchmark LLM effort estimation against human baseline and published baselines (Deep-SE, CoGEE).

---

## 📋 Dataset Description

| Property | Value |
|----------|-------|
| **Size** | 23,000+ user stories |
| **Source** | Real software teams using Jira/Agile |
| **Label** | Story points (Fibonacci: 1,2,3,5,8,13,21) |
| **Format** | CSV with story title, description, acceptance criteria, SP |
| **License** | Apache 2.0 |
| **GitHub** | `github.com/SOLAR-group/TAWOS` |

---

## 📊 Story Point Distribution

| Story Points | % (approx.) |
|-------------|-------------|
| 1–2 | 18% |
| 3 | 22% |
| 5 | 28% |
| 8 | 18% |
| 13+ | 14% |

---

## 🔬 Reference Baselines

| System | MAE | Notes |
|--------|-----|-------|
| Mean historical | ~3.5 SP | Per-project mean as predictor |
| Deep-SE | ~3.2 SP | Choetkiertikul et al. (2018) |
| CoGEE (GPT-4) | ~1.9 SP | Tawosi et al. (2024) — state of art |

**PUMA H2 threshold:** MAE ≤ 3.0 SP (minimum) / ≤ 1.5 SP (desired)

---

## 🔗 Connected Notes

**Task defined in:** [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] (Story Points section)
**Hypothesis:** [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] (H2)
**Key paper:** [[20 - Literature/20.1 Papers/LN-KeyPapers-CoGEE-Angermeir-Flyvbjerg]] (CoGEE baseline)
**Experiment stages:** [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]]
**Methods:** [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] (§3.2.2)
**Navigation:** [[80 - MOC/81 Topic-Maps/MOC-Literature-Review]]
