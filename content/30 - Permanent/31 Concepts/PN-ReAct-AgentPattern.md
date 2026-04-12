---
id: PN-ReAct-AgentPattern
title: "The ReAct pattern reduces LLM hallucination by grounding each reasoning step in observable external evidence"
type: permanent
created: 2026-04-06
updated: 2026-04-06
tags: [permanent-note, react, hallucination, grounding, agent-pattern, reasoning]
---

# The ReAct pattern reduces LLM hallucination by grounding each reasoning step in observable external evidence

LLMs hallucinate because they generate text based on learned distributions, not on verified facts. The ReAct pattern forces each reasoning step to be either (a) derived from the previous observation, or (b) explicitly requesting new information via a tool call.

---

## The Mechanism

**Chain-of-Thought (CoT)**: Thought₁ → Thought₂ → Thought₃ → Answer
- All thoughts are generated from the model's weights alone
- Each thought can amplify an error from the previous thought
- No grounding in external reality

**ReAct**: Thought₁ → Action₁ → Observation₁ → Thought₂ → Action₂ → Observation₂ → Answer
- Each Action calls an external tool (search, database, API)
- Each Observation is real-world data, not model generation
- Thoughts are constrained by what the tool returned
- Errors in Thought₁ can be corrected by Observation₁

---

## Why This Matters for PUMA

**Stage 1 (triage without RAG)**: Few-shot CoT. No tool calls. Higher hallucination risk for ambiguous issues.

**Stage 4 (triage with RAG)**: ReAct. The triage agent retrieves similar historical issues (Action), reads their priority labels (Observation), and classifies the current issue (Answer). Historical ground truth constrains the model.

**Hypothesis**: ReAct-based Stage 4 triage will outperform CoT-based Stage 1 triage on ambiguous issues (those near class boundaries in F1-macro analysis).

---

## References

- Yao, S., et al. (2022). ReAct. arXiv:2210.03629 → [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Yao-2022-ReAct]]

## Related Notes

- [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]]
- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]]
- [[30 - Permanent/30 Zettelkasten-Hub/ST-Prompting-Strategies]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]

## Additional Links

- [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]] — Stage 4 RAG+ReAct plan
- [[SP-Triage-Agent]] — Triage agent spec
- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — Multi-agent context
