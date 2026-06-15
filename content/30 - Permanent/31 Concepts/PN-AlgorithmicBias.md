---
type: permanent
title: "Algorithmic Bias in AI-Assisted Project Management"
topic: ethics
tags: [permanent, algorithmic-bias, fairness, ethics, discrimination, project-management, ai-safety, puma-core, research, hitl, issue-triage, effort-estimation, accountability, social-impact, diversity]
created: 2026-04-13
updated: 2026-06-15
aliases: ["Algorithmic Bias", "AI Fairness", "PM Bias"]
---

# PN: Algorithmic Bias in AI-Assisted Project Management

> [!abstract] Core Idea
> LLMs trained on historical software project data inherit the biases present in that data. When deployed in PM tools, these biases can systematically disadvantage certain developers, issue types, or project contexts — creating unfair workload distributions, skewed priority assignments, and inequitable effort estimates.

---

## Sources of Bias in PUMA's Pipeline

### 1. Training Data Bias

LLMs are pretrained on internet-scale text corpora (GitHub, Stack Overflow, Reddit). This corpus:
- **Overrepresents** English-language projects, Western tech companies, open-source (vs. enterprise)
- **Underrepresents** non-English issue descriptions, Global South project contexts, legacy codebases
- **Contains historical inequity**: Past project data reflects past team compositions and past priorities

**PUMA manifestation**: A model trained on GitHub data may perform better on English bug reports from well-documented open-source projects than on Spanish Jira issues from a legacy enterprise application.

### 2. Label Bias (TAWOS Dataset)

The TAWOS dataset contains human-assigned labels (issue type, priority, story points). These labels reflect the biases of the original human classifiers:
- A senior developer may consistently underestimate junior-contributed issues
- Priority labels may reflect political influence (e.g., VIP stakeholder requests labeled Critical regardless of actual severity)
- Story point calibration varies across teams and time periods

**PUMA manifestation**: A model trained to predict these labels learns the human biases embedded in them.

### 3. Prompt Bias

Few-shot examples selected for estimation (H2) may inadvertently encode biases:
- If retrieval selects examples from a specific team or period, the model anchors on those patterns
- If team A consistently labeled similar work as 3 SP and team B as 8 SP, retrieval from team A provides a systematic underestimate

### 4. Model Bias (Pre-trained Associations)

LLMs associate certain words with certain categories based on pretraining statistics:
- "Frontend" issues may be associated with lower story points in training data
- "Security" issues may be associated with high priority regardless of actual severity
- Developer names in issue descriptions could influence priority predictions if names correlate with seniority in historical data

---

## Bias Taxonomy for PUMA

| Bias Type | Definition | PUMA Example |
|-----------|-----------|-------------|
| **Representation bias** | Training data does not represent all subgroups equally | English-only triage model underperforms on multilingual issues |
| **Measurement bias** | Labels are systematically wrong for certain subgroups | Priority labels biased by stakeholder influence |
| **Aggregation bias** | Single model applied to heterogeneous subgroups | One SP estimation model for all project types |
| **Evaluation bias** | Benchmark does not reflect real deployment population | TAWOS subset may not generalize to all companies |
| **Deployment bias** | Model performs well in testing but fails in production population | Model calibrated on TAWOS, deployed on project with different vocabulary |

---

## Bias Detection in PUMA

### Subgroup Analysis

Instead of reporting only aggregate Macro-F1, evaluate performance across subgroups:

```python
# Slice performance by issue type
for issue_type in ["Bug", "Feature", "Task", "Improvement"]:
    subset = df[df["actual_type"] == issue_type]
    f1 = compute_f1(subset["predicted_type"], subset["actual_type"])
    print(f"{issue_type}: F1 = {f1:.3f}, n = {len(subset)}")

# Slice by project or component
for project in df["project"].unique():
    subset = df[df["project"] == project]
    mae = (subset["predicted_sp"] - subset["actual_sp"]).abs().mean()
    print(f"{project}: MAE = {mae:.2f} SP")
```

### Fairness Metrics

| Metric | Formula | Acceptable Range |
|--------|---------|-----------------|
| **Demographic parity** | $|P(\hat{Y}=1\|A=0) - P(\hat{Y}=1\|A=1)|$ | < 0.05 |
| **Equalized odds** | Equal TPR and FPR across groups | Difference < 0.05 |
| **F1 gap across issue types** | $\max(F1_k) - \min(F1_k)$ | < 0.15 |
| **MAE gap across projects** | $\max(\text{MAE}_j) - \min(\text{MAE}_j)$ | < 2 SP |

---

## Bias Mitigation Strategies

### Pre-processing (Data Level)

- **Resampling**: Oversample underrepresented issue types or project contexts
- **Data augmentation**: Back-translate non-English issues; paraphrase rare categories
- **Label cleaning**: Audit and correct systematic labeling errors in TAWOS before training/evaluation

### In-processing (Model Level)

- **Adversarial debiasing**: Train model to maximize task performance while being unable to predict sensitive attributes
- **Constrained optimization**: Impose fairness constraints (e.g., equalized odds) during fine-tuning

### Post-processing (Output Level)

- **Threshold calibration**: Adjust classification thresholds per subgroup to equalize recall
- **Confidence adjustment**: Apply subgroup-specific scaling to model confidence scores
- **HITL gates**: Require human review for predictions on underrepresented or low-confidence subgroups

---

## PUMA Ethics Chapter Framing

> [!info] Research Accountability
> PUMA must report:
> 1. F1 scores broken down by issue type, priority level, and project source
> 2. Whether the model performs systematically better on certain issue types (e.g., Bugs vs. Tasks)
> 3. Whether story point estimation errors are evenly distributed or concentrated in specific project types
> 4. Limitations: TAWOS dataset selection bias, evaluation-to-deployment distribution shift

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-HITL-BoundedAutonomy]] — HITL as bias mitigation
- [[50 - Areas/55 Ethics/Ethics-Review-Log]] — PUMA ethics documentation
- [[30 - Permanent/31 Concepts/PN-Evaluation-Metrics-Comprehensive]] — subgroup F1 metrics
- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Collaborating-AIAgents-2025]] — field evidence on AI impact on human teams

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
