---
type: permanent
title: "Generative Agents — Memory Stream, Reflection, and Planning Architecture"
topic: agent-architectures
tags: [permanent, generative-agents, memory-stream, reflection, planning, agent-architecture, llm, simulation, emergent-behavior, puma-core, research, agents, architecture, multi-agent, smart-pmo, persistent-memory]
created: 2026-04-13
updated: 2026-06-15
aliases: ["Generative Agents", "Memory Stream", "Agent Simulation", "Smallville Agents"]
---

# PN: Generative Agents — Memory Stream, Reflection, and Planning Architecture

> [!abstract] Core Idea
> Park et al. (ACM UIST 2023) demonstrate that LLMs equipped with a **memory stream** (recency × relevance × importance scoring), **reflection** (periodic insight synthesis), and **planning** (future action scheduling) produce emergent social behaviors indistinguishable from intentional design in a multi-agent simulation. This architecture is the reference design for PUMA's SmartPMO persistent memory system.

---

## The Core Problem

Standard LLM agents have no memory beyond their context window:
- Context window = short-term working memory only
- No persistence across sessions
- No ability to build up knowledge about specific entities (people, projects) over time

For a PM assistant that tracks sprint history, developer velocity, and recurring issue patterns, this is a critical limitation.

---

## Memory Stream Architecture

The memory stream is an append-only log of all agent experiences:

```
Memory record: {
    description: "Alice submitted a bug report about the authentication timeout",
    timestamp: "2026-04-13T09:23:00Z",
    importance_score: 7.2,   # 1-10 scale, scored by LLM
    recency_decay: 0.94,     # exponential decay from timestamp
    embedding: [0.23, -0.51, ...]  # semantic embedding vector
}
```

### Retrieval Scoring

When a query is issued, memories are ranked by a composite score:

$$\text{score}(m_i, q) = \alpha \cdot \text{recency}(m_i) + \beta \cdot \text{importance}(m_i) + \gamma \cdot \text{relevance}(m_i, q)$$

where:
- **Recency**: $\text{recency}(m_i) = e^{-\lambda \cdot \Delta t}$ — exponential decay from last access
- **Importance**: LLM-assigned score at creation time ("How important is this memory? Score 1-10")
- **Relevance**: Cosine similarity between memory embedding and query embedding

**Key design choice**: All three factors matter. Recency alone produces recency bias (ignores long-term patterns). Importance alone produces attention bias (focuses on dramatic events). Relevance alone ignores temporal context.

---

## Reflection — Synthesizing Higher-Level Insights

Periodically (triggered by accumulated importance score exceeding a threshold), the agent:

1. Queries the memory stream for recent relevant memories
2. Asks: "Given these observations, what can I infer? What are the 3 most important insights?"
3. Stores the resulting insights as new memory records (higher abstraction level)

**Example**:
- Raw memories: "Alice filed 3 authentication bugs this week", "Bob reported login timeout twice", "Carlos mentioned OAuth migration"
- Reflection synthesis: "Authentication is currently the highest-frequency failure area; the OAuth migration may be introducing instability"

**Effect in Smallville simulation**: Agents form relationships, plan surprises, spread information — behaviors that emerge from the memory + reflection system without being explicitly programmed.

---

## Planning — Scheduling Future Actions

The planning module translates high-level goals into time-stamped action sequences:

1. **Daily plan**: "Today I need to review the sprint backlog, attend standup, and investigate the authentication issues"
2. **Action decomposition**: Plans are recursively decomposed to 5–15 minute action granules
3. **Reactive replanning**: When unexpected events occur (new critical bug), the plan is updated

```
High-level plan:
  9:00 - Review new issue submissions
  10:00 - Triage high-priority issues
  14:00 - Sprint planning session
  16:00 - Update project dashboard

Action granule (9:00 - 9:15):
  "Read issue #1234: Authentication timeout in batch jobs"
  "Check memory stream for similar past issues"
  "Assign priority based on historical pattern"
```

---

## Ablation Results (Park et al., 2023)

| Configuration | Emergent Behavior | Quality |
|---------------|-------------------|---------|
| Full system (memory + reflection + planning) | Rich social coordination, information spreading, event organization | High |
| **No reflection** | Mechanical repetition of actions; no synthesis of patterns | Low |
| **No planning** | Time-incoherent behavior; agent does contradictory things in sequence | Low |
| **No memory stream** | Contradictions between past and present statements; no learning | Very Low |

All three components are necessary for coherent, adaptive agent behavior.

---

## PUMA SmartPMO Application

The Generative Agents architecture maps directly to PUMA's Stage 5 SmartPMO persistent PM agent:

| Generative Agents Component | PUMA SmartPMO Equivalent |
|-----------------------------|--------------------------|
| Memory stream (observations) | Issue history log, sprint records, team velocity data |
| Importance scoring | PM-defined priority weighting per event type |
| Reflection | Weekly synthesis: "What recurring patterns appeared this sprint?" |
| Planning | Sprint planning agent: daily triage schedule, review cadence |
| Retrieval (recency × relevance × importance) | RAG over TAWOS + project history for few-shot examples |

### SmartPMO Memory Categories

1. **Issue memories**: Each processed issue stored with type, priority, SP, resolution time
2. **Team memories**: Developer assignment patterns, velocity history, specialization signals
3. **Sprint memories**: Sprint goals, planned vs. actual SP, retrospective notes
4. **Incident memories**: High-priority bugs, their recurrence patterns, root cause summaries
5. **Reflection nodes**: Synthesized insights about project health, team capacity, technical debt areas

---

## Implementation Sketch

```python
class PMOMemoryStream:
    def __init__(self, embedding_model, llm):
        self.memories = []  # List of MemoryRecord
        self.embedding_model = embedding_model
        self.llm = llm
        self.importance_threshold = 100  # Trigger reflection
        self.accumulated_importance = 0
    
    def add_observation(self, description: str, timestamp: datetime):
        importance = self._score_importance(description)
        embedding = self.embedding_model.encode(description)
        
        self.memories.append(MemoryRecord(
            description=description,
            timestamp=timestamp,
            importance=importance,
            embedding=embedding
       ))
        
        self.accumulated_importance += importance
        if self.accumulated_importance >= self.importance_threshold:
            self._reflect()
            self.accumulated_importance = 0
    
    def retrieve(self, query: str, top_k: int = 10) -> list:
        query_embedding = self.embedding_model.encode(query)
        now = datetime.now()
        
        scored = []
        for memory in self.memories:
            recency = np.exp(-0.01 * (now - memory.timestamp).hours)
            importance = memory.importance / 10.0
            relevance = cosine_similarity(query_embedding, memory.embedding)
            
            score = recency + importance + relevance  # α=β=γ=1 as baseline
            scored.append((score, memory))
        
        return [m for _, m in sorted(scored, reverse=True)[:top_k]]
    
    def _reflect(self):
        recent = self.retrieve("salient recent events", top_k=100)
        insights = self.llm.generate(
            f"Given these recent observations:\n{format_memories(recent)}\n"
            "What are the 3 most important insights about the project?"
       )
        for insight in parse_insights(insights):
            self.add_observation(insight, datetime.now())
```

---

## Related Notes

- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Park-2023-GenerativeAgents]] — source literature note
- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — where memory-stream agents fit in the taxonomy
- [[30 - Permanent/31 Concepts/PN-Reflexion-SelfCritique]] — reflection as short-term self-improvement (complementary)
- [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]] — SmartPMO persistent agent design

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
