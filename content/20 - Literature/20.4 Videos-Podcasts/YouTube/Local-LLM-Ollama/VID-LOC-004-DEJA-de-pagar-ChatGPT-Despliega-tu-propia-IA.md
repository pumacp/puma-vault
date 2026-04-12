---
id: VID-LOC-004
title: "DEJA de pagar ChatGPT: Despliega tu propia IA Privada con Ollama + Docker"
type: video-note
channel: "Comarca IA"
url: "https://www.youtube.com/watch?v=a8ES9UrWSNc"
year: 2025
status: to-watch
tags: [video, ollama, docker, private, local]
phase: ['F2']
rating: 4
created: 2026-04-06
updated: 2026-04-06
---

# 🎬 DEJA de pagar ChatGPT: Despliega tu propia IA Privada con Ollama + Docker

**Channel**: Comarca IA
**URL**: https://www.youtube.com/watch?v=a8ES9UrWSNc
**Relevance**: ⭐⭐⭐⭐

---

## Summary

Step-by-step tutorial deploying Ollama in Docker with persistent model storage, automatic restart policies, and network isolation for privacy. Includes a Docker Compose template with Ollama + Open WebUI for a ChatGPT-like interface. Covers model volume management to avoid re-downloading after container restarts.

---

## PUMA Relevance

The Docker Compose template is directly usable in PUMA's infrastructure. PUMA's Docker Compose stack includes an Ollama service with a named volume for model persistence — exactly the pattern shown here. The network isolation approach aligns with PUMA's local-only inference requirement (Constitution Article 2).

---

## Related Notes

- [[20 - Literature/20.6 Tools/LN-Tools-Dev-Environment]]
- [[20 - Literature/20.6 Tools/LN-Tools-AI-Assistants-LLMs]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
