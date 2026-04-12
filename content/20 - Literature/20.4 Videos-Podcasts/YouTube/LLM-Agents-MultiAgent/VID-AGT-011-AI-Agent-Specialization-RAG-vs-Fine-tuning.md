---
id: VID-AGT-011
title: "AI Agent Specialization. RAG vs Fine-tuning — T3chFest 2026"
type: video-note
channel: "T3chFest"
url: "https://www.youtube.com/watch?v=weNLIRJutC8"
year: 2026
status: to-watch
tags: [video, agents, rag, fine-tuning, specialisation]
phase: ['F1', 'F4']
rating: 4
created: 2026-04-06
updated: 2026-04-06
---

# 🎬 AI Agent Specialization. RAG vs Fine-tuning — T3chFest 2026

**Channel**: T3chFest
**URL**: https://www.youtube.com/watch?v=weNLIRJutC8
**Relevance**: ⭐⭐⭐⭐

---

## Summary

Conference presentation at T3chFest 2026 comparing RAG-based specialisation vs fine-tuning for domain-specific agents. Key finding: for tasks with evolving data (like Jira issue classification), RAG consistently outperforms fine-tuning because fine-tuned models become stale. For stable domains, fine-tuning is superior.

---

## PUMA Relevance

Directly supports PUMA's decision to use RAG (Stage 4) rather than fine-tuning for the triage agent. The 'evolving data → RAG superior' finding applies exactly to PUMA: Jira issue vocabularies and priorities evolve with team practices, making a RAG approach over the historical issue corpus more robust than a fine-tuned classifier.

---

## Related Notes

- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Jimenez-2023-SWEbench]]
- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]]
- [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI-v2]]
