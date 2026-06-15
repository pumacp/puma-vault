---
type: literature
title: "Switch Transformers: Scaling to Trillion Parameter Models with Simple and Efficient Sparsity"
authors: ["Fedus, William", "Zoph, Barret", "Shazeer, Noam"]
first-author: "Fedus"
year: 2022
status: reviewed
topic: mixture-of-experts
relevance: 4
citekey: "@Fedus2022SwitchTransformers"
venue: "Journal of Machine Learning Research, 23(120)"
arxiv: "2101.03961"
doi: "10.48550/arXiv.2101.03961"
url: "https://arxiv.org/abs/2101.03961"
tags: [literature, mixture-of-experts, moe, sparse-model, switch-transformer, scaling, deepseek, mixtral, transformer, architecture, efficiency, puma-core, literature-note, moc]
created: 2026-04-14
updated: 2026-06-15
keshav-pass: 2
---

# LN: Fedus, Zoph & Shazeer (2022) — Switch Transformers

> [!cite] Bibliographic Reference
> **Citation**: Fedus, W., Zoph, B., & Shazeer, N. (2022). Switch Transformers: Scaling to trillion parameter models with simple and efficient sparsity. *Journal of Machine Learning Research*, *23*(120), 1–39. https://arxiv.org/abs/2101.03961

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Architecture paper — sparse scaling |
| **Context** | Google Brain. Demonstrates that Mixture-of-Experts (MoE) can be simplified to a single-expert router (Switch) and scaled to trillion parameters without proportional compute cost |
| **Correctness** | Validated on C4 language modelling and SuperGLUE; 7× pre-training speedup vs. T5 at equivalent FLOPs |
| **Contributions** | (1) Switch routing: each token routes to exactly one expert; (2) Expert capacity with overflow tokens; (3) Auxiliary load-balancing loss; (4) Selective precision: bf16 for router, fp32 for model weights |
| **Clarity** | Very good — builds directly on Transformer foundations |

> [!success] Relevance: ⭐⭐⭐⭐
> DeepSeek-V3 (671B total / 37B active) and Mixtral 8×7B both use MoE architectures derived from this work. PUMA's rationale for using DeepSeek-V3 as a cloud baseline is directly grounded in the efficiency claims of Switch Transformers.

---

## Pass 2 — Key Concepts

### Mixture of Experts (MoE) Principle

A dense Transformer activates all parameters for every token. A MoE Transformer routes each token to a subset of specialised "expert" feed-forward networks. Total parameters grow, but activated parameters per token stay constant.

```
Dense FFN:     token → single FFN (all parameters activated)
Switch MoE:    token → Router → Expert_i (1 of N experts activated)
```

**Switch simplification**: Previous MoE used top-k routing (k≥2). Switch uses k=1, reducing communication overhead and load imbalance while retaining most quality gains.

### Expert Capacity

Each expert has a fixed capacity $C = \lceil \frac{T}{N} \cdot \text{capacity\_factor} \rceil$ tokens per batch. Overflow tokens skip the expert and pass through a residual connection. This prevents bottlenecks at popular experts.

### Why This Matters for PUMA

| Model | MoE Structure | PUMA Role |
|-------|--------------|-----------|
| DeepSeek-V3 | 671B total, 37B active (MoE) | Cloud baseline |
| DeepSeek-R1 | Similar MoE structure | Reasoning baseline |
| Mixtral 8×7B | 8 experts, top-2 routing | Alternative local model |

MoE models deliver high parameter counts (reasoning capacity) at manageable inference cost — critical for PUMA's local-execution constraint.

---

## PUMA Integration

PUMA's model selection rationale in Ch.3 (Methods) should reference Switch Transformers when explaining why DeepSeek-V3's MoE architecture is both powerful and computationally feasible as an API baseline.

## Related Notes

- [[30 - Permanent/31 Concepts/PN-LLM-Models-PUMA]] — model catalog: DeepSeek-V3 MoE entry
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Vaswani-2017-AttentionIsAllYouNeed]] — the Transformer base that MoE extends
- [[30 - Permanent/31 Concepts/PN-FineTuning-LoRA-Quantization]] — GGUF quantization of MoE models

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
