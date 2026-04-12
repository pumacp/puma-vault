---
id: VID-RAG-001
title: "How to Build a Scalable RAG System for AI Apps (Full Architecture)"
type: video-note
channel: "ByteMonk"
url: "https://www.youtube.com/watch?v=4KiiKQ9RVvA"
year: 2025
status: to-watch
tags: [video, rag, architecture, scalable]
phase: ['F2', 'F3', 'F4']
rating: 5
created: 2026-04-06
updated: 2026-04-06
---

# 🎬 How to Build a Scalable RAG System for AI Apps (Full Architecture)

**Channel**: ByteMonk
**URL**: https://www.youtube.com/watch?v=4KiiKQ9RVvA
**Relevance**: ⭐⭐⭐⭐⭐

---

## Summary

Comprehensive architectural guide for production RAG systems covering chunking strategies, embedding model selection, vector store configuration (Qdrant vs ChromaDB vs Pinecone), retrieval augmentation patterns, and latency optimisation. Includes a full code walkthrough with performance benchmarks.

---

## PUMA Relevance

Primary reference for PUMA Stage 4 RAG pipeline design. The chunking strategy section informs how PUMA splits Jira issue text (title + description together, no splitting). The Qdrant configuration guide is directly used in PUMA's Docker Compose stack. The latency benchmarks help validate PUMA's <30s inference target per issue.

---

## Related Notes

- [[20 - Literature/20.6 Tools/LN-Tools-RAG-VectorDB]]
- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]]
- [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI-v2]]
