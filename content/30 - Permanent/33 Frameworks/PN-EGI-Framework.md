---
id: PN-EGI-Framework
title: "EGI — Exploración Guiada Interactiva (Guided Interactive Exploration)"
type: permanent-note
category: framework
tags: [permanent, framework, prompting, egi, exploration, methodology]
aliases: ["EGI", "Guided Interactive Exploration"]
created: 2026-03-01
maturity: evergreen
---

# EGI — Guided Interactive Exploration

> **Atomic claim:** EGI is a multi-turn AI interaction pattern that systematically maps an unfamiliar knowledge domain through structured questioning sequences, preventing both premature closure and infinite exploration.

## 💡 The Pattern

EGI is used when entering an unfamiliar topic. It proceeds in three moves:

**Move 1 — Panoramic mapping**
```
"Give me a landscape map of [topic area]. What are the 5-7 major 
sub-areas, the key open questions in each, and the 2-3 most 
cited researchers or papers per area? Format as a structured outline."
```

**Move 2 — Targeted drilling**
```
"In the sub-area of [X from Move 1], what are the 3 most important 
papers published since 2022? For each: main contribution, 
key metric, and whether it is reproducible."
```

**Move 3 — Gap identification**
```
"Based on what you've described, what are the most significant 
gaps in the literature on [X]? Which gaps are most tractable 
for a 6-month MSc thesis with local compute?"
```

## 🧩 Application to PUMA

Used in F0 (Initiation) to map: LLM benchmarks landscape, PM+AI literature, prompting strategies for classification tasks. See: [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-EGI-Exploration]]

## 🔗 Connected Ideas
**Part of:** [[PN-MIT-Student-Method]] | **Uses:** [[PN-RCOIF-Framework]] | **Followed by:** [[PN-AMI-Framework]]
