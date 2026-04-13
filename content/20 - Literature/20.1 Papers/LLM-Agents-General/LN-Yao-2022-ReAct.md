---
type: literature
title: "ReAct: Synergizing Reasoning and Acting in Language Models"
authors: ["Yao, Shunyu", "Zhao, Jeffrey", "Yu, Dian", "Du, Nan", "Shafran, Izhak", "Narasimhan, Karthik", "Cao, Yuan"]
first-author: "Yao"
year: 2022
status: reviewed
topic: llm-agents
relevance: 5
citekey: "@Yao2022ReAct"
venue: "ICLR 2023"
arxiv: "2210.03629"
doi: "10.48550/arXiv.2210.03629"
url: "https://arxiv.org/abs/2210.03629"
tags: [literature, llm-agents, react, reasoning, acting, prompting, puma-core, academic-writing, agents, api, architecture, benchmark, bibliography, chain-of-thought, citation, cot, critical-thinking, effort-estimation, embeddings, few-shot, fine-tuning, issue-triage, jira, keshav, literature-note, llm, moc, multi-agent, permanent-note, project-management, rag, reading-method, reasoning-action, red-teaming, research, retrieval, sdd, smart-pmo, spec-driven-development, story-points, triage, vector-db]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 3
---

# LN: Yao et al. (2022) — ReAct: Synergizing Reasoning and Acting

**Citation**: Yao, S., Zhao, J., Yu, D., Du, N., Shafran, I., Narasimhan, K., & Cao, Y. (2022). *ReAct: Synergizing reasoning and acting in language models*. arXiv:2210.03629. https://arxiv.org/abs/2210.03629

**Venue**: Presented at ICLR 2023.

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | System proposal + empirical evaluation |
| **Context** | Builds on CoT (Wei et al., 2022) and task-specific action spaces |
| **Correctness** | Rigorous evaluation on HotpotQA, FEVER, ALFWorld, WebShop |
| **Contributions** | (1) ReAct paradigm: interleaves Thought–Action–Observation cycles; (2) 69% on HotpotQA vs 28% for Act-only; (3) Reduces hallucination via grounding in external observations |
| **Clarity** | Excellent. Clear prompting examples. |

**Relevance**: ⭐⭐⭐⭐⭐ — Foundation paper for PUMA Stage 4–5 agent architecture.

---

## Pass 2 — Content

### Core Idea

ReAct = **Rea**soning + A**ct**ing. At each step an LLM alternates between:
- **Thought**: internal reasoning about what to do
- **Action**: calling an external tool (search, API, database)
- **Observation**: reading the tool output and continuing

This loop continues until the agent reaches a final answer. The key insight: verbal reasoning traces reduce hallucination because the agent's next action is grounded in what it actually retrieved, not in what it "remembers."

### Key Results
- HotpotQA: ReAct 69% vs. CoT 57% vs. Act-only 28%
- FEVER: ReAct 80% vs. CoT 66%
- ALFWorld: ReAct outperforms imitation learning on 6/6 task types
- WebShop: ReAct 40.7% vs. Act-only 35.3%

### Failure Modes
- Repetitive loops when the tool returns unexpected results
- Inability to recover from an incorrect reasoning path (→ addressed by Reflexion, Shinn et al. 2023)

---

## Pass 3 — Virtual Reconstruction

ReAct's contribution is essentially a prompt format: interleaving reasoning and action in the few-shot examples is all that is needed to make standard LLMs exhibit agent-like behaviour. This is practically significant for PUMA: our agents can use ReAct-style prompting without any fine-tuning.

**Q1 (How can I use this?)**: ReAct is the base pattern for PUMA Stage 4 triage agent. When the agent retrieves similar historical issues (RAG step), the Thought–Action–Observation loop structures that retrieval into the classification decision.

**Q2 (Does it do what it claims?)**: The HotpotQA benchmark involves factual QA with Wikipedia. The transfer to PM triage is non-trivial — the "observations" in PM would be retrieved Jira issues, not Wikipedia paragraphs. The gain may differ.

**Q3 (What if?)**: What if the LLM generates internally inconsistent Thought steps? PUMA could implement a simple consistency check: verify that the final label in the Answer step matches the reasoning in the Thought step.

---

## PUMA Integration

- **Stage 4**: ReAct loop structures RAG-enhanced triage (Thought → retrieve similar issues → classify)
- **Stage 5**: SmartPMO agents use ReAct as the base interaction pattern
- Related: [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]]
- Related: [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]]

## Related Notes

- [[30 - Permanent/31 Concepts/PN-ReAct-AgentPattern]] — permanent note synthesising this paper
- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — Stage 4/5 architecture
- [[30 - Permanent/33 Frameworks/PN-SDD-Framework]]
- [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]] — Stage 4 RAG agent uses ReAct
- [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]] — Stage 5 SmartPMO agents
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Masterman-2024-AgentArchSurvey]] — agent architecture context
- [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]] — PUMA system architecture

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
