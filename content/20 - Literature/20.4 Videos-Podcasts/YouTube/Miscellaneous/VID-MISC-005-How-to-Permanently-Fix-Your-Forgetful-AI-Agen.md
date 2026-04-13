---
id: VID-MISC-005
title: "How to Permanently Fix Your Forgetful AI Agents (Full Guide)"
type: video-note
channel: "Arseny Shatokhin"
url: "https://www.youtube.com/watch?v=ZcWMSVGcZio"
year: 2025
status: to-watch
tags: [video, agents, memory, persistence, langgraph, architecture, effort-estimation, embeddings, issue-triage, moc, rag, retrieval, semantic-search, sprint, story-points, triage, vector-db, video-note]
phase: ['F3', 'F4']
rating: 4
created: 2026-04-06
updated: 2026-04-06
---

# 🎬 How to Permanently Fix Your Forgetful AI Agents (Full Guide)

> [!info] Video Details
> **Channel**: Arseny Shatokhin  
> **URL**: https://www.youtube.com/watch?v=ZcWMSVGcZio  
> **Relevance**: ⭐⭐⭐⭐

---

## Summary

Comprehensive guide to implementing persistent agent memory: types of memory (episodic = conversation history, semantic = factual knowledge, procedural = skill memory), storage backends (PostgreSQL for structured history, vector DB for semantic search, Redis for fast cache), and LangGraph checkpoint integration for session persistence.

---

## PUMA Relevance

Directly applicable to PUMA Stage 4–5. PUMA's LangGraph uses PostgreSQL checkpoints for episodic memory (persisting the triage session state across issues in a sprint), Qdrant for semantic memory (historical issue similarity), and the sprint board state for procedural memory (which issues have been classified). The three memory types framework appears in PUMA's architecture spec.

---

## Related Notes

- [[SP-Architecture]]
- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
