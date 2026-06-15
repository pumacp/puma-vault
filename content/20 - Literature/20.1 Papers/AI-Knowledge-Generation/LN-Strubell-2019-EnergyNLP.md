---
type: literature
title: "Energy and Policy Considerations for Deep Learning in NLP"
authors: ["Strubell, Emma", "Ganesh, Ananya", "McCallum, Andrew"]
first-author: "Strubell"
year: 2019
status: reviewed
topic: computational-sustainability
relevance: 5
citekey: "@Strubell2019EnergyNLP"
venue: "ACL 2019 (Proceedings of the 57th Annual Meeting of the ACL)"
arxiv: "1906.02243"
doi: "10.18653/v1/P19-1355"
url: "https://doi.org/10.18653/v1/P19-1355"
tags: [literature, sustainability, carbon-footprint, co2, energy, nlp, deep-learning, codecarbon, strubell, puma-core, ethics, computational-cost, environmental-impact, literature-note, moc]
created: 2026-04-14
updated: 2026-06-15
keshav-pass: 2
---

# LN: Strubell, Ganesh & McCallum (2019) — Energy and Policy Considerations for Deep Learning in NLP

> [!cite] Bibliographic Reference
> **Citation**: Strubell, E., Ganesh, A., & McCallum, A. (2019). Energy and policy considerations for deep learning in NLP. In *Proceedings of the 57th Annual Meeting of the Association for Computational Linguistics* (pp. 3645–3650). https://doi.org/10.18653/v1/P19-1355

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Empirical study + policy argument |
| **Context** | University of Massachusetts Amherst, ACL 2019. First systematic measurement of the environmental cost of NLP model training |
| **Correctness** | Empirically measured; used AWS instances with known power draw. Results corroborated by subsequent independent studies |
| **Contributions** | (1) Quantified CO₂ cost of training large NLP models (BERT, Transformer-NAS: up to 626,155 lbs CO₂); (2) Comparison with equivalent car/flight emissions; (3) Policy recommendations for NLP research community; (4) Methodology for measuring ML energy consumption |
| **Clarity** | Excellent — concrete numbers, clear methodology, provocative framing |

> [!success] Relevance: ⭐⭐⭐⭐⭐
> Strubell et al. provides the academic justification for PUMA's carbon footprint measurement (CodeCarbon integration). PUMA's sustainability reporting methodology is directly traceable to this paper.

---

## Pass 2 — Key Concepts

### The Carbon Cost of NLP Training

Key findings (2019 figures):
| Model | CO₂ eq (lbs) | Equivalent to |
|-------|-------------|---------------|
| Transformer (base) | 26 | ~1 flight NY–SF |
| GPT-2 | ~300 | ~30 flights NY–SF |
| Transformer-NAS (neural arch search) | 626,155 | ~5× lifetime car emissions |
| BERT training | ~1,400 | ~125 flights NY–SF |

### The CO₂ Measurement Methodology

Strubell et al.'s approach (basis for CodeCarbon):

$$\text{CO}_2^{eq} = E \times \text{CI}$$

Where:
- $E$ = energy consumed (kWh) = Power draw × Duration
- $\text{CI}$ = carbon intensity of electricity grid (kg CO₂/kWh)

This two-factor model is implemented in CodeCarbon with the extension:

$$\text{CO}_2^{eq} = E \times \text{CI} \times \text{PUE}$$

Where PUE (Power Usage Effectiveness) accounts for data centre overhead.

### Policy Recommendations

Strubell et al. make three policy recommendations:
1. **Reporting standards**: NLP papers should report training cost alongside performance metrics
2. **Equitable access**: High compute cost creates barriers for researchers without industry resources
3. **Efficiency incentives**: Research community should prioritise efficient models, not just maximally accurate ones

These recommendations directly motivated the ML sustainability movement (Green AI, SustaiNLP workshops).

### Inference vs. Training Cost

A critical distinction the paper emphasises:
- **Training** is the dominant environmental cost (600k lbs CO₂ for NAS)
- **Inference** is orders of magnitude cheaper (PUMA uses pre-trained models — inference only)

PUMA's carbon footprint comes entirely from **inference** — running already-trained models on 200–1000 issues. This is at the milligram CO₂ scale, not tonne scale. However, measuring it demonstrates scientific rigour and establishes baselines for production SmartPMO deployment.

---

## PUMA Integration

- **Ch.3 Methods / Sustainability subsection**: Strubell et al. as the methodological basis for CodeCarbon integration
- **CO₂eq formula**: Directly from this paper (extended with PUE in PN-ComputationalSustainability)
- **Framing**: PUMA measures inference cost, not training cost — proportionately tiny, but establishes methodology for production deployment

## Related Notes

- [[30 - Permanent/31 Concepts/PN-ComputationalSustainability]] — full CodeCarbon integration, CO₂eq formula, hardware baselines
- [[50 - Areas/55 Ethics/Ethics-Review-Log]] — sustainability as an ethics consideration in PUMA
- [[30 - Permanent/31 Concepts/PN-LLM-Models-PUMA]] — model parameter counts that determine inference cost

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
