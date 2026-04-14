---
id: LN-Tools-Dev-Stack
title: "Development Stack Tools — PUMA"
type: literature-note
subtype: tool-collection
tags: [tool, lmstudio, groq, crewai, langgraph, openroute, streamlit, arize, docker, agile, api, architecture, carbon-footprint, chain-of-thought, codecarbon, cot, data-formats, dev-tools, devops, effort-estimation, embeddings, few-shot, github, issue-triage, jira, json, langchain, literature-note, llama, llm, lm-studio, local-llm, meta, mistral, monitoring, multi-agent, observability, obsidian, ollama, opencode, orchestration, pipeline, project-management, pydantic, python, rag, reasoning, retrieval, scrum, smart-pmo, story-points, sustainability, template, triage, vault, vector-db, zero-shot, zettelkasten]
puma_phase: "F2, F3, F4"
created: 2026-03-01
---

# Development Stack Tools — PUMA

> [!info] Overview
> Detailed notes on all development tools used or evaluated for PUMA implementation.

---

## 🤖 LLM Runtime Alternatives

### LM Studio
- **URL:** lmstudio.ai
- **Purpose in PUMA:** Alternative to Ollama for model discovery and local inference with GUI
- **When to use:** When testing new models before adding them to Ollama pipeline, or for quick interactive testing
- **PUMA setup:**
  ```
  1. Download LM Studio
  2. Search and download: llama-3.2-8b-instruct-q4_k_m
  3. Enable local server on port 1234 (OpenAI-compatible API)
  4. Test with: curl http://localhost:1234/v1/completions
  ```
- **Vs Ollama:** LM Studio has better GUI for model comparison; Ollama is more scriptable and reproducible for batch experiments → **Ollama preferred for PUMA experiments**

### Groq API
- **URL:** console.groq.com
- **Purpose in PUMA:** Ultra-fast cloud inference for rapid prototyping (not for final experiments — non-local)
- **Free tier:** 14,400 req/day for Llama models
- **When to use:** Testing prompts quickly before running full local Ollama batch
- **⚠️ Not for final results** — PUMA experiments must run locally for reproducibility and carbon measurement
- **Python client:**
  ```python
  from groq import Groq
  client = Groq(api_key="YOUR_KEY")
  response = client.chat.completions.create(
      model="llama-3.2-8b-preview",
      messages=[{"role": "user", "content": "Test prompt"}]
  )
  ```

### OpenRouter
- **URL:** openrouter.ai
- **Purpose in PUMA:** Access to multiple LLMs via unified API for comparison (not for final experiments)
- **PUMA use:** Quick benchmarking of a prompt across 3-4 models to choose which to prioritise locally
- **Python client:**
  ```python
  import requests
  response = requests.post(
      "https://openrouter.ai/api/v1/chat/completions",
      headers={"Authorization": f"Bearer {api_key}"},
      json={"model": "meta-llama/llama-3.2-8b-instruct", "messages": [...]}
  )
  ```

---

## 🤝 Multi-Agent Frameworks

### CrewAI
- **GitHub:** `crewai-io/crewAI`
- **Purpose:** Framework for building collaborative AI agent teams with defined roles and tasks
- **PUMA relevance:** Stage 5 (optional Smart PMO) concept — multiple specialized agents (Triage Agent, Estimation Agent, Reporter)
- **Current use:** Not in MVP scope; architecture reference only
- **Example crew for PUMA:**
  ```python
  from crewai import Agent, Task, Crew
  
  triage_agent = Agent(
      role='Issue Triage Specialist',
      goal='Classify Jira issues by priority accurately',
      backstory='Expert PM with 10 years in software triage',
      llm=ollama_llm  # local model
  )
  ```

### LangGraph (LangChain)
- **GitHub:** `langchain-ai/langgraph`
- **Purpose:** Building stateful, multi-step LLM workflows as directed graphs with conditional branching
- **PUMA relevance:** Could replace simple sequential pipeline with graph-based orchestration for Stage 4 (RAG-enhanced triage)
- **Current use:** Evaluated; overkill for MVP, may use in Stage 4
- **Template reference:** `wassim249/fastapi-langgraph-agent-production-ready-template`

### Pydantic AI
- **GitHub:** `pydantic/pydantic-ai`
- **Purpose:** Type-safe, structured output generation from LLMs using Pydantic models
- **PUMA use:** Ensuring triage and estimation outputs conform to expected schema (Priority enum, SP int)
- **Example:**
  ```python
  from pydantic import BaseModel, Field
  from typing import Literal
  
  class TriageOutput(BaseModel):
      priority: Literal['Critical', 'High', 'Medium', 'Low']
      reasoning: str = Field(description="Step-by-step reasoning")
      confidence: Literal['high', 'medium', 'low']
  ```

---

## 📊 Observability & Evaluation

### Arize Phoenix
- **URL:** phoenix.arize.com (also local via `pip install arize-phoenix`)
- **Purpose:** LLM observability — trace, evaluate, and debug LLM applications
- **PUMA use:** Optional instrumentation for Stage 4 (RAG-enhanced triage) to inspect retrieval quality and model reasoning chains
- **Local setup:**
  ```bash
  pip install arize-phoenix opentelemetry-sdk opentelemetry-exporter-otlp
  python -m phoenix.server.main &  # starts at localhost:6006
  ```

### CodeCarbon
- **GitHub:** `mlco2/codecarbon`
- **Purpose:** Measure CO₂ emissions from Python code execution
- **PUMA use:** Core measurement tool — every experiment condition is wrapped in EmissionsTracker
- **Integration:**
  ```python
  from codecarbon import EmissionsTracker
  
  tracker = EmissionsTracker(
      project_name="puma-triage-llama32-zeroshot",
      output_dir="./results/carbon/",
      log_level="error"
  )
  tracker.start()
  # ... run experiment ...
  emissions_kg = tracker.stop()
  emissions_gco2 = emissions_kg * 1000
  ```

---

## 🌐 Infrastructure

### Docker Desktop + Docker Compose
- **Purpose:** Containerised, reproducible environment for PUMA experiments
- **PUMA use:** Docker Compose setup for: Ollama + ChromaDB + Jupyter + Streamlit
- **`docker-compose.yml` skeleton:**
  ```yaml
  version: '3.8'
  services:
    ollama:
      image: ollama/ollama
      ports: ["11434:11434"]
      volumes: ["ollama-models:/root/.ollama"]
    
    jupyter:
      build: .
      ports: ["8888:8888"]
      volumes: [".:/workspace"]
      environment:
        - OLLAMA_HOST=ollama:11434
    
    chromadb:
      image: chromadb/chroma
      ports: ["8000:8000"]
  
  volumes:
    ollama-models:
  ```

### Streamlit
- **Purpose:** Rapid web UI for PUMA demo and results visualisation
- **PUMA use:** Optional interactive demo of triage agent (human-in-loop interface)
- **Setup:**
  ```python
  # puma_demo.py
  import streamlit as st
  from src.agents.triage_agent import TriageAgent
  
  st.title("PUMA — Issue Triage Demo")
  model = st.selectbox("Model", ["llama3.2:8b", "mistral:7b"])
  strategy = st.selectbox("Strategy", ["zero-shot", "few-shot-3", "cot"])
  issue_title = st.text_input("Issue title")
  
  if st.button("Classify"):
      agent = TriageAgent(model=model, strategy=strategy)
      result = agent.classify({"title": issue_title})
      st.metric("Predicted Priority", result["predicted_priority"])
  ```

---

## 📊 Data Analysis Libraries

### pandas (McKinney)
- **URL**: https://pandas.pydata.org
- **Reference**: McKinney, W. (2022). *Python for data analysis* (3rd ed.). O'Reilly. https://wesmckinney.com/book/
- **Purpose**: Core data manipulation library for PUMA experiment results
- **PUMA use**: Loading Jira SR and TAWOS CSV datasets; computing F1-macro, MAE, class distributions; exporting results to Excel/CSV for thesis tables
- **Key methods used**:
  ```python
  import pandas as pd

  # Load and stratify dataset
  df = pd.read_csv("jira_sr.csv")
  subset = df.groupby('priority').apply(lambda x: x.sample(n=50, random_state=42))

  # Compute results
  results = pd.DataFrame(experiment_log)
  results.groupby(['model', 'strategy'])['f1_macro'].describe()
  ```
- **Justification**: Industry-standard Python data manipulation; native integration with scikit-learn metrics and matplotlib/seaborn visualisation

---

## 🔗 Reference Templates & Repositories

| Repository | Purpose | PUMA use |
|-----------|---------|---------|
| `wassim249/fastapi-langgraph-agent-production-ready-template` | Production FastAPI + LangGraph agent | Reference for Stage 4+ architecture |
| `sushmitanandi/langgraph-multi-agent` | Multi-agent LangGraph example | Reference for Stage 5 (Smart PMO) |
| `vency-ai/agentic-scrum` | Agile PM agent prototype | Comparison reference |
| `groepl/Obsidian-Zettelkasten-Starter-Kit` | Obsidian vault template | Base for this vault |

---

## 🔗 Related Notes

[[20 - Literature/20.6 Tools/LN-Tools-Ollama-ClaudeCode-OpenCode-BrowserOS]]
[[20 - Literature/20.6 Tools/LN-Tools-Research-Discovery]]
[[SP-Architecture]]
