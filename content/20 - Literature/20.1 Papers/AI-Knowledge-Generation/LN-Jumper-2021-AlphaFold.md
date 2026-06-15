---
id: LN-Jumper-2021-AlphaFold
title: "Literature Note — AlphaFold2: Highly accurate protein structure prediction"
type: literature-note
authors: ["Jumper, J.", "Evans, R.", "Pritzel, A.", "et al."]
year: 2021
venue: "Nature"
doi: "10.1038/s41586-021-03819-2"
tags: [literature-note, alphafold, protein, ai-discovery, deepmind, puma, academic-writing, accuracy, agentic-science, ai-science, architecture, attention, bibliography, citation, gnome, graphcast, hypothesis, issue-triage, llm, materials-science, metrics, moc, permanent-note, project-management, protein-folding, research, research-methodology, transformer, triage, weather-prediction]
status: verified
created: 2026-04-07
updated: 2026-04-07
---

# LN — AlphaFold2 (Jumper et al., 2021)

**Full Reference**: Jumper, J., Evans, R., Pritzel, A., et al. (2021). Highly accurate protein structure prediction with AlphaFold. *Nature*, 596(7873), 583–589. https://doi.org/10.1038/s41586-021-03819-2

---

## Pass 1 — Bird's Eye

> [!abstract] Main Claim
> AlphaFold2 predicts protein structures with near-experimental accuracy even without structural homologues, winning CASP14 by a large margin.

| Property | Detail |
|----------|--------|
| **Type** | Research paper — Computational Biology / AI |
| **Relevance to PUMA** | ⭐⭐ Medium — canonical example of AI achieving breakthrough results in science; context for PUMA's positioning of LLM agents as equivalent transformers for PM tasks |

## Pass 2 — Key Content

### System Design
- Transformer-based architecture trained on PDB structures + evolutionary sequence data
- Key innovation: attention mechanism over Multiple Sequence Alignments (MSAs) enables structural inference
- Output: 3D atom coordinates with confidence scores (pLDDT)

### Results
- CASP14: GDT score ~90 (near-experimental quality threshold ~90)
- Predicted 98.5% of human proteome (AlphaFold DB, 200M+ structures)
- Enabled: drug discovery, enzyme design, understanding of disease mechanisms

### Knowledge Generated
- Not just prediction: AlphaFold inferences revealed **folding pathway insights** and **structural principles** not explicitly programmed
- Provides structural hypotheses that guide new experimental lines

## Pass 3 — PUMA Relevance

> [!info] PUMA Analogy
> AlphaFold demonstrates the "AI as scientific model" level in LeCun's framework. PUMA occupies a similar position for PM:
> - AlphaFold: input (sequence) → output (structure) with implicit physical knowledge
> - PUMA triage agent: input (issue text) → output (priority) with implicit PM domain knowledge
>
> Both use learned representations to solve domain-specific prediction tasks that previously required human expertise.

---

## APA7 Citation

Jumper, J., Evans, R., Pritzel, A., et al. (2021). Highly accurate protein structure prediction with AlphaFold. *Nature*, 596(7873), 583–589. https://doi.org/10.1038/s41586-021-03819-2

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-AI-Scientific-Knowledge-Generation]] — synthesised permanent note
- [[30 - Permanent/31 Concepts/PN-PUMA-within-AgenticScience-Trajectory]] — PUMA as Level 2 analogue
- [[30 - Permanent/31 Concepts/PN-Agentic-Science-Paradigm]] — Agentic Science context
- [[20 - Literature/20.1 Papers/AI-Knowledge-Generation/LN-Jain-2023-GNoME-Materials]]
- [[20 - Literature/20.1 Papers/AI-Knowledge-Generation/LN-Lam-2023-GraphCast]] — sister L2 example
- [[20 - Literature/20.1 Papers/Agentic-Science/LN-Zhang-2025-AgenticScienceSurvey]] — survey context

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-AI-Knowledge-Generation]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
