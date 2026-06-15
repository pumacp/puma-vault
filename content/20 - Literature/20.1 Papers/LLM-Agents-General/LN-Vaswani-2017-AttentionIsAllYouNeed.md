---
type: literature
title: "Attention Is All You Need"
authors: ["Vaswani, Ashish", "Shazeer, Noam", "Parmar, Niki", "Uszkoreit, Jakob", "Jones, Llion", "Gomez, Aidan N.", "Kaiser, Łukasz", "Polosukhin, Illia"]
first-author: "Vaswani"
year: 2017
status: reviewed
topic: transformer-architecture
relevance: 5
citekey: "@Vaswani2017Attention"
venue: "NeurIPS 2017"
arxiv: "1706.03762"
doi: "10.48550/arXiv.1706.03762"
url: "https://arxiv.org/abs/1706.03762"
tags: [literature, transformer, attention-mechanism, self-attention, multi-head-attention, positional-encoding, encoder-decoder, nlp, foundational, puma-core, architecture, llm, gpt, bert, literature-note, moc]
created: 2026-04-14
updated: 2026-06-15
keshav-pass: 2
---

# LN: Vaswani et al. (2017) — Attention Is All You Need

> [!cite] Bibliographic Reference
> **Citation**: Vaswani, A., Shazeer, N., Parmar, N., Uszkoreit, J., Jones, L., Gomez, A. N., Kaiser, Ł., & Polosukhin, I. (2017). Attention is all you need. *Advances in Neural Information Processing Systems*. https://arxiv.org/abs/1706.03762

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Foundational architecture paper |
| **Context** | Google Brain / Google Research, NeurIPS 2017. Proposes a neural network architecture based solely on attention mechanisms, eliminating recurrence and convolution entirely |
| **Correctness** | Empirically validated on WMT 2014 machine translation benchmarks; BLEU scores exceed all prior models. Now the foundation of every modern LLM |
| **Contributions** | (1) Scaled dot-product attention; (2) Multi-head attention; (3) Positional encoding; (4) Encoder-decoder Transformer; (5) Demonstration that attention alone suffices for sequence modelling |
| **Clarity** | Excellent — precise mathematical formulation with strong empirical grounding |

> [!success] Relevance: ⭐⭐⭐⭐⭐
> This paper is the architectural foundation of every model PUMA uses: Llama 3.2, Mistral 7B, GPT-4o, Claude. Understanding the Transformer is essential for explaining how PUMA's LLMs process Jira issue text, represent tokens, and generate structured outputs.

---

## Pass 2 — Content

### The Core Mechanism: Scaled Dot-Product Attention

$$\text{Attention}(Q, K, V) = \text{softmax}\left(\frac{QK^T}{\sqrt{d_k}}\right)V$$

Where Q (query), K (key), V (value) are linear projections of the input. The scaling factor $\frac{1}{\sqrt{d_k}}$ prevents the dot product from growing too large in high-dimensional spaces, which would push softmax into vanishing-gradient regions.

### Multi-Head Attention

Rather than a single attention function, the Transformer runs attention $h$ times in parallel with different learned projections:

$$\text{MultiHead}(Q,K,V) = \text{Concat}(\text{head}_1, \ldots, \text{head}_h)W^O$$

Each head attends to different aspects of the representation — one head may track syntactic dependencies, another semantic relationships.

### Positional Encoding

Since attention has no inherent notion of sequence order, position is injected via sinusoidal encodings:

$$PE_{(pos,2i)} = \sin(pos/10000^{2i/d_{model}})$$

This allows the model to generalise to sequence lengths not seen during training.

### Why Attention Replaces Recurrence

| Property | RNN/LSTM | Transformer |
|----------|---------|------------|
| Parallelism | Sequential — cannot parallelise across time | Full parallel across all positions |
| Long-range dependencies | Gradient vanishing over long sequences | Direct O(1) path between any two positions |
| Training efficiency | Slow (sequential computation) | Fast (GPU-parallelisable) |
| Interpretability | Hidden state is opaque | Attention weights are inspectable |

This parallelism is what enabled scaling to billions of parameters and training on internet-scale corpora.

---

## PUMA Integration

Every model PUMA evaluates (Llama 3.2 8B, Mistral 7B, Phi-3.5 Mini, GPT-4o) is built on this architecture. The mechanism by which PUMA's prompts are processed — tokenisation, attention over the issue description, context window management — is directly described here. PUMA's context window constraints (Llama: 128K, Mistral: 32K) are a downstream consequence of the positional encoding and attention scaling choices introduced in this paper.

## Related Notes

- [[30 - Permanent/31 Concepts/PN-LLM-Models-PUMA]] — model catalog with Transformer-based architecture notes
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Fedus-2022-SwitchTransformers]] — MoE extension of the Transformer
- [[30 - Permanent/31 Concepts/PN-FineTuning-LoRA-Quantization]] — LoRA modifies Transformer weight matrices
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Wei-2022-ChainOfThought]] — CoT leverages Transformer reasoning capacity

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
