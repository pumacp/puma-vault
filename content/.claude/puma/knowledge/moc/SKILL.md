---
name: puma-moc
description: Map of Content (MOC) creation and maintenance for PUMA Vault — the semantic navigation layer over the Zettelkasten. Use when creating new MOC files (MOC-), updating existing maps after adding permanent notes, building topic navigation for the vault, or generating AI-Driven Concept Maps. MOC notes are the primary discovery surface for the vault — they replace folders as the main organizational paradigm at the semantic level. Load when asked to navigate, synthesize, or map any research territory in PUMA.
---

# PUMA MOC — Maps of Content

## What is a MOC?

A Map of Content is a **navigable index of related notes** organized by topic or theme. MOCs are not containers (no notes "live" in them) — they are semantic connectors that gather links to related notes from across the vault.

MOCs serve as:
- Navigation hubs for large topic clusters
- Synthesis surfaces for research territories
- Wiki "section pages" in the LLM Wiki architecture
- AI-Driven Concept Maps that reveal structure in the knowledge base

## MOC Taxonomy in PUMA

Location: `80 - MOC/`

```
80 - MOC/
├── 81-Topic-Maps/          # Research domain MOCs
│   ├── MOC-PUMA-Master.md  # Top-level navigation
│   ├── MOC-LLM-Agents.md
│   ├── MOC-Prompting-Strategies.md
│   ├── MOC-Benchmarks.md
│   ├── MOC-Research-Methods.md
│   └── MOC-Tools-Ecosystem.md
├── 82-Method-Maps/         # Methodology MOCs
│   ├── MOC-Knowledge-Management.md
│   └── MOC-Agent-Frameworks.md
└── 83-Project-Maps/        # Project-level MOCs
    └── MOC-PUMA-Chapters.md
```

Also present in relevant sections:
- `20 - Literature/MOC-Library.md` — literature MOC
- `20 - Literature/20.1-Papers/MOC-Paper-and-Article-Notes.md`
- `20 - Literature/20.2-Books/MOC-Books.md`

## MOC File Structure

```markdown
---
title: "MOC - [Topic Name]"
type: MOC
status: "active | archived"
tags: [puma, moc, topic-tag]
created: YYYY-MM-DD
updated: YYYY-MM-DD
jd: "80.81"
---

# [Topic Name] — Map of Content

> [One-sentence description of what this MOC covers]

## Overview
[2–3 paragraphs contextualizing this topic within PUMA research.
What is the research territory? What are the key tensions or questions?]

## Core Concepts
- [[PN-central-concept-1]] — [one-line description]
- [[PN-central-concept-2]] — [one-line description]
- [[PN-central-concept-3]] — [one-line description]

## Methods & Frameworks
- [[PN-method-1]] — [one-line description]
- [[PN-framework-1]] — [one-line description]

## Key Papers
- [[LN-Author-Year-Title]] — [finding in one line]
- [[LN-Author-Year-Title]] — [finding in one line]

## Experimental Results
- [[RES-result-note]] — [result summary]

## Open Questions / Research Gaps
- [Gap 1]: [description]
- [Gap 2]: [description]

## Related MOCs
- [[MOC-related-topic]] — [relationship]

## Recently Updated
[Auto-updated by Dataview or manually — list notes updated in last 30 days]
```

## MOC Creation Protocol

### When to create a new MOC
- A topic has ≥5 permanent notes referencing it
- A new research area is being explored (new SLR phase)
- A chapter of the TFG needs a navigation hub
- A methodology cluster needs synthesis

### Creation steps
1. Identify the topic and its boundaries
2. Search vault for all relevant PN-, LN-, EX- notes using tags
3. Create `MOC-[Topic].md` in appropriate `80-MOC/` subfolder
4. Link all relevant notes in the appropriate sections
5. Add the MOC link to `MOC-PUMA-Master.md`
6. Update `ZK-Hub-PUMA.md` entry for the new MOC

## MOC Maintenance Protocol

After any ingest (new paper/note added):
1. Identify which MOCs the new note touches
2. Add the new note link to those MOCs
3. Update MOC `updated:` frontmatter date
4. If a new topic cluster is forming (≥3 orphan notes on same theme) → create new MOC

## AI-Driven Concept Mapping

Use Claude to generate MOC structure from a set of notes:

```
ROLE: Research synthesizer for software engineering and AI agents
CONTEXT: PUMA investigates LLM agents for issue triage and effort estimation
OBJECTIVE: Create a Map of Content for the topic: [TOPIC]
INSTRUCTIONS:
1. Analyze all notes tagged [[topic-tag]] (provided below)
2. Identify: (a) 3–5 central concepts, (b) key tensions/contradictions, 
   (c) unresolved research gaps, (d) connections to PUMA hypotheses
3. Generate MOC structure with all notes linked appropriately
FORMAT: Markdown MOC file following PUMA MOC template
```

## MOC Navigation Pattern (PARA integration)

MOCs bridge PARA sections:
- Literature (`20`) → MOC → Permanent (`30`) → Project (`40`)
- A paper in `20` links to its literature note
- The LN- links to permanent notes (PN-)  
- The PN- appears in a MOC (`80`)
- The MOC links to a project chapter (`40`)

This chain ensures every source eventually connects to research output.

## Dataview Queries for Dynamic MOCs

Add to MOC files for auto-updating lists:

```dataview
TABLE file.mtime as "Updated", tags as "Tags"
FROM "30 - Permanent"
WHERE contains(tags, "llm-agents")
SORT file.mtime DESC
LIMIT 10
```

```dataview
LIST
FROM "20 - Literature/20.1-Papers"
WHERE status = "to-read"
SORT file.ctime ASC
```

## MOC Quality Checklist

- [ ] MOC has a clear scope (not too broad, not too narrow)
- [ ] All linked notes actually exist
- [ ] At least one connection to MOC-PUMA-Master
- [ ] Open questions section populated
- [ ] Updated date is current
- [ ] Added to ZK-Hub-PUMA.md index
