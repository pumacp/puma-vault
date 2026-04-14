---
name: puma-llm-wiki
description: Implements Andrej Karpathy's LLM Wiki pattern for the PUMA Vault — a persistent, compounding knowledge base where Claude incrementally builds and maintains interlinked markdown pages rather than re-deriving knowledge on every query. Use this skill for wiki ingest (adding new sources), wiki query (synthesizing answers from wiki pages), wiki lint (health-checking the wiki), and wiki maintenance (cross-referencing, contradiction flagging, orphan detection). Load whenever processing new papers, synthesizing research findings, or maintaining vault knowledge consistency. This is the core knowledge accumulation engine of PUMA.
---

# PUMA LLM Wiki — Persistent Knowledge Accumulation

## Core Concept (Karpathy, 2026)

The LLM Wiki pattern replaces stateless RAG with a **persistent, compounding artifact**:

- **RAG (old)**: re-derives knowledge from raw sources on every query. Nothing accumulates.
- **LLM Wiki (new)**: incrementally builds and maintains structured markdown pages. Knowledge compounds. The LLM writes and maintains the wiki; the human curates sources and asks questions.

> "The wiki is a persistent, compounding artifact. The cross-references are already there. The contradictions have already been flagged. The synthesis already reflects everything you've read."
> — Karpathy (2026), https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f

## PUMA Wiki Architecture (Three Layers)

### Layer 1 — Raw Sources (immutable)
Location: `20 - Literature/`
- Papers: `20.1-Papers/[Topic]/LN-Author-Year-Title.md`
- Books: `20.2-Books/`
- Datasets: `20.3-Datasets/`
- Videos: `20.4-Videos-Podcasts/YouTube/[Category]/VID-CAT-NNN.md`
- Repos: `20.5-Repos-Code/`
- Tools: `20.6-Tools/`

**Rule**: Raw sources are NEVER modified after creation. They are the immutable source of truth.

### Layer 2 — Wiki / Compiled Knowledge
Location: `30 - Permanent/` (Zettelkasten = wiki pages)
- `30-Zettelkasten-Hub/` — hub notes + index
- `31-Concepts/PN-*.md` — atomic concept pages
- `32-Methods/PN-*.md` — methodology pages
- `33-Frameworks/PN-*.md` — framework pages
- `34-Results/RES-*.md` — experiment results
- `36-Sources/SRC-*.md` — key source summaries
- `37-Persons/PER-*.md` — researcher profiles

**Rule**: Claude OWNS this layer. Claude creates pages, updates them, maintains cross-references, flags contradictions, and keeps everything consistent.

### Layer 3 — Schema / Configuration
Location: `.claude/puma/` (this skill library) + `CLAUDE.md` at vault root

**Rule**: Human co-evolves the schema with Claude over time.

## Special Index Files

Maintain these two files at all times:

### `30 - Permanent/30-Zettelkasten-Hub/ZK-Hub-PUMA.md` (content index)
- Lists every permanent note with link, one-line summary, and tags
- Organized by category (concepts, methods, frameworks, results, sources, persons)
- Updated on every ingest operation
- Used by Claude to find relevant pages before drilling into them

### `50 - Areas/51-Research/AI-Use-Log.md` (chronological log)
- Append-only record of all Claude interactions
- Format: `## [YYYY-MM-DD] operation | description`
- Enables `grep "^## \[" AI-Use-Log.md | tail -10` for recent history

## Operations

### INGEST (adding a new source)

When user adds a new paper/source:

1. **Read** the source (Keshav Pass-1 minimum)
2. **Discuss** key takeaways with user
3. **Create** literature note `LN-Author-Year-Title.md` in appropriate `20.1-Papers/[Topic]/`
4. **Update** `20 - Literature/MOC-Library.md`
5. **Identify** which permanent notes in `30 - Permanent/` this source touches
6. **Update** those permanent notes (add new evidence, note contradictions, strengthen links)
7. **Create** new permanent notes if new concepts emerge
8. **Update** `ZK-Hub-PUMA.md` index
9. **Append** to `AI-Use-Log.md`: `## [date] ingest | Author-Year: Title`

A single source may touch 5–15 wiki pages. That's expected and correct.

### QUERY (answering research questions)

1. Read `ZK-Hub-PUMA.md` to identify relevant pages
2. Load those specific permanent notes
3. Synthesize answer with [[wikilinks]] to sources
4. **File the answer back** as a new permanent note or MOC entry if valuable
5. Cross-references already exist — use them

### LINT (wiki health check)

Run periodically (every 10+ new sources or weekly):

Check for:
- **Contradictions**: pages with conflicting claims → create `[!contradiction]` callouts
- **Orphan pages**: permanent notes with no inbound links → link or merge
- **Stale claims**: newer sources that supersede older wiki content → update
- **Missing pages**: important concepts mentioned but lacking their own PN- page
- **Missing cross-references**: pages that should link to each other but don't
- **Data gaps**: topics worth a web search to fill

### SYNTHESIS (compiling research output)

When asked to synthesize research findings:
1. Read relevant MOC pages in `80 - MOC/`
2. Read relevant permanent notes in `30 - Permanent/`
3. Draft synthesis — file it back as a new PN- or ST- note
4. Link to source notes with [[wikilinks]]
5. Update the relevant MOC

## Integration with PUMA Methodologies

The LLM Wiki pattern integrates with:

| Methodology | Integration Point |
|-------------|-------------------|
| **Zettelkasten** | Permanent notes ARE the wiki pages |
| **Keshav Three-Pass** | Pass-3 triggers wiki updates |
| **PARA** | Raw sources → `20 Literature`; Wiki → `30 Permanent` |
| **GTD** | Weekly lint pass in GTD review |
| **MOC** | MOC pages serve as wiki navigation |
| **SDD** | Specs in `41.6 Specs/` are wiki-derived artifacts |
| **BMAD** | Agent roster informed by wiki knowledge |
| **CDD** | Context window fed from wiki, not raw sources |

## Semantic Note-Taking (wiki writing style)

When creating or updating wiki pages:
- Title = declarative statement about a finding (not a topic label)
  - ✅ `PN-Few-Shot-CoT-Outperforms-ZeroShot-On-Triage.md`
  - ❌ `PN-Prompting.md`
- One idea per note (atomic)
- Link to sources with `[[LN-Author-Year]]`
- Link to related permanent notes with `[[PN-RelatedConcept]]`
- Use `[!contradiction]` callouts for conflicting evidence
- Use `[!update]` callouts when newer evidence supersedes a claim

## AI-Driven Concept Mapping

When asked to "map" a concept space:
1. Read all PN- notes tagged with the relevant concept
2. Identify clusters, contradictions, and gaps
3. Create or update the relevant MOC in `80 - MOC/`
4. Suggest new permanent notes to fill gaps
5. Optionally generate a Mermaid diagram of the concept graph

## Cognitive Offloading Protocol

The vault offloads cognitive load from the researcher:
- **Offload memory**: all facts go into notes, not researcher's head
- **Offload cross-referencing**: wiki maintains links automatically
- **Offload contradiction tracking**: `[!contradiction]` callouts flag conflicts
- **Offload recency tracking**: `log.md` shows what changed recently
- **Retain judgment**: researcher decides what matters, what to investigate

## Tips

- Use Obsidian Web Clipper to convert web articles to markdown → drop in `10 - Inbox/`
- Obsidian graph view shows wiki shape — hub pages, orphans, clusters
- Good answers to queries should be filed back as permanent notes
- Lint passes keep the wiki healthy as it grows
- The wiki is a git repo — version history is free
