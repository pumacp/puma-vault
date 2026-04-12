---
name: puma-experiment
description: Design and run reproducible experiments for PUMA (hypotheses, data, evaluation).
---

# EXPERIMENT DESIGN

1. **Hypothesis**: Formulate a testable hypothesis (e.g., "Using CoT prompts increases triage accuracy").
2. **Variables**: Define independent (prompts, model) and dependent (accuracy, speed) variables.
3. **Data**: Select/create datasets (e.g., issue logs, estimation tasks).
4. **Procedure**: Outline steps (setup agents, input data, collect outputs).
5. **Metrics**: Decide evaluation metrics (correctness, precision, response time).
6. **Repeatability**: Document all steps to allow replication.

## OUTPUT

- Experiment plan in `40-49 Projects/41.7 Experiments` (e.g., `EX-Stages-Overview.md`).
- Record results in `30-Resources/34 Results` (use `RES-Results-Placeholders.md`).
- Use statistical methods (Wilcoxon, PRISMA) if needed for analysis.

