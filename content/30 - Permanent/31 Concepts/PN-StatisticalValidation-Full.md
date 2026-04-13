---
type: permanent
title: "Statistical Validation — Wilcoxon, Bootstrap, Effect Size, and CI for PUMA"
topic: statistics
tags: [permanent, statistics, wilcoxon, bootstrap, effect-size, confidence-interval, shapiro-wilk, cohen-d, non-parametric, hypothesis-testing, puma-core, research, evaluation, benchmark, effort-estimation, story-points, statistical-validation]
created: 2026-04-13
updated: 2026-04-13
aliases: ["Statistical Validation", "PUMA Statistics", "Non-parametric Tests"]
---

# PN: Statistical Validation — Wilcoxon, Bootstrap, Effect Size, and CI

> [!abstract] Core Idea
> PUMA's evaluation relies on comparing LLM configurations on paired samples (same issues, different agents). Story-point distributions are non-normal (heavy-tailed, discrete ordinal values). This note details the correct statistical pipeline: normality check → test selection → effect size → CI reporting.

---

## Why Parametric Tests Fail for PUMA

The standard t-test assumes:
1. Normally distributed differences
2. Continuous measurement scale
3. Homogeneous variance (Welch's variant relaxes this)

Story points violate all three:
- **Non-normal**: Fibonacci-like scale (1, 2, 3, 5, 8, 13, 21) produces right-skewed distributions
- **Ordinal, not continuous**: The gap between SP 1 and SP 2 is not equal to the gap between SP 8 and SP 13
- **Heavy tails**: Large tasks (20+ SP) are rare but disproportionately affect means

> [!warning] Consequence
> Using paired t-test on story-point error distributions produces inflated Type I error rates (false positives). Use Wilcoxon Signed-Rank Test instead.

---

## Step 1: Check Normality

### Shapiro-Wilk Test

- H₀: the sample is normally distributed
- Reject H₀ (use non-parametric) if p < 0.05
- **Python**: `scipy.stats.shapiro(data)`
- **Limitation**: For n > 50, even trivial non-normality is detected → complement with visual check

### Visual Check (QQ Plot + Histogram)

```python
import scipy.stats as stats
import matplotlib.pyplot as plt

stats.probplot(errors, dist="norm", plot=plt)
plt.title("QQ Plot of Prediction Errors")
plt.show()
```

If points deviate from the diagonal line, distribution is non-normal.

---

## Step 2: Wilcoxon Signed-Rank Test

### When to Use

- Two related/paired groups (same issues evaluated by two agents)
- Differences are at least ordinal (not just categorical)
- Sample is non-normal OR ordinal

### How It Works

1. Compute difference $d_i = x_{1,i} - x_{2,i}$ for each pair
2. Drop zero differences
3. Rank the absolute differences |d_i|
4. Assign signed ranks (sign = sign of d_i)
5. Compute W = sum of positive signed ranks

### Python Implementation

```python
from scipy.stats import wilcoxon

stat, p_value = wilcoxon(errors_model_A, errors_model_B, alternative='two-sided')

print(f"Wilcoxon W = {stat:.1f}, p = {p_value:.4f}")
if p_value < 0.05:
    print("Significant difference (α = 0.05)")
```

### Interpretation

| p-value | Interpretation |
|---------|----------------|
| < 0.001 | Very strong evidence against H₀ |
| 0.001–0.01 | Strong evidence |
| 0.01–0.05 | Moderate evidence |
| > 0.05 | Insufficient evidence; retain H₀ |

---

## Step 3: Effect Size

Statistical significance ≠ practical significance. Always report effect size.

### r for Wilcoxon (Rosenthal, 1991)

$$r = \frac{Z}{\sqrt{N}}$$

where Z is the z-score from the Wilcoxon test and N is the number of pairs.

```python
import numpy as np
from scipy.stats import wilcoxon, norm

stat, p = wilcoxon(a, b)
n = len(a)
# Approximate Z-score
z = norm.ppf(1 - p/2)  # two-tailed
r = abs(z) / np.sqrt(n)
print(f"Effect size r = {r:.3f}")
```

| r | Interpretation |
|---|----------------|
| 0.1 | Small |
| 0.3 | Medium |
| 0.5 | Large |

### Cohen's d (for normally distributed data)

$$d = \frac{\bar{x}_1 - \bar{x}_2}{s_{\text{pooled}}}$$

$$s_{\text{pooled}} = \sqrt{\frac{(n_1-1)s_1^2 + (n_2-1)s_2^2}{n_1+n_2-2}}$$

| d | Interpretation |
|---|----------------|
| 0.2 | Small |
| 0.5 | Medium |
| 0.8 | Large |

---

## Step 4: Bootstrap Confidence Intervals

When the sampling distribution is unknown (non-normal, small n), use bootstrap.

### Algorithm

1. Draw B = 1000 resamples (with replacement) from the original sample
2. Compute the metric (e.g., MAE, Macro-F1) on each resample
3. Sort the B estimates
4. 95% CI = [2.5th percentile, 97.5th percentile]

```python
import numpy as np

def bootstrap_ci(errors, n_bootstrap=1000, ci=0.95):
    boot_means = []
    for _ in range(n_bootstrap):
        resample = np.random.choice(errors, size=len(errors), replace=True)
        boot_means.append(np.mean(resample))
    
    alpha = 1 - ci
    lower = np.percentile(boot_means, alpha/2 * 100)
    upper = np.percentile(boot_means, (1 - alpha/2) * 100)
    return lower, upper

ci_lower, ci_upper = bootstrap_ci(mae_errors)
print(f"MAE 95% CI: [{ci_lower:.3f}, {ci_upper:.3f}]")
```

### Advantages Over Analytical CI

- No normality assumption
- Automatically accounts for skewed distributions
- Works for any statistic (MAE, Macro-F1, Spearman ρ)

---

## Step 5: Multiple Comparison Correction

When testing multiple hypothesis pairs (e.g., 6 agent variants × 3 tasks = 18 tests), inflate Type I error rate.

### Bonferroni Correction

$$\alpha_{\text{corrected}} = \frac{\alpha}{m}$$

where m = number of comparisons.

- For 18 tests at α = 0.05: corrected threshold = 0.05/18 ≈ 0.0028
- **Conservative**: increases Type II error (false negatives)

### Benjamini-Hochberg (FDR Control)

- Less conservative than Bonferroni; controls False Discovery Rate
- **Python**: `statsmodels.stats.multitest.multipletests(pvalues, method='fdr_bh')`
- **PUMA**: Preferred for exploratory comparisons across multiple models

---

## Reporting Template for PUMA Papers

> [!example] Sample Result Paragraph
> "The Few-Shot CoT configuration achieved a Macro-F1 of 0.81 (95% CI: [0.78, 0.84]) on issue type classification, compared to 0.67 (95% CI: [0.63, 0.71]) for the Zero-Shot baseline. A Wilcoxon signed-rank test confirmed a statistically significant improvement (W = 1,243, p < 0.001), with a large effect size (r = 0.52). After Benjamini-Hochberg correction for multiple comparisons (m = 6), the result remained significant (adjusted p = 0.003)."

---

## PUMA Statistical Pipeline Summary

```
Data collection → Normality check (Shapiro-Wilk + QQ) → 
  If normal: paired t-test + Cohen's d + parametric CI
  If non-normal: Wilcoxon + r effect size + bootstrap CI →
Multiple comparison correction (BH-FDR) → Report W, p, effect size, CI
```

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-Evaluation-Metrics-Comprehensive]] — full metric reference
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] — where these tests are applied
- [[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-Ch2-Ch3-Ch4-Ch5]] — methodology chapter

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
