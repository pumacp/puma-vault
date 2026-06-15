---
type: literature
title: "Generative Agents: Interactive Simulacra of Human Behavior"
authors: ["Park, Joon Sung", "O'Brien, Joseph C.", "Cai, Carrie Jun", "Morris, Meredith Ringel", "Liang, Percy", "Bernstein, Michael S."]
first-author: "Park"
year: 2023
status: reviewed
topic: llm-agents
relevance: 4
citekey: "@Park2023GenerativeAgents"
venue: "ACM UIST 2023"
arxiv: ""
doi: "10.1145/3586183.3606763"
url: "https://dl.acm.org/doi/abs/10.1145/3586183.3606763"
tags: [literature, llm-agents, generative-agents, simulacra, human-behavior, multi-agent, memory, reflection, puma-core, agents, architecture, benchmark, citation, critical-thinking, effort-estimation, keshav, literature-note, llm, moc, project-management, research, social-simulation, story-points]
created: 2026-04-13
updated: 2026-06-15
keshav-pass: 3
---

# LN: Park et al. (2023) — Generative Agents: Interactive Simulacra of Human Behavior

> [!cite] Bibliographic Reference
> **Citation**: Park, J. S., O'Brien, J. C., Cai, C. J., Morris, M. R., Liang, P., & Bernstein, M. S. (2023). *Generative agents: Interactive simulacra of human behavior*. ACM UIST 2023. https://doi.org/10.1145/3586183.3606763
> **Venue**: ACM Symposium on User Interface Software and Technology (UIST) 2023. Stanford University / Google.

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | System design + user study |
| **Context** | Smallville: a 25-agent sandbox where LLM-powered agents live, work, and interact as if human |
| **Correctness** | Evaluated via expert human raters; ablation studies on memory, reflection, and planning components |
| **Contributions** | (1) Memory stream: timestamped event log with relevance/recency/importance scoring; (2) Reflection: agents synthesize higher-level insights from memories; (3) Planning: daily schedules decomposed to atomic actions; (4) Emergent social behaviors: election organizing, rumor spreading |
| **Clarity** | Excellent. Architecture fully described. Video demo available. |

> [!success] Relevance: ⭐⭐⭐⭐
> The memory stream + reflection architecture directly maps to PUMA's Stage 5 SmartPMO agents, which need persistent memory across PM sessions.

---

## Pass 2 — Content

### Architecture: Three Components

```
Memory Stream ──→ Retrieval ──→ Actor (plans + actions)
     ↑                              |
     └──────── Reflection ←─────────┘
                    ↑
               (nightly synthesis)
```

**Memory Stream**: Every agent event (observation, conversation, action) is stored as a timestamped entry with three scores:
- **Recency**: exponential decay from the last access
- **Importance**: LLM-rated 1–10 ("How significant is this?")
- **Relevance**: cosine similarity to the current query

**Reflection**: Every ~200 memory tokens, the agent synthesizes abstract insights: *"Klaus Mueller is passionate about environmental issues"* from specific memories about Klaus's actions.

**Planning**: Agents create coarse daily plans (*"Wake up, exercise, work on research, lunch..."*) decomposed into 5–15 minute actions.

### Emergent Behaviors
- Agents autonomously organized a Valentine's Day party (never explicitly programmed)
- A rumor about a candidate in the mayoral election spread to 12 of 25 agents within 2 days
- Agents maintained consistent persona traits across multi-day simulations

### Ablation Results
| Component removed | Impact |
|-------------------|--------|
| No reflection | Agents repeat actions mechanically; no insight development |
| No planning | Agents become reactive; lose time-consistency |
| No memory retrieval | Agents forget context; contradictions emerge |

---

## Pass 3 — Virtual Reconstruction

**Q1 (Memory for PUMA SmartPMO)**: PUMA Stage 5 agents managing PM workflows need memory across sprints. The memory stream architecture (recency × relevance × importance scoring) is directly applicable to a PM agent that must remember: past sprint retrospectives, team velocity patterns, and stakeholder preferences.

**Q2 (Reflection for PUMA)**: A PUMA sprint manager agent could generate nightly reflections: *"Sprint 3 consistently underestimates story points for frontend tasks — adjust estimation strategy."* This is Reflexion applied to project management.

**Q3 (Scale)**: 25 agents in Smallville used GPT-3.5/4. PUMA Stage 5 with 5–7 specialized agents (Analyst, Architect, Dev, QA, PM) would require ~35k tokens/day per agent at Smallville scale — expensive with cloud LLMs, feasible with local inference.

---

## PUMA Integration

- **Stage 5 SmartPMO architecture**: Memory stream + reflection = foundation for PM agent persistence → [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]]
- **Agent design**: The importance scoring mechanism for PUMA should weight issues with SLA breaches and P1 priority as high-importance memories
- **Multi-agent coordination**: The Smallville interaction model (agents talk to each other) maps to PUMA BMAD agent roster conversations → [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]]

## Related Notes

- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — social simulation vs. task completion agents
- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]] — embedding-based memory retrieval
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Packer-2023-MemGPT]] — OS-based LLM memory management
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Shinn-2023-Reflexion]] — verbal self-reflection mechanism
- [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
