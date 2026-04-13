---
id: MOC-Tools-Stack
title: "🔧 MOC — PUMA Full Technology Stack"
type: moc
tags: [moc, tools, stack, technology, puma, ollama, claude, perplexity, zotero]
created: 2026-04-06
updated: 2026-04-06
---

# 🔧 MOC — PUMA Full Technology Stack

> Complete technology map for the PUMA project, organised by category.  
> Tool selection principle: [[30 - Permanent/31 Concepts/PN-ToolSelection-PUMA]]

**All tools used in the PUMA project**, organised by phase and function. Each tool has a dedicated note with setup instructions and prompt patterns.

---

## 🔍 Research & Bibliography (C.1)

→ [[20 - Literature/20.6 Tools/LN-Tools-Research-Bibliographic]]  
→ [[20 - Literature/20.6 Tools/LN-Tools-Research-Discovery]]

| Tool                  | Phase   | Role                                      | Note |
|-----------------------|---------|-------------------------------------------|------|
| Google Scholar        | F0+     | Primary academic search                   | — |
| arXiv                 | F0+     | Preprint source (all core papers)         | — |
| Semantic Scholar      | F0–F1   | Semantic discovery                        | — |
| IEEE Xplore + ACM DL  | F0–F1   | SE conference papers                      | — |
| ResearchGate          | F0      | Full-text access                          | — |
| Anna's Archive        | F0      | Books & papers                            | — |
| O'Reilly Online       | F0–F5   | Technical books                           | — |
| Perplexity AI         | F0–F1   | Quick verified search                     | — |
| Perplexity Comet      | F0      | Deep research                             | — |
| Consensus             | F0      | Evidence-based discovery                  | — |
| Elicit                | F0      | SLR assistant / Evidence-based discovery  | — |
| Connected Papers      | F0      | Citation network mapping                  | — |
| Research Rabbit       | F0      | Paper network                             | — |
| Litmaps               | F0      | Timeline viz / Citation network mapping   | — |
| Zotero + Better BibTeX| F0–F5   | Reference management → APA7               | — |
| Mendeley              | F0–F5   | Secondary reference manager               | — |
| AnythingLLM + NotebookLM | F0–F1 | Local RAG over paper corpus               | — |

---

## 🤖 AI Models (C.2)

→ [[20 - Literature/20.6 Tools/LN-Tools-AI-Assistants-LLMs]]  
→ [[20 - Literature/20.6 Tools/LN-Tools-Ollama-ClaudeCode-OpenCode-BrowserOS]]

### Role A — Research Assistance & Conversational Tools
| Model                  | Phase   | Strength / Best for                     | Note / Prompt |
|------------------------|---------|-----------------------------------------|---------------|
| Claude (claude.ai)     | F0+     | Long-context synthesis, structured reasoning, research synthesis, writing | [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-RCOIF-Research]] |
| ChatGPT GPT-4o         | F0–F2   | Cross-validation / Contrasting perspective | 60 - Resources/61 Prompts/61.1 LLM-Tools/PT-ChatGPT-SLR-Synthesis |
| Gemini 1.5 Flash       | F0–F1   | Exploration + free API / Multimodal, long context | 60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Gemini-Multimodal |
| DeepSeek-R1            | F1–F4   | Explicit CoT reasoning / Technical stats | 60 - Resources/61 Prompts/61.1 LLM-Tools/PT-DeepSeek-Reasoning |
| Microsoft Copilot      | —       | Minor doc tasks                         | — |
| NotebookLM             | F0–F1   | Private document RAG / Multi-paper corpus Q&A | 60 - Resources/61 Prompts/61.1 LLM-Tools/PT-NotebookLM-Paper-Corpus |
| Jenni AI               | F3–F5   | Academic writing structure              | — |
| AnythingLLM            | F0–F1   | Local RAG                               | 60 - Resources/61 Prompts/61.1 LLM-Tools/PT-AnythingLLM-Local-RAG |

### Role B — Experiment Models (Objects of Study)
| Model                  | Quantisation | RAM    | Phase   | Status              | Note |
|------------------------|--------------|--------|---------|---------------------|------|
| **Llama 3.2 8B** (Ollama) | Q4_K_M     | ~5GB   | F2–F4   | **PRIMARY**         | — |
| **Mistral 7B** (Ollama)   | Q4_K_M     | ~4.5GB | F3–F4   | **COMPARISON**      | — |
| **Phi-3.5 Mini** (Ollama) | Q4_K_M     | ~2GB   | F2–F4   | **FALLBACK**        | — |
| Groq API (Llama 3.1 / 3.2) | —           | —      | F4      | SPEED COMPARISON / Rapid prompt prototyping only | — |
| OpenRouter             | —            | Cloud  | —       | Multi-model quick comparison | — |

---

## 🗃️ RAG & Vector Databases (C.3)

→ [[20 - Literature/20.6 Tools/LN-Tools-RAG-VectorDB]]

| Tool          | Stage   | Role                                      | Note |
|---------------|---------|-------------------------------------------|------|
| **Ollama** (nomic-embed-text) | F2–F4 | Local embedding model                     | — |
| **Qdrant**    | F2–F4   | Production vector DB (Stage 4)            | — |
| ChromaDB      | F2      | Prototype / Embedded vector DB            | — |
| LlamaIndex    | F2–F4   | RAG pipeline framework / Orchestration    | — |
| AnythingLLM   | F0–F1   | Research knowledge base / Local RAG       | — |

**Stage 4 RAG pipeline**: nomic-embed-text → Qdrant → LlamaIndex → Llama 3.2 8B (ReAct)

---

## ⚙️ Development Environment (C.4)

→ [[20 - Literature/20.6 Tools/LN-Tools-Dev-Environment]]  
→ [[20 - Literature/20.6 Tools/LN-Tools-Dev-Stack]]

### IDE & Coding
| Tool                  | Phase   | Role                              | Note / Prompt |
|-----------------------|---------|-----------------------------------|---------------|
| VS Code + Python ext  | F2–F4   | Primary IDE                       | — |
| GitHub Copilot        | F2–F4   | Inline completion / Code assistance (declared) | [[60 - Resources/61 Prompts/61.3 Dev-Tools/PT-DevTools-Prompts]] |
| Cursor AI             | F2–F3   | Context-aware editor / Multi-file refactoring | [[60 - Resources/61 Prompts/61.3 Dev-Tools/PT-DevTools-Prompts]] |
| Claude Code (CLI)     | F2–F4   | AI coding agent                   | [[20 - Literature/20.6 Tools/LN-Tools-Ollama-ClaudeCode-OpenCode-BrowserOS]] |
| OpenCode              | F2–F3   | Open-source coding agent          | [[20 - Literature/20.6 Tools/LN-Tools-Ollama-ClaudeCode-OpenCode-BrowserOS]] |
| OpenHands             | F2–F3   | Autonomous / Agentic scaffolding  | — |
| Warp AI Terminal      | F2–F4   | Smart terminal / CLI AI           | [[60 - Resources/61 Prompts/61.3 Dev-Tools/PT-DevTools-Prompts]] |
| Browser OS            | F0–F1   | AI-native browser / Web agent     | [[20 - Literature/20.6 Tools/LN-Tools-Ollama-ClaudeCode-OpenCode-BrowserOS]] |

### Infrastructure
| Tool              | Phase   | Role                              | Note |
|-------------------|---------|-----------------------------------|------|
| Docker + Compose  | F2–F4   | Full stack containerisation / Reproducible env | [[20 - Literature/20.6 Tools/LN-Tools-Dev-Stack]] |
| Poetry            | F2–F4   | Python dependency pinning         | — |
| Git + GitHub      | F2–F5   | Version control + open source     | — |
| GitHub Actions    | F4–F5   | CI/CD + reproducibility check / auto-reproducibility checks | — |

### Agent Frameworks & Orchestration
| Tool          | Stage / Maturity | PUMA Stage | Role                              | Note |
|---------------|------------------|------------|-----------------------------------|------|
| **LangGraph** | Production       | Stage 4–5  | State graph orchestration         | [[20 - Literature/20.6 Tools/LN-Tools-Dev-Stack]] |
| **CrewAI**    | Reference        | Stage 5    | Role definition                   | [[20 - Literature/20.6 Tools/LN-Tools-Dev-Stack]] |
| Pydantic AI   | Optional         | Stage 2+   | Output schema validation          | [[20 - Literature/20.6 Tools/LN-Tools-Dev-Stack]] |
| Hermes AI     | Evaluated        | —          | —                                 | [[20 - Literature/20.6 Tools/LN-Tools-Dev-Stack]] |
| FastAPI       | Production       | F2–F4      | REST API                          | — |
| Streamlit     | Production       | F3–F4      | Results dashboard                 | — |
| OpenSpec      | Production       | F2–F4      | Spec-driven development           | — |

### LLM Infrastructure
| Tool       | Phase   | Role                     | Note |
|------------|---------|--------------------------|------|
| **Ollama** | F2–F4   | Local LLM server (CENTRAL) | — |
| LM Studio  | F1–F3   | GUI model exploration / fallback | — |

---

## 📦 Reference Repositories (C.5)

→ [[20 - Literature/20.5 Repos-Code/LN-Repos-ReferenceCode]]  
→ [[20 - Literature/20.5 Repos-Code/LN-Repos-AgentFrameworks]]

| Repo                              | Stars   | PUMA Relevance                  |
|-----------------------------------|---------|---------------------------------|
| `wassim249/fastapi-langgraph-template` | ~500   | FastAPI+LangGraph scaffold ⭐⭐⭐⭐⭐ |
| `sushmitanandi/langgraph-multi-agent` | ~200   | Supervisor-worker pattern ⭐⭐⭐⭐ |
| `sdi2200262/agentic-project-management` | ~1,300 | Jira API + PM patterns ⭐⭐⭐⭐ |
| `OpenHands/OpenHands`             | ~67,300| HITL agent platform ⭐⭐⭐⭐ |
| `princeton-nlp/SWE-bench`         | ~8,000 | Benchmark design reference ⭐⭐⭐⭐ |
| `vency-ai/agentic-scrum`          | —       | Scrum role prompts ⭐⭐⭐ |
| `friendliai/aipm`                 | ~20     | Jira CLI patterns ⭐⭐⭐ |
| `yangxingguang/satd_sentiment_GPT`| —       | Technical debt prompts ⭐⭐⭐ |
| `unit-mesh/autodev-workbench`     | —       | Context extraction ⭐⭐⭐ |

---

## 📊 Datasets (C.6)

→ [[20 - Literature/20.6 Tools/LN-Tools-Datasets-Benchmarks]]  
→ [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]

| Dataset              | Stage      | DOI/URL |
|----------------------|------------|---------|
| **Jira SR (Ortu 2015)** | Stage 1   | DOI: 10.5281/zenodo.5901893 |
| **TAWOS (Tawosi 2022)** | Stage 2   | DOI: 10.1145/3524842.3528029 |
| SWE-bench            | Reference  | `princeton-nlp/SWE-bench` |
| GitHub Archive       | Stage 5 (opt) | gharchive.org |

---

## 📋 Documentation & Writing (C.7)

→ [[20 - Literature/20.6 Tools/LN-Tools-Documentation-Organisation]]

| Tool              | Phase   | Role                              | Note |
|-------------------|---------|-----------------------------------|------|
| **Obsidian** (this vault) | F0+ | Primary knowledge management      | — |
| Notion + Notion AI| F0+     | Project management complement     | — |
| Zotero            | F0–F5   | Bibliography (APA7)               | — |
| Grammarly         | F3–F5   | English grammar check             | — |
| Overleaf          | F5 (opt)| LaTeX typesetting                 | — |
| Excalidraw / draw.io | F2–F3 | Architecture diagrams             | — |
| Mermaid (GitHub)  | F2–F3   | Diagrams-as-code                  | — |
| Jenni AI          | F3–F5   | Academic writing                  | — |

---

## 🤖 Automation (C.8)

| Tool              | Phase   | Role                                      |
|-------------------|---------|-------------------------------------------|
| **BrowserOS**     | F0+     | AI-native browser for research automation |
| GitHub Actions    | F4–F5   | CI/CD + auto-reproducibility checks       |
| Docker Compose    | F2–F4   | Full stack automation                     |

---

## 📌 Key Permanent Notes & Communities

**Permanent Notes**
- [[30 - Permanent/31 Concepts/PN-ToolSelection-PUMA]] — Tool selection hierarchy
- [[30 - Permanent/31 Concepts/PN-LLM-Local-vs-Cloud]] — Why local inference
- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]] — RAG technical foundations
- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] — Tool constraints (Articles 1–7)
- [[20 - Literature/20.6 Tools/LN-Tools-Ollama-ClaudeCode-OpenCode-BrowserOS]] — Ollama + Claude Code + OpenCode + BrowserOS
- [[SP-Architecture]] — Python + Ollama architecture

**Reddit Communities (Informal sources)**
| Community          | URL                              | Use |
|--------------------|----------------------------------|-----|
| r/LocalLlama       | reddit.com/r/LocalLlama          | Local model performance, tips |
| r/MachineLearning  | reddit.com/r/MachineLearning     | Research updates |

**Note**: [[20 - Literature/20.4 Videos-Podcasts/LN-Videos-Repos-Community]]

---

**Fin del MOC.** Esta nota es ahora la **fuente única y completa** del stack tecnológico de PUMA. Puedes copiarla directamente a tu Obsidian.
