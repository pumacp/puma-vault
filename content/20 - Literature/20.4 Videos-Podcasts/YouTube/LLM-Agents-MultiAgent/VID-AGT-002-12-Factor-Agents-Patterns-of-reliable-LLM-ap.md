---
id: VID-AGT-002
title: "12-Factor Agents: Patterns of reliable LLM applications"
type: video-note
channel: "AI Engineer"
url: "https://www.youtube.com/watch?v=8kMaTybvDUw"
year: 2025
status: to-watch
tags: [video, agents, reliability, design-patterns]
phase: ['F2', 'F3']
rating: 5
created: 2026-04-06
updated: 2026-04-06
---

# 🎬 12-Factor Agents: Patterns of reliable LLM applications

**Channel**: AI Engineer
**URL**: https://www.youtube.com/watch?v=8kMaTybvDUw
**Relevance**: ⭐⭐⭐⭐⭐

---

## Summary

Dex Horthy (HumanLayer) proposes 12 design principles for production-grade LLM agent systems, analogous to the 12-Factor App methodology. Key factors: (1) stateless computation, (2) own your prompts, (3) small context windows, (4) explicit tool boundaries, (5) human escalation paths. Each factor addresses a specific reliability failure mode observed in production.

---

## PUMA Relevance

The 12 factors provide a design checklist for PUMA's Stage 4–5 agents. Factors directly relevant: #4 (explicit tool boundaries → PUMA's Pydantic AI schema validation), #5 (human escalation → PUMA's HITL Constitution Article 4), #1 (stateless → PUMA's LangGraph checkpointed state). Can cite as engineering best-practices reference alongside academic papers.

---

## Related Notes

- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]]
- [[20 - Literature/20.6 Tools/LN-Tools-Dev-Environment]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI-v2]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
