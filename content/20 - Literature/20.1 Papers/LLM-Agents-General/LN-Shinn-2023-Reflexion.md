---
type: literature
title: "Reflexion: Language Agents with Verbal Reinforcement Learning"
authors: ["Shinn, Noah", "Cassano, Federico", "Gopinath, Ashwin", "Narasimhan, Karthik", "Yao, Shunyu"]
first-author: "Shinn"
year: 2023
status: reviewed
topic: llm-agents
relevance: 5
citekey: "@Shinn2023Reflexion"
venue: "NeurIPS 2023"
arxiv: "2303.11366"
doi: "10.48550/arXiv.2303.11366"
url: "https://arxiv.org/abs/2303.11366"
tags: [literature, llm-agents, reflexion, self-reflection, verbal-reinforcement, puma-core, agents, architecture, benchmark, chain-of-thought, cot, critical-thinking, effort-estimation, keshav, literature-note, llm, moc, multi-agent, prompting, react, reasoning, red-teaming, research, self-critique, story-points]
created: 2026-04-13
updated: 2026-04-13
keshav-pass: 3
---

# LN: Shinn et al. (2023) — Reflexion: Language Agents with Verbal Reinforcement Learning

> [!cite] Bibliographic Reference
> **Citation**: Shinn, N., Cassano, F., Gopinath, A., Narasimhan, K., & Yao, S. (2023). *Reflexion: Language agents with verbal reinforcement learning*. arXiv:2303.11366. https://arxiv.org/abs/2303.11366
> **Venue**: NeurIPS 2023.

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | System proposal + empirical evaluation |
| **Context** | Extends ReAct (Yao et al., 2022) with a self-critique loop; addresses the "repetitive failure" weakness of ReAct |
| **Correctness** | Evaluated on HotpotQA, HumanEval (coding), and AlfWorld (sequential decision-making). Results are reproducible. |
| **Contributions** | (1) Verbal reinforcement: agents self-reflect on failures in natural language; (2) Episodic memory: reflections persist across trials without weight updates; (3) 91% on HumanEval vs. 80% GPT-4 zero-shot |
| **Clarity** | Excellent. Architecture diagram is clear. Prompts are fully disclosed. |

> [!success] Relevance: ⭐⭐⭐⭐⭐
> Direct applicability to PUMA Stage 4–5: agents can self-critique classification decisions and improve iteratively without retraining.

---

## Pass 2 — Content

### Core Idea

Reflexion adds a **self-reflection loop** on top of the ReAct cycle:

```
[Trial t] → Thought → Action → Observation → (failure/success)
    ↓ if failure
[Reflector LLM] → Verbal critique → stored in Episodic Memory
    ↓
[Trial t+1] → Thought + Memory Context → improved Action
```

The key insight: **natural language is a richer gradient signal than numeric reward**. Instead of updating weights (which requires many samples), the agent writes a paragraph explaining *why* it failed and what to try differently.

### Three Agent Components

| Component | Role |
|-----------|------|
| **Actor** | Generates actions using ReAct or CoT |
| **Evaluator** | Scores the trajectory (binary or heuristic) |
| **Self-Reflector** | Generates verbal critique from the failed trajectory |

### Key Results

| Benchmark | Reflexion | Baseline |
|-----------|-----------|----------|
| HumanEval (coding) | 91.0% | 80.1% (GPT-4) |
| HotpotQA | 70% | 68% (ReAct) |
| AlfWorld | 97% | 75% (ReAct) |

### Failure Modes
- Memory is ephemeral (not persistent across separate sessions unless explicitly stored)
- Reflexion can over-commit to a wrong reflection ("I should try X" even when X was actually correct)
- Hallucinated reflections: the agent may generate plausible-sounding but incorrect self-critiques

---

## Pass 3 — Virtual Reconstruction

**Q1 (Can I use this for PUMA?)**: Yes. A PUMA triage agent that misclassifies a Jira issue can generate a verbal critique: *"I classified this as Bug when it is Enhancement because I over-weighted the word 'crash' in the title without reading the description."* This reflection is stored in a rolling buffer and included in the next classification prompt.

**Q2 (What does 91% on HumanEval mean for PM tasks?)**: HumanEval is a coding benchmark — the transfer is indirect. For PUMA triage (classification), the relevant gain is the AlfWorld sequential decision result (97%), which is structurally more similar.

**Q3 (Reproducibility)**: The paper provides full prompts. Combined with temperature=0 and seed=42 (PUMA constitution), the Reflexion loop is deterministic and reproducible.

**Implementation sketch for PUMA**:
```python
reflections = []
for trial in range(max_trials):
    result = triage_agent.run(issue, reflections=reflections)
    if result.is_correct():
        break
    reflection = reflector_llm.generate(
        trajectory=result.trajectory,
        correct_label=ground_truth
    )
    reflections.append(reflection)
```

---

## PUMA Integration

- **Stage 4 (RAG Triage)**: Reflexion loop for iterative self-improvement on misclassified issues in the training/validation set
- **Stage 5 (SmartPMO)**: Manager agent can reflect on coordination failures and adjust sub-agent routing
- **Spec**: [[40 - Projects/PUMA/41.6 Specs/SP-Triage-Agent-v1]] — add Reflexion loop to triage agent spec
- **Experiment**: [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]] — consider Reflexion as Stage 4 ablation

## Related Notes

- [[30 - Permanent/31 Concepts/PN-ReAct-AgentPattern]] — ReAct is the base pattern Reflexion extends
- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — Reflexion as a single-agent self-improvement loop
- [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] — CoT is used inside the Actor
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Yao-2022-ReAct]] — base pattern
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Zelikman-2024-QuietSTaR]] — related self-improvement

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
