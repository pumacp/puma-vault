---
id: LN-Zhang-2025-AgenticScienceSurvey
title: "Literature Note — From AI for Science to Agentic Science: A Survey"
type: literature-note
authors: ["Zhang, X.", "et al."]
year: 2025
venue: "arXiv preprint"
arxiv: "2508.14111"
doi: "10.48550/arXiv.2508.14111"
tags: [literature-note, agentic-science, survey, ai-discovery, puma, academic-writing, benchmark, bibliography, citation, code-review, dataset, github, hypothesis, jira, moc, permanent-note, planning, project-management, research, research-methodology, smart-pmo, tawos, workflow]
status: verified
created: 2026-04-07
updated: 2026-06-15
---

# LN — From AI for Science to Agentic Science (Zhang et al., 2025)

**Full Reference**: Zhang, X., et al. (2025). *From AI for science to Agentic Science: A survey on autonomous scientific discovery*. arXiv preprint arXiv:2508.14111. https://doi.org/10.48550/arXiv.2508.14111

---

## Pass 1 — Bird's Eye

**Type**: Survey paper
**Main Claim**: "Agentic Science" represents a new research paradigm where AI systems manage complete investigation cycles — from hypothesis to conclusion — with limited human oversight.
**Relevance to PUMA**: ⭐⭐⭐⭐ High — provides the theoretical framework for classifying PUMA's Smart PMO as applied Agentic Science.

## Pass 2 — Key Content

### Three-Phase Framework (aligned with LeCun's levels)
1. **AI for Science** (tool phase): Domain-specific models, literature synthesis, data analysis
2. **AI in Science** (collaborative phase): Co-pilot systems, closed-loop experiments in specific domains
3. **Agentic Science** (autonomous phase): AI agents manage full research cycles across domains

### Key Application Domains Surveyed
- Life Sciences: drug discovery, protein design, genomics
- Chemistry: synthesis planning, catalyst design, reaction prediction
- Materials: crystal structure prediction, property optimization
- Physics: model discovery, simulation acceleration

### Critical Requirements for Agentic Science
1. **Hypothesis formulation**: Ability to generate specific, testable predictions
2. **Experiment planning**: Selection of experimental conditions to maximally inform hypotheses
3. **Data interpretation**: Automated extraction of conclusions from experimental data
4. **Knowledge integration**: Grounding new results in the existing knowledge base

### Identified Challenges
- Scalability of data infrastructure for robotic experiments
- Interpretability of AI-generated discoveries
- Attribution and credit for AI contributions
- Reproducibility of stochastic AI experiments

## Pass 3 — PUMA Re-implementation

The survey's framework maps directly to PUMA's research design:
- PUMA Phase 1 (Research) = "AI for Science" phase: using AI tools for literature synthesis
- PUMA Phase 2 (Development) = "AI in Science" phase: building the benchmark with AI assistance
- PUMA Stage 5 (Smart PMO) = "Agentic Science" phase: autonomous PM workflow cycles

---

## MIT Critical Questions

1. **How can I use this?** → Cite in PUMA Section 1.1 to position PUMA within the Agentic Science trajectory.
2. **Does it really support its claims?** → Yes — well-documented with concrete examples per domain.
3. **What if PM doesn't fit this framework?** → PM lacks the "ground truth" verification mechanism of physical experiments; PUMA addresses this with labeled datasets (Jira SR, TAWOS).

---

## APA7 Citation

Zhang, X., et al. (2025). From AI for science to Agentic Science: A survey on autonomous scientific discovery. arXiv preprint arXiv:2508.14111. https://doi.org/10.48550/arXiv.2508.14111

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-Agentic-Science-Paradigm]] — synthesised permanent note from this survey
- [[30 - Permanent/31 Concepts/PN-AI-Scientific-Knowledge-Generation]] — evidence of AI knowledge generation
- [[30 - Permanent/31 Concepts/PN-PUMA-within-AgenticScience-Trajectory]] — PUMA's position in this trajectory
- [[20 - Literature/20.1 Papers/AI-Knowledge-Generation/LN-Lu-2024-AIScientist]]
- [[20 - Literature/20.1 Papers/Agentic-Science/LN-Felin-2024-TheoryIsAllYouNeed]] — counter-argument
- [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]] — PUMA Stage 5 as Agentic Science for PM
- [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] — cited in §1.1 context

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-AI-Knowledge-Generation]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
