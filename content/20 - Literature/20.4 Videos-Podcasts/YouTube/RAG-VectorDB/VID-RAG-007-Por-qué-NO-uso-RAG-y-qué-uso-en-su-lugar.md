---
id: VID-RAG-007
title: "Por qué NO uso RAG (y qué uso en su lugar)"
type: video-note
channel: "Ruben Loan"
url: "https://www.youtube.com/watch?v=5xZxgqif-qg"
year: 2025
status: to-watch
tags: [video, rag, alternatives, context-engineering]
phase: ['F1']
rating: 3
created: 2026-04-06
updated: 2026-04-06
---

# 🎬 Por qué NO uso RAG (y qué uso en su lugar)

**Channel**: Ruben Loan
**URL**: https://www.youtube.com/watch?v=5xZxgqif-qg
**Relevance**: ⭐⭐⭐

---

## Summary

Contrarian perspective: Ruben Loan argues that for many use cases, RAG is overengineered. The alternative: context engineering (packing all relevant information into a large-context model's context window rather than retrieving from an external store). Claims this is simpler, more reliable, and often produces better results.

---

## PUMA Relevance

Important counterpoint for PUMA's RAG justification. For PUMA Stage 1–3 (zero-shot, few-shot, CoT without RAG), the 'context engineering over RAG' argument applies: PUMA deliberately does NOT use RAG for Stage 1–3 to establish a clean baseline. The video's argument also motivates testing whether Stage 4 RAG actually improves over Stage 3 CoT — that's PUMA's H2 hypothesis.

---

## Related Notes

- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]
- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI-v2]]
