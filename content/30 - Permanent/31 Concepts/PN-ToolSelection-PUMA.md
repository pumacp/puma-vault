---
id: PN-ToolSelection-PUMA
title: "PUMA tool selection follows a hierarchy: reproducibility first, then capability, then convenience"
type: permanent
created: 2026-04-06
updated: 2026-04-06
tags: [permanent-note, tool-selection, reproducibility, local-inference, puma-design]
---

# PUMA tool selection follows a hierarchy: reproducibility first, then capability, then convenience

Every tool in PUMA's stack was chosen through a consistent decision hierarchy. Understanding this hierarchy explains why specific tools were selected over seemingly more capable alternatives.

---

## The Decision Hierarchy

**1. Reproducibility** (non-negotiable — Constitution Article 1)
→ Does this tool produce deterministic output given fixed inputs?
→ Can any researcher reproduce results without paying for proprietary access?
→ Are versions pinnable (no silent updates that change behaviour)?

**2. Capability** (sufficient, not maximal)
→ Can this tool meet the minimum threshold for the task? (F1 ≥ 0.55, MAE ≤ 3.0 SP)
→ Is it *capable enough*, not necessarily *most capable*?

**3. Convenience** (last consideration)
→ After (1) and (2) are satisfied, prefer simpler and faster tools

---

## How This Drives Specific Choices

**Local Ollama over cloud APIs**: GPT-4 has higher capability ceiling, but cloud API results change as model updates silently. Ollama + pinned model digest = bit-identical reproduction. Reproducibility wins.

**Mistral 7B over Llama 3.2 70B**: 70B has higher capability, but requires GPU hardware beyond 16GB RAM. 7B is *capable enough* for the task while meeting the hardware constraint. Capability (sufficient) wins over maximal capability.

**ChromaDB → Qdrant migration**: ChromaDB is simpler (convenience), but Qdrant supports metadata filtering needed for Stage 4 production (capability). Capability wins at Stage 4.

**Poetry over requirements.txt**: Both achieve dependency pinning, but Poetry handles transitive dependency conflicts correctly (reproducibility over convenience of a simpler tool).

**Pydantic AI for schema validation**: Convenience would be string parsing. Pydantic ensures outputs conform to schema even when the LLM produces slight format variations (reliability/reproducibility).

---

## The Fallback Stack

For each primary tool, a fallback exists that maintains the same reproducibility principle:

| Primary | Fallback | Reason |
|---------|---------|--------|
| Llama 3.2 8B | Phi-3.5 Mini 3.8B | Latency risk: <30s guaranteed |
| Ollama | LM Studio | Installation failure risk |
| Qdrant | ChromaDB | Setup complexity risk |
| LangGraph | AutoGen | Cyclic graph complexity risk |
| FastAPI | Flask | Framework overhead risk |

---

## References

- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] — Article 1 (reproducibility non-negotiable)
- [[30 - Permanent/31 Concepts/PN-LLM-Local-vs-Cloud]] — Why local inference wins on reproducibility
- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]] — ChromaDB → Qdrant migration logic
- [[SP-Architecture]] — Full technology stack
- [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] — §3.3 Models, §3.5 Baselines

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
