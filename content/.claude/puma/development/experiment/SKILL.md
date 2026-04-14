---
name: puma-experiment
description: Reproducible experiment protocol for PUMA — covers experiment note creation (EX-), pipeline execution with Ollama, CodeCarbon emissions tracking, result logging, statistical validation, and replication package preparation. Load whenever designing, running, or documenting a PUMA experiment. Essential for H₁ (triage) and H₂ (estimation) benchmark execution. Ensures 100% reproducibility across independent execution cycles.
---

# PUMA Experiment — Reproducible Research Protocol

## Experiment Configuration (Canonical)

```python
# PUMA MVP Canonical Config — DO NOT CHANGE without updating spec
MODEL = "qwen2.5:3b"
TEMPERATURE = 0.0
SEED = 42
OLLAMA_BASE_URL = "http://localhost:11434"

# Dataset splits
TRIAGE_DATASET = "TAWOS"        # H₁
ESTIMATION_DATASET = "jira-sr"  # H₂

# Prompting strategies tested
STRATEGIES = ["zero-shot", "few-shot-1", "few-shot-3", "few-shot-5", "cot", "few-shot-3-cot"]
```

## Experiment Note Template (EX-)

Location: `40-Projects/PUMA/41.7-Experiments/`

```markdown
---
title: "EX - [ExperimentID] - [Description]"
type: EX
experiment_id: "EX-NNN"
hypothesis: "H1 | H2 | exploratory"
status: "planned | running | completed | failed"
spec: "[[SP-ExperimentSpec-v1]]"
model: "qwen2.5:3b"
temperature: 0.0
seed: 42
dataset: "TAWOS | jira-sr"
strategy: "zero-shot | few-shot-3 | cot | ..."
k_shot: 0
created: YYYY-MM-DD
completed: YYYY-MM-DD
---

# EX-NNN — [Description]

## Objective
[What does this experiment test? Link to hypothesis.]

## Spec Reference
[[SP-ExperimentSpec-v1]] — must be `locked` before experiment runs

## Prompt Template
[[PT-ExperimentName-vN]] — prompt used (locked version)

## Dataset
- Dataset: [TAWOS | Jira SR]
- Split: [train/test split details]
- Sample size: N = [number]
- Sampling method: stratified / random

## Execution Log
| Run | Date | Duration | Status | Notes |
|-----|------|----------|--------|-------|
| Run-1 | YYYY-MM-DD | Xm | ✅ completed | |
| Run-2 | YYYY-MM-DD | Xm | ✅ completed | reproducibility check |
| Run-3 | YYYY-MM-DD | Xm | ✅ completed | reproducibility check |

## Results

### Primary Metrics
| Metric | Value | Baseline |
|--------|-------|---------|
| F1-macro | 0.XXXX | 0.XXXX |
| F1-micro | 0.XXXX | — |
| MAE (SP) | X.XX | X.XX |

### Statistical Test
| Test | Statistic | p-value | Effect size r | Conclusion |
|------|-----------|---------|---------------|------------|
| Wilcoxon H₀₁ | W=XX | p=0.XXXX | r=0.XX | [reject/fail to reject] |

### Reproducibility
| Run | F1-macro / MAE | Match |
|-----|----------------|-------|
| Run-1 | X.XXXX | — |
| Run-2 | X.XXXX | ✅ 100% |
| Run-3 | X.XXXX | ✅ 100% |

## Carbon Footprint
- Tool: CodeCarbon
- Emissions: X.XXX gCO₂eq
- Duration: X seconds
- Log: [[Carbon-Tracking-Log]]

## Conclusions
[What did this experiment find? Does it support/reject the hypothesis?]

## Next Steps
- [ ] [Follow-up experiment if needed]
- [ ] Update [[RES-Results-Placeholders]] with these results
- [ ] Commit results to GitHub
```

## Experiment Execution Pipeline

### Pre-flight Checklist
- [ ] Spec `SP-EX-NNN` is in `locked` status
- [ ] Prompt `PT-EX-NNN-vN` is in `locked` status  
- [ ] Dataset loaded and validated (checksums match)
- [ ] Ollama running: `ollama serve`
- [ ] Model pulled: `ollama pull qwen2.5:3b`
- [ ] CodeCarbon installed: `pip install codecarbon --break-system-packages`
- [ ] Git working tree clean (commit before experiment)

### Execution Template (Python)

```python
import json
import hashlib
from datetime import datetime
from codecarbon import EmissionsTracker
import ollama

# Config
MODEL = "qwen2.5:3b"
SEED = 42
TEMPERATURE = 0.0
EXPERIMENT_ID = "EX-NNN"

# Reproducibility hash
def compute_prompt_hash(prompt: str) -> str:
    return hashlib.sha256(prompt.encode()).hexdigest()[:12]

# Run experiment with carbon tracking
tracker = EmissionsTracker(
    project_name=f"PUMA-{EXPERIMENT_ID}",
    output_dir="results/",
    log_level="warning"
)

tracker.start()
results = []

for item in test_set:
    prompt = build_prompt(item)  # uses locked PT- template
    
    response = ollama.generate(
        model=MODEL,
        prompt=prompt,
        options={
            "temperature": TEMPERATURE,
            "seed": SEED,
            "num_predict": 100
        }
    )
    
    results.append({
        "id": item["id"],
        "predicted": parse_output(response["response"]),
        "ground_truth": item["label"],
        "prompt_hash": compute_prompt_hash(prompt)
    })

emissions = tracker.stop()

# Log
log_entry = {
    "experiment_id": EXPERIMENT_ID,
    "timestamp": datetime.now().isoformat(),
    "model": MODEL,
    "temperature": TEMPERATURE,
    "seed": SEED,
    "n_samples": len(test_set),
    "emissions_gco2eq": emissions * 1000,
    "results_hash": hashlib.sha256(json.dumps(results).encode()).hexdigest()[:12]
}
```

### Statistical Validation

```python
from scipy import stats
import numpy as np

# Normality test (pre-Wilcoxon)
stat, p_normality = stats.shapiro(agent_scores)
print(f"Shapiro-Wilk: stat={stat:.4f}, p={p_normality:.4f}")

if p_normality < 0.05:
    print("Non-normal → using Wilcoxon signed-rank")
    stat, p_wilcoxon = stats.wilcoxon(baseline_scores, agent_scores)
    n = len(agent_scores)
    r = stat / (n * (n + 1) / 2)  # effect size
    print(f"Wilcoxon: W={stat:.1f}, p={p_wilcoxon:.4f}, r={r:.2f}")
else:
    print("Normal → using paired t-test")
    stat, p_t = stats.ttest_rel(baseline_scores, agent_scores)
```

## Result Logging Protocol

After experiment completion:
1. Fill all fields in `EX-NNN.md`
2. Update `RES-Results-Placeholders.md` in `30-Permanent/34-Results/`
3. Update `Dashboard-Experiment-Status.md`
4. Append to `Carbon-Tracking-Log.md`
5. Append to `AI-Use-Log.md`
6. Commit all changes: `git commit -m "EX-NNN: [brief description of results]"`

## Reproducibility Protocol

All experiments run 3 independent cycles:
- Cycle 1: Initial run (generate results)
- Cycle 2: Same day, fresh Python environment (verify)
- Cycle 3: Different day, after git clone from scratch (confirm)

100% match across all 3 cycles = reproducibility verified.

Record in experiment note's Reproducibility table.

## Replication Package Structure

```
puma-replication-package/
├── README.md              # How to reproduce
├── requirements.txt       # Exact dependency versions
├── data/
│   ├── tawos_sample.csv  # anonymized if needed
│   └── jira_sr_sample.csv
├── prompts/
│   └── PT-EX-NNN-v1.md   # locked prompt templates
├── experiments/
│   └── EX-NNN.py         # experiment code
├── results/
│   └── EX-NNN_results.json
└── emissions/
    └── EX-NNN_codecarbon.csv
```
