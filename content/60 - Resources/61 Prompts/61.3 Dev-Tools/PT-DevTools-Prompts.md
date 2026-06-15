---
id: PT-OpenCode-Agent-Triage
title: "Prompt: OpenCode — Triage Agent Implementation"
type: prompt-template
tags: [prompt, claude-code, coding, triage-agent, sdd, implementation, anthropic, api, architecture, baseline, benchmark, carbon-footprint, chain-of-thought, codecarbon, cot, data-formats, dataset, dev-tools, effect-size, effort-estimation, evaluation, few-shot, github, ide, issue-triage, jira, json, llm, local-llm, metrics, mistral, non-parametric, obsidian, ollama, precision-recall, prompt-template, prompting, python, spec-driven-development, statistics, story-points, sustainability, template, triage, wilcoxon, zero-shot]
tool: claude-code
methodology: sdd
use_case: coding
phase: F2
version: 1.0
tested: true
effectiveness: high
created: 2026-03-01
---

# Prompt: OpenCode — Triage Agent Implementation

> **Purpose:** Implement the TriageAgent class from spec. Use after completing [[SP-Triage-Agent]].

---

## 📋 Prompt 1 — Project Setup

```bash
# Run in terminal with OpenCode active in project root
claude "
Set up the PUMA benchmark project structure. 

Current directory: /path/to/puma/
Create the following structure:
puma/
  src/
    agents/
      __init__.py
      triage_agent.py      ← main implementation
      estimation_agent.py  ← stub only
    data/
      __init__.py
      loader.py            ← dataset loading utilities
    evaluation/
      __init__.py
      metrics.py           ← F1, MAE, Wilcoxon functions
      carbon.py            ← CodeCarbon integration wrapper
    prompts/
      __init__.py
      templates.py         ← all prompt templates as constants
    utils/
      __init__.py
      ollama_client.py     ← Ollama API wrapper
      logger.py            ← structured JSON logger
  tests/
    test_triage_agent.py
    test_metrics.py
    test_ollama_client.py
  notebooks/
    01_triage_exploration.ipynb
  docs/
    specs/
      SP-Architecture.md   ← copy from Obsidian
  requirements.txt
  README.md
  .gitignore

Use Python 3.11. Add type hints everywhere. 
Create proper __init__.py files with public API exports.
"
```

---

## 📋 Prompt 2 — Implement TriageAgent

```bash
claude "
Implement the TriageAgent class in src/agents/triage_agent.py.

Spec requirements (from SP-Triage-Agent.md):
- Accept: model (str), strategy ('zero-shot'|'few-shot-3'|'few-shot-6'|'cot')
- Accept: issue dict with keys 'title', 'description' (optional)
- Return: dict with keys:
    predicted_priority (str: 'Critical'|'High'|'Medium'|'Low')
    raw_response (str)
    latency_s (float)
    emissions_gco2 (float)
    confidence (str: 'high'|'medium'|'low') — parsed from response structure
    model (str)
    strategy (str)

Implementation requirements:
1. Use OllamaClient from src/utils/ollama_client.py
2. Use prompt templates from src/prompts/templates.py
3. Integrate CodeCarbon EmissionsTracker per-call
4. seed=42, temperature=0 in all Ollama calls
5. Robust label parsing: if model outputs something other than the 4 classes,
   log the raw response and return 'Unknown'
6. Include comprehensive docstrings and type hints
7. No global state — the agent should be fully instantiable

After implementation:
- Write 5 unit tests in tests/test_triage_agent.py
- Tests must cover: valid output, edge cases (empty description, long title),
  invalid model name, label parsing of ambiguous output
"
```

---

## 📋 Prompt 3 — Benchmark Runner

```bash
claude "
Implement a benchmark runner script at src/run_benchmark.py.

The script should:
1. Load the Jira SR subset (200 issues, stratified CSV)
2. For each combination of:
   - models: ['llama3.2:8b', 'mistral:7b']
   - strategies: ['zero-shot', 'few-shot-3', 'few-shot-6', 'cot']
3. Run TriageAgent on all 200 issues
4. Calculate metrics (F1-macro, precision, recall per class)
5. Run Wilcoxon test vs heuristic baseline
6. Log all results to results/triage_results_{timestamp}.json
7. Generate a markdown summary table to results/triage_summary_{timestamp}.md

Use tqdm for progress bars.
Add --dry-run flag that runs on only 5 issues for testing.
Add --model flag to run a single model only.
Reproducibility: all random operations use seed=42.

Output format for the JSON:
{
  'metadata': {run_date, seed, models, strategies, dataset},
  'results': [{model, strategy, issue_id, predicted, actual, latency_s, emissions_gco2}],
  'metrics': {model: {strategy: {f1_macro, precision, recall, wilcoxon_p, effect_r}}}
}
"
```

---
---
id: PT-Copilot-Scaffolding
title: "Prompt: GitHub Copilot / Cursor AI — Code Scaffolding"
type: prompt-template
tags: [prompt, copilot, cursor, scaffolding, coding]
tool: github-copilot
methodology: cdd
use_case: coding
phase: F2
version: 1.0
tested: true
effectiveness: medium
created: 2026-03-01
---

# Prompt: GitHub Copilot / Cursor AI — Code Scaffolding

> **Best for:** Generating boilerplate code quickly from a clear specification. Less effective than OpenCode for complex multi-file tasks.

## Pattern 1 — Function from Spec Comment

In the code file, write a detailed docstring/comment, then let Copilot complete:

```python
def calculate_wilcoxon_vs_baseline(
    model_scores: list[float],
    baseline_scores: list[float], 
    alpha: float = 0.05
) -> dict:
    """
    Perform Wilcoxon signed-rank test comparing model F1 scores 
    against baseline F1 scores across the evaluation subset.
    
    Args:
        model_scores: List of per-instance F1 scores for LLM model
        baseline_scores: List of per-instance F1 scores for heuristic baseline
        alpha: Significance threshold (default 0.05 per PUMA protocol)
    
    Returns:
        dict with keys:
            statistic (float): Wilcoxon W statistic
            p_value (float): Two-sided p-value
            effect_size_r (float): Effect size r = Z / sqrt(N)
            is_significant (bool): p_value < alpha
            interpretation (str): Human-readable conclusion
    
    Example:
        >>> model = [0.7, 0.8, 0.65, 0.75]
        >>> baseline = [0.5, 0.55, 0.48, 0.52]
        >>> result = calculate_wilcoxon_vs_baseline(model, baseline)
        >>> result['is_significant']
        True
    """
    # [Copilot completes from here]
```

## Pattern 2 — Cursor Chat for Context-Aware Refactoring

```
In Cursor chat (Cmd+L):

"In triage_agent.py, the parse_priority_label function 
currently uses a simple strip() and exact match. 
Improve it to handle:
1. Case-insensitive matching ('critical', 'CRITICAL', 'Critical')
2. Fuzzy matching for close typos ('Critcal' → 'Critical')
3. Matching when the label appears in a longer sentence 
   ('The priority is High based on...' → 'High')
4. Return 'Unknown' with logging if no match found

Do not change the function signature or return type."
```

## Pattern 3 — Warp AI Terminal

```bash
# In Warp terminal, type naturally:
"run the benchmark for only mistral:7b with strategy zero-shot 
and save results to debug folder"

# Warp translates to:
python src/run_benchmark.py --model mistral:7b --strategy zero-shot --output-dir results/debug/
```
