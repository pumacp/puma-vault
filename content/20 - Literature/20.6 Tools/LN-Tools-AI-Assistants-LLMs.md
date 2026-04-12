---
id: LN-Tools-AI-Assistants-LLMs
title: "🤖 Tools — AI Assistants & LLM Models"
type: literature-tools
tags: [tools, llm, ai-assistants, claude, chatgpt, ollama, puma]
created: 2026-04-06
updated: 2026-04-06
phase: [F0, F1, F2, F3, F4, F5]
---

# 🤖 Tools — AI Assistants & LLM Models

> PUMA uses AI models in two distinct roles:
> - **Role A**: Research and development assistance (Marco Veritas protocol applies)
> - **Role B**: Object of study — models evaluated in the benchmark experiment

---

## Role A — Research & Development Assistance

### Claude (Anthropic)
- **URL**: https://claude.ai
- **Model**: claude-sonnet-4-6 (primary), claude-opus-4-6 (deep analysis tasks)
- **Role**: A — Research assistant and writing support
- **Phase**: F0 – continuous
- **PUMA use**:
  - Literature synthesis and state-of-the-art analysis
  - Argumentative coherence review of TFG chapters
  - Architectural decision analysis (BMAD Agent Architect role)
  - Prompt engineering for experiment strategies
  - Code scaffolding review (always verified by author)
- **Strengths**: 200K token context; strong reasoning over long documents; best for complex synthesis tasks
- **Declaration**: All uses declared in Section 1.8 (AI use declaration, Marco Veritas protocol)
- **Related**: [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-RCOIF-Research]]

### ChatGPT (OpenAI)
- **URL**: https://chatgpt.com
- **Model**: GPT-4o (text+code tasks)
- **Role**: A — Conversational assistant and idea contrast
- **Phase**: F0 – F2
- **PUMA use**:
  - Contrasting ideas with a different system (avoiding single-model bias)
  - Exploring alternative architectural approaches
  - Draft generation for manual rewriting
- **Note**: All output rewritten in author's voice before inclusion (Marco Veritas)

### Google Gemini (AI Studio)
- **URL**: https://aistudio.google.com
- **Model**: Gemini 1.5 Flash (free tier: 15 req/min)
- **Role**: A (exploration) + B (experiment evaluation — see below)
- **Phase**: F0–F1 (Role A), F4 (Role B)
- **Role A use**: Bibliographic exploration; synthesis of PM ecosystem; complementary perspective to Claude/GPT-4o
- **Note**: Free API tier used; rate limits noted in experiment design

### DeepSeek-R1
- **URL**: https://www.deepseek.com
- **Role**: A (technical reasoning) + B (experiment candidate)
- **Phase**: F1 – F4
- **PUMA use (Role A)**: Complex technical architecture problems; chain-of-thought reasoning tasks
- **PUMA use (Role B)**: Evaluated in experiment comparative; available via API and via Ollama locally
- **Strengths**: Explicit reasoning traces; open-weights version available for local execution

### Microsoft Copilot
- **URL**: https://copilot.microsoft.com
- **Role**: A — Microsoft environment assistant
- **Phase**: F3 – F5
- **PUMA use**: Writing assistance within Word/Teams environment; Spanish grammar checking for TFG sections

### NotebookLM (Google)
- **URL**: https://notebooklm.google.com
- **Role**: A — RAG conversational interface over own documents
- **Phase**: F0 – F1
- **PUMA use**:
  - Building a private knowledge base from downloaded papers
  - Semantic queries without rereading (Keshav Pass-1 acceleration)
  - Audio synthesis of literature summaries for assimilation
- **Justification**: Private document Q&A without external API; validated that responses match source content (Marco Veritas)
- **Related**: [[50 - Areas/51 Research/Keshav-ThreePass/Keshav-Reading-Log]]

### Jenni AI
- **URL**: https://jenni.ai
- **Role**: A — Academic writing assistant
- **Phase**: F3 – F5
- **PUMA use**: Structuring formal academic sections; maintaining consistent academic style; citation suggestions (verified manually)

---

## Role B — Experiment Models (Objects of Study)

### Llama 3.2 8B (Meta) via Ollama
- **URL**: https://ollama.ai/library/llama3.2
- **Role**: B — Primary experiment model
- **Phase**: F2 – F4
- **Quantisation**: Q4_K_M (~5GB RAM)
- **Parameters**: 8 billion
- **License**: Meta Llama 3 Community License (open-weights)
- **PUMA use**: PRIMARY model for Stage 1 (triage) and Stage 2 (estimation) experiments
- **Reproducibility settings**: seed=42, temperature=0, num_predict=50 (triage) / 20 (estimation)
- **Install**: `ollama pull llama3.2:8b-instruct-q4_K_M`

### Mistral 7B via Ollama
- **URL**: https://ollama.ai/library/mistral
- **Role**: B — Comparison model
- **Phase**: F3 – F4
- **Quantisation**: Q4_K_M (~4.5GB RAM)
- **Parameters**: 7 billion
- **License**: Apache 2.0 (fully open)
- **PUMA use**: SECONDARY model for comparison with Llama 3.2 8B; faster inference on CPU
- **Install**: `ollama pull mistral:7b-instruct-q4_K_M`

### Phi-3.5 Mini via Ollama
- **URL**: https://ollama.ai/library/phi3.5
- **Role**: B — Fallback model (latency mitigation)
- **Phase**: F2 – F4
- **Quantisation**: Q4_K_M (~2GB RAM)
- **Parameters**: 3.8 billion
- **License**: MIT
- **PUMA use**: FALLBACK if Llama 3.2 8B latency > 60s on target hardware; maintains <30s/inference
- **Risk mitigation**: Addresses latency risk (Gestión de riesgos, Section 1.5)
- **Install**: `ollama pull phi3.5:3.8b-mini-instruct-q4_K_M`

### Groq API (fast inference)
- **URL**: https://groq.com
- **Role**: B — High-speed inference option for comparative runs
- **Phase**: F4
- **PUMA use**: Running Llama 3.1 at hardware-accelerated speed (LPU inference); useful for comparative experiment requiring many rapid calls
- **Note**: Free tier available; API-based (not local); used only for comparative runs, not primary experiment (reproducibility requires local Ollama)

---

## Ollama — Local LLM Server

- **URL**: https://ollama.ai
- **Function**: Open-source tool for running LLMs locally via REST API
- **Phase**: F2 – F4
- **PUMA use**: CENTRAL infrastructure component; serves Llama 3.2 8B, Mistral 7B, Phi-3.5 Mini, nomic-embed-text for all experiments
- **API compatibility**: OpenAI-compatible REST API at `http://localhost:11434`
- **Reproducibility**: Model content-addressed registry ensures pinned versions
- **Key commands**:
  ```bash
  ollama pull llama3.2:8b-instruct-q4_K_M
  ollama pull mistral:7b-instruct-q4_K_M
  ollama pull nomic-embed-text
  ollama serve  # starts API server
  ```
- **Related**: [[20 - Literature/20.6 Tools/LN-Tools-Ollama-ClaudeCode-OpenCode-BrowserOS]]

### LM Studio
- **URL**: https://lmstudio.ai
- **Function**: GUI application for running local LLMs; OpenAI-compatible REST API at `localhost:1234`
- **Phase**: F1 – F3
- **PUMA use**: Model exploration without programming; rapid prompt prototyping; model quality comparison before Ollama integration
- **Fallback**: Primary fallback if Ollama installation fails on target hardware
- **Note**: Same API endpoint format; code runs unmodified by changing base URL

---

## Related Notes

- [[20 - Literature/20.6 Tools/LN-Tools-Ollama-ClaudeCode-OpenCode-BrowserOS]]
- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] — Articles 1, 2 (local-only, reproducibility)
- [[50 - Areas/51 Research/AI-Use-Log]]
- [[30 - Permanent/31 Concepts/PN-LLM-Local-vs-Cloud]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI-v2]]
