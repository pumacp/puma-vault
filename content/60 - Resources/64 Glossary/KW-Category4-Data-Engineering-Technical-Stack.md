---
id: KW-CAT4
title: "Keywords — Category 4: Data Engineering and Technical Stack"
type: keyword-glossary
category: "Data-Engineering-Technical-Stack"
tags: [keywords, data-engineering, rag, qdrant, ollama, puma, glossary]
created: 2026-04-07
updated: 2026-04-07
---

# 🔑 Keywords — Category 4: Data Engineering and Technical Stack

Tools and processes for data management, LLM inference, and prototype development in PUMA.

---

## Keyword Index

| # | Term | Definition | PUMA Relevance |
|---|------|------------|----------------|
| 1 | **Retrieval-Augmented Generation (RAG)** | A technique combining dense retrieval (from a vector database) with language model generation to ground responses in relevant documents. Lewis et al. (2020). | PUMA Stage 4: RAG over Jira SR historical issues provides context for triage classification beyond few-shot examples. |
| 2 | **Vector Databases (Qdrant, ChromaDB)** | Databases optimized for storing and searching high-dimensional embedding vectors using approximate nearest-neighbor algorithms. | PUMA Stage 4: Qdrant stores nomic-embed-text embeddings of 50k+ Jira SR issues for semantic retrieval. |
| 3 | **Semantic Caching (Redis)** | Caching mechanism that stores LLM responses indexed by semantic embedding similarity, avoiding redundant inference for semantically identical queries. | PUMA optimization: Redis semantic cache reduces Ollama inference calls by ~38% for repeated similar issues. |
| 4 | **Ollama Local Inference** | A lightweight server for running open-weight LLMs locally via a REST API compatible with the OpenAI API format. Enables air-gapped, reproducible inference. | PUMA's primary inference engine: Llama 3.2 8B and Mistral 7B run via Ollama at temperature=0, seed=42. |
| 5 | **Quantized Model Evaluation** | Assessment of LLM performance after applying quantization (reducing parameter precision from float32 to int4/int8) to reduce memory requirements and inference latency. | PUMA uses Q4_K_M quantized models (~5GB each) via Ollama for CPU-only inference on 16GB RAM hardware. |
| 6 | **JSON Schema Validation** | The enforcement of structured output format using JSON Schema definitions, ensuring LLM outputs conform to expected data types and required fields. | PUMA: TriageResult outputs validated against JSON schema before Pydantic model validation. |
| 7 | **Pydantic AI Models** | Python models using Pydantic for type-safe LLM output validation, automatic retry on schema violation, and structured agent output enforcement. | PUMA's output validation layer: TriageResult(priority: Literal, confidence: float, reasoning: str, evidence: list). |
| 8 | **Model Context Window Management** | Techniques for managing the finite token limit of LLM context windows, including chunking, compression, and retrieval-based selection. | PUMA Stage 4: max 5 retrieved issues fit in Llama 3.2's 8K context alongside the triage instructions. |
| 9 | **Embedding Space Analysis** | Analysis of the geometric properties of semantic embeddings to understand clustering, similarity patterns, and representation quality. | PUMA uses nomic-embed-text (768-dim) embeddings; embedding space analysis validates Qdrant retrieval quality. |
| 10 | **Data Sovereignty in LLMs** | The principle that sensitive organizational data (Jira tickets, project plans) must not leave the organizational boundary when processed by AI. | PUMA Constitution Article 2: all inference local — Jira data never sent to external API providers. |
| 11 | **API Interoperability (MCP)** | The ability of AI agents to connect to heterogeneous external APIs through a unified protocol (Model Context Protocol), reducing integration complexity. | PUMA Stage 5: Jira MCP server provides standardized issue read/write interface for Smart PMO agents. |
| 12 | **Docker Containerization for Research** | Use of Docker and Docker Compose to package research software with all dependencies for exact environment reproduction. | PUMA's reproducibility stack: Docker Compose orchestrates Ollama, Qdrant, PostgreSQL, Arize Phoenix. |
| 13 | **Python Agentic Stacks** | Python-based frameworks and libraries for building AI agent systems: LangGraph, CrewAI, Pydantic AI, LlamaIndex, FastAPI. | PUMA's development stack: Python 3.11 + LangGraph + CrewAI + Pydantic AI + Ollama + FastAPI. |
| 14 | **LangChain LCEL** | LangChain Expression Language — a declarative syntax for composing LLM chains, prompt templates, parsers, and tools into production pipelines. | PUMA uses LCEL for prompt template composition and output parser chaining in Stages 1–3. |
| 15 | **OpenRoute Optimization** | Dynamic routing of LLM requests to the most appropriate model or provider based on task type, cost, latency, and capability requirements. | PUMA's model router selects Llama 3.2 8B (primary) or Mistral 7B (comparison) based on condition configuration. |
| 16 | **GitHub Repository Mining** | Extraction and analysis of structured data from GitHub repositories (issues, PRs, commits, reviews) for research or system training purposes. | PUMA references GitHub Issues as a data source analogous to Jira SR for future benchmark extensions. |
| 17 | **Jira Social Repository Analysis** | Mining and analysis of the Jira Social Repository (JSR) — a public dataset of Apache project Jira issues with priority labels, descriptions, and resolution data. | PUMA's primary triage dataset: Jira SR provides 50k+ labeled issues for H1 triage experiments. |
| 18 | **TAWOS Dataset Benchmarking** | Benchmarking using the TAWOS (Tawosi et al.) dataset — a curated collection of Agile sprint stories with story point estimates from multiple open-source projects. | PUMA's estimation dataset: TAWOS provides ground-truth story points for H2 estimation experiments. |
| 19 | **Synthetic Data Generation** | The generation of artificial training or evaluation data that mimics real data distributions, used when real data is scarce or sensitive. | PUMA future work: synthetic Jira issue generation for augmenting low-frequency priority classes (Blocker). |
| 20 | **Prompt Versioning and Control** | The systematic management of prompt versions across experiments, ensuring that changes to prompts are tracked and previous versions can be reproduced. | PUMA: prompt versions tracked in [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]] with version history table. |

---

## Search Strings

```
"retrieval-augmented generation" AND "project management" OR "issue classification" 2023..2026
"Qdrant" OR "vector database" AND "LLM" AND "software engineering" 2023..2026
"Ollama" OR "local LLM" AND "benchmark" 2023..2026
"Pydantic AI" OR "structured output" AND "LLM agents" 2023..2026
"Jira" AND "machine learning" AND "triage" OR "classification" 2023..2026
"TAWOS" OR "story point" AND "prediction" AND "LLM" 2023..2026
```

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]]
- [[20 - Literature/20.6 Tools/LN-Tools-RAG-VectorDB]]
- [[20 - Literature/20.6 Tools/LN-Tools-AI-Assistants-LLMs]]
- [[20 - Literature/20.6 Tools/LN-Tools-Dev-Environment]]
- [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
- [[80 - MOC/81 Topic-Maps/MOC-Keywords-Master]]
