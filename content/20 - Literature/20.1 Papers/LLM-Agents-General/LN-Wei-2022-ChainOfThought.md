---
type: literature
title: "Chain-of-Thought Prompting Elicits Reasoning in Large Language Models"
authors: ["Wei, Jason", "Wang, Xuezhi", "Schuurmans, Dale", "Bosma, Maarten", "Ichter, Brian", "Xia, Fei", "Chi, Ed", "Le, Quoc", "Zhou, Denny"]
first-author: "Wei"
year: 2022
status: reviewed
topic: prompting
relevance: 5
citekey: "@Wei2022CoT"
venue: "NeurIPS 2022"
arxiv: "2201.11903"
doi: "10.48550/arXiv.2201.11903"
url: "https://arxiv.org/abs/2201.11903"
tags: [literature, chain-of-thought, cot, prompting, reasoning, few-shot, zero-shot-cot, puma-core, story-points, effort-estimation, triage, llm, google-brain, literature-note, moc]
created: 2026-04-14
updated: 2026-04-14
keshav-pass: 2
---

# LN: Wei et al. (2022) — Chain-of-Thought Prompting

> [!cite] Bibliographic Reference
> **Citation**: Wei, J., Wang, X., Schuurmans, D., Bosma, M., Ichter, B., Xia, F., Chi, E., Le, Q., & Zhou, D. (2022). Chain-of-thought prompting elicits reasoning in large language models. *Advances in Neural Information Processing Systems*. https://arxiv.org/abs/2201.11903

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Prompting technique paper |
| **Context** | Google Brain. Demonstrates that including intermediate reasoning steps ("thinking step by step") in few-shot examples dramatically improves LLM performance on multi-step reasoning tasks |
| **Correctness** | Evaluated on arithmetic (GSM8K), commonsense (StrategyQA), and symbolic reasoning; consistent gains across model scales ≥100B parameters |
| **Contributions** | (1) Chain-of-thought (CoT) prompting as an emergent capability; (2) Few-shot CoT: reasoning examples in the prompt; (3) Zero-shot CoT ("Let's think step by step"); (4) Scaling law for CoT: only effective above ~100B parameters |
| **Clarity** | Excellent — clear methodology, ablations, and discussion of failure modes |

> [!success] Relevance: ⭐⭐⭐⭐⭐
> CoT is PUMA's Strategy 4 (most complex prompting condition). For effort estimation (H2), reasoning through "this issue is similar to X because..." explicitly mirrors the human PM estimation process — and Wei et al. provide the empirical justification for why this works.

---

## Pass 2 — Key Concepts

### What Is Chain-of-Thought?

Standard few-shot prompting provides input-output examples:
```
Input: "Bug: login fails after password reset"
Output: "Bug, High"
```

CoT prompting includes intermediate reasoning:
```
Input: "Bug: login fails after password reset"
Reasoning: "Login failure is a blocking user experience issue. Password reset
            affects authentication — a core system function. This warrants
            High priority, not Critical (no data loss or security breach)."
Output: "Bug, High"
```

The reasoning chain is not just explanatory — it forces the model to articulate its decision path, which constrains the output to be consistent with the reasoning.

### The Scaling Law for CoT

A critical finding: CoT provides no benefit for models below ~100B parameters. Below this threshold, the reasoning chain is generated incoherently. Above it, CoT consistently improves performance.

**Implication for PUMA**: Smaller models (Llama 3.2 8B, Mistral 7B, Phi-3.5 Mini) may not benefit from CoT to the same degree as GPT-4o or Claude. This is a testable hypothesis in PUMA's experimental design.

### Zero-Shot CoT

Simply appending "Let's think step by step" to any prompt elicits basic CoT behaviour without examples — a remarkable emergent capability. This suggests the reasoning structure is latent in the model, not dependent on specific examples.

### PUMA's Prompting Strategies

| Strategy | CoT Role | PUMA H1/H2 |
|----------|---------|-----------|
| S1: Zero-Shot | No reasoning | Baseline |
| S2: Few-Shot-3 | No reasoning, 3 examples | Pattern matching |
| S3: Few-Shot-6 | No reasoning, 6 examples | Pattern matching |
| S4: CoT + Few-Shot | Reasoning chain + examples | Most complex |

Wei et al. directly motivates Strategy S4 and provides the theoretical basis for why PUMA expects CoT to outperform S1–S3 on estimation tasks.

---

## PUMA Integration

- **Ch.2 Literature Review**: CoT is the theoretical foundation for PUMA's S4 prompting strategy
- **Ch.3 Methods**: Experimental condition S4 implemented per Wei et al.'s few-shot CoT format
- **H2 hypothesis**: Expect CoT to improve MAE for story point estimation more than triage classification

## Related Notes

- [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] — permanent note integrating CoT, few-shot, zero-shot strategies
- [[30 - Permanent/31 Concepts/PN-COSTAR-SelfConsistency]] — self-consistency as extension of CoT
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Yao-2023-TreeOfThoughts]] — ToT as generalisation of CoT to tree search
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Shinn-2023-Reflexion]] — Reflexion as iterative CoT with self-critique
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] — PUMA experimental conditions

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
