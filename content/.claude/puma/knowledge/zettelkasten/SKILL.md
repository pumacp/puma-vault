---
name: puma-zettelkasten
description: Zettelkasten and LLM Wiki protocols for PUMA — atomic note creation, permanent note principles, Zettelkasten Hub rules, and integration with the LLM Wiki pattern. Use when creating permanent notes (PN-), structure notes (ST-), or maintaining the ZK hub. Also governs note linking, declarative titles, and the literature→permanent note pipeline. Essential for knowledge management and research synthesis in the PUMA vault.
---

# PUMA Zettelkasten — Atomic Knowledge Management

## Core Principle

**One note = one idea.** Permanent notes are atomic, densely-linked, and permanently located. They are the intellectual core of the PUMA vault — the compiled knowledge layer in Karpathy's LLM Wiki architecture.

## Note Lifecycle

```
Fleeting note (FL-) → Literature note (LN-) → Permanent note (PN-)
     10-Inbox           20-Literature          30-Permanent
     
                    Also possible:
Literature note → [Keshav Pass-3] → Multiple PN- notes
```

## Permanent Note Creation Protocol

### Trigger conditions
Create a new PN- when:
- Keshav Pass-3 reveals a key insight worth preserving
- A concept appears in 3+ papers and deserves synthesis
- A novel connection between two existing concepts is found
- An experiment produces a result worth preserving as a finding

### Title rules (mandatory)
- Titles MUST be **declarative statements** (truth claims)
- ✅ `PN-FewShot-Outperforms-ZeroShot-On-TAWOS-Triage.md`
- ✅ `PN-Local-LLMs-At-3B-Params-Viable-For-Classification.md`
- ❌ `PN-Few-Shot-Prompting.md` (topic label, not declarative)
- ❌ `PN-Results.md` (too vague)

### Mandatory frontmatter
```yaml
---
title: "PN - [Declarative statement about the idea]"
type: PN
status: "draft | stable | evergreen"
tags: [puma, concept-tag, method-tag]
created: YYYY-MM-DD
updated: YYYY-MM-DD
jd: "30.31"  # or 30.32, 30.33, 30.34...
related: 
  - "[[LN-source-paper]]"
  - "[[PN-related-concept]]"
contradicts:
  - "[[PN-contradicting-note]]"  # if applicable
moc: "[[MOC-relevant-map]]"
---
```

### Note body structure
```markdown
# [Declarative Title]

[1–3 paragraph statement of the idea. No hedging. Make the claim clearly.]

## Evidence
- [[LN-Author-Year]]: [specific supporting evidence]
- [[LN-Author-Year]]: [supporting evidence from different paper]

## Connections
- Supports: [[PN-related-note]] because [reason]
- Challenges: [[PN-other-note]] because [reason]
- Extends: [[PN-foundation-note]] by [mechanism]

## PUMA Relevance
[How does this note connect to PUMA's research questions?]
[What does this mean for H₁ or H₂?]

## Open Questions
- [Unresolved question this note raises]
```

## Note Types in 30 — Permanent

| Location | Type | Purpose |
|----------|------|---------|
| `30-Zettelkasten-Hub/` | ZK-Hub, ST- | Navigation + structure |
| `31-Concepts/` | PN- | Atomic concept notes |
| `32-Methods/` | PN- | Methodology notes |
| `33-Frameworks/` | PN- | Framework notes |
| `34-Results/` | RES- | Experiment results |
| `36-Sources/` | SRC- | Key source summaries |
| `37-Persons/` | PER- | Researcher profiles |

## Structure Notes (ST-)

Structure notes serve as **local MOCs** within the Zettelkasten. They are non-atomic by design — they gather related permanent notes into a thematic cluster.

```markdown
---
title: "ST - [Theme Name]"
type: ST
---

# [Theme Name] — Structure Note

[Brief overview of this cluster]

## Core Claims
- [[PN-central-note-1]]: [one-line summary]
- [[PN-central-note-2]]: [one-line summary]

## Peripheral Notes
- [[PN-related-note]]: [one-line summary]

## Contradictions in This Cluster
- [[PN-claim-A]] vs. [[PN-claim-B]]: [nature of contradiction]

## Open Questions
- [Research gap this cluster reveals]
```

## Zettelkasten Hub (ZK-Hub-PUMA.md)

Location: `30-Permanent/30-Zettelkasten-Hub/ZK-Hub-PUMA.md`

This is the **index.md** of the PUMA wiki layer. Update after every ingest.

```markdown
# ZK Hub — PUMA Master Index

Last updated: YYYY-MM-DD | Total notes: NNN

## Concepts (31)
| Note | Summary | Tags |
|------|---------|------|
| [[PN-CoT-FewShot-Prompting]] | Few-shot CoT improves estimation | prompting, cot |

## Methods (32)
| Note | Summary | Tags |
|------|---------|------|
| [[PN-DSR-SLR-Methods]] | DSR + PRISMA for PUMA research | dsr, slr |

## Frameworks (33)
...

## Results (34)
...
```

## Linking Protocol

When creating a new PN-:
1. Search ZK-Hub for potentially related notes
2. Add `related:` frontmatter links
3. Open each related note and add a backlink
4. Update the relevant ST- (structure note) or MOC
5. Check for contradictions → add `[!contradiction]` callouts

## Evergreen vs. Draft Notes

| Status | Meaning | Action |
|--------|---------|--------|
| `draft` | First pass, may be incomplete | Review within 1 week |
| `stable` | Complete, well-linked, reviewed | Maintain links only |
| `evergreen` | Foundational, unlikely to change | Promote to MOC hub |

## Anti-Patterns (See puma-anti-patterns for full list)

- ❌ Topic-label titles (not declarative)
- ❌ Notes longer than 500 words (break into atomic notes)
- ❌ Notes with no links to other notes
- ❌ Moving permanent notes (only add links)
- ❌ Deleting permanent notes (archive instead)
- ❌ Duplicating content across notes (link instead)

## Integration with LLM Wiki

The Zettelkasten IS the wiki layer in PUMA's LLM Wiki architecture:
- PN- notes = wiki pages
- ZK-Hub = index.md
- ST- notes = section pages
- AI-Use-Log = log.md
- MOC = navigation overlay

When Claude processes a new source:
- Updates existing PN- notes with new evidence
- Creates new PN- notes for novel concepts
- Updates ZK-Hub index
- Logs the ingest operation
