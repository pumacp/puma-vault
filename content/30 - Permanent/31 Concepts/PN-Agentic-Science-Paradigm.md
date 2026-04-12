---
id: PN-Agentic-Science-Paradigm
title: "Agentic Science represents a new research paradigm where AI manages complete investigation cycles autonomously"
type: permanent-note
tags: [permanent-note, agentic-science, robot-scientists, ai-discovery, puma]
created: 2026-04-07
updated: 2026-04-07
---

# Agentic Science represents a new research paradigm where AI manages complete investigation cycles autonomously

## Core Insight

"Agentic Science" is the emerging paradigm where AI systems are not merely tools assisting human researchers but active participants that plan, execute, and interpret complete scientific cycles — from hypothesis generation to conclusion — in closed loops with minimal human intervention. This parallels PUMA's vision for the Smart PMO: not just automating individual PM tasks but orchestrating complete sprint planning cycles.

---

## Key Agentic Science Systems

| System | Domain | Level of Autonomy | Key Capability |
|--------|---------|------------------|----------------|
| AI Scientist v2 (Lu et al., 2026) | ML Research | High | Paper accepted at ICLR workshop with zero human writing |
| Adam (King et al., 2009) | Systems Biology | High | Discovered yeast gene functions autonomously |
| Eve (Williams et al., 2015) | Drug Discovery | High | Identified drug candidates via active learning |
| GNoME (DeepMind, 2023) | Materials Science | High | 2.2M new stable structures, hundreds verified |
| ChemNavigator (Zheng et al., 2026) | Photocatalyst Design | Medium | Derived interpretable design rules for H2 evolution |
| Genesis (Tiwari et al., 2024) | Systems Biology | Emerging | Full systems biology area via microfluidics + ML |

---

## The Closed-Loop Science Model

```
[Hypothesis Generation] → [Experiment Design] → [Execution] → [Analysis] → [Conclusion] → [New Hypothesis]
         ↑___________________________ AI AGENT LOOP __________________________________|
                                   (with human oversight at key gates)
```

This mirrors PUMA's Stage 5 Smart PMO:
```
[Sprint Start] → [Issue Triage] → [Estimation] → [Risk Detection] → [Sprint Plan] → [Retrospective]
         ↑___________________________ SMART PMO AGENT LOOP __________________________|
                                   (PM approves sprint plan before execution)
```

---

## Limitations of Agentic Science (2024-2026)

1. **Framework dependence**: Search space, evaluation criteria, and knowledge base still defined by humans
2. **Interpretability gap**: Emergent results lack causal explanation
3. **Reproducibility challenges**: Stochastic LLMs produce variable results without seeding
4. **Hallucination risk**: Fabricated references and unverifiable intermediate steps
5. **Attribution problem**: Who "owns" AI-generated discoveries?

---

## PUMA Implications

PUMA occupies the intersection between agentic science methodology and project management practice. The same architectural patterns (closed-loop hypothesis-experiment-analysis) appear in both:
- Scientific discovery: agent → experiment → metric → revision
- PM automation: agent → triage → sprint plan → velocity feedback

PUMA Stage 5 is, in this sense, an applied Agentic Science system for the PM domain.

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-AI-Scientific-Knowledge-Generation]] — evidence base for AI knowledge generation
- [[30 - Permanent/31 Concepts/PN-PUMA-within-AgenticScience-Trajectory]]
- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — Specialised agents in science
- [[30 - Permanent/31 Concepts/PN-ReAct-AgentPattern]] — reasoning loop as core agentic mechanism
- [[20 - Literature/20.1 Papers/Agentic-Science/LN-Zhang-2025-AgenticScienceSurvey]]
- [[20 - Literature/20.1 Papers/AI-Knowledge-Generation/LN-Lu-2024-AIScientist]]
- [[20 - Literature/20.1 Papers/AI-Knowledge-Generation/LN-Jumper-2021-AlphaFold]]
- [[20 - Literature/20.1 Papers/AI-Knowledge-Generation/LN-Jain-2023-GNoME-Materials]]
- [[20 - Literature/20.1 Papers/AI-Knowledge-Generation/LN-Klinger-2025-AIScience-SocialProblem]]
- [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]] — PUMA Stage 5 as applied Agentic Science
- [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] — Three enabling conditions
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] — PUMA's experimental grounding

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-AI-Knowledge-Generation]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
