---
type: permanent
title: "Computational Sustainability — Carbon Footprint of LLM Experiments"
topic: sustainability
tags: [permanent, sustainability, carbon-footprint, co2, codecarbon, green-ai, energy, emissions, puma-core, research, ethics, llm, benchmark, local-models, experiment, cloud-vs-local]
created: 2026-04-13
updated: 2026-04-13
aliases: ["Green AI", "Carbon Footprint", "CodeCarbon", "CO2 Tracking"]
---

# PN: Computational Sustainability — Carbon Footprint of LLM Experiments

> [!abstract] Core Idea
> LLM inference carries a non-trivial carbon cost. PUMA tracks experiment emissions using CodeCarbon and compares the environmental footprint of local (offline) vs. cloud (API) model execution. This is both an ethical responsibility and a practical research contribution — few PM AI papers report environmental costs.

---

## Why Sustainability Matters in PUMA

### Scale Effect

A single GPT-4 API call is milliseconds and fractions of a cent. But:
- PUMA H1 experiment: ~500 issues × 6 model configurations × 3 prompt strategies = 9,000 API calls
- If each call uses 2,000 tokens (input + output), total: 18M tokens processed
- At GPT-4o pricing: ~$45 in tokens; but also ~0.5–1.0 kg CO₂eq depending on grid mix

For large-scale production systems (10,000 issues/month), the carbon cost compounds.

### Research Contribution

Strubell et al. (2019) showed that training a large Transformer model can emit as much CO₂ as 5 transatlantic flights. PUMA is inference-only, but inference at scale also matters. Reporting CO₂eq for all experiments:
1. Establishes accountability norm for PM AI research
2. Enables comparison: "Local Llama 3.2 8B emits 3× less CO₂ than GPT-4o for equivalent triage quality"
3. Informs deployment decisions for energy-constrained organizations

---

## Carbon Emission Formula

$$\text{CO}_2\text{eq} = E \times \text{CI} \times \text{PUE}$$

| Variable | Definition | Typical Value |
|----------|-----------|---------------|
| $E$ | Energy consumed by hardware (kWh) | 0.001–1.0 kWh/experiment |
| $\text{CI}$ | Carbon intensity of local electricity grid (kg CO₂/kWh) | 0.05 (France, nuclear) – 0.9 (Poland, coal) |
| $\text{PUE}$ | Power Usage Effectiveness of data center | 1.0 (ideal) – 1.6 (typical cloud DC) |

**Spain's grid CI** (2024): ~0.17 kg CO₂/kWh (high renewable mix, some gas)
**Google Cloud / OpenAI CI**: ~0.05–0.08 kg CO₂/kWh (renewable energy commitments)

> [!info] Counterintuitive Finding
> Cloud APIs from providers with renewable commitments may have *lower* per-call CO₂ than local inference on a high-carbon grid. The local vs. cloud comparison requires per-region CI data.

---

## CodeCarbon: Python Implementation

### Setup

```bash
pip install codecarbon
```

### Basic Usage

```python
from codecarbon import EmissionsTracker

tracker = EmissionsTracker(
    project_name="puma-h1-triage",
    country_iso_code="ESP",      # Spain
    region="madrid",
    save_to_file=True,
    output_file="puma_emissions.csv"
)

tracker.start()
# ... run PUMA experiment ...
emissions_kg = tracker.stop()

print(f"Experiment emitted {emissions_kg * 1000:.2f} gCO₂eq")
```

### Output Fields

| Field | Description |
|-------|-------------|
| `duration_s` | Total experiment wall time (seconds) |
| `emissions_kg` | Total CO₂eq in kilograms |
| `energy_consumed_kwh` | kWh used by CPU + GPU + RAM |
| `cpu_power_w` | Average CPU power draw (watts) |
| `gpu_power_w` | Average GPU power draw (watts, if CUDA) |
| `ram_power_w` | Average RAM power draw |
| `country_iso_code` | Grid region |
| `cloud_provider` | Auto-detected if running on cloud |

---

## Hardware Energy Baselines

| Component | Typical Power Draw |
|-----------|-------------------|
| CPU (Intel Core i7/i9) | 15–65W TDP |
| GPU (RTX 3090) | 350W TDP |
| GPU (RTX 4060 Ti) | 165W TDP |
| RTX 3060 (laptop) | 60–80W |
| Apple M3 Pro | ~30W (unified memory) |
| RAM (DDR5, 32GB) | ~5W |

**Inference cost estimate (Llama 3.2 8B, Q4_K_M, RTX 3060):**
- ~20 tokens/second → 500 issues × 300 tokens avg output ≈ 150K tokens
- At 20 t/s → 7,500 seconds ≈ 2 hours
- GPU power draw ≈ 70W × 2h = 0.14 kWh
- CO₂eq (Spain grid) ≈ 0.14 × 0.17 ≈ 0.024 kg ≈ 24 gCO₂eq

---

## Cloud API Emission Estimation

Cloud APIs do not expose per-call energy metrics. Use the ML CO₂ Impact calculator (Lacoste et al., 2019):

```python
# Rough estimate: GPT-4o inference
# Assume ~1W/1000 tokens for data center estimate
# 9,000 calls × 2,000 tokens = 18M tokens
# 18,000 Wh × PUE 1.2 × CI 0.06 (Google renewable) = 1.3 kg CO₂eq
```

---

## Comparison Framework for PUMA

| Metric | Local Llama 3.2 8B | GPT-4o API |
|--------|-------------------|------------|
| CO₂eq per 500 issues | ~24 gCO₂eq | ~1,300 gCO₂eq |
| Macro-F1 (expected) | 0.71–0.78 | 0.82–0.88 |
| Cost per 500 issues | ~€0.01 (electricity) | ~€4–6 (API) |
| Privacy | Full data sovereignty | Data sent to OpenAI |
| Latency | 45–120 min (local) | 5–15 min (API) |

> [!success] Key PUMA Finding (Hypothesis)
> Local models offer 50× lower carbon footprint than cloud APIs, at the cost of 5–10% Macro-F1 reduction. For organizations prioritizing sustainability or data sovereignty, local deployment is the preferred PUMA configuration.

---

## Reporting in PUMA Experiments

Include a sustainability table in each experiment report:

```markdown
| Model | Duration (min) | Energy (kWh) | CO₂eq (gCO₂) | Grid CI (kgCO₂/kWh) |
|-------|---------------|-------------|--------------|---------------------|
| Llama 3.2 8B (local) | 87 | 0.102 | 17.3 | 0.17 (ESP) |
| Mistral 7B (local) | 95 | 0.111 | 18.9 | 0.17 (ESP) |
| GPT-4o (cloud) | 12 | N/A (API) | ~1,300 est. | 0.06 (GCP) |
```

---

## References

- Strubell, E., Ganesh, A., & McCallum, A. (2019). Energy and policy considerations for deep learning in NLP. *arXiv:1906.02243*
- Lacoste, A., Lottick, A., Schwartz, R., & Goyal, P. (2019). Quantifying the carbon emissions of machine learning. *NeurIPS workshop*
- Bannour, B., Ghannay, S., Névéol, A., & Ligozat, A.-L. (2021). Evaluating the carbon footprint of NLP methods. *EACL 2021*
- CodeCarbon GitHub: https://github.com/mlco2/codecarbon

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-Evaluation-Metrics-Comprehensive]] — CO₂eq as evaluation metric
- [[50 - Areas/55 Ethics/Ethics-Review-Log]] — sustainability in PUMA ethics chapter
- [[30 - Permanent/31 Concepts/PN-LLM-Models-PUMA]] — energy profiles of each model
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] — where CodeCarbon tracking is applied
- [[20 - Literature/20.1 Papers/AI-Knowledge-Generation/LN-Strubell-2019-EnergyNLP]] — Strubell et al. (2019): foundational energy/CO₂ methodology for NLP; CO₂eq = E × CI × PUE formula

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]

## Related atomic notes (Phase 4.3)
- [[PN-PUMA-030]]
- [[PN-PUMA-032]]
- [[RES-MEM-049]]
