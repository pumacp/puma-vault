---
id: VID-OBS-005
title: "E124 — Creando agentes con PydanticAI"
type: video-note
channel: "en_coders"
url: "https://www.youtube.com/watch?v=txRPLlkK4KE"
year: 2025
status: to-watch
tags: [video, pydanticai, agents, structured-output, python]
phase: ['F2', 'F3']
rating: 5
created: 2026-04-06
updated: 2026-04-06
---

# 🎬 E124 — Creando agentes con PydanticAI

**Channel**: en_coders  
**URL**: https://www.youtube.com/watch?v=txRPLlkK4KE  
**Relevance**: ⭐⭐⭐⭐⭐

---

## Summary

Spanish-language tutorial building AI agents with PydanticAI: defining agent output schemas as Pydantic models, configuring automatic retry on validation failure (max 3 retries with different temperature each time), streaming structured outputs, and integrating with Ollama as the inference backend.

---

## PUMA Relevance

PydanticAI is a core PUMA component for output validation. This tutorial shows exactly how PUMA's TriageResult schema (priority: Literal['Blocker','Critical','Major','Minor','Trivial'], reasoning: str) is enforced: Pydantic validates the output, and if it fails (e.g., model returns 'High' instead of 'Critical'), PydanticAI retries with a correction instruction. The Ollama integration is directly reusable.

---

## Related Notes

- [[20 - Literature/20.6 Tools/LN-Tools-Dev-Environment]]
- [[SP-Triage-Agent]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
