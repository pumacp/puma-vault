---
id: LN-Tool-Ollama
title: "Ollama — Local LLM Inference Engine"
type: literature-note
subtype: tool
tags: [tool, ollama, local-llm, inference, reproducibility]
url: "https://ollama.ai"
github: "https://github.com/ollama/ollama"
license: MIT
puma_role: "Primary inference engine for all PUMA experiments"
puma_phase: "F2, F3, F4"
created: 2026-03-01
---

# Ollama — Local LLM Inference Engine

> **Purpose in PUMA:** Ollama is the inference backend that runs Llama 3.2 8B and Mistral 7B locally without GPU or API costs, enabling reproducible, deterministic experiments (seed=42, temperature=0).

## Key Properties

| Property | Value |
|----------|-------|
| **Install** | `curl -fsSL https://ollama.ai/install.sh \| sh` |
| **API** | Local REST API on `localhost:11434` |
| **Models** | `ollama pull llama3.2:8b` / `ollama pull mistral:7b` |
| **Reproducibility** | `seed=42, temperature=0` via API params |
| **Hardware** | Runs on CPU with 16GB RAM (quantized 4-bit) |
| **RAM usage** | ~5GB for 8B model (Q4_K_M quantization) |

## Basic API Call (Python)

```python
import requests
import json

def call_ollama(prompt: str, model: str = "llama3.2:8b") -> str:
    """
    Call Ollama local API with deterministic settings.
    Seed and temperature=0 ensure reproducibility.
    """
    response = requests.post(
        "http://localhost:11434/api/generate",
        json={
            "model": model,
            "prompt": prompt,
            "stream": False,
            "options": {
                "seed": 42,
                "temperature": 0,
                "num_predict": 512
            }
        }
    )
    return response.json()["response"]
```

## Model Versions Used in PUMA

| Model | Tag | RAM | Speed (CPU) | Use |
|-------|-----|-----|-------------|-----|
| Llama 3.2 | `llama3.2:8b` | ~5GB | ~15-40s/query | Primary |
| Mistral 7B | `mistral:7b` | ~4.5GB | ~12-35s/query | Comparison |
| Phi-3.5 Mini | `phi3.5:3.8b` | ~2.5GB | ~6-15s/query | Fallback (latency) |

## 🔗 Related Notes
30 - Permanent/31 Concepts/PN-LLM-Agents | [[SP-Architecture]]
60 - Resources/61 Prompts/PT-PUMA-Triage-ZeroShot

---
---
id: LN-Tool-ClaudeCode
title: "Claude Code — Agentic Coding CLI"
type: literature-note
subtype: tool
tags: [tool, claude-code, coding-agent, cli, anthropic]
url: "https://docs.claude.ai/claude-code"
puma_role: "Primary AI coding assistant for implementation"
puma_phase: "F1, F2, F3"
created: 2026-03-01
---

# Claude Code — Agentic Coding CLI

> **Purpose in PUMA:** Claude Code is used for implementing the PUMA benchmark modules (triage agent, estimation agent, metric calculator), generating test cases from BDD specs, and refactoring code to meet reproducibility standards.

## Key Capabilities

- Reads and edits files directly in the project
- Runs tests and interprets failures autonomously
- Understands full codebase context
- Follows SDD specs when provided as input

## Effective Prompt Patterns for PUMA

### Pattern 1 — Spec-to-Code Generation

```bash
# In terminal with Claude Code active:
claude "Read the spec at docs/specs/SP-Triage-Agent-v1.md and implement 
the TriageAgent class in src/agents/triage_agent.py. 
Requirements:
- Use Ollama API at localhost:11434
- Accept model name and strategy as parameters
- Return structured JSON with prediction and reasoning
- Add type hints and docstrings
- Include unit test skeleton in tests/test_triage_agent.py"
```

### Pattern 2 — Debug with Context

```bash
claude "The Wilcoxon test in src/analysis/stats.py is producing p-values 
above 1.0. Here is the error: [paste error]. 
Look at the input data format and fix the issue. 
Explain what was wrong before making changes."
```

### Pattern 3 — Reproducibility Audit

```bash
claude "Audit the entire src/ directory for reproducibility issues:
1. Find any random calls without seed=42
2. Find any hardcoded paths that should be configurable
3. Find any missing version pins in requirements.txt
Report findings as a checklist. Do not make changes yet."
```

## 🔗 Related Notes
LN-Tool-OpenCode | 60 - Resources/61 Prompts/61.3 Dev-Tools/PT-ClaudeCode-Agent-Triage

---
---
id: LN-Tool-OpenCode
title: "OpenCode — Open-Source AI Coding Agent"
type: literature-note
subtype: tool
tags: [tool, opencode, coding-agent, open-source]
github: "https://github.com/opencode-ai/opencode"
puma_role: "Open-source alternative to Claude Code for code generation"
puma_phase: "F2, F3"
created: 2026-03-01
---

# OpenCode — Open-Source AI Coding Agent

> **Purpose in PUMA:** OpenCode provides an open-source, locally-runnable alternative to Claude Code — important for the project's commitment to open-source tooling and reproducibility without API costs.

## Configuration for PUMA

```yaml
# opencode.yaml
model: "ollama/llama3.2:8b"  # or any Ollama model
context:
  include:
    - "src/**/*.py"
    - "docs/specs/*.md"
    - "tests/**/*.py"
tools:
  - read_file
  - write_file
  - run_command
  - search_files
```

## Best Prompt Patterns

```
# Structured task with context
[CONTEXT]: Working on PUMA benchmark — a reproducible LLM evaluation 
framework for ICT project management.

[TASK]: Implement the function calculate_f1_macro() in 
src/metrics/classification.py

[SPEC]: 
- Input: y_true (list[str]), y_pred (list[str]), classes (list[str])
- Output: dict with keys: f1_macro, f1_per_class, precision, recall
- Use sklearn.metrics internally
- Add comprehensive docstring with example

[CONSTRAINTS]:
- Python 3.11
- No external deps beyond scikit-learn
- Type hints required
```

## 🔗 Related Notes
LN-Tool-ClaudeCode | 60 - Resources/61 Prompts/61.3 Dev-Tools/PT-OpenCode-Refactor

---
---
id: LN-Tool-BrowserOS
title: "Browser OS — AI Web Browsing Agent"
type: literature-note
subtype: tool
tags: [tool, browser-os, web-agent, automation]
puma_role: "Automated web research and dataset discovery"
puma_phase: "F0, F1"
created: 2026-03-01
---

# Browser OS — AI Web Browsing Agent

> **Purpose in PUMA:** Browser OS automates web-based research tasks: navigating academic databases, downloading papers, checking dataset availability, and verifying DOIs — freeing researcher time for higher-value analysis.

## Use Cases in PUMA

| Task | Prompt Pattern |
|------|---------------|
| Check paper availability | "Navigate to [DOI URL] and confirm the paper is open-access or provide alternatives" |
| Dataset verification | "Go to zenodo.org/records/5901893 and confirm: file format, size, licence, last update" |
| Citation count check | "Search Semantic Scholar for [paper title] and report citation count and recent citing papers" |
| Tool documentation | "Navigate to ollama.ai/docs and find the API parameter for controlling random seed" |

## Example PUMA Prompt

```
ROLE: You are a research assistant with web access.
CONTEXT: I am working on PUMA Project about LLM agents for project management.
OBJECTIVE: Find the 3 most recent papers (2024-2026) that benchmark 
           local LLMs on software engineering classification tasks.
INSTRUCTIONS:
1. Search arXiv.org with query: "local LLM benchmark software engineering 2024"
2. Filter for papers with available code repositories
3. For each paper: extract title, authors, date, arXiv ID, GitHub link
FORMAT: Markdown table with 5 columns: Title | Authors | Date | arXiv | GitHub
```

## 🔗 Related Notes
60 - Resources/61 Prompts/61.3 Dev-Tools/PT-BrowserOS-Web-Agent
