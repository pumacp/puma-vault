---
id: VID-LOC-001
title: "Mac Mini M4 básico para LLM — Probamos modelos de lenguaje para ver sus límites"
type: video-note
channel: "La Hora Maker"
url: "https://www.youtube.com/watch?v=ODSqFVW_46A"
year: 2024
status: to-watch
tags: [video, ollama, mac-mini, hardware, benchmark]
phase: ['F1', 'F2']
rating: 5
created: 2026-04-06
updated: 2026-04-06
---

# 🎬 Mac Mini M4 básico para LLM — Probamos modelos de lenguaje para ver sus límites

**Channel**: La Hora Maker
**URL**: https://www.youtube.com/watch?v=ODSqFVW_46A
**Relevance**: ⭐⭐⭐⭐⭐

---

## Summary

Systematic benchmarking of various LLM models on a base Mac Mini M4 (16GB unified memory). Tests: inference latency (tokens/second), maximum context length before degradation, model quality on coding and reasoning tasks. Models tested include Llama 3.2 8B, Mistral 7B, Phi-3.5 Mini, and Qwen 7B — all quantized at Q4_K_M.

---

## PUMA Relevance

Directly validates PUMA's hardware assumptions for local inference. The benchmark data confirms that Llama 3.2 8B Q4_K_M runs at ~15 tokens/second on M4 Mac Mini — sufficient for PUMA's Stage 1 triage (50-token classification output ≈ 3 seconds per issue). The Phi-3.5 Mini fallback (~40 tokens/second) is validated for the latency-critical path.

---

## Related Notes

- [[20 - Literature/20.6 Tools/LN-Tools-AI-Assistants-LLMs]]
- [[30 - Permanent/31 Concepts/PN-ToolSelection-PUMA]]
- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
