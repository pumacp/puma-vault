---
id: LN-Tools-Research
title: "Research Tools — Academic Discovery & Management"
type: literature-note
subtype: tool-collection
tags: [tool, research, perplexity, consensus, elicit, zotero, semantic-scholar, connected-papers]
puma_role: "Literature discovery, screening, management, citation network analysis"
puma_phase: "F0, F1"
created: 2026-03-01
---

# Research Tools — Academic Discovery & Management

> Overview of all research tools used in the PUMA literature review pipeline (F0 Initiation).

---

## 🔍 Search & Discovery

### Google Scholar
- **URL:** scholar.google.com
- **Best for:** Broad coverage, citation counts, related articles
- **PUMA use:** Initial broad search, finding seminal papers
- **Search tip:** Use `"LLM" "project management" "benchmark" after:2022`

### arXiv
- **URL:** arxiv.org (cs.SE, cs.AI, cs.LG)
- **Best for:** Preprints, latest research (often 6-12 months ahead of conferences)
- **PUMA use:** Finding cutting-edge papers not yet in IEEE/ACM
- **Search tip:** `ti:LLM AND ti:benchmark AND ti:"software engineering"`

### Semantic Scholar
- **URL:** semanticscholar.org
- **Best for:** Semantic search, paper recommendations, citation graphs, free API
- **PUMA use:** Finding papers similar to CoGEE, TAWOS papers
- **API:** `https://api.semanticscholar.org/graph/v1/paper/search`

### IEEE Xplore
- **URL:** ieeexplore.ieee.org
- **Best for:** Conference papers (ICSE, MSR, ICSME, SANER)
- **PUMA use:** Finding empirical SE papers with rigorous methodology

### ACM Digital Library
- **URL:** dl.acm.org
- **Best for:** ACM conferences (FSE, ISSTA, ASE, ESEC)
- **PUMA use:** Accessing CoGEE (EASE 2024) and related papers

### ResearchGate
- **URL:** researchgate.net
- **Best for:** Requesting full-text from authors, finding grey literature
- **PUMA use:** When papers are behind paywalls

### Anna's Archive
- **URL:** annas-archive.org
- **Best for:** Accessing books and papers unavailable elsewhere
- **PUMA use:** Accessing textbooks (Flyvbjerg & Gardner, Wohlin et al.)

### O'Reilly Online Learning
- **URL:** learning.oreilly.com
- **Best for:** Technical books, hands-on guides
- **PUMA use:** LLM engineering books, Python data science references

---

## 🤖 AI-Assisted Research Tools

### Perplexity AI
- **URL:** perplexity.ai
- **Model:** Sonar (web-grounded)
- **Best for:** Current state-of-the-art queries, quick paper discovery with citations
- **PUMA use:** F0 panoramic mapping of PM+LLM landscape
- **Key prompt:** [[60 - Resources/61 Prompts/61.2 Research-Tools/PT-Perplexity-State-of-Art]]
- **⚠️ Validation rule:** Every citation from Perplexity MUST be verified in primary source before use

### Perplexity Comet
- **Best for:** Deeper research with more web sources
- **PUMA use:** Finding reproducibility statistics for LLM SE papers

### Consensus
- **URL:** consensus.app
- **Best for:** Evidence-based questions ("Does few-shot prompting improve classification?")
- **PUMA use:** Validating assumptions about CoT and few-shot effectiveness
- **Key prompt:** [[60 - Resources/61 Prompts/61.2 Research-Tools/PT-Consensus-Evidence]]

### Elicit
- **URL:** elicit.com
- **Best for:** SLR screening, structured paper analysis, data extraction
- **PUMA use:** PRISMA abstract screening, extracting metrics from papers
- **Key prompt:** [[60 - Resources/61 Prompts/61.2 Research-Tools/PT-Elicit-SLR-Screening]]

---

## 🕸️ Citation Network Tools

### Connected Papers
- **URL:** connectedpapers.com
- **Best for:** Visual citation network, finding related papers in graph form
- **PUMA use:** Starting from CoGEE → find adjacent benchmark papers

### Research Rabbit
- **URL:** researchrabbitapp.com
- **Best for:** Collection management, "more like this", author networks
- **PUMA use:** Building the PUMA paper collection iteratively

### Litmaps
- **URL:** litmaps.com
- **Best for:** Citation timeline visualization, identifying seminal papers
- **PUMA use:** Mapping the evolution of PM+LLM research 2019–2026

---

## 📚 Reference Management

### Zotero
- **URL:** zotero.org
- **PUMA use:** Primary reference manager for all 40+ papers
- **Key features used:** 
  - Group library: "PUMA-Project"
  - Tags: `#puma-include`, `#puma-exclude`, `#puma-pending`, `#seminal`, `#dataset`
  - Better BibTeX plugin for APA 7th export
  - Zotero → Obsidian integration via citation plugin
- **Organisation strategy:** [[60 - Resources/61 Prompts/61.2 Research-Tools/PT-Zotero-Organisation]]

### Mendeley
- **URL:** mendeley.com
- **PUMA use:** Secondary backup, PDF annotation when Zotero unavailable

---

## 📝 Knowledge Base Tools

### NotebookLM (Google)
- **URL:** notebooklm.google.com
- **Best for:** Multi-paper knowledge base, Q&A over uploaded PDFs
- **PUMA use:** Upload core 10-15 papers, query for cross-paper synthesis
- **⚠️ Validation rule:** Every relationship NotebookLM identifies must be verified in source papers
- **Key prompt:** [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-NotebookLM-Paper-Corpus]]

### AnythingLLM
- **URL:** anythingllm.com (local deployment)
- **Best for:** Local RAG over personal document collection
- **PUMA use:** Local knowledge base with Qdrant or ChromaDB backend
- **Key prompt:** [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-AnythingLLM-Local-RAG]]

---

## 🔗 Related Notes

[[60 - Resources/61 Prompts/61.2 Research-Tools/PT-AcademicDB-Search-Strings]]
[[60 - Resources/62 Workflows/WF-SLR-Pipeline]]
[[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]]
