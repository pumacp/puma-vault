---
type: literature
title: "Toward Agentic Software Project Management: A Vision and Roadmap"
authors: ["Assalaarachchi, Nuwan", "Hoda, Rashina", "Hassan, Ahmed E.", "Grundy, John"]
first-author: "Assalaarachchi"
year: 2026
status: reviewed
topic: agentic-pm
relevance: 5
citekey: "@Assalaarachchi2026AgenticSPM"
venue: "ICSE 2026 (AGENT Workshop)"
arxiv: "2601.16392"
doi: "10.48550/arXiv.2601.16392"
url: "https://arxiv.org/abs/2601.16392"
tags: [literature, agentic-pm, software-project-management, multi-agent, vision, puma-core]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 3
---

# LN: Assalaarachchi et al. (2026) — Toward Agentic Software Project Management: A Vision and Roadmap

**Citation**: Assalaarachchi, N., Hoda, R., Hassan, A. E., & Grundy, J. (2026). *Toward agentic software project management: A vision and roadmap*. arXiv:2601.16392. ICSE 2026 AGENT Workshop. https://arxiv.org/abs/2601.16392

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Vision paper + roadmap |
| **Context** | First paper to explicitly propose "Agentic Project Manager" as a research direction |
| **Correctness** | Position paper; empirically-grounded vision based on current AI capabilities. |
| **Contributions** | (1) Concept of "Agentic Project Manager" (APM) in software project management; (2) Taxonomy of autonomy levels (from assistant to junior PM agent); (3) Ethical implications of human role shift to "coach"; (4) Research roadmap for SPM 3.0 |
| **Clarity** | Excellent. Clear framework and diagrams. |

**Relevance**: ⭐⭐⭐⭐⭐ — This is the most directly aligned paper with PUMA's long-term vision (Stage 5: Smart PMO). Pioneer paper in "agentic SPM" micro-niche.

---

## Pass 2 — Key Points

The paper proposes **Software Project Management 3.0**: autonomous AI agents take over routine PM tasks while humans transition to strategic coaching roles. Three autonomy levels:
1. **Assistant**: AI suggests, human decides (PUMA Stages 1–3)
2. **Co-pilot**: AI leads, human validates (PUMA Stage 4)
3. **Junior PM Agent**: AI executes autonomously, human coaches (PUMA Stage 5 vision)

**Ethical framing**: The human-as-coach model directly supports PUMA's HITL principle and addresses concerns about job displacement.

---

## Pass 3 — Virtual Reconstruction

**Q1 (How can I use this?)**: Cite as the foundational vision paper for PUMA's Stage 5 Smart PMO. The 3-level autonomy taxonomy provides the conceptual framework for PUMA's incremental design (Strategies C → D → long-term).

**Q2 (Does it do what it claims?)**: Vision paper, no empirical results. Consistent with current AI capabilities literature.

**Q3 (What if?)**: What if the "junior PM agent" level requires a different evaluation methodology than the benchmark approach PUMA uses? A future study could evaluate APMs on full project simulations rather than individual task metrics.

---

## PUMA Integration

- **Section 1.1**: Cite to justify PUMA's vision beyond MVP → [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]]
- **Smart PMO**: Primary reference for Stage 5 → [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]]
- **BMAD**: APM's multi-agent structure maps to BMAD → [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-PRD-PUMA]]
- **Hypotheses**: Stage 5 targets from H1/H2 extrapolation → [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]

## Related Permanent Notes

- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — specialisation that enables Agentic PM
- [[30 - Permanent/31 Concepts/PN-PUMA-within-AgenticScience-Trajectory]] — PUMA's theoretical position
- [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — the specific PM tasks in scope
- [[30 - Permanent/37 Persons/PER-Assalaarachchi-Nuwan]] — key thinker note
- [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] — BMAD multi-agent methodology

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
