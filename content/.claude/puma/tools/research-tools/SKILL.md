---
name: puma-research-tools
description: Reference for PUMA's research tool ecosystem — Semantic Scholar, ResearchRabbit, NotebookLM, Consensus, Researcher.life, Zotero, and AI assistants. Contains URLs, access protocols, and optimal prompts for each tool. Use when searching for papers, setting up research notebooks, conducting citation analysis, or choosing which tool to use for a specific research task.
---

# PUMA Research Tools — Ecosystem Reference

## Tool Selection Matrix

| Task | Best Tool | Secondary |
|------|-----------|-----------|
| Find papers on specific topic | Semantic Scholar | Google Scholar |
| Citation network expansion | ResearchRabbit | Connected Papers |
| Evidence-based search | Consensus | Semantic Scholar |
| Deep synthesis of corpus | NotebookLM | Claude |
| Finding related papers | ResearchRabbit | Semantic Scholar |
| Author & citation metrics | Semantic Scholar | Google Scholar |
| Bibliography management | Zotero | — |
| Real-time web search | Perplexity | Claude |
| Code + research assistant | Claude | — |
| Reading list management | Researcher.life | Zotero |

---

## 1. Semantic Scholar

**URL**: https://www.semanticscholar.org  
**Purpose**: Academic search with citation analysis and author profiles  
**Best for**: Finding papers, checking citation counts, author influence networks

### Key Features
- Open Access PDFs (when available)
- Citation velocity (papers with growing citations = trending research)
- Author profiles with h-index and publication history
- Related papers via citation/reference overlap
- API for programmatic access

### PUMA Search Protocol
```
Primary query:
"LLM agent" AND ("issue triage" OR "bug classification") AND "Jira"

Alternative queries:
- "story point estimation" AND "machine learning" AND "agile"
- "automated ticket triage" AND "software engineering"
- "LLM" AND "project management" AND "empirical evaluation"

Filters: Year range 2019–2026 | Venue: ICSE, FSE, ASE, MSR, TSE
```

---

## 2. ResearchRabbit

**URL**: https://app.researchrabbit.ai  
**PUMA folders**:
- Folder 1: https://app.researchrabbit.ai/folder-shares/d8244f17-47f7-4f6c-a589-473876578b54
- Folder 2: https://app.researchrabbit.ai/folder-shares/b6c00471-2f28-4c66-85f5-ab5399470228

**Purpose**: Citation network visualization and paper discovery  
**Best for**: "Snowballing" from seed papers; finding all related work

### PUMA Snowballing Protocol
1. Add 5 seed papers (most cited, most recent in area)
2. ResearchRabbit shows: "Also read" + "Cited by" + "References"
3. Expand 2 hops from seeds
4. Export promising papers → import to Zotero with `#puma-candidate` tag
5. Update PRISMA log with snowballing count

---

## 3. NotebookLM

**URL**: https://notebooklm.google.com  
**Purpose**: AI synthesis of curated PDF corpus  
**Best for**: Deep synthesis when you have a specific set of papers

### PUMA Notebooks

| Notebook | Purpose | Link |
|----------|---------|------|
| 1. AI Agents & Swarm Intelligence | Agent architecture synthesis | [Access](https://notebooklm.google.com/notebook/07a22c3a-f60a-4a82-8260-bf8236ca6855) |
| 2. Literature Discovery | Discovery phase notes | [Access](https://notebooklm.google.com/notebook/88c75743-be48-4432-9934-d1f8098dc4c5) |
| 3. Systematic Review | SLR screening support | [Access](https://notebooklm.google.com/notebook/9c7aa64a-99ae-46af-bc41-edf67adb7be6) |
| 4. Theoretical Framework | Framework synthesis | [Access](https://notebooklm.google.com/notebook/8e45222e-8b9a-4ab7-a7c2-c2dbcc855676) |
| 5. Hypothesis Generation | H₁/H₂ support | [Access](https://notebooklm.google.com/notebook/f59a9677-a0d0-4928-b8ad-39bf248f35f9) |
| 6. Experimental Design | Experiment planning | [Access](https://notebooklm.google.com/notebook/6828418c-32ec-4e30-9fe7-1050d4246b9e) |
| 7. Critical Analysis | Peer review simulation | [Access](https://notebooklm.google.com/notebook/f59a9677-a0d0-4928-b8ad-39bf248f35f9) |
| 8. Scientific Writing | Chapter drafting support | [Access](https://notebooklm.google.com/notebook/737b8d23-5601-4920-bbc0-f4de281d3be1) |

### Optimal NotebookLM Prompts
```
Synthesis: "Synthesize the key findings on [topic] across all sources. 
            Flag contradictions between papers."

Gap analysis: "What research questions related to [PUMA topic] are 
               NOT addressed by the papers in this notebook?"

Hypothesis check: "Does the evidence in these papers support or 
                   challenge the hypothesis that [H₁/H₂]?"
```

---

## 4. Consensus

**URL**: https://consensus.app  
**PUMA searches**: See VAULT-GUIDE for full list of 9 research step searches  
**Purpose**: Evidence-based academic search with AI answer synthesis

### When to use Consensus
- When you want a direct answer to a research question (not just papers)
- For checking if evidence supports a specific claim
- For finding contradictory findings

### PUMA Query Templates
```
"Does few-shot prompting improve LLM performance on text classification tasks?"
"What is the state of evidence for automated story point estimation accuracy?"
"How does chain-of-thought prompting affect LLM reasoning accuracy?"
```

---

## 5. Researcher.life (Discovery)

**URL**: https://discovery.researcher.life  
**PUMA reading lists**: See VAULT-GUIDE for 15 curated lists by research phase

**Purpose**: AI-powered research discovery and reading list curation  
**Best for**: Discovering papers by topic cluster, managing reading pipeline

---

## 6. Zotero

**URL**: https://www.zotero.org  
**PUMA Library**: https://www.zotero.org/pumacp/library  
**User ID**: 20166221  
**API**: https://api.zotero.org/users/20166221/items/top

**Purpose**: Bibliography management, PDF organization, citation export  
**Integration**: Obsidian Zotero Integration plugin (`Ctrl+Shift+Z`)

### Tagging Convention
```
#puma-candidate  → found in search, pending screening
#puma-screening  → currently being screened (Pass-1)
#puma-include    → passed screening, import to vault
#puma-exclude    → screened out (add exclusion reason)
#puma-key        → highly cited/relevant, priority Pass-3
```

### Zotero → Vault Workflow
1. Import paper to Zotero (connector or PDF drag)
2. Auto-fetch metadata (right-click → Retrieve Metadata)
3. Tag with `#puma-include` after screening
4. In Obsidian: `Ctrl+Shift+Z` → search citekey → import
5. File lands in `20-Literature/20.1-Papers/[Topic]/`

---

## 7. AI Research Assistants

### Claude (Anthropic)
- **Best for**: Research synthesis, writing, code, complex analysis
- **Session**: https://claude.ai/share/b3b80d43-d1bd-49ac-a067-53bd3d7c0f93
- **Use RCOIF**: Always structure prompts with RCOIF for research tasks

### Perplexity
- **Best for**: Real-time web search + academic sources
- **PUMA Space**: https://www.perplexity.ai/spaces/puma-6IpatdqAS_yOxg9j69qvAQ
- **Best for**: Finding recent papers, checking current status of tools

### Gemini (PUMA GEM)
- **Profile**: https://gemini.google.com/gem/1h-rxrzZagTsvX59_CGfaoDHjisJ48cz7
- **Best for**: Google Scholar integration, Drive access, multimodal

### ChatGPT
- **Session**: https://chatgpt.com/share/69d689d8-2150-8389-ab5d-3500e8c0b930
- **Best for**: Code generation, structured data processing

---

## 8. Google Drive (Papers Repository)

**URL**: https://drive.google.com/drive/folders/1TKbYhYqLIrq7liAPlSF7ztS2Bv0l7vZS  
**Purpose**: Centralized PDF storage for all PUMA papers  
**Rule**: All PDFs mirrored here for backup and sharing

---

## Tool Prompt Quick Reference

### Semantic Scholar → Find key papers
```
Search: "LLM agent issue triage empirical evaluation"
Filter: 2022–2026, ICSE/FSE/ASE/MSR/TSE
Sort: Citation count DESC (for foundational) or Date DESC (for latest)
```

### ResearchRabbit → Expand from seeds  
```
Seed papers: [Add 3–5 key papers]
→ View "Cited By" tab (2 hops)
→ Filter by year > 2020
→ Export → Zotero
```

### NotebookLM → Synthesize corpus
```
Upload: All #puma-include PDFs from relevant topic
Query: "What are the 5 most important findings about [topic]?"
Query: "What do these papers say about [specific claim in H₁/H₂]?"
```
