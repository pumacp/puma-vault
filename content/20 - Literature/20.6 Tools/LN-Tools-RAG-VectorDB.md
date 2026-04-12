---
id: LN-Tools-RAG-VectorDB
title: "🗃️ Tools — RAG Systems & Vector Databases"
type: literature-tools
tags: [tools, rag, vector-database, qdrant, chromadb, llamaindex, embeddings, puma]
created: 2026-04-06
updated: 2026-04-06
phase: [F0, F1, F2, F3, F4]
---

# 🗃️ Tools — RAG Systems & Vector Databases

> Tools for Retrieval-Augmented Generation (RAG) pipeline in PUMA.
> Used in: Stage 4 (RAG-enhanced triage) and document knowledge base for research.
> See also: [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]]

---

## Private Knowledge Base (Research Phase)

### AnythingLLM
- **URL**: https://anythingllm.com
- **Function**: Local RAG platform; web interface for chat over PDFs without sending data to third parties
- **Phase**: F0 – F1
- **PUMA use**: Building a private knowledge base of all downloaded papers; semantic queries over the SLR corpus without re-reading; privacy-preserving (data stays local)
- **Backend**: Ollama (nomic-embed-text for embeddings) + ChromaDB (local vector store)
- **Justification**: All paper content stays on local hardware; GDPR-compliant research workflow
- **Related**: [[50 - Areas/51 Research/Keshav-ThreePass/Keshav-Reading-Log]]

### NotebookLM (Google)
- **URL**: https://notebooklm.google.com
- **Function**: Google's document-grounded conversational AI
- **Phase**: F0 – F1
- **PUMA use**: Verified Q&A against specific paper PDFs; audio synthesis of literature for mobile listening
- **Limitation**: Cloud-based (data sent to Google); used only for non-sensitive research documents

---

## Embedding Models

### nomic-embed-text (via Ollama)
- **URL**: https://ollama.ai/library/nomic-embed-text
- **Function**: Local semantic embedding model
- **Dimensions**: 768
- **Phase**: F2 – F4
- **PUMA use**: Generating embeddings for Jira SR historical issues (Stage 4 RAG); semantic similarity search for retrieving relevant historical examples
- **Install**: `ollama pull nomic-embed-text`
- **Justification**: Free, local, no API cost; compatible with both Qdrant and ChromaDB; 768-dim embeddings suitable for issue text (avg ~50-300 tokens)

---

## Vector Databases

### Qdrant
- **URL**: https://qdrant.io
- **Function**: High-performance vector database for production RAG systems
- **Phase**: F2 – F4
- **PUMA use (Stage 4)**: Storing embeddings of Jira SR historical issues; semantic similarity search for RAG-enhanced triage agent; metadata filtering by project, priority class, date
- **Install**: `docker run -p 6333:6333 qdrant/qdrant`
- **Key features**: HNSW index for fast approximate search; payload filtering; persistent storage
- **Justification**: Production-grade; supports metadata filters (filter by Apache project → reduce noise); native Python client
- **Related**: [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]]

### ChromaDB
- **URL**: https://www.trychroma.com
- **Function**: Lightweight embeddable Python vector database; no server required
- **Phase**: F2
- **PUMA use**: Early Stage 4 prototyping; in-memory or disk-persistent vector store for rapid iteration
- **Install**: `pip install chromadb`
- **When to use**: Pass the simplicity test — if the prototype just needs semantic search without metadata filtering, ChromaDB is faster to set up than Qdrant
- **Migration path**: Prototype → ChromaDB → Production → Qdrant (when metadata filtering needed)

---

## RAG Frameworks

### LlamaIndex
- **URL**: https://www.llamaindex.ai
- **Function**: Python RAG framework for indexing, retrieval, and generation
- **Phase**: F2 – F4
- **PUMA use (Stage 4)**:
  - Indexing Jira SR historical issues into Qdrant with nomic-embed-text embeddings
  - Building the RAG retrieval pipeline (query → embed → retrieve top-k issues → inject into prompt)
  - `OllamaEmbedding` + `QdrantVectorStore` integration
- **Install**: `pip install llama-index llama-index-embeddings-ollama llama-index-vector-stores-qdrant`
- **Justification**: Specialised for RAG (vs. LangChain which is general); simpler pipeline for Stage 4; native Ollama + Qdrant support
- **Alternative**: LangChain for more general agentic patterns (Stage 5)

---

## RAG Pipeline for PUMA Stage 4

```
Historical Jira SR issues (Ortu 2015)
           ↓
  nomic-embed-text (Ollama)
           ↓ 768-dim embeddings
     Qdrant vector store
           ↓
New issue (query) → embed → retrieve top-5 similar issues
           ↓
 [Issue text + 5 similar historical issues + their labels]
           ↓
  Llama 3.2 8B prompt (ReAct pattern)
           ↓
     Priority classification
```

**Metrics for Stage 4 evaluation**:
- Recall@5: proportion of retrieved issues from correct priority class
- F1-macro: improvement over Stage 1 (CoT without RAG)
- Latency overhead: additional ms from retrieval step

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]]
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Yao-2022-ReAct]]
- [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI-v2]]
