---
id: PT-P1S4-002
title: "ChatGPT — Zettelkasten Note Generation for PUMA"
type: prompt-note
tool: chatgpt
phase: Phase1-Research
step: "04-Conceptual-Synthesis"
methodology: [Zettelkasten, PARA, GTD]
tags: [prompt, chatgpt, zettelkasten, permanent-notes, puma]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 🗒️ ChatGPT — Zettelkasten Note Generation for PUMA

**Tool**: ChatGPT (OpenAI)
**Phase**: Phase 1 — Research
**Step**: 04 — Conceptual Synthesis
**Methodology**: Zettelkasten + PARA integration

---

## Prompt A — Raw Notes to Zettelkasten Conversion

```
Role: Knowledge organization assistant applying the Zettelkasten method.

Context: I have raw research notes from reading papers on AI agents for project management. I need to convert them into the PUMA Obsidian vault Zettelkasten structure.

Instructions:
1. Classify each raw note into: (a) fleeting note, (b) literature note, (c) permanent note, (d) project note.
2. For permanent notes: write a declarative title (claims a single reusable insight), 3–5 sentence explanation, and link to 2–3 related concepts.
3. For literature notes: include author/year, one-paragraph summary, key quote (verified), and PUMA relevance.
4. For project notes: identify the PUMA phase (F0–F5), one next action, and one risk or dependency.
5. Assign each note to PARA category and Johnny Decimal number.

Format: Structured output per note. Each permanent note should stand alone without context.

Raw notes to process:
[PASTE RAW NOTES HERE]
```

## Prompt B — Synthesis → 10 Permanent Notes

```
From the research synthesis on AI agents for project management, generate 10 atomic permanent notes for the PUMA Zettelkasten. Requirements for each note:
- Title: declarative sentence claiming one reusable insight (not a question, not a description)
- Body: 3–5 sentences explaining the insight and its evidence base
- Links: 2–3 wikilinks to related Zettelkasten concepts
- Tags: relevant Obsidian tags
- PUMA application: one concrete way this insight informs PUMA's design

Format: One markdown block per note, ready to paste into Obsidian.
```

## Prompt C — GTD Task Extraction from Research

```
From my research synthesis on PUMA, extract all implied next actions and organize them using GTD:
1. Capture: list every task implied by the synthesis (papers to read, experiments to design, code to write, decisions to make).
2. Clarify: for each task, determine if it is actionable now or a someday/maybe item.
3. Organize: assign each action to: (a) PUMA project folder, (b) Research area, (c) Resource to acquire, (d) Archive.
4. Next Actions: identify the 5 most important next actions for today's session.

Format: GTD capture list → clarified tasks → organized by PARA category → today's 5 next actions.
```

## Prompt D — PARA Organization Prompt

```
Help me organize the following PUMA research materials into the PARA system:
- Literature PDFs (40 papers)
- Synthesis notes from NotebookLM
- Experimental design decisions
- Dataset download scripts
- Reference bibliography

For each item, classify as: Project (active, has deadline), Area (ongoing maintenance), Resource (reference material), Archive (completed/inactive). Assign a Johnny Decimal number (10-99 range). Explain why each classification makes sense for PUMA's workflow.
```

---

## PUMA Relevance

ChatGPT's strength in structured output generation makes it ideal for populating the Zettelkasten. The permanent notes generated here form the knowledge backbone of [[30 - Permanent/30 Zettelkasten-Hub/ZK-Hub-PUMA]] and connect through bidirectional links to the PUMA project notes.

---

## Related Notes

- [[30 - Permanent/30 Zettelkasten-Hub/ZK-Hub-PUMA]]
- [[60 - Resources/66 Johnny-Decimal-Index/JD-Master-Index]]
- [[20 - Inbox/GTD-Inbox]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
