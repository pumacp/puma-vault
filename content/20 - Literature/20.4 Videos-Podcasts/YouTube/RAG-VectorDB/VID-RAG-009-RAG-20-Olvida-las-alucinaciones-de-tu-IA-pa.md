---
id: VID-RAG-009
title: "RAG 2.0: Olvida las alucinaciones de tu IA para SIEMPRE (tutorial Python)"
type: video-note
channel: "Joaquín Ruiz Lite"
url: "https://www.youtube.com/watch?v=gvzibu9-OUc"
year: 2025
status: to-watch
tags: [video, rag, hallucination, python, tutorial]
phase: ['F2', 'F3']
rating: 4
created: 2026-04-06
updated: 2026-04-06
---

# 🎬 RAG 2.0: Olvida las alucinaciones de tu IA para SIEMPRE (tutorial Python)

**Channel**: Joaquín Ruiz Lite
**URL**: https://www.youtube.com/watch?v=gvzibu9-OUc
**Relevance**: ⭐⭐⭐⭐

---

## Summary

Python tutorial implementing anti-hallucination RAG strategies: (1) semantic reranking (cross-encoder reranker to select the most relevant passages), (2) faithfulness scoring (verify that the generated answer is grounded in retrieved passages), (3) citation injection (force the model to cite specific retrieved passages in its output).

---

## PUMA Relevance

The faithfulness scoring and citation injection techniques are applicable to PUMA Stage 4: a triage agent that must cite which historical issue it is using as evidence for its priority classification. This makes the classification auditable (Constitution Article 7). The reranker pattern could be added between Qdrant retrieval and Llama 3.2 inference.

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]]
- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
