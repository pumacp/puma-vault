---
id: PT-P2-004
title: "Claude / ChatGPT — Academic Writing Prompts for PUMA Thesis"
type: prompt-note
tool: claude-chatgpt
phase: Phase2-Development
step: "Academic-Writing"
methodology: [RCOIF, AcademicWriting, PeerReview, IMRaD]
tags: [prompt, academic-writing, thesis, uoc, puma, rcoif]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# ✍️ Claude / ChatGPT — Academic Writing Prompts for PUMA Thesis

**Tool**: Claude / ChatGPT
**Phase**: Phase 2 — Development
**Step**: Academic Writing
**Methodology**: RCOIF + IMRaD structure + UOC academic conventions

---

## Prompt A — Chapter 1 Introduction Draft (RCOIF)

```
Role: Academic writer specializing in software engineering and AI research, familiar with Spanish university TFG conventions (UOC, Ingeniería Informática).

Context: I am writing Section 1.1 (Context and Justification) of the PUMA TFG. PUMA evaluates local LLM agents for two project management tasks: issue triage and effort estimation. The justification is based on: (1) the productivity problem in ICT PM (manual triage, estimation bias, Uniqueness Trap), (2) the emergence of LLM agents as a viable solution, (3) the lack of reproducible benchmarks for local LLMs on PM tasks, (4) PUMA's specific contribution (Jira SR + TAWOS + CodeCarbon + Wilcoxon + open-source).

Objective: Write a 400-word Section 1.1 that compels the reader to understand why PUMA is necessary.

Instructions:
- Structure: hook (problem in industry) → situation (current state of AI+PM) → complication (gap in reproducible local LLM benchmarks) → contribution (what PUMA does) → impact (why it matters).
- Cite at least 3 verified references (Assalaarachchi 2026, Cinkusz 2025, one more).
- Use inclusive language (as per UNESCO guidelines).
- Avoid: "innovative", "revolutionary", "groundbreaking" — use precise claims.
- Flag all citations as [VERIFY] if you are not 100% certain of the exact source.

Format: Continuous prose, 400 words (±20). Academic register. No bullet points.
```

## Prompt B — Section 1.3 Ethical-Social Impact

```
Role: Ethical AI researcher writing the social impact section of an academic TFG.

Context: PUMA automates two PM tasks: issue triage and effort estimation. This has both positive and negative social implications.

Write Section 1.3 covering: (1) Positive impact: reduces repetitive work, improves estimation accuracy, democratizes PM analytics. (2) Ethical risks: algorithmic bias in priority classification, traceability of automated decisions, potential job displacement, privacy of Jira data. (3) Mitigation strategies: bounded autonomy, human-in-the-loop, full transparency via Arize Phoenix, local inference (no cloud data). (4) Diversity and inclusion: language bias in NLP models, inclusive prompting design, neurodiversity in PM context. (5) Sustainability: local inference reduces cloud carbon footprint, CodeCarbon measurement.

Format: 350 words. Academic prose. Inclusive language. Cite relevant AI ethics frameworks (EU AI Act, UNESCO Recommendation on AI Ethics if applicable).
```

## Prompt C — Section 1.8 AI Use Declaration (Marco Veritas)

```
Write Section 1.8 (Declaration on the Use of Generative AI) for the PUMA TFG at UOC.

The declaration must cover:
1. Which AI tools were used and for what purpose (list: Claude, Perplexity, NotebookLM, ChatGPT, Gemini, Grok — state the specific use of each).
2. How outputs were validated (Marco Veritas protocol: primary source verification for all bibliographic references, no unchecked citations).
3. Ethical principles applied: (a) no delegation of judgment, (b) full traceability (AI Use Log), (c) cross-validation with primary sources, (d) substantial human rewriting, (e) proactive declaration, (f) tutor validation.
4. What was NOT done with AI: no AI-generated experiment data, no AI-written code merged without understanding, no AI-generated statistical analysis accepted without human verification.

Format: 250 words. First person. Direct, honest, and specific. No vague statements like "AI was used responsibly."
```

## Prompt D — Abstract Generation (APA Style)

```
Role: Academic editor for a software engineering conference.

Context: PUMA evaluates local LLM agents (Llama 3.2 8B, Mistral 7B) for two ICT PM tasks: issue triage (F1-macro ≥ 0.55 on Jira SR) and effort estimation (MAE ≤ 3.0 SP on TAWOS). The study uses Design Science Research, Wilcoxon statistical test, CodeCarbon for sustainability, and publishes a fully reproducible benchmark.

Objective: Write a 250-word abstract in English and in Spanish following IMRaD structure.

Requirements:
- Exactly 250 words (±5) in each language version
- Active voice: "This study designs..." not "A study was designed..."
- Quantified results (include target thresholds even if actual results are TBD: "targeting F1-macro ≥ 0.55")
- No unverified adjectives
- Keywords: 6–8 per language (nouns or nominal phrases)

Format: English abstract → Spanish abstract → Keywords (EN) → Keywords (ES).
```

---

## PUMA Relevance

These writing prompts generate the first drafts of PUMA's thesis chapters. Following the AMI principle, every output must be critically reviewed and substantially rewritten before inclusion. The Marco Veritas declaration in Prompt C is a UOC requirement for all TFGs using AI tools.

---

## Related Notes

- [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]]
- [[50 - Areas/51 Research/AI-Use-Log]]
- [[40 - Projects/PUMA/41.4 Results/PR-PUMA-Ch4-Results]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
