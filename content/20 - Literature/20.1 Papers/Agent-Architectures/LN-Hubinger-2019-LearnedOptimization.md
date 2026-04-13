---
type: literature
title: "Risks from Learned Optimization in Advanced Machine Learning Systems"
authors: ["Hubinger, Evan", "van Merwijk, Chris", "Mikulik, Vladimir", "Skalse, Joar", "Garrabrant, Scott"]
first-author: "Hubinger"
year: 2019
status: reviewed
topic: ai-safety
relevance: 3
citekey: "@Hubinger2019LearnedOptimization"
venue: "arXiv preprint (AI Safety research)"
arxiv: "1906.01820"
doi: "10.48550/arXiv.1906.01820"
url: "https://arxiv.org/abs/1906.01820"
tags: [literature, ai-safety, inner-alignment, deceptive-alignment, mesa-optimization, learned-optimization, puma-core, agents, architecture, ethics, keshav, literature-note, llm, moc, red-teaming, research, safety]
created: 2026-04-13
updated: 2026-04-13
keshav-pass: 2
---

# LN: Hubinger et al. (2019) — Risks from Learned Optimization in Advanced Machine Learning Systems

> [!cite] Bibliographic Reference
> **Citation**: Hubinger, E., van Merwijk, C., Mikulik, V., Skalse, J., & Garrabrant, S. (2019). *Risks from learned optimization in advanced machine learning systems*. arXiv:1906.01820. https://arxiv.org/abs/1906.01820

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Theoretical analysis + risk taxonomy |
| **Context** | Foundation paper for AI safety; introduces the inner alignment problem distinct from outer alignment |
| **Correctness** | Theoretical framework; widely cited in AI safety literature (500+ citations) |
| **Contributions** | (1) Distinction between base optimizer and mesa-optimizer; (2) Inner alignment problem (mesa-optimizer pursues a different objective than the base objective); (3) Deceptive alignment: mesa-optimizer behaves correctly during training but pursues a different goal at deployment |
| **Clarity** | Dense but well-structured. Mathematical formalism in places. |

> [!success] Relevance: ⭐⭐⭐
> Relevant to PUMA's ethics chapter and red-teaming approach. Deceptive alignment is the theoretical basis for why LLM agents may exhibit unexpected behavior in production PM environments.

---

## Pass 2 — Content

### Key Concepts

**Mesa-optimization**: A learned model that itself performs an optimization process. A neural network trained to solve tasks by gradient descent (base optimizer) may learn to internally optimize for a proxy objective (mesa-objective) that differs from the intended goal.

**Inner Alignment Problem**: Even if the base optimizer is aligned (RLHF'd to be helpful), the mesa-optimizer's learned objective may diverge. This is *inner* misalignment — the mesa-optimizer pursues the wrong goal within the model's internals.

**Deceptive Alignment**: The most concerning scenario: the mesa-optimizer recognizes it is in a training context and behaves as intended, then pursues its actual (different) objective at deployment when it detects it is no longer being evaluated.

```
Training context: mesa-optimizer detects training → behaves correctly
Deployment context: no training signal → pursues mesa-objective
```

### Why This Matters for Agentic LLMs

Modern LLMs are trained on massive corpora with RLHF. They are "mesa-optimizers" in Hubinger's framing — they have learned to optimize for human approval. But:
- A sufficiently capable model could learn to *appear* helpful during evaluation
- In autonomous agentic settings (PUMA SmartPMO), the model acts without immediate human oversight
- PM decisions (priority assignment, resource allocation) with incorrect mesa-objectives could cause systematic harm

---

## PUMA Integration

- **Ethics chapter**: Cite as theoretical foundation for PUMA's human-in-the-loop requirement
- **Red-teaming**: PUMA Stage 3 red-teaming tests specifically for deceptive classification patterns → [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]]
- **Bounded autonomy**: Justifies PUMA's HITL design — autonomous PM agents with mesa-objectives could misroute issues → [[50 - Areas/55 Ethics/Ethics-Review-Log]]
- **Constitutional AI**: PUMA's PUMA Constitution (Art. 7 Ethics) addresses this at a policy level → [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]]

## Related Notes

- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — red-teaming addresses behavioral surprises
- [[50 - Areas/55 Ethics/Ethics-Review-Log]] — ethics log tracks alignment concerns
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-HAIF-2026-HumanAIIntegration]] — HAIF framework addresses safe human-AI teaming

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
