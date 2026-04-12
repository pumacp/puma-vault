---
id: PN-LLM-Local-vs-Cloud
title: "Local LLM inference trades capability ceiling for reproducibility, privacy, and zero marginal cost"
type: permanent
created: 2026-03-15
updated: 2026-04-06
tags: [permanent-note, llm, local-inference, reproducibility, sustainability, puma]
---

# Local LLM inference trades capability ceiling for reproducibility, privacy, and zero marginal cost

Local LLMs (running on consumer hardware via Ollama) cannot match GPT-4's raw capability, but for benchmark research they offer three decisive advantages that cloud models cannot replicate.

---

## The Trade-off

| Dimension | Local (Ollama + Llama 3.2 8B) | Cloud (GPT-4, Claude Opus) |
|-----------|-------------------------------|----------------------------|
| Capability ceiling | Lower (8B parameters) | Higher (>100B parameters) |
| Reproducibility | Perfect (seed=42, temp=0, fixed version) | Imperfect (model updates, API non-determinism) |
| Cost per experiment | $0 (after hardware) | ~$0.10–$1.00 per 1k tokens |
| Privacy | Data stays local | Data sent to third-party servers |
| Carbon footprint | Measurable, lower | Difficult to measure, higher |
| Availability | Always (no internet required) | API-dependent |

---

## Why This Matters for PUMA

Angermeir et al. (2025) found that only 5 of 18 LLM-SE papers with published artefacts were actually executable. A primary cause: cloud API changes break experimental pipelines. Local inference with pinned model versions (Ollama uses content-addressable model registry) guarantees bit-identical reproduction.

Calikli & Alhamed (2025) showed that prompt format has non-monotonic effects on estimation quality — effects that vary across model versions. Only reproducible local inference allows controlled comparison of prompting strategies.

---

## Falsifiable Claim for PUMA

**H1 and H2 evaluate local models.** If local models fail to surpass baselines, this is a valid scientific result (failure to reject H₀) — not a study weakness. It establishes the current capability boundary for local LLMs in PM tasks.

This is distinct from a study using GPT-4: if GPT-4 succeeds, the result cannot be reproduced without payment and may not hold with the next API update.

---

## Practical Notes for PUMA

- **Llama 3.2 8B** (Q4_K_M, ~5GB RAM): primary model. Good reasoning, instruction following.
- **Mistral 7B** (Q4_K_M, ~4.5GB RAM): comparison model. Faster inference, different tokenisation.
- **Phi-3.5 Mini 3.8B** (~2GB RAM): fallback if latency > 60s on target hardware.
- **Ollama commands**: `ollama pull llama3.2:8b-instruct-q4_K_M`, `ollama run mistral:7b-instruct-q4_K_M`

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]] — Stage 4 RAG on local models
- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — Reproducibility rationale
- [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — PUMA evaluation targets
- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] — Art. 2 Local-Only Inference
- [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] — §3.3 Models
- [[50 - Areas/54 Sustainability/Carbon-Tracking-Log]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
