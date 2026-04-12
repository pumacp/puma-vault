---
id: LN-Jain-2023-GNoME-Materials
title: "Literature Note — Scaling deep learning for materials discovery (GNoME)"
type: literature-note
authors: ["Jain, A.", "et al."]
year: 2023
venue: "Nature"
doi: "10.1038/s41586-023-06735-9"
tags: [literature-note, materials-science, gnome, deepmind, ai-discovery, puma, pec2]
status: verified
created: 2026-04-07
updated: 2026-04-07
---

# LN — GNoME: Materials Discovery at Scale (Jain et al., 2023)

**Full Reference**: Jain, A., et al. (2023). Scaling deep learning for materials discovery. *Nature*, 624, 70–77. https://doi.org/10.1038/s41586-023-06735-9

---

## Pass 1 — Bird's Eye

**Type**: Research paper — Materials Science / AI
**Main Claim**: GNoME (Graph Networks for Materials Exploration) discovered 2.2 million stable crystal structures via graph neural network + active learning loop, expanding known stable materials by ~10×.
**Relevance to PUMA**: ⭐⭐ Medium — quantitative demonstration of AI generating vast new scientific knowledge; key example for PUMA's PEC2 state-of-the-art section.

## Pass 2 — Key Content

### System
- Graph neural network trained on crystal structure databases
- Active learning cycle: GNN predicts stability → DFT verification → retrain
- Scale: 2.2M candidate structures screened, 381K stable structures identified

### Results
- Expanded stable inorganic materials database by approximately 10×
- Hundreds of structures experimentally synthesized and confirmed
- Enabled new superconductor, battery material, and catalyst candidates

### Knowledge Type
- **Factual discovery**: New materials that objectively exist and can be synthesized
- **Not theoretical**: Does not generate new physical theories, but generates new instances of known physical principles
- Scale of discovery impossible for humans alone — constitutes genuine contribution to the knowledge base

---

## PUMA Connection

GNoME represents the "AI as scientific model" level operating at scale:
- Input: crystal structure parameters
- Output: stability prediction (classification, like PUMA's triage)
- Value: enables human researchers to focus synthesis efforts on high-probability candidates

PUMA's triage agent performs an analogous function:
- Input: issue text
- Output: priority classification
- Value: enables PM to focus attention on high-priority issues with AI providing pre-filtering

---

## APA7 Citation

Jain, A., et al. (2023). Scaling deep learning for materials discovery. *Nature*, 624, 70–77. https://doi.org/10.1038/s41586-023-06735-9

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-AI-Scientific-Knowledge-Generation]]
- [[20 - Literature/20.1 Papers/AI-Knowledge-Generation/LN-Jumper-2021-AlphaFold]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-AI-Knowledge-Generation]]
