---
type: permanent
title: "Tree of Thoughts — Deliberate Multi-Path Reasoning for LLMs"
topic: llm-reasoning
tags: [permanent, tree-of-thoughts, tot, deliberate-reasoning, planning, backtracking, bfs, dfs, beam-search, cot, llm-reasoning, puma-core, research, prompting, agents, reasoning, issue-triage, backlog-prioritisation]
created: 2026-05-01
updated: 2026-05-01
aliases: ["Tree of Thoughts", "ToT", "Deliberate Reasoning", "Multi-Path Reasoning"]
---

# PN: Tree of Thoughts — Deliberate Multi-Path Reasoning for LLMs

> [!abstract] Core Idea
> **Tree of Thoughts (ToT)** (Yao et al., NeurIPS 2023) frames LLM problem-solving as a **search over a tree of intermediate reasoning steps** ("thoughts"). Unlike Chain-of-Thought which generates one linear path, ToT explores multiple candidate continuations at each step, evaluates them with an LLM judge, and applies classical search algorithms (BFS, DFS, beam search) to find the best path. This enables backtracking and deliberate planning — capabilities absent in autoregressive text generation.

---

## Motivation: The Limitations of Chain-of-Thought

Standard CoT generates a single left-to-right reasoning trace. This fails when:

1. **Problems require exploration**: multiple plausible solution paths exist and the optimal one is non-obvious
2. **Local decisions affect global outcomes**: an early error propagates irreversibly
3. **Backtracking is needed**: the current path is provably dead-end but CoT cannot reverse

ToT addresses all three by treating reasoning as **search**, not generation.

---

## The Tree Structure

```
                    [Problem]
                   /    |    \
           [Thought A] [Thought B] [Thought C]
           /     \        |         /    \
         [A1]   [A2]   [B1]     [C1]  [C2]
          ✓      ✗      ✓        ✗     ✓
                        |              |
                       [B1a]         [C2a]  ← best path
```

- **Node**: a partial solution state (intermediate thought)
- **Edge**: one reasoning step (LLM generation from parent → child)
- **Evaluation**: LLM assigns each node a score (sure / likely / impossible)
- **Search**: BFS, DFS, or beam search traverses the tree to find the optimal leaf

---

## Four Components

### 1. Thought Decomposition

Decide what constitutes one "thought" — the granularity of search steps:
- **Word-level**: each thought = one word (useful for constrained generation)
- **Sentence-level**: each thought = one reasoning sentence
- **Paragraph-level**: each thought = a complete sub-problem solution

Finer granularity → more exploration, more tokens. PUMA uses paragraph-level for backlog analysis.

### 2. Thought Generation

Two strategies:

| Strategy | Method | When to Use |
|----------|--------|-------------|
| **Sample** | Generate k thoughts independently with temperature | Creative tasks; diverse exploration |
| **Propose** | Generate k thoughts in one call with "Give k different approaches" prompt | Analytical tasks; efficiency |

### 3. State Evaluation

LLM evaluates each thought node:

```
Prompt: "Given problem [P] and partial solution [S], rate the likelihood 
         this path leads to a correct solution: sure / likely / impossible"
```

Alternatively: numerical score (0–10) for soft search priorities.

### 4. Search Algorithm

| Algorithm | Description | Best For |
|-----------|-------------|----------|
| **BFS** | Expand all nodes at depth d before depth d+1 | Short horizons; guaranteed optimum |
| **DFS** | Explore one path fully before backtracking | Long horizons; memory-constrained |
| **Beam search** | Keep top-b nodes at each depth | Balance quality vs. compute |
| **MCTS** | Monte Carlo rollouts for expected value | Stochastic environments |

---

## Empirical Results (Yao et al., 2023)

| Benchmark | CoT (GPT-4) | CoT-SC (k=100) | ToT (BFS b=5) |
|-----------|-------------|----------------|---------------|
| **Game of 24** | 4% | 9% | **74%** |
| **Creative Writing** | — | — | **+41% win rate** vs. CoT |
| **Mini Crosswords** | 16% | 33% | **60%** |

Key insight: for the **Game of 24** (mathematical puzzle requiring multi-step backtracking), ToT improves over CoT by **18.5×**. This highlights ToT's advantage precisely where sequential reasoning breaks down.

---

## Cost Analysis

ToT is significantly more expensive than CoT:

| Method | API calls per task | Tokens | Relative cost |
|--------|-------------------|--------|---------------|
| CoT | 1 | ~500 | 1× |
| Self-Consistency (k=40) | 40 | ~20k | 40× |
| ToT (BFS b=5, d=3) | ~50–200 | ~25–100k | 50–200× |

> [!warning] Compute Cost
> ToT is 50–200× more expensive than standard CoT. It is impractical for high-volume inference (e.g., PUMA Stage 1 bulk triage of 10k+ issues). Reserve for low-volume, high-stakes decisions.

---

## PUMA Application

### Where ToT Applies: Stage 3 — Backlog Prioritisation

**Scenario**: Given a sprint backlog of 15 issues, determine the optimal 5-issue sprint plan considering dependencies, priority, and team capacity.

This is a **search problem**: multiple orderings exist, and the optimal one requires evaluating combinations — exactly what ToT is designed for.

```python
def tot_sprint_plan(issues: list[dict], capacity: int, k: int = 3) -> list[dict]:
    """ToT-based sprint planning: BFS over candidate sprint subsets."""
    candidates = []
    
    # Thought generation: propose k alternative 5-issue subsets
    for _ in range(k):
        subset = llm.propose(
            f"Select 5 issues from {issues} for a sprint with capacity {capacity}. "
            f"Consider priority, dependencies, and team skills."
        )
        candidates.append(subset)
    
    # State evaluation: LLM judges each subset
    scored = [(llm.evaluate(c, issues), c) for c in candidates]
    
    # Select best scoring candidate
    return max(scored, key=lambda x: x[0])[1]
```

### Where ToT Does NOT Apply: Stage 1 — Issue Type Classification

- Volume: 10,000+ issues per dataset
- At 50× CoT cost, ToT would be prohibitively expensive
- CoT + Self-Consistency (k=5) is the practical alternative

### Summary

| PUMA Stage | Method | Justification |
|------------|--------|---------------|
| Stage 1: Type classification | CoT few-shot | High volume; binary decision |
| Stage 2: Priority estimation | CoT + Self-Consistency | Multiple priority levels; ensemble |
| Stage 3: Sprint planning | **ToT (BFS b=3)** | Combinatorial search; low volume |
| Stage 4: Iterative refinement | Reflexion | Self-improvement without re-search |

---

## Relation to Other Reasoning Methods

| Method | Reasoning Structure | Backtracking | Cost |
|--------|--------------------|--------------|----- |
| **Zero-shot** | Single generation | No | 1× |
| **CoT** | Linear chain | No | 1.5× |
| **Self-Consistency** | k parallel chains → vote | No | k× |
| **Reflexion** | Sequential retry with critique | Limited | ~3× |
| **ToT** | Tree search with evaluation | **Yes** | 50–200× |
| **RAP (MCTS)** | Monte Carlo tree search | Yes | 100–500× |

---

## Related Notes

- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Yao-2023-TreeOfThoughts]] — source literature note
- [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] — CoT as baseline; ToT extends it
- [[30 - Permanent/31 Concepts/PN-COSTAR-SelfConsistency]] — Self-Consistency as cheaper alternative
- [[30 - Permanent/31 Concepts/PN-Reflexion-SelfCritique]] — sequential improvement without tree search
- [[30 - Permanent/31 Concepts/PN-ReAct-AgentPattern]] — action-observation loop (ToT can drive ReAct actions)

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
