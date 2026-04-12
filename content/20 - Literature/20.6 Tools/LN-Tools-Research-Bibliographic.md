---
id: LN-Tools-Research-Bibliographic
title: "🔍 Tools — Research Discovery & Bibliographic Management"
type: literature-tools
tags: [tools, research, bibliography, slr, zotero, semantic-scholar, puma]
created: 2026-04-06
updated: 2026-04-06
phase: [F0, F1, F5]
---

# 🔍 Tools — Research Discovery & Bibliographic Management

> All tools used in PUMA's Systematic Literature Review (OE1: ≥40 references) and bibliography management.
> **Marco Veritas** applies: every reference obtained via AI tools is verified in primary source before inclusion.

---

## Primary Search Engines

### Google Scholar
- **URL**: https://scholar.google.com
- **Function**: Universal academic search engine; citation tracking; citation count and h-index verification
- **Phase**: F0 – continuous
- **PUMA use**: Primary initial search for PM+LLM papers; verifying citation counts of key references; finding citing/cited-by chains
- **Justification**: Indispensable base for any SE literature review; free access to millions of indexed publications

### arXiv
- **URL**: https://arxiv.org
- **Function**: Open-access preprint repository for CS, AI, mathematics, and statistics
- **Phase**: F0 – continuous
- **PUMA use**: Primary source for frontier AI Agent, LLM, and multi-agent system papers; most PUMA core papers (ReAct, MetaGPT, AutoGen, etc.) retrieved here
- **Justification**: Immediate publication without paywall; all PUMA's experimental model papers (Llama, Mistral) are arXiv preprints

### Semantic Scholar
- **URL**: https://www.semanticscholar.org
- **Function**: AI-powered academic search with semantic recommendation and citation graph
- **Phase**: F0 – F1
- **PUMA use**: Discovering related work via semantic similarity (not just keyword match); verifying author affiliations; identifying influential papers by field
- **Justification**: Semantic discovery reveals relevant papers that keyword search misses; critical for finding Cinkusz 2025, Assalaarachchi 2026

### IEEE Xplore
- **URL**: https://ieeexplore.ieee.org
- **Function**: IEEE/IET digital library; technical standards and engineering conference proceedings
- **Phase**: F0 – F1
- **PUMA use**: ICT project management papers; DevOps/AIOps literature; ICSE, MSR conference papers
- **Justification**: Primary source for SE conferences (ICSE 2026 = PUMA's Assalaarachchi paper venue)

### ACM Digital Library
- **URL**: https://dl.acm.org
- **Function**: Association for Computing Machinery digital library
- **Phase**: F0 – F1
- **PUMA use**: ICSE, FSE, MSR, EASE papers; EuroSys 2024 (Root Cause Analysis paper); SLR methodology references
- **Justification**: Reference conferences for empirical SE research; Angermeir 2025 (ICSE 2026), Chen 2024 (EuroSys)

---

## AI-Assisted Research Tools

### Perplexity AI
- **URL**: https://www.perplexity.ai
- **Function**: Conversational search engine with automatic source citation
- **Phase**: F0 – F1
- **PUMA use**: Rapid bibliographic verification; quick factual checks; ecosystem analysis
- **Justification**: Fast source-cited answers; all sources verified in origin (Marco Veritas)
- **Note**: Sources always verified independently before bibliography inclusion

### Perplexity Comet
- **URL**: https://www.perplexity.ai/comet
- **Function**: AI-assisted browser for deep web research and multi-source synthesis
- **Phase**: F0 – F1
- **PUMA use**: Technology ecosystem analysis (agent frameworks landscape); synthesising multiple sources about specific tools

### Consensus
- **URL**: https://consensus.app
- **Function**: Causal evidence search engine for academic papers
- **Phase**: F0
- **PUMA use**: Identifying papers with empirical evidence on AI effectiveness in PM; evidence-level filtering (RCT, cohort, systematic review)
- **Justification**: Evidence-level filtering ensures PUMA's SLR captures empirical studies, not only theoretical proposals

### Elicit
- **URL**: https://elicit.org
- **Function**: Automatic data extraction from papers; comparative table generation
- **Phase**: F0 – F1
- **PUMA use**: Generating comparative tables of SLR studies (variables, methodology, results); accelerating evidence synthesis
- **Justification**: Automates extraction of metrics (F1-macro, MAE baselines) from reviewed papers; accelerates OE1 SLR

---

## Citation Network Visualisation

### Connected Papers
- **URL**: https://connectedpapers.com
- **Function**: Citation graph visualisation; research cluster identification
- **Phase**: F0
- **PUMA use**: Mapping the PM+LLM research cluster; identifying foundational works (Flyvbjerg, Wei CoT, Brown GPT-3)

### Research Rabbit
- **URL**: https://www.researchrabbitapp.com
- **Function**: Literature mapping by semantic similarity and co-citation
- **Phase**: F0
- **PUMA use**: Discovering papers related to Tawosi 2022 (TAWOS), Ortu 2015 (Jira SR) by content similarity

### Litmaps
- **URL**: https://www.litmaps.com
- **Function**: Temporal citation network visualisation
- **Phase**: F0
- **PUMA use**: Analysing the temporal evolution of PM+LLM field; identifying key papers by period (2020–2026)

---

## Reference Management

### Zotero
- **URL**: https://www.zotero.org
- **Function**: Open-source bibliographic reference manager; APA 7 export; multi-device sync
- **Phase**: F0 – F5
- **PUMA use**: Managing all project references; automatic APA 7 export for bibliography chapter; integration with Word/Overleaf; Better BibTeX for Obsidian @citekey links
- **Justification**: Free, open-source, integrates with Better BibTeX for automatic vault bibliography updates → [[60 - Resources/65 Bibliographies/BIB-Master-APA7]]

### Mendeley
- **URL**: https://www.mendeley.com
- **Function**: Reference manager and PDF reader with annotation
- **Phase**: F0 – F1
- **PUMA use**: Secondary organisation; PDF annotation during Keshav Pass-2 reading
- **Complementary to**: Zotero (primary)

---

## Document Access

### ResearchGate
- **URL**: https://www.researchgate.net
- **Function**: Academic social network; direct author contact for full-text access
- **Phase**: F0 – F1
- **PUMA use**: Accessing papers behind paywalls via direct author request; networking with PM+AI researchers

### Anna's Archive
- **URL**: https://annas-archive.org
- **Function**: Open-access repository for academic documents
- **Phase**: F0 – F1
- **PUMA use**: Accessing subscribed journals not available via open access; use limited to personal research
- **Note**: Used exclusively for research purposes; all accessed papers cited with full APA 7 reference

---

## Continuous Learning

### O'Reilly Online Learning
- **URL**: https://www.oreilly.com
- **Function**: Technical books platform (LangGraph, LLMs, multi-agent systems, PM)
- **Phase**: F1 – F2
- **PUMA use**: LangGraph documentation and patterns; LLM engineering best practices

### Reddit (r/LocalLlama, r/MachineLearning)
- **URL**: https://www.reddit.com
- **Phase**: F0 – F2
- **PUMA use**: Real-world model behaviour insights; known limitations not documented in papers; community solutions to technical problems
- **Subreddits**: r/LocalLlama (Ollama/local LLM), r/MachineLearning (academic frontier)

---

## Related Notes

- [[60 - Resources/62 Workflows/WF-SLR-Pipeline]]
- [[50 - Areas/51 Research/Keshav-ThreePass/Keshav-Reading-Log]]
- [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]
- [[20 - Literature/20.6 Tools/LN-Tools-Research-Discovery]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
- [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]]
