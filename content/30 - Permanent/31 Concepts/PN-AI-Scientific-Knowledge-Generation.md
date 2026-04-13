---
id: PN-AI-Scientific-Knowledge-Generation
title: "AI systems can generate new scientific knowledge, but only within human-defined research frameworks"
type: permanent-note
tags: [permanent-note, ai-science, knowledge-generation, puma, agentic-science, pec2, academic-writing, accuracy, ai-scientist, alphafold, anthropic, claude, code-review, critical-thinking, gemini, github, gnome, google, gpt, graphcast, hypothesis, llm, materials-science, metrics, moc, multi-agent, notebooklm, openai, pec, pipeline, plasma-physics, project-management, protein-folding, red-teaming, reinforcement-learning, research, research-methodology, research-tools, scientific-knowledge, smart-pmo, weather-prediction]
created: 2026-04-07
updated: 2026-04-07
---

# AI systems can generate new scientific knowledge, but only within human-defined research frameworks

## Core Insight

Current AI systems (LLMs, multi-agent pipelines, robot scientists) can contribute to scientific discovery across multiple domains — mathematics, physics, materials science, structural biology — but they consistently operate within frameworks, datasets, and evaluation criteria defined by human researchers. The key question is not *whether* AI can produce new knowledge, but *to what degree* it can do so autonomously.

---

## Three Levels of AI Scientific Capability (LeCun, 2026)

Yann LeCun structures AI's role in science into three levels:

1. **AI as scientific assistant**: Literature review, code writing, experiment design assistance, figure generation. Agilizes routine tasks without changing the epistemological structure of science.
2. **AI as scientific model**: Domain-specific models (AlphaFold, GraphCast, plasma RL controllers) that capture complex system regularities better than traditional mechanistic models, providing new predictive capabilities.
3. **AI as scientific agent**: Systems that formulate hypotheses, plan and execute experiments, analyze results, and propose conclusions — approaching limited scientific agency.

---

## Key Evidence of AI-Generated Knowledge (2023–2026)

### Mathematics
- **Gemini 2.5 Deep Think**: Gold medal performance at IMO 2025 — 5/6 problems solved with formal proofs. (Huang & Yang, 2025, arXiv:2507.15855)
- **GPT-5 + Malliavin-Stein**: Extended fourth-moment theorems with explicit convergence rates — proof generation with human verification. (Arras et al., 2025, arXiv:2509.03065)
- **"First Proof" project**: AI-generated complete demonstrations of novel group theory and combinatorics problems with lemmas not in the expert reviewers' standard repertoire. (Aletheia + academics, 2025-2026)

### Physics
- **Single-minus gluon amplitudes**: GPT-5.2 Pro proposed a closed-form expression for n-point gluon tree amplitudes, correcting a belief that they were zero. Result formally verified against Berends-Giele recursion. (Arkani-Hamed et al., 2026, arXiv:2602.12176)

### Materials Science
- **GNoME**: Google DeepMind's graph network discovered 2.2M stable crystal structures, expanding known stable materials by ~10×. Hundreds verified experimentally. (Jain et al., 2023, *Nature*)

### Structural Biology
- **AlphaFold2**: Structure prediction at near-experimental accuracy for proteins without homologous structures, enabling inference of folding pathways. (Jumper et al., 2021, *Nature*)

### Automated Research Pipelines
- **AI Scientist v1/v2**: End-to-end ML research pipeline — idea generation → experiment → paper → review. One paper accepted at ICLR 2025 workshop. (Lu et al., 2024/2025/2026)
- **Robot Scientist Adam**: Discovered functions of orphan yeast genes autonomously via hypothesis generation and robotic experiment execution. (King et al., 2009)
- **Robot Scientist Eve**: Identified anti-malarial and anti-tumor drug candidates via active learning. (Williams et al., 2015)

---

## The Skeptical Counter-Argument (Felin & Holweg, 2024)

"Theory Is All You Need" argues AI is fundamentally retrospective:
- Human cognition is **prospective** and **causal** — generates experiments driven by theory, not just data.
- AI is **retrospective** and **correlational** — pattern-matches on existing data.
- True scientific novelty requires formulating causal models not determined by prior data — which current AI cannot do spontaneously.

**Assessment**: This is partially correct but increasingly challenged. The single-minus gluon result and First Proof cases suggest some LLMs can generate results that *correct prior human beliefs* — going beyond interpolation.

---

## PUMA Connection

PUMA's own design reflects this three-level model:
- **Level 1 (Assistant)**: Claude, NotebookLM for literature synthesis and writing
- **Level 2 (Model)**: LLM agents as predictive models for issue priority and effort
- **Level 3 (Agent)**: Stage 5 Smart PMO agents approaching limited scientific agency in PM

The question of whether PUMA's agents can **discover** new PM patterns (not just classify) is the direction of future work.

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]]
- [[30 - Permanent/31 Concepts/PN-Agentic-Science-Paradigm]] — closed-loop science paradigm
- [[30 - Permanent/31 Concepts/PN-PUMA-within-AgenticScience-Trajectory]] — PUMA's position
- [[20 - Literature/20.1 Papers/AI-Knowledge-Generation/LN-Lu-2024-AIScientist]]
- [[20 - Literature/20.1 Papers/AI-Knowledge-Generation/LN-Jumper-2021-AlphaFold]]
- [[20 - Literature/20.1 Papers/AI-Knowledge-Generation/LN-Jain-2023-GNoME-Materials]]
- [[20 - Literature/20.1 Papers/AI-Knowledge-Generation/LN-Degrave-2022-PlasmaControl]]
- [[20 - Literature/20.1 Papers/AI-Knowledge-Generation/LN-ArkaniHamed-2026-GluonAmplitudes]]
- [[20 - Literature/20.1 Papers/Agentic-Science/LN-Felin-2024-TheoryIsAllYouNeed]]
- [[20 - Literature/20.1 Papers/Agentic-Science/LN-Zhang-2025-AgenticScienceSurvey]]
- [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]]
- [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]] — Stage 5 as applied Agentic Science

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-AI-Knowledge-Generation]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
