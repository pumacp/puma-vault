---
id: Glossary-Tools-v4
title: "📖 Glossary — Tools & Platforms (Supplement v4)"
type: glossary
tags: [glossary, tools, platforms, supplement]
created: 2026-04-06
updated: 2026-04-06
source: "Anexo C — Catálogo de Herramientas (TFG PUMA v5.0)"
---

# 📖 Glossary — Tools & Platforms (Supplement v4)

> **Supplement to**: [[60 - Resources/64 Glossary/Glossary-Master]]
> Terms for tools and platforms in the PUMA project. All definitions in English.

---

## A

**AnythingLLM** — A local RAG (Retrieval-Augmented Generation) platform that creates a private knowledge base from uploaded documents, running entirely on local hardware via Ollama. Used in PUMA for private querying of the SLR paper corpus without external API calls.

**Arize Phoenix** — An LLM observability tool that records complete traces of AI agent reasoning (chain-of-thought steps, tool calls, latencies, token usage). Used in PUMA to create auditable decision logs for the governance and transparency requirements.

**arXiv** — An open-access preprint repository hosted by Cornell University, covering computer science, mathematics, physics, and statistics. The primary source for frontier AI agent, LLM, and multi-agent system papers in PUMA's SLR.

---

## B

**BrowserOS** — A Chromium-based browser with natively integrated AI agent capabilities, enabling AI-assisted web research, document organisation, and task automation directly within the browser environment. Used in PUMA for automated research workflows and documentation organisation.

---

## C

**ChromaDB** — A lightweight, embeddable Python vector database requiring no external server. Used in PUMA Stage 4 prototyping for semantic similarity search before migrating to Qdrant for production.

**CodeCarbon** — An open-source Python library (MIT License) that automatically estimates CO₂ equivalent emissions from computational workloads by monitoring CPU/GPU/RAM usage and multiplying by the local grid's carbon intensity. Used in PUMA as a first-class experimental variable. `pip install codecarbon`.

**Connected Papers** — A tool that visualises the citation graph of an academic paper, showing related works as a force-directed graph. Used in PUMA to map the PM+LLM research cluster and identify foundational works.

**Consensus** — An AI-powered academic search engine that filters papers by evidence level (RCT, cohort study, systematic review). Used in PUMA's SLR to identify empirical studies on AI effectiveness in project management.

**CrewAI** — An open-source Python framework for defining multi-agent systems through declarative role, goal, and backstory specifications. Used in PUMA Stage 5 to define PM agent personas (Triage Agent, Estimation Agent, Planning Agent, Manager Agent).

**Cursor AI** — An AI-native IDE with deep multi-file codebase understanding. Used in PUMA for complex refactoring tasks where single-file IDE context (VS Code + Copilot) is insufficient.

---

## D

**Docker + Docker Compose** — Containerisation platform that packages all PUMA services (Ollama, Qdrant, PostgreSQL, FastAPI, Streamlit) into reproducible containers. Ensures identical environments across machines; critical for Constitution Article 1 (reproducibility).

**draw.io (diagrams.net)** — A free, open-source diagram tool for creating UML, C4, and flowchart diagrams. Used in PUMA for formal C4 architecture diagrams in the TFG memoir.

---

## E

**Elicit** — An AI research assistant that automatically extracts structured data from academic papers (variables, methodology, sample sizes, results). Used in PUMA to generate comparative evidence tables for the SLR without manual re-reading.

**Excalidraw** — An open-source collaborative whiteboard for creating sketchy-style architecture diagrams. Integrated into Obsidian via plugin. Used in PUMA for system architecture and LangGraph state machine diagrams.

---

## F

**FastAPI** — A modern Python REST API framework based on Pydantic and asyncio, with automatic Swagger UI generation. Used in PUMA as the backend exposing triage/estimation endpoints.

---

## G

**GitHub Actions** — A CI/CD automation service integrated with GitHub repositories. Used in PUMA for automated testing on each commit, code quality checks, and reproducibility verification (mini-experiment run comparing output to stored expected results).

**GitHub Copilot** — An AI coding assistant integrated into VS Code that provides real-time code suggestions. Used in PUMA for Python autocompletion and boilerplate generation; all suggestions reviewed and understood by author before integration.

**Google Scholar** — Google's free academic search engine covering billions of scholarly articles. Primary search tool for PUMA's SLR and citation count verification.

**Groq** — A hardware accelerator (LPU) providing extremely fast inference for open-weights LLMs via free API. Used in PUMA for speed-comparison experiment runs requiring many rapid LLM calls.

---

## J

**Jenni AI** — An AI writing assistant specialised for academic text. Used in PUMA for structuring formal academic sections and maintaining consistent academic register; all content verified and rewritten by author.

---

## L

**LangGraph** — A library from LangChain for building stateful multi-agent workflows as directed graphs with cycle support. Used in PUMA as the core orchestration engine: cyclic state machines for ReAct triage agent (Stage 4) and SmartPMO coordination (Stage 5).

**Litmaps** — An academic tool that visualises the temporal evolution of a research field through citation network maps. Used in PUMA to analyse the 2020–2026 development of PM+LLM research.

**LlamaIndex** — A Python framework specialising in RAG pipeline construction (indexing → retrieval → generation). Used in PUMA Stage 4 to index Jira SR issues into Qdrant and build the retrieval pipeline.

**LM Studio** — A desktop GUI application for running local LLMs without programming knowledge, exposing an OpenAI-compatible API at `localhost:1234`. PUMA's primary fallback if Ollama installation fails; code runs unmodified by changing the base URL.

---

## M

**Mermaid** — A JavaScript-based diagram-as-code tool that renders diagrams from text definitions embedded in Markdown. Used in PUMA's GitHub README for versioned, automatically-rendered architecture diagrams.

**Mendeley** — Elsevier's reference manager and PDF reader with annotation capabilities. Used as secondary tool in PUMA for PDF annotation during Keshav Pass-2 reading.

---

## N

**nomic-embed-text** — An open-source text embedding model (768 dimensions) available via Ollama. Used in PUMA Stage 4 to generate semantic embeddings of Jira SR historical issues for Qdrant storage and similarity search.

**NotebookLM** — Google's document-grounded conversational AI that allows semantic querying of uploaded documents. Used in PUMA for Q&A over downloaded papers and audio synthesis of literature summaries.

**Notion + Notion AI** — A team knowledge management platform with integrated AI synthesis. Used as complementary organisational tool alongside Obsidian; meeting notes and sprint status summaries.

---

## O

**Ollama** — Open-source software for running LLMs locally via a REST API compatible with the OpenAI format. PUMA's primary inference engine; serves Llama 3.2 8B, Mistral 7B, Phi-3.5 Mini, and nomic-embed-text without cost or external API.

**OpenCode** — An AI-powered terminal CLI that provides intelligent command completion, error explanation, and diagnostic suggestions. Used in PUMA for Docker, PostgreSQL, and Qdrant administration tasks.

**OpenHands** — A platform (formerly OpenDevin) for building AI software developer agents that interact with environments through code execution, terminal, and web browsing. Used in PUMA for agentic scaffolding during development (F2–F3); HITL architecture reference for Stage 5.

**OpenSpec** — A Spec-Driven Development framework that captures each system change as a spec delta, making requirement changes explicit and reviewable. Used in PUMA alongside the SDD methodology for iterative module specification.

**O'Reilly Online Learning** — A subscription-based platform providing access to technical books, video courses, and interactive learning paths. Used in PUMA for LangGraph and multi-agent system reference materials.

---

## P

**Perplexity AI** — A conversational search engine that provides answers with cited sources. Used in PUMA for rapid bibliographic verification and ecosystem analysis; all sources verified in primary origin (Marco Veritas).

**Perplexity Comet** — An AI-assisted browser for deep research sessions across multiple web sources. Used in PUMA for comprehensive ecosystem analysis (agent framework comparisons, tool landscapes).

**Poetry** — A Python dependency management tool that produces locked `pyproject.toml` files ensuring reproducible environments. Used in PUMA instead of plain `requirements.txt` for stronger reproducibility guarantees.

**Pydantic AI** — A library for defining LLM output schemas and automatically retrying when outputs fail schema validation. Used in PUMA to ensure triage and estimation agent outputs always conform to expected data structures.

---

## Q

**Qdrant** — A high-performance vector database optimised for semantic similarity search with metadata filtering. Used in PUMA Stage 4 to store Jira SR issue embeddings and enable filtered retrieval (by project, priority class, date range).

---

## R

**Research Rabbit** — A literature mapping tool that discovers related papers through semantic similarity and co-citation analysis. Used in PUMA to find papers related to TAWOS and Jira SR datasets.

**ResearchGate** — An academic social network where researchers share publications. Used in PUMA for accessing subscribed papers via direct author requests.

---

## S

**Semantic Scholar** — An AI-powered academic search engine from the Allen Institute for AI. Used in PUMA for semantic paper discovery (beyond keyword search) and verifying author affiliations and citation counts.

**Streamlit** — A Python framework for building data dashboards with minimal front-end code. Used in PUMA for the results visualisation interface (F1-macro bar charts, MAE comparison tables, carbon footprint per condition).

---

## V

**Visual Studio Code (VS Code)** — Microsoft's open-source code editor, the primary IDE for PUMA's Python development. Key extensions: Python (Microsoft), Jupyter, Docker, GitHub Copilot.

---

## W

**Warp AI Terminal** — A smart terminal application with integrated AI for command completion and error explanation. Used in PUMA to accelerate system administration tasks (Ollama, Docker, database management).

---

## Z

**Zotero** — An open-source bibliographic reference manager that automatically imports metadata from PDFs, web pages, and DOIs. Used in PUMA as the primary bibliography tool with Better BibTeX for automatic @citekey links in Obsidian.

---

*Glossary Tools v4 · 40+ terms · Source: Anexo C — Catálogo de Herramientas (PUMA TFG v5.0) · April 2026*
