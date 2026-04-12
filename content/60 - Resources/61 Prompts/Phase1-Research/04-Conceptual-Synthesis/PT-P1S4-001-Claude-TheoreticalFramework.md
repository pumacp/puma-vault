---
id: PT-P1S4-001
title: "Claude — Theoretical Framework Construction for PUMA"
type: prompt-note
tool: claude
phase: Phase1-Research
step: "04-Conceptual-Synthesis"
methodology: [RCOIF, DSR, DRCA, GroundedTheory]
tags: [prompt, claude, theoretical-framework, drca, puma]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 🏗️ Claude — Theoretical Framework Construction for PUMA

**Tool**: Claude (Anthropic)
**Phase**: Phase 1 — Research
**Step**: 04 — Conceptual Synthesis
**Methodology**: RCOIF + DRCA (Deconstruction and Reconstruction Conceptual Approach)

---

## Prompt A — Conceptual Axis Identification (RCOIF)

```
Role: Senior theoretical researcher in AI systems and project management.

Context: I am building the theoretical framework for PUMA, a DSR-based TFG evaluating local LLM agents (Llama 3.2 8B, Mistral 7B) on project management tasks: issue triage (classification on Jira SR) and effort estimation (story points on TAWOS). The study follows Design Science Research and produces a reproducible benchmark with statistical validation (Wilcoxon test).

Objective: Identify and structure the theoretical axes that underpin PUMA's research design.

Instructions:
1. Identify 4–5 main theoretical axes. Each axis is a cluster of theories, concepts, and debates sharing a common fundamental question.
2. For each axis, provide: (a) axis name and central question, (b) key theories or models with founding authors, (c) precise concept definitions (2–3 lines each), (d) current active debate — what is disputed?, (e) direct relevance to PUMA's research question, (f) 2–3 essential references to cite [mark uncertain ones with VERIFY].
3. Identify relationships between axes: complementary, tensioning, or hierarchical.

Format: Structured sections per axis. Relationship diagram in text. Total length 800–1200 words.
```

## Prompt B — Concept Key Matrix

```
Role: Academic lexicographer specializing in AI and software engineering.

Context: PUMA uses the following concepts that require precise operational definitions for the thesis: LLM Agent, Multi-Agent System, Issue Triage, Effort Estimation, Story Point, F1-macro, MAE, Few-Shot Prompting, Chain-of-Thought, RAG, Reproducibility, Human-in-the-Loop, Bounded Autonomy, Benchmark.

Objective: Build a definitional matrix for these 14 concepts.

Instructions: For each concept provide: (1) Operational definition for PUMA (50–70 words), (2) Canonical definition from most-cited source [with author and year — mark UNVERIFIED if uncertain], (3) Why this concept is indispensable for PUMA, (4) Relationship to other concepts in the matrix, (5) Empirical indicator or measurable proxy, (6) English search term for Semantic Scholar.

Format: Structured table with 6 columns. 1 row per concept. Final paragraph (100 words) describing how all concepts articulate together.
```

## Prompt C — DRCA: Deconstruct the Field for PUMA

```
Role: Benchmark architect applying DRCA methodology.

Context: The literature on AI agents for project management is fragmented across three communities: NLP/LLMs, software engineering, and project management science. Each community uses different terminology and evaluation standards.

Objective: Deconstruct the field into atomic components and reconstruct a coherent benchmark blueprint for PUMA.

Instructions:
1. DECONSTRUCTION: Break the field into fundamental components: tasks, datasets, evaluation methods, agent architectures, human oversight mechanisms, reproducibility requirements.
2. HIDDEN ASSUMPTIONS: For each component, identify the unstated assumptions that limit generalizability.
3. RECONSTRUCTION: Rebuild a benchmark blueprint for PUMA that addresses the identified assumptions.
4. For each component: what does the literature support, what it does NOT solve, what PUMA should operationalize.

Format: Structured report with sections. At least one comparison table. Explicit PUMA design decisions derived from each component.
```

## Prompt D — MOC Generation from Synthesis

```
Based on the theoretical framework and concept matrix above, generate a Map of Content (MOC) structure for the PUMA Obsidian vault. The MOC should:
1. List the main conceptual nodes (permanent notes) needed.
2. Show links between nodes using → notation.
3. Identify which concepts belong in: Zettelkasten (permanent ideas), Resources (external reference), Projects (PUMA-specific application).
4. Propose 10 atomic permanent note titles in declarative sentence format (each captures one reusable insight).
Format: Bulleted MOC structure + permanent note titles list.
```

---

## PUMA Relevance

This prompt generates the intellectual backbone of PUMA Section 2 (Materials and Methods) and informs the Zettelkasten permanent notes in [[30 - Permanent/31 Concepts/]]. The DRCA deconstruction directly justifies why PUMA's benchmark design differs from prior work.

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]]
- [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI-v2]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
