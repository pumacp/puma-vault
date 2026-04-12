---
id: LN-Degrave-2022-PlasmaControl
title: "Literature Note — Magnetic control of tokamak plasmas through deep reinforcement learning"
type: literature-note
authors: ["Degrave, J.", "Felici, F.", "Buchli, J.", "et al."]
year: 2022
venue: "Nature"
doi: "10.1038/s41586-021-04301-9"
tags: [literature-note, reinforcement-learning, plasma, fusion, ai-discovery, deepmind, puma, pec2]
status: verified
created: 2026-04-07
updated: 2026-04-07
---

# LN — Plasma Control with Deep RL (Degrave et al., 2022)

**Full Reference**: Degrave, J., Felici, F., Buchli, J., et al. (2022). Magnetic control of tokamak plasmas through deep reinforcement learning. *Nature*, 602, 414–419. https://doi.org/10.1038/s41586-021-04301-9

---

## Pass 1 — Bird's Eye

**Type**: Research paper — Physics / Reinforcement Learning
**Main Claim**: A deep RL agent learns to control plasma configurations in the TCV tokamak, including configurations not previously achievable with classical linear controllers.
**Relevance to PUMA**: ⭐⭐ Medium — demonstrates AI discovering novel operational strategies (plasma configurations) in a domain with complex physics; analogous to PUMA discovering optimal triage strategies.

## Pass 2 — Key Content

### System
- Deep RL agent trained in simulation (MHD physics model), deployed on real tokamak
- Learns control policies: coil current adjustments to maintain plasma shape
- Operates at 10kHz control frequency

### Novel Contributions
1. First demonstration of RL control for tokamak plasma (milestone)
2. Agent produced **novel plasma configurations** not previously achievable with classical controllers
3. Multi-objective control (various plasma shapes) via single policy

### Knowledge Generated
- The novel configurations represent genuinely new operational knowledge for fusion physics
- Plasma shapes discovered by RL were not anticipated by domain experts — constitutes new knowledge

---

## PUMA Relevance

The pattern is analogous to PUMA:
- RL agent discovers novel plasma configurations not anticipated by human experts
- PUMA's CoT agent might discover novel triage reasoning chains not used by human PMs

The key difference: PUMA's "discovery" is evaluated via F1-macro rather than physical plasma stability — but the knowledge generation dynamic is similar.

---

## APA7 Citation

Degrave, J., Felici, F., Buchli, J., et al. (2022). Magnetic control of tokamak plasmas through deep reinforcement learning. *Nature*, 602, 414–419. https://doi.org/10.1038/s41586-021-04301-9

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-AI-Scientific-Knowledge-Generation]]
- [[20 - Literature/20.1 Papers/AI-Knowledge-Generation/LN-Jumper-2021-AlphaFold]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-AI-Knowledge-Generation]]
