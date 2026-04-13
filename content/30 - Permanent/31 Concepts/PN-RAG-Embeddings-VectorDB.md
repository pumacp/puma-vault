---
id: PN-RAG-Embeddings-VectorDB
title: "RAG, embeddings, and vector databases enable LLMs to query external knowledge without fine-tuning"
type: permanent
created: 2026-03-20
updated: 2026-04-06
tags: [permanent-note, rag, embeddings, vector-database, llm, puma, architecture, chain-of-thought, cot, critical-thinking, dataset, effort-estimation, few-shot, fine-tuning, issue-triage, jira, llama, local-llm, memory, meta, metrics, moc, nlp, ollama, pipeline, precision-recall, project-management, react, reasoning-action, red-teaming, retrieval, story-points, triage, vector-db]
---

# RAG, embeddings, and vector databases enable LLMs to query external knowledge without fine-tuning

Retrieval-Augmented Generation (RAG) is the most practical technique for giving a local LLM access to a specific knowledge base without the cost and complexity of fine-tuning.

---

## Core Components

**Embeddings**: dense vector representations of text that capture semantic meaning. Similar texts produce similar vectors. Common local models: `nomic-embed-text` (Ollama), `all-MiniLM-L6-v2` (sentence-transformers). OpenAI equivalent: `text-embedding-3-small`.

**Vector Databases**: store embeddings for fast similarity search. The query "what is the estimated effort for this issue type?" is itself embedded and matched against stored embeddings of past issues. Local options: ChromaDB (in-memory, simple), Qdrant (production-grade), Weaviate.

**RAG pipeline**:
```
Document → Chunking → Embedding → Vector DB
              ↓
Query → Embedding → Similarity Search → Top-k Chunks
              ↓
Chunks + Query → LLM Prompt → Answer
```

---

## PUMA Relevance

**Stage 4 (Optional)**: RAG-enhanced triage agent. The agent retrieves the k most similar historical issues (from Jira SR) before classifying a new one. This tests whether historical context improves F1-macro beyond zero/few-shot prompting.

**Research question**: Does RAG retrieval from historical issues outperform few-shot prompting when historical labels are available?

**Expected complexity**: ALTA / MEDIO risk. Scheduled for Stage 4 if Stages 1–3 are complete.

**Local stack for PUMA RAG**:
- Embeddings: `nomic-embed-text` via Ollama
- Vector store: ChromaDB (simple) or Qdrant (production)
- Retrieval: LlamaIndex or direct ChromaDB client
- LLM: Llama 3.2 8B via Ollama

---

## Key Distinction: RAG vs Fine-Tuning

| Approach | When | Cost | PUMA Use |
|----------|------|------|----------|
| Zero/Few-shot | No training data in context | $0 / token-only | Stages 1–3 |
| RAG | Knowledge base available | Storage + retrieval overhead | Stage 4 |
| Fine-tuning | Large labelled dataset, stable distribution | GPU training, weeks | Out of scope |

---

## Cognitive Offloading Risk

RAG reduces cognitive load on the LLM by externalising knowledge — but this creates a dependency on retrieval quality. Poor chunking or embedding mismatch produces irrelevant context that degrades performance. PUMA Stage 4 must evaluate whether retrieval actually helps.

---

## References

- Lewis, P., et al. (2020). Retrieval-Augmented Generation for knowledge-intensive NLP tasks. *NeurIPS 2020*. arXiv:2005.11401
- LlamaIndex documentation: https://docs.llamaindex.ai

## Related Notes

- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — Reproducibility risk with RAG
- [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] — Few-shot vs RAG comparison
- [[30 - Permanent/31 Concepts/PN-ReAct-AgentPattern]] — ReAct loop + RAG (Stage 4)
- [[30 - Permanent/31 Concepts/PN-LLM-Local-vs-Cloud]] — Local RAG stack
- [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]] — Stage 4 RAG plan
- [[SP-Architecture]] — Layer 2 memory

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
