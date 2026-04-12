---
id: VID-AGT-012
title: "Orquestación de Agentes: Control Determinista con Hooks"
type: video-note
channel: "DevExpert"
url: "https://www.youtube.com/watch?v=vCA2jBthyhA"
year: 2025
status: to-watch
tags: [video, agents, orchestration, determinism, hooks]
phase: ['F2', 'F3']
rating: 4
created: 2026-04-06
updated: 2026-04-06
---

# 🎬 Orquestación de Agentes: Control Determinista con Hooks

**Channel**: DevExpert
**URL**: https://www.youtube.com/watch?v=vCA2jBthyhA
**Relevance**: ⭐⭐⭐⭐

---

## Summary

Technical deep dive into deterministic agent orchestration using hooks — pre/post tool call callbacks that validate, log, and optionally override agent actions. Shows how to implement a validation layer that enforces business rules regardless of what the LLM generates.

---

## PUMA Relevance

The hooks pattern is directly applicable to PUMA's Pydantic AI schema validation layer. PUMA's output validation (TriageResult schema enforcement) is a post-generation hook that rejects malformed outputs and triggers retry. The determinism argument supports PUMA Constitution Article 1 (reproducibility).

---

## Related Notes

- [[20 - Literature/20.6 Tools/LN-Tools-Dev-Environment]]
- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
