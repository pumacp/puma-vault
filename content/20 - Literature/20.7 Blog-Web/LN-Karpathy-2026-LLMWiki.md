---
type: literature
title: "LLM Wiki: Personal Knowledge Base Pattern"
authors: ["Karpathy, Andrej"]
first-author: "Karpathy"
year: 2026
status: reviewed
topic: knowledge-management
relevance: 5
citekey: "@Karpathy2026LLMWiki"
venue: "GitHub Gist (web)"
arxiv: ""
doi: ""
url: "https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f"
tags: [literature, knowledge-management, llm-wiki, rag-alternative, persistent-wiki, obsidian, markdown, agent-memory, karpathy, puma-core, blog-gist, agents, architecture, context-engineering, zettelkasten, knowledge-graph, retrieval, compounding-knowledge, ai-tools, research-tools, literature-note, moc]
created: 2026-04-14
updated: 2026-04-14
keshav-pass: 2
---

# LN: Karpathy (2026) — LLM Wiki: Personal Knowledge Base Pattern

> [!cite] Bibliographic Reference
> **Citation**: Karpathy, A. (2026). *LLM Wiki: Personal knowledge base pattern*. GitHub Gist. https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f
> **Related video**: *Karpathy Just Replaced RAG With Obsidian + OpenCode* — [[20 - Literature/20.4 Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-001-Karpathy-Just-Replaced-RAG-With-Obsidian--Cl]]

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Pattern description / practitioner framework |
| **Context** | Andrej Karpathy (co-founder of OpenAI, creator of nanoGPT, micrograd, llm.c) publishes a design pattern for LLM-maintained persistent knowledge bases as an alternative to standard RAG |
| **Correctness** | Practitioner-authored; no formal peer review, but grounded in Karpathy's deep LLM engineering expertise and widely validated in community practice |
| **Contributions** | (1) Names and formalises the "LLM Wiki" pattern; (2) Proposes three-layer architecture (sources → wiki → schema); (3) Defines three operations (ingest, query, lint); (4) Frames LLMs as knowledge-base *maintainers* rather than just retrievers |
| **Clarity** | Excellent. Intentionally abstract — describes the pattern, not the implementation. Readers adapt to their domain. |

> [!success] Relevance: ⭐⭐⭐⭐⭐
> The LLM Wiki pattern is the conceptual basis of the PUMA Obsidian vault itself: this vault is a human-curated, LLM-assisted wiki where OpenCode reads, synthesises, and updates interconnected markdown files — exactly as Karpathy describes.

---

## Pass 2 — Content

### The Core Idea

> [!abstract] Central Claim
> Rather than re-synthesising raw documents on every query (RAG), the LLM **incrementally builds and maintains a persistent wiki** — a structured, interlinked collection of markdown files. The wiki is a compiled artefact that compounds over time.

The key insight:

> *"The tedious part of maintaining a knowledge base is not the reading or the thinking — it's the bookkeeping."*

LLMs excel at the maintenance work humans abandon: updating cross-references, maintaining consistency across dozens of interconnected pages, surfacing contradictions, filing new insights in the right places.

---

### Three-Layer Architecture

```
┌─────────────────────────────────────────────────┐
│  Layer 3: Schema (CLAUDE.md / config document)  │
│  Tells the LLM HOW to maintain the wiki         │
├─────────────────────────────────────────────────┤
│  Layer 2: The Wiki (LLM-generated .md files)    │
│  Interconnected pages, maintained by LLM        │
├─────────────────────────────────────────────────┤
│  Layer 1: Raw Sources (immutable documents)     │
│  Articles, papers, images, data files           │
└─────────────────────────────────────────────────┘
```

| Layer | Description | Mutability |
|-------|-------------|-----------|
| **Raw sources** | Curated documents the user adds: articles, papers, images, data files, web clips | Immutable — sources are never edited by the LLM |
| **The wiki** | LLM-generated and LLM-maintained markdown files: entity pages, concept pages, synthesis pages | Mutable — LLM updates, rewrites, cross-links |
| **The schema** | Configuration document (e.g., `CLAUDE.md`) defining wiki structure, page types, naming conventions, and operational workflows | Human-maintained |

---

### The Three Operations

#### 1. Ingest

When a new source is added to the raw sources layer:

1. LLM reads and digests the new source
2. Identifies which existing wiki pages are affected (typically 10–15)
3. Writes a short summary page for the source itself
4. Updates entity/concept pages with new information
5. Updates the `index.md` catalog entry
6. Appends a new entry to `log.md`
7. Flags any contradictions with existing content

> [!info] Key property
> Each source is processed **once**. The wiki accumulates value over time — unlike RAG which re-processes sources on every query.

#### 2. Query

When the user asks a question:

1. LLM searches relevant wiki pages (not raw sources)
2. Synthesises an answer with citations pointing to wiki pages
3. Identifies gaps — facts that are not yet in the wiki
4. Optionally files valuable query responses back as new wiki pages (compounding)

The query operation has a **side effect**: good answers become new wiki entries, enriching the knowledge base for future queries.

#### 3. Lint

Periodic health-check of the wiki:

- Detect **contradictions** between pages
- Flag **stale claims** that may have been superseded
- Identify **orphan pages** with no incoming links
- Surface **missing cross-references** between related concepts
- Report **data gaps** where the wiki lacks coverage

---

### Supporting Infrastructure Files

| File | Purpose |
|------|---------|
| `index.md` | Content-oriented catalog of all wiki pages, organised by category with links and one-line summaries |
| `log.md` | Append-only chronological record of all operations; entries prefixed with parseable format, e.g. `## [2026-04-02] ingest \| Article Title` |

The log enables **auditability**: any change to the wiki can be traced to a specific ingest or query event.

---

### Optional Tooling Mentioned

| Tool | Role |
|------|------|
| **qmd** | Local markdown search engine with BM25/vector search and LLM re-ranking — enables semantic search over wiki at scale |
| **Obsidian Web Clipper** | Convert web articles to markdown for inclusion in raw sources layer |
| **Obsidian graph view** | Visualise connections and topology of wiki pages |
| **Marp** | Markdown-based slide deck format — wiki pages can be compiled into presentations |
| **Dataview** | Obsidian plugin for querying frontmatter with YAML — enables structured queries over wiki metadata |

---

### Use Cases

| Domain | Application |
|--------|------------|
| **Personal** | Goals, health, psychology, self-improvement tracking |
| **Research** | Deep topic investigation over weeks/months — exactly the PUMA use case |
| **Reading** | Chapter-by-chapter filing with character/theme/plot cross-references |
| **Business/team** | Internal wikis fed by Slack transcripts, meeting notes, documents |
| **Competitive analysis** | Tracking competitor moves, product changes, market signals |
| **Due diligence** | Building structured knowledge during investment or hiring evaluations |
| **Trip planning / hobby deep-dives** | Domain-specific structured research |

---

### Historical Lineage: The Memex Connection

Karpathy connects the LLM Wiki to **Vannevar Bush's 1945 Memex** concept:

> *"A personal, curated knowledge store with associative trails between documents."*

Bush's vision was unrealisable in 1945 — he could imagine associative trails between documents but had no mechanism to *maintain* them. The LLM Wiki solves exactly the maintenance problem: LLMs handle the bookkeeping that humans abandon.

---

### Why LLM Wiki Outperforms Standard RAG

| Dimension | Standard RAG | LLM Wiki |
|-----------|-------------|---------|
| **Query processing** | Retrieve → synthesise raw docs each time | Retrieve pre-synthesised wiki pages |
| **Knowledge accumulation** | Stateless — no compounding | Compounding — each ingest enriches the base |
| **Cross-references** | None — documents are independent | Explicit — LLM maintains links between pages |
| **Contradiction handling** | Silent — RAG merges conflicting docs | Active — lint operation flags contradictions |
| **Query latency** | Higher — raw doc processing | Lower — structured wiki pages |
| **Maintenance burden** | Human must curate source quality | LLM handles consistency; human curates sources |
| **Auditability** | Hard — which docs influenced what? | Full — log.md traces every change |

> [!warning] When RAG still wins
> RAG remains better when: (1) sources change frequently (news, live feeds); (2) exact provenance to raw text is legally required; (3) the knowledge base is too large to maintain page-by-page.

---

## PUMA Integration

### The PUMA Vault IS an LLM Wiki

The PUMA Obsidian vault implements the LLM Wiki pattern with OpenCode as the LLM maintainer:

| Karpathy's Layer | PUMA Equivalent |
|-----------------|-----------------|
| Raw sources | PDF papers, arXiv preprints, Zotero library, YouTube transcripts |
| The wiki | `20 - Literature/`, `30 - Permanent/`, `40 - Projects/` markdown files |
| Schema | `CLAUDE.md` + `.claude/` skills + puma-core / puma-orchestrator skills |
| `index.md` | `00 - Home.md` + `80 - MOC/` navigation layer |
| `log.md` | `50 - Areas/51 Research/AI-Use-Log.md` (PRISMA-trAIce) |
| Ingest | Literature note creation (Keshav Three-Pass) |
| Query | Research synthesis sessions with OpenCode |
| Lint | Vault formatting sessions — duplicate detection, callout repair, orphan link cleanup |

### PUMA Enhancements Over the Base Pattern

PUMA extends the LLM Wiki with additional structure:

1. **PARA + Johnny Decimal**: Hierarchical folder organisation (00–90) instead of flat wiki
2. **Keshav Three-Pass**: Structured ingest protocol for academic papers (5 Cs, content, virtual reconstruction)
3. **Zettelkasten permanent notes**: Atomic concept pages in `30 - Permanent/` — exactly Karpathy's "entity/concept pages"
4. **MOCs**: Maps of Content as high-level index pages — exactly Karpathy's `index.md`
5. **Marco Veritas**: Audit protocol for all LLM-assisted updates — extends Karpathy's `log.md` with academic integrity requirements
6. **PRISMA-trAIce**: Formal logging of AI-assisted operations — extends `log.md` with research compliance

### SmartPMO Application (Stage 5)

The LLM Wiki pattern directly informs the PUMA SmartPMO persistent agent design:

- **Per-project wiki**: Each software project gets a wiki of issue patterns, team velocity data, sprint retrospectives
- **Ingest**: Each new Jira issue update triggers wiki page updates (team notes, recurring pattern pages)
- **Query**: PM asks "What are the recurring authentication issues in this project?" → wiki answers from accumulated history
- **Lint**: Weekly health-check — contradictions between sprint goals and actual deliverables flagged automatically

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]] — RAG as the alternative the LLM Wiki improves upon
- [[30 - Permanent/31 Concepts/PN-GenerativeAgents-Simulacra]] — memory stream architecture (complementary persistent memory approach)
- [[30 - Permanent/33 Frameworks/PN-PARA-GTD-Zettelkasten]] — PARA + Zettelkasten as PUMA's wiki structure
- [[30 - Permanent/31 Concepts/PN-ActiveReading-CognitivePractice]] — cognitive offloading — LLM Wiki as cognitive extension
- [[30 - Permanent/33 Frameworks/PN-Veritas-Framework]] — Marco Veritas as PUMA's `log.md` equivalent
- [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] — PRISMA-trAIce as structured ingest log
- [[20 - Literature/20.4 Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-001-Karpathy-Just-Replaced-RAG-With-Obsidian--Cl]] — video discussion of same concept
- [[50 - Areas/51 Research/AI-Use-Log]] — PUMA's `log.md` implementation
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]] — PUMA's `index.md` equivalent
- [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]] — SmartPMO using LLM Wiki for project memory

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
