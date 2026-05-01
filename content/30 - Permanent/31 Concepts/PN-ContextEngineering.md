---
type: permanent
title: "Context Engineering — Designing the LLM Context Window as a System"
topic: prompting-strategies
tags: [permanent, context-engineering, prompt-engineering, llm, context-window, rag, memory, tools, system-prompt, puma-core, research, agents, architecture, prompting, planning, agent-design, information-retrieval]
created: 2026-05-01
updated: 2026-05-01
aliases: ["Context Engineering", "CE", "Context Window Design"]
---

# PN: Context Engineering — Designing the LLM Context Window as a System

> [!abstract] Core Idea
> **Context Engineering** (CE) is the discipline of constructing the entire content that enters an LLM's context window — including system prompts, retrieved knowledge, tool outputs, conversation history, and structured data — to maximise task performance. It is the 2026 successor to Prompt Engineering: where PE focuses on phrasing a single prompt, CE designs the *information system* that fills the context at inference time.

---

## From Prompt Engineering to Context Engineering

| Dimension | Prompt Engineering | Context Engineering |
|-----------|-------------------|---------------------|
| **Scope** | Single instruction or query | Entire context window pipeline |
| **Unit of design** | Prompt text | Information architecture |
| **Dynamic content** | Rare (few-shot examples) | Central (RAG, memory, tool calls) |
| **Primary lever** | Wording and structure | What to include, what to exclude |
| **Failure mode** | Bad phrasing | Context pollution, retrieval noise |
| **Year of maturity** | 2023 | 2025–2026 |

The key shift: the model is fixed; the **context is the engineering artefact**.

---

## The Six Slots of a Context Window

A production agent context typically fills six conceptual slots:

```
┌─────────────────────────────────────────────┐
│ 1. SYSTEM PROMPT      (role, rules, persona) │
│ 2. RETRIEVED KNOWLEDGE (RAG / vector search) │
│ 3. TOOL DEFINITIONS   (function schemas)     │
│ 4. CONVERSATION HISTORY (prior turns)        │
│ 5. WORKING MEMORY     (scratch-pad, state)   │
│ 6. USER QUERY         (current task)         │
└─────────────────────────────────────────────┘
```

CE decisions:
- **What to include** in each slot at this inference step
- **How much** (token budget per slot)
- **In what order** (recency bias; position affects attention)
- **When to flush** (conversation compaction, memory eviction)

---

## Context Engineering Strategies

### 1. System Prompt Design

- Encode **role**, **constraints**, **output format**, and **persona** here
- Use CO-STAR structure: Context → Objective → Style → Tone → Audience → Response format
- Keep stable between turns; avoid redundancy with retrieved content

### 2. Retrieval-Augmented Generation (RAG)

- Retrieve top-k documents from vector store at query time
- Filter by relevance score threshold (cosine similarity > 0.75)
- Summarise or truncate retrieved chunks to fit token budget
- Rerank using cross-encoder or LLM-as-judge before injection

### 3. Working Memory (Scratch-Pad)

- Maintains agent state across multi-step tasks
- Implemented as a JSON block in the context updated after each action
- Eviction policy: keep last N entries; summarise older entries via LLM

### 4. Conversation History Management

- **Sliding window**: keep last k turns; discard oldest
- **Summarisation**: compress old turns into a summary paragraph
- **Selective retention**: keep turns flagged as "important" regardless of age
- Anthropic's recommended pattern: summarise once context hits 80% of window

### 5. Tool Output Integration

- Tool outputs replace the tool call in the context (assistant turn format)
- Truncate large outputs (e.g., database results) to relevant fields only
- Error outputs from tools must be included — they inform retry logic

### 6. Token Budget Allocation

Recommended allocation for a 128k-token window:

| Slot | Budget | Notes |
|------|--------|-------|
| System prompt | 2–5k | Stable; amortised by caching |
| Retrieved knowledge | 30–60k | Largest variable component |
| Tool definitions | 1–3k | Compressed JSON schemas |
| Conversation history | 20–40k | Managed by compaction |
| Working memory | 2–5k | Compact JSON state |
| User query + response | 5–10k | Current turn |

---

## Context Pollution — The Central Failure Mode

> [!warning] Context Pollution
> Injecting irrelevant or noisy content into the context degrades LLM performance more than slightly incorrect wording. A retrieval pipeline that returns off-topic chunks causes more errors than a poorly-phrased prompt.

Common sources of pollution:
1. **Retrieval failures**: Top-k returning thematically similar but semantically irrelevant chunks
2. **Tool verbosity**: Full API responses injected without filtering
3. **History accumulation**: Old conversation turns contradicting current state
4. **Prompt redundancy**: Same instruction stated multiple times in different slots

Mitigation strategies:
- MMR (Maximal Marginal Relevance) retrieval: balance relevance + diversity
- Structured summarisation pipelines before injection
- Context audits: log token usage per slot per inference step

---

## PUMA Application

### Stage 1–4 (Triage & Prioritisation)

Each issue triage call fills the context as:

```python
context = {
    "system": PUMA_SYSTEM_PROMPT,           # Role + output schema
    "few_shot_examples": retrieve_similar(issue, k=3),  # RAG
    "working_memory": agent_state,           # Prior episode summary
    "task": format_issue(issue)              # Current Jira issue
}
```

Key CE decisions in PUMA:
- **k=3 few-shot examples** retrieved by similarity to current issue (not random)
- **Issue fields filtered**: title, description, labels, priority; exclude changelog, comments
- **Reflexion memory** appended as a working-memory slot (last 3 critiques)
- **Output format** prescribed in system prompt (JSON schema)

### Stage 5 (Smart PMO — MCP Integration)

MCP tools are injected as tool definitions. Context budget splits:
- 40% for tool outputs (Jira API results, GitHub data)
- 30% for conversation history (multi-turn PM queries)
- 20% for retrieved domain knowledge (PUMA policies, project history)
- 10% for system + query

---

## Relation to Other Techniques

| Technique | Relationship to CE |
|-----------|-------------------|
| **RAG** | One slot in the CE pipeline (retrieved knowledge) |
| **CO-STAR** | Template for the system prompt slot |
| **Reflexion** | CE manages episodic memory slot (prior critiques) |
| **CoT / ToT** | Reasoning patterns for the response generation phase |
| **MCP** | Protocol for tool definition + tool output slots |
| **LoRA fine-tuning** | Modifies the model, not the context; complementary to CE |

---

## Metrics for CE Quality

| Metric | Measurement |
|--------|------------|
| **Context utilisation rate** | Relevant tokens / total tokens injected |
| **Retrieval precision@k** | Relevant chunks in top-k / k |
| **Token budget adherence** | Actual token usage vs. budget per slot |
| **Cache hit rate** | Stable-slot cache hits (system prompt amortisation) |
| **Task performance delta** | F1 / MAE improvement from CE design vs. naive context |

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-COSTAR-SelfConsistency]] — system prompt design framework
- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]] — retrieval slot implementation
- [[30 - Permanent/31 Concepts/PN-Reflexion-SelfCritique]] — episodic memory slot
- [[30 - Permanent/31 Concepts/PN-MCP-ModelContextProtocol]] — tool definition + output slots
- [[20 - Literature/20.4 Videos-Podcasts/YouTube/Context-Engineering/LN-Videos-Context-Engineering]] — video references

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
