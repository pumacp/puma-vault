---
id: ST-Reproducibility-Cluster
title: "ST: Reproducibility in LLM-SE Research — Structure Note"
type: structure-note
tags: [zettelkasten, structure-note, reproducibility, llm, se, puma]
created: 2026-04-06
---

# ST: Reproducibility in LLM-SE Research — Structure Note

**Theme**: Why is reproducibility a crisis in LLM-SE research, and how does PUMA address it?

---

## Core Claims

1. **Only 5/18 LLM-SE papers with artefacts are executable** (Angermeir 2025) → [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]]
2. **Local inference + pinned models = bit-identical reproduction** → [[30 - Permanent/31 Concepts/PN-LLM-Local-vs-Cloud]]
3. **seed=42 + temperature=0 ensure determinism** → [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]]
4. **RAG complicates reproducibility when retrieval index changes** → [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]]

---

## Failure Taxonomy (Angermeir 2025)

| Failure type | PUMA mitigation |
|-------------|----------------|
| Missing dependencies | requirements.txt with pinned versions |
| Undocumented preprocessing | Documented scripts in repo |
| Non-deterministic LLM calls | temperature=0, seed=42, local Ollama |
| Absent random seeds | seed=42 everywhere |

→ [[20 - Literature/20.1 Papers/LN-Angermeir-2025-Reproducibility]]
→ [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] (Art. 1)
→ [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] (§3.8)
→ [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
