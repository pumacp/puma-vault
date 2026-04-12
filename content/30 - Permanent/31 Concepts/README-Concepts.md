---
id: README-Concepts
title: "🧠 Concepts — Zettelkasten Guide"
type: readme
tags: [readme, concepts, zettelkasten, permanent]
created: 2026-03-01
---

# 🧠 Concepts — Permanent Notes Guide

> Atomic concept notes. Each note = exactly one idea. Use [[00 - Meta/Templates/Template-Permanent-Note]].

## Rules for Permanent Notes

1. **One idea per note** — If you write "and", split into two notes
2. **Own words only** — Never paste quotes or summaries
3. **Standalone** — Must be understandable without reading source material
4. **Link richly** — Every note links to ≥2 related notes
5. **Evolve** — Notes improve over time (seedling → growing → evergreen)

## Sub-folder Split

| Sub-folder | Note types |
|-----------|-----------|
| `LLM-Concepts/` | Tokenisation, quantization, temperature, few-shot, CoT, RAG, embeddings |
| `PM-Concepts/` | Issue triage, story points, backlog, sprint, MTTD, PMBOK, Agile |

## Current Concept Notes

```dataview
TABLE maturity, tags
FROM "30 - Permanent/31 Concepts"
WHERE type = "permanent-note"
SORT maturity ASC
```
