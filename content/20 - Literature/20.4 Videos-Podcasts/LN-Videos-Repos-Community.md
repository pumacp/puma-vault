---
id: LN-Video-Karpathy-Tokenization
title: "Video: Let's build the GPT Tokenizer — Andrej Karpathy"
type: literature-note
subtype: video
tags: [literature, video, youtube, karpathy, tokenization, llm-internals]
author: "Andrej Karpathy"
channel: "Andrej Karpathy"
url: "https://youtu.be/zduSFxRajkE"
year: 2024
duration: "2h13m"
puma_relevance: "Understanding tokenisation explains why LLM output format matters for triage labels. 'Critical' vs 'critical' may produce different token sequences → affects reproducibility."
watched_status: partial
created: 2026-03-01
---

# Video: Let's build the GPT Tokenizer — Andrej Karpathy

> **One-sentence summary:** Deep-dive into how text is tokenised by LLMs (byte-pair encoding), explaining why specific word choices in prompts have non-obvious effects on model behaviour.

---

## 🎯 Key Insights for PUMA

**Insight 1 — Capitalisation matters:**
The token for "Critical" and "critical" may differ in some tokenisers. This means consistently using capital-first priority labels in prompts may improve parsing reliability.

**Insight 2 — Token boundary effects:**
Labels like "High priority" may be tokenised differently than just "High". The prompt template should end with just the label word to avoid token ambiguity.

**Insight 3 — Rare tokens:**
Priority labels like "Critical" are frequent enough in training data to be single tokens in most LLaMA/Mistral vocabularies. "Story Points" may be split across multiple tokens.

---

## 📝 Cornell Notes

| **Question** | **Notes** |
|-------------|-----------|
| Do tokenisers vary across models? | Yes — Llama 3.2 and Mistral 7B have different tokeniser vocabularies |
| Should PUMA verify tokenisation? | Log token counts per prompt as part of experiment metadata |
| Impact on reproducibility? | Temperature=0 + seed=42 controls this, but worth documenting |

**Summary:** Tokenisation is a hidden source of variance between models. Document which tokeniser each model uses and log prompt token counts in experiment metadata.

---

## 🔗 Connections

**Threat to validity:** [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] (threats section)
**Related concept:** [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] (LLM Agents section)

---
---
id: LN-Video-Codina-SLR-AI
title: "Video: Cómo hacer una revisión bibliográfica con IA — Lluis Codina"
type: literature-note
subtype: video
tags: [literature, video, youtube, codina, slr, ai-research, marco-veritas]
author: "Lluis Codina"
channel: "Lluis Codina"
url: "https://www.youtube.com/watch?v=pg0AJNvK_Bk"
year: 2024
duration: "~45m"
puma_relevance: "Source of the 'Marco Veritas' framework used in PUMA's AI use declaration (Section 1.8). Core principles: no delegation of judgement, traceability, cross-validation, substantial rewriting."
watched_status: complete
created: 2026-03-01
---

# Video: How to do a Literature Review with AI — Lluis Codina

> **One-sentence summary:** Codina proposes "Marco Veritas" — a practical ethical framework for using AI in academic research that preserves intellectual integrity while leveraging AI efficiency gains.

---

## 🎯 Marco Veritas Principles (Used in PUMA Section 1.8)

1. **No delegation of judgement** — AI generates options; researcher decides
2. **Traceability** — Log every significant AI use with tool, purpose, output, action
3. **Cross-validation** — Verify all AI-sourced facts in primary sources
4. **Substantial rewriting** — No AI text incorporated verbatim
5. **Proactive declaration** — Declare AI use upfront, not only when asked
6. **Tutor validation** — Discuss AI use with academic supervisor

---

## 🔗 Connections

**Implemented in:** [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] (Section 1.8)
**Logged via:** [[50 - Areas/51 Research/AI-Use-Log]]

---
---
id: LN-Reddit-LocalLlama-Benchmarks
title: "Reddit r/LocalLlama — Benchmark Discussions"
type: literature-note
subtype: reddit
tags: [literature, reddit, local-llm, benchmarks, informal, community]
url: "https://reddit.com/r/LocalLlama"
puma_relevance: "Community knowledge about local model performance, hardware requirements, and practical considerations not covered in academic papers. Useful for model selection and hardware calibration."
created: 2026-03-01
---

# Reddit r/LocalLlama — Benchmark Discussions

> **Type:** Informal community source. Treat as exploration/hypothesis generation only. Never cite directly in academic thesis without primary source verification.

---

## 🎯 Key Community Observations for PUMA

**Thread type 1 — Phi-3.5 Mini performance:**
Community reports suggest Phi-3.5 Mini (3.8B) outperforms Mistral 7B on some classification tasks while using 40% less RAM. This motivates including it as a fallback/bonus model in PUMA.

**Thread type 2 — Quantization effects:**
Q4_K_M quantization (used in Ollama default) reportedly loses ~2-5% accuracy vs Q8 for classification tasks. PUMA should document quantization level used.

**Thread type 3 — CPU vs GPU inference:**
CPU-only inference (PUMA's constraint) introduces non-determinism in some edge cases even with temperature=0. Community workarounds: Docker isolation + pinned CPU affinity.

---

## ⚠️ Validation Requirements

Everything from Reddit is a **fleeting note / hypothesis** until verified:
- [ ] Phi-3.5 vs Mistral comparison → find academic paper or run own test
- [ ] Quantization accuracy loss → verify with Ollama/LM Studio comparison
- [ ] CPU non-determinism → test empirically with seed=42

---

## 🔗 Connections

[[30 - Permanent/31 Concepts/PN-LLM-Local-vs-Cloud]] (quantization section) | [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]]

---
---
id: LN-Repo-Langgraph-Template
title: "Repo: fastapi-langgraph-agent-production-ready-template"
type: literature-note
subtype: repo
tags: [literature, repo, langgraph, fastapi, agent, template]
author: "wassim249"
github: "https://github.com/wassim249/fastapi-langgraph-agent-production-ready-template"
stars: "~200"
puma_relevance: "Reference architecture for production-grade LLM agent systems. Relevant for PUMA Stage 4-5 (RAG + multi-agent). Shows how to structure FastAPI + LangGraph + Docker for reproducible agent deployment."
relevance: medium
created: 2026-03-01
---

# Repo: fastapi-langgraph-agent-production-ready-template

> **Architecture pattern:** FastAPI (REST API) → LangGraph (agent workflow) → Ollama/OpenAI (inference) → Docker (deployment)

## Key Patterns Relevant to PUMA

**1. State management in multi-turn agent workflows**
LangGraph's `StateGraph` pattern is useful if PUMA's orchestrator needs to track conversation history or multi-step reasoning chains.

**2. Tool integration pattern**
Shows how to register Python functions as agent tools — directly applicable to PUMA's architecture where the triage agent could call dataset lookup, priority classification, and reporting tools.

**3. Async + streaming**
Production pattern for handling multiple concurrent inference requests — relevant if PUMA is extended to a web service.

## PUMA Use
- Stage 1-3: Not needed (simple pipeline, not agentic)
- Stage 4+ (RAG): Reference for retriever integration
- Stage 5 (Smart PMO): Reference for multi-agent coordination

## 🔗 Connections
[[20 - Literature/20.6 Tools/LN-Tools-Dev-Stack]] | [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]]
