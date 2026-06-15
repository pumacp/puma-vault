---
type: permanent
title: "Evaluation Metrics — Comprehensive Reference for PUMA"
topic: evaluation-metrics
tags: [permanent, evaluation, metrics, f1, mae, rmse, spearman, wilcoxon, auc-roc, bleu, rouge, perplexity, co2, inference-latency, puma-core, research, benchmark, statistics, story-points, issue-triage, effort-estimation, statistical-validation, nlp, sustainability]
created: 2026-04-13
updated: 2026-06-15
aliases: ["Evaluation Metrics", "PUMA Metrics", "Benchmark Metrics"]
---

# PN: Evaluation Metrics — Comprehensive Reference for PUMA

> [!abstract] Core Idea
> This permanent note catalogs all metrics used or referenced in PUMA experiments (H1 triage classification, H2 effort estimation) and in the broader LLM/agent evaluation literature. Each metric is defined, annotated with its applicable task type, and mapped to PUMA hypotheses.

---

## Classification Metrics (H1 — Issue Triage)

### Accuracy (Overall Accuracy)

$$\text{Accuracy} = \frac{TP + TN}{TP + TN + FP + FN}$$

- **Use**: Single-label classification; valid only when class distribution is balanced
- **PUMA**: Issue type classification over TAWOS dataset; misleading if one class (e.g., "Bug") dominates
- **Limitation**: Inflated in imbalanced datasets; prefer F1-macro or weighted F1

### Precision

$$\text{Precision} = \frac{TP}{TP + FP}$$

- Fraction of predicted positives that are truly positive
- High precision = few false alarms; relevant for routing (don't assign wrong person)

### Recall (Sensitivity)

$$\text{Recall} = \frac{TP}{TP + FN}$$

- Fraction of actual positives correctly identified
- High recall = few missed issues; critical for priority triage (don't miss critical bugs)

### F1-Score (Binary)

$$F_1 = 2 \cdot \frac{\text{Precision} \times \text{Recall}}{\text{Precision} + \text{Recall}} = \frac{2 \cdot TP}{2 \cdot TP + FP + FN}$$

- Harmonic mean of Precision and Recall; accounts for both false positives and false negatives
- **PUMA H1**: Binary F1 per class (Bug, Feature, Task, Improvement, etc.)

### F1-Macro (Macro-F1)

$$F_1^{\text{macro}} = \frac{1}{K} \sum_{k=1}^{K} F_1^{(k)}$$

- Unweighted average of per-class F1; gives equal weight to all classes
- **PUMA**: Primary H1 metric — avoids majority-class bias; reflects performance on rare issue types
- **Interpretation**: 0.7–0.8 = good; >0.85 = excellent for multi-class NLP classification

### F1-Micro (Micro-F1)

$$F_1^{\text{micro}} = \frac{\sum_{k} 2 \cdot TP_k}{\sum_{k} (2 \cdot TP_k + FP_k + FN_k)}$$

- Aggregates TP/FP/FN across all classes; equals overall accuracy for single-label classification
- **PUMA**: Useful for reporting aggregate performance; favors majority class

### F1-Weighted (Weighted F1)

$$F_1^{\text{weighted}} = \sum_{k=1}^{K} w_k \cdot F_1^{(k)}, \quad w_k = \frac{n_k}{N}$$

- Class-support-weighted average; reflects real-world distribution
- **PUMA**: Report alongside Macro-F1 to show per-distribution performance

### AUC-ROC

- Area Under the Receiver Operating Characteristic Curve
- **ROC**: plots TPR (Recall) vs. FPR at varying thresholds
- **AUC**: 1.0 = perfect; 0.5 = random baseline; <0.5 = worse than random
- **PUMA**: Use for binary subtasks (Critical vs. Non-Critical priority) where threshold choice matters
- Multi-class extension: macro-averaged OvR (One-vs-Rest) AUC

---

## Regression / Estimation Metrics (H2 — Effort Estimation)

### MAE (Mean Absolute Error)

$$\text{MAE} = \frac{1}{n} \sum_{i=1}^{n} |y_i - \hat{y}_i|$$

- Measures average absolute deviation in original story-point units
- Robust to outliers; intuitive ("off by X story points on average")
- **PUMA H2**: Primary metric for story point estimation (units: story points)

### MdAE (Median Absolute Error)

$$\text{MdAE} = \text{median}(|y_i - \hat{y}_i|)$$

- More robust than MAE to extreme story-point outliers (e.g., 40 SP tasks skewing means)
- **PUMA**: Report as a complementary robustness check alongside MAE

### RMSE (Root Mean Square Error)

$$\text{RMSE} = \sqrt{\frac{1}{n} \sum_{i=1}^{n} (y_i - \hat{y}_i)^2}$$

- Penalizes large errors quadratically; sensitive to outliers
- **PUMA**: Report to show penalty for large misestimates (e.g., estimating 1 SP for a 13 SP task)

### SA (Standardized Accuracy)

$$\text{SA} = 1 - \frac{\text{MAE}_{\text{model}}}{\text{MAE}_{\text{random}}}$$

where $\text{MAE}_{\text{random}}$ is the expected MAE of a random predictor (or majority-class baseline).

- **Origin**: Shepperd & MacDonell (2012) — standard in software effort estimation literature
- **PUMA H2**: Normalizes MAE against a baseline; values >0 = better than random; <0 = worse
- **Interpretation**: SA = 0.3 means 30% better than a random guess

### Spearman's ρ (Rho)

$$\rho = 1 - \frac{6 \sum d_i^2}{n(n^2-1)}$$

where $d_i$ is the rank difference between predicted and actual values.

- Non-parametric rank correlation; does not assume normality (appropriate for SP distributions)
- **PUMA H2**: Tests whether estimated ranking of issue effort matches actual ranking
- **Interpretation**: 0.5–0.7 = moderate; >0.7 = strong correlation for ordinal SP data

---

## Statistical Validation Metrics

### Wilcoxon Signed-Rank Test

- Non-parametric test for paired samples; tests whether median of differences = 0
- **When to use**: Compare two agent configurations on same set of issues; when SP data is non-normal
- **PUMA**: Compare H1 Macro-F1 of Zero-Shot vs. Few-Shot CoT per issue type
- Outputs: W statistic, p-value, effect size r = Z/√N
- Threshold: p < 0.05 for significance; p < 0.01 for strong evidence

### Shapiro-Wilk Test

- Tests whether a sample is normally distributed (H₀: normality)
- **PUMA**: Run before choosing parametric (t-test) vs. non-parametric (Wilcoxon) tests
- Sensitive to sample size: for n > 50, use visual QQ-plot + Kolmogorov-Smirnov

### Cohen's d (Effect Size)

$$d = \frac{\mu_1 - \mu_2}{\sigma_{\text{pooled}}}$$

- Standardized mean difference; interpretable: 0.2 = small, 0.5 = medium, 0.8 = large
- **PUMA**: Quantify practical significance beyond p-value; required for research papers

### r (Effect Size for Wilcoxon)

$$r = \frac{Z}{\sqrt{N}}$$

- Effect size for non-parametric tests; 0.1 = small, 0.3 = medium, 0.5 = large
- **PUMA**: Report alongside Wilcoxon p-value

### Confidence Interval (CI)

$$\text{CI}_{95\%} = \bar{x} \pm 1.96 \cdot \frac{\sigma}{\sqrt{n}}$$

- **Bootstrap CI**: Preferred when distribution is unknown; resample 1000× to build empirical distribution
- **PUMA**: Report 95% CI for all primary metrics (Macro-F1, MAE, SA); conveys precision of estimates

---

## LLM / Text Generation Metrics

### ROUGE (Recall-Oriented Understudy for Gisting Evaluation)

- **ROUGE-N**: n-gram overlap between hypothesis and reference
- **ROUGE-L**: Longest Common Subsequence (LCS) based F-score
- **Use**: Summarization, explanation quality; not primary for PUMA classification tasks
- **PUMA**: Optional metric for evaluating quality of agent-generated issue summaries (Stage 4)

### BLEU (Bilingual Evaluation Understudy)

$$\text{BLEU} = \text{BP} \cdot \exp\left(\sum_{n=1}^{N} w_n \log p_n\right)$$

- Precision-based n-gram overlap with brevity penalty
- **Limitation**: Poor correlation with human judgment for short or creative text
- **PUMA**: Not primary; use only if comparing agent-generated triage rationale to human explanations

### Perplexity

$$\text{PPL}(X) = \exp\left(-\frac{1}{N} \sum_{i=1}^{N} \log P(x_i | x_{<i})\right)$$

- Measures how well a language model predicts a sequence; lower = more "surprised"
- **PUMA**: Not a primary metric; relevant if evaluating fine-tuned model quality vs. base model

### Recall@k

$$\text{Recall@k} = \frac{|\text{Relevant} \cap \text{Top-k retrieved}|}{|\text{Relevant}|}$$

- Fraction of relevant items appearing in top-k retrieval results
- **PUMA**: For RAG-based few-shot retrieval (H2 Stage 3); higher Recall@k = better reference examples surfaced

### MRR (Mean Reciprocal Rank)

$$\text{MRR} = \frac{1}{|Q|} \sum_{i=1}^{|Q|} \frac{1}{\text{rank}_i}$$

- Evaluates how high the first relevant result appears in a ranked list
- **PUMA**: Evaluate quality of historical issue retrieval in few-shot construction pipeline

---

## Agent / LLM Operational Metrics

### Successful Parsing Rate (SPR)

$$\text{SPR} = \frac{\text{# valid JSON responses}}{\text{# total LLM calls}} \times 100\%$$

- Fraction of LLM outputs that parse successfully as valid structured output (JSON/YAML/Markdown table)
- **Origin**: Derived from AgentBench (Liu et al., ICLR 2024) failure analysis; named by PUMA
- **PUMA**: Track per model, per prompt strategy; SPR < 90% = reliability risk
- Distinguishes *format* failure (valid JSON but wrong fields) from *parse* failure (invalid syntax)

### Inference Latency

$$\text{Latency} = t_{\text{response}} - t_{\text{request}} \quad [\text{ms}]$$

- End-to-end wall-clock time per LLM call
- **PUMA**: Report p50, p95, p99 latency across 500 issue experiments; compare cloud vs. local models
- Critical for real-time triage SLA analysis

### Tokens per Second (t/s)

$$\text{t/s} = \frac{\text{output tokens}}{\text{generation time (s)}}$$

- Throughput metric for local model inference (Ollama, llama.cpp, vLLM)
- **PUMA**: Benchmark Llama 3.2 8B, Mistral 7B, Phi-3.5 Mini on PUMA hardware

---

## AIOps-Specific Metrics

### MTTD (Mean Time to Detect)

$$\text{MTTD} = \frac{\sum_{i} (t_{\text{alert},i} - t_{\text{incident\_start},i})}{N}$$

- Time from incident start to detection alert
- **Origin**: ITSM/DevOps; standard metric in SRE and incident management
- **PUMA**: Analogous to time from issue submission to triage completion

### MTTR (Mean Time to Resolve)

$$\text{MTTR} = \frac{\sum_{i} (t_{\text{resolved},i} - t_{\text{detected},i})}{N}$$

- Time from detection to full resolution
- **PUMA**: Baseline metric; compare manual MTTR vs. PUMA-assisted MTTR in future field studies

---

## Sustainability Metrics

### Carbon Footprint (CO₂ equivalent)

$$\text{CO}_2\text{eq} = E \cdot \text{CI} \quad [\text{kg CO}_2\text{eq}]$$

where $E$ = energy consumed (kWh), $\text{CI}$ = carbon intensity of electricity grid (kg CO₂/kWh)

- **Tools**: CodeCarbon (Python library, automatic tracking), Experiment Impact Tracker
- **Reference**: Strubell et al. (2019) — NLP training emissions analysis; Lottick et al. (2019)
- **PUMA**: Report CO₂eq for all local model experiments; include in ethics/sustainability chapter
- PUE (Power Usage Effectiveness) = total facility power / IT equipment power; ideal PUE ≈ 1.0

---

## Metric Selection Guide for PUMA

| Task | Primary Metric | Secondary Metrics | Validation |
|------|----------------|-------------------|------------|
| H1 Issue Type Classification | Macro-F1 | Weighted-F1, Accuracy | Wilcoxon (model pairs) |
| H1 Priority Classification | Macro-F1 | AUC-ROC (Critical vs Rest) | Cohen's d |
| H1 Component Routing | Macro-F1 | Recall (per component) | 95% Bootstrap CI |
| H2 Story Point Estimation | MAE, SA | MdAE, RMSE, Spearman ρ | Wilcoxon + Cohen's d |
| Few-shot Retrieval Quality | Recall@k | MRR | — |
| Agent Reliability | SPR | Latency p95 | — |
| Sustainability | CO₂eq (kg) | t/s, energy (kWh) | — |

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — story point context
- [[30 - Permanent/31 Concepts/PN-StatisticalValidation-Full]] — Wilcoxon, bootstrap, CI detail
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Liu-2023-AgentBench]] — SPR origin, benchmark design
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] — H1/H2 experimental design
- [[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-Ch2-Ch3-Ch4-Ch5]] — methodology chapter

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]

## Related atomic notes (Phase 4.3)
- [[PN-ANXAG-008]]
- [[PN-ANXAG-009]]
- [[PN-PUMA-028]]
