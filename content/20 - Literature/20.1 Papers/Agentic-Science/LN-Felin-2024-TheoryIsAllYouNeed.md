---
id: LN-Felin-2024-TheoryIsAllYouNeed
title: "Literature Note — Theory Is All You Need: AI, Human Cognition, and Causal Reasoning"
type: literature-note
authors: ["Felin, T.", "Holweg, M."]
year: 2024
venue: "INFORMS Studies in the Service Economy"
doi: "10.1287/stsc.2024.0189"
tags: [literature-note, theory, ai-limits, causal-reasoning, critique, puma, academic-writing, accuracy, agentic-science, ai-science, alphafold, automation, bibliography, citation, code-review, gemini, github, google, hypothesis, llm, metrics, moc, project-management, protein-folding, reasoning, research, research-methodology, theory-generation]
status: verified
created: 2026-04-07
updated: 2026-06-15
---

# LN — Theory Is All You Need (Felin & Holweg, 2024)

**Full Reference**: Felin, T., & Holweg, M. (2024). Theory is all you need: AI, human cognition, and causal reasoning. *INFORMS Studies in the Service Economy*, 4(1), 1–23. https://doi.org/10.1287/stsc.2024.0189

---

## Pass 1 — Bird's Eye

**Type**: Theoretical / Position paper
**Main Claim**: Data-driven AI is fundamentally retrospective and cannot generate novel scientific theory. Human cognition is prospective and causal — it can formulate hypotheses that go beyond existing data. AI lacks this creative, theory-driven capability.
**Relevance to PUMA**: ⭐⭐⭐ Medium — provides the key counterargument to Agentic Science claims; essential for PUMA Section 2 to present a balanced state of the art.

## Pass 2 — Key Arguments

### Core Thesis
- **Human cognition** = prospective, theory-first, causal: generates experiments designed to test specific causal mechanisms
- **AI cognition** = retrospective, data-first, correlational: finds patterns in existing data but cannot generate truly novel causal models
- "Theory is what allows scientists to know what data to collect and how to interpret it"

### Evidence Used
- Historical science: major paradigm shifts (Copernicus, Darwin, Einstein) required theory-first thinking, not data-driven discovery
- Current AI: AlphaFold predicts structures but didn't generate the theory of protein folding
- Large language models: generate plausible text from patterns but cannot distinguish causal from correlational relationships

### Key Limitation of the Argument
- Written in 2024, before: single-minus gluon result (2026), First Proof project (2025-2026), Gemini IMO gold medal (2025)
- These subsequent results suggest some LLMs *can* go beyond interpolation in formal reasoning domains

## Pass 3 — PUMA Re-implementation

**PUMA's position**: Felin & Holweg are partially correct about AI limitations in open-ended scientific creativity. However, PUMA's domain (PM task automation) does NOT require the kind of causal theory generation that Felin & Holweg argue AI cannot do.

PUMA's claim is more modest:
- LLM agents can *classify* issue priority better than naive baselines using historical patterns (correlational is sufficient)
- LLM agents can *estimate* story points more accurately than team averages using similar historical issues

This is precisely the "retrospective pattern matching" that Felin & Holweg describe — and for PM automation, that is exactly what is needed.

---

## MIT Critical Questions

1. **How can I use this?** → Cite as the strongest counterargument in PUMA Section 2 (literature review); then explain why PUMA's tasks don't require the causal creativity Felin & Holweg require.
2. **Does it really support its claims?** → The theory is sound but increasingly challenged by 2025-2026 empirical evidence.
3. **What if Felin & Holweg are right for PM?** → Even if AI cannot generate PM theories, it can still improve classification/estimation accuracy — which is PUMA's actual claim.

---

## APA7 Citation

Felin, T., & Holweg, M. (2024). Theory is all you need: AI, human cognition, and causal reasoning. *INFORMS Studies in the Service Economy*, 4(1), 1–23. https://doi.org/10.1287/stsc.2024.0189

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-AI-Scientific-Knowledge-Generation]] — synthesised view including counter-arguments
- [[30 - Permanent/31 Concepts/PN-PUMA-within-AgenticScience-Trajectory]] — why Level 2 suffices vs Felin & Holweg
- [[30 - Permanent/31 Concepts/PN-Agentic-Science-Paradigm]] — contrasting view
- [[20 - Literature/20.1 Papers/Agentic-Science/LN-Zhang-2025-AgenticScienceSurvey]] — contrasting survey
- [[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-Ch2-Ch3-Ch4-Ch5]] — cited in §2 state of art
- [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] — §1.1 PUMA claim scoping

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-AI-Knowledge-Generation]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
