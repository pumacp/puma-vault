---
type: permanent
title: "Transformer Architecture and Mixture of Experts — Technical Reference for PUMA Models"
topic: llm-architecture
tags: [permanent, transformer, attention, moe, mixture-of-experts, architecture, deepseek, mixtral, llama, scaling, puma-core, research, llm, models, technical-reference, self-attention, feed-forward, positional-encoding]
created: 2026-05-01
updated: 2026-05-01
aliases: ["Transformer", "MoE", "Mixture of Experts", "Self-Attention", "GPT Architecture"]
---

# PN: Transformer Architecture and Mixture of Experts — Technical Reference for PUMA Models

> [!abstract] Core Idea
> The **Transformer** (Vaswani et al., 2017) is the universal architecture underlying all LLMs used in PUMA. It replaces recurrence with **self-attention**, enabling parallel sequence processing and scaling to billions of parameters. **Mixture of Experts (MoE)** (Fedus et al., 2022 — Switch Transformers) extends the Transformer FFN layer with sparse routing: each token activates only a subset of parameter "experts", achieving higher total capacity at constant inference cost. DeepSeek-V3, Mixtral, and other PUMA models use MoE.

---

## The Standard Transformer Block

Every LLM is a stack of N identical Transformer blocks. Each block has two sub-layers:

```
Input Embedding + Positional Encoding
         │
┌────────▼────────────────────────────┐
│  Block 1 (repeated N times)         │
│                                     │
│   ┌─────────────────────────────┐   │
│   │   Multi-Head Self-Attention │   │
│   └──────────────┬──────────────┘   │
│           Add & LayerNorm           │
│   ┌──────────────▼──────────────┐   │
│   │   Feed-Forward Network (FFN)│   │
│   └──────────────┬──────────────┘   │
│           Add & LayerNorm           │
└────────────────────┬────────────────┘
                     │
              Output Logits → Softmax → Next Token
```

### Self-Attention

For sequence $X \in \mathbb{R}^{n \times d}$:

$$\text{Attention}(Q, K, V) = \text{softmax}\left(\frac{QK^T}{\sqrt{d_k}}\right) V$$

Where:
- $Q = XW^Q$, $K = XW^K$, $V = XW^V$ (linear projections)
- $d_k$ = head dimension (scales the dot product to prevent vanishing gradients)
- The softmax output is an **attention weight matrix**: each token attends to every other token

**Multi-Head**: run $h$ parallel attention heads with independent weights, then concatenate:

$$\text{MultiHead}(Q, K, V) = \text{Concat}(\text{head}_1, \ldots, \text{head}_h)W^O$$

### Why Self-Attention Matters

| Property | RNN/LSTM | Transformer Self-Attention |
|----------|----------|---------------------------|
| Parallelism | Sequential (token by token) | **Fully parallel** |
| Long-range dependency | Decays with distance | **Constant** (full context) |
| Context window | ~100–200 tokens practical | **32k–1M+ tokens** |
| Training speed | Slow (sequential backprop) | **Fast** (parallel) |

### Feed-Forward Network (FFN)

After attention, each position passes through a 2-layer MLP:

$$\text{FFN}(x) = \text{GELU}(xW_1 + b_1)W_2 + b_2$$

Typical dimensions:
- Hidden dimension $d_{model}$: 4,096 (7B models), 8,192 (70B models)
- FFN inner dimension: $4 \times d_{model}$ in dense models

The FFN is where most parameter count lives (2/3 of total weights in a dense Transformer).

---

## Positional Encoding

Self-attention is permutation-invariant by default. Positional encodings add position information:

| Method | Description | Used By |
|--------|-------------|---------|
| **Sinusoidal** (original) | Fixed sin/cos functions of position | Original Transformer, BERT |
| **Learned absolute** | Trained position embedding table | GPT-2, early GPT-3 |
| **RoPE** (Rotary) | Relative position via rotation of Q, K vectors | **Llama, Mistral, DeepSeek** |
| **ALiBi** | Attention bias that decays with distance | MPT, BLOOM |

**RoPE** is the modern standard for PUMA models. It enables **context window extension** (e.g., Llama-3.1's 128k window) via RoPE scaling without retraining.

---

## Architectural Variants in PUMA Models

| Model | Architecture | Attention | FFN | Context |
|-------|-------------|-----------|-----|---------|
| Llama-3.1-8B | Decoder-only | GQA + RoPE | SwiGLU | 128k |
| Mistral-7B | Decoder-only | GQA + RoPE | SwiGLU | 32k |
| Phi-3-mini | Decoder-only | MHA + RoPE | SwiGLU | 128k |
| DeepSeek-V3 | Decoder-only MoE | MLA + RoPE | MoE-FFN | 128k |
| Claude Sonnet | Decoder-only | Undisclosed | Likely MoE | 200k |
| GPT-4o | Undisclosed | Likely MoE | Undisclosed | 128k |

**GQA** = Grouped Query Attention (fewer KV heads → smaller KV cache → efficient inference)  
**MLA** = Multi-head Latent Attention (DeepSeek's compressed KV cache)  
**SwiGLU** = Swish-gated linear unit (replaces ReLU FFN; better performance)

---

## Mixture of Experts (MoE)

### The Core Idea

Dense Transformer: every token activates every FFN parameter.  
MoE Transformer: each token is **routed** to one (Switch) or a few (top-k) of $N$ expert FFNs:

```
Dense FFN:   token → [FFN with all parameters]

MoE FFN:     token → Router → selects Expert_i from {E_1, ..., E_N}
                    → [Expert_i FFN] (only 1/N parameters active)
```

This decouples **total parameters** (capacity) from **activated parameters** (compute cost).

### Switch Transformer Routing (Fedus et al., 2022)

Router = linear layer + softmax:
$$g_i = \text{softmax}(x \cdot W_r)_i$$

Token routes to expert with highest gate value $\arg\max_i(g_i)$.

**Expert Capacity**: $C = \lceil \frac{T}{N} \cdot \text{cf} \rceil$ tokens per expert per batch (cf = capacity factor, typically 1.25). Overflow tokens skip the expert (residual passthrough).

**Load Balancing Loss**: auxiliary loss encourages uniform expert utilisation:
$$\mathcal{L}_{aux} = \alpha \cdot N \cdot \sum_{i=1}^{N} f_i \cdot P_i$$

Where $f_i$ = fraction of tokens routed to expert $i$, $P_i$ = mean routing probability for expert $i$.

### MoE Models in PUMA

| Model | MoE Structure | Activated Params | Total Params | PUMA Role |
|-------|--------------|-----------------|--------------|-----------|
| **DeepSeek-V3** | Top-2 routing, 256 experts | 37B | 671B | Cloud baseline |
| **DeepSeek-R1** | Similar to V3 | ~37B | ~671B | Reasoning baseline |
| **Mixtral 8×7B** | Top-2, 8 experts | 13B | 47B | Alternative local model |
| **Phi-3.5-MoE** | Top-2, 16 experts | 6.6B | 41.9B | Efficient local option |

**Why MoE matters for PUMA**: DeepSeek-V3 has GPT-4 class reasoning capacity (671B total parameters) but GPT-3.5 class inference cost (37B active parameters). This justifies using it as the PUMA cloud baseline — high quality at manageable API cost.

---

## Scaling Laws

The relationship between model size, training compute, and performance follows power laws (Hoffmann et al. — Chinchilla, 2022):

$$L(N, D) = \frac{A}{N^\alpha} + \frac{B}{D^\beta} + L_\infty$$

Where $N$ = parameters, $D$ = training tokens. **Chinchilla optimal**: $D = 20 \times N$ (e.g., 7B model → 140B tokens).

For MoE: scaling laws apply to **activated parameters**, not total. DeepSeek-V3 behaves like a ~37B dense model for compute purposes.

---

## Inference Efficiency for PUMA

### KV Cache

During inference, Key and Value matrices for all past tokens are cached:

$$\text{KV cache size} = 2 \times L \times H \times d_k \times n_{\text{tokens}} \times \text{bytes}$$

Example (Llama-3.1-8B, 4k context):
- $L=32$ layers, $H=8$ KV heads, $d_k=128$, $n=4096$, fp16
- KV cache: $2 \times 32 \times 8 \times 128 \times 4096 \times 2$ bytes = **536 MB**

GQA reduces KV heads (H), directly cutting cache size. MLA (DeepSeek) compresses KV into a latent vector — reduces KV cache by ~10×.

### Quantisation Impact on Architecture

| Quantisation | Precision | VRAM Reduction | Quality Loss |
|-------------|-----------|----------------|--------------|
| fp32 | 32-bit | 1× baseline | None |
| fp16 / bf16 | 16-bit | 0.5× | Negligible |
| GGUF Q8_0 | ~8-bit | ~0.25× | Minimal |
| GGUF Q4_K_M | ~4-bit | ~0.125× | Small |
| GGUF Q2_K | ~2-bit | ~0.065× | Noticeable |

For PUMA local deployment: **Q4_K_M is the recommended compromise** (acceptable quality + fits in 8–16 GB VRAM).

---

## Ch.3 Methods Reference

For PUMA project Chapter 3 (Methodology), reference this note when:
- Explaining the model selection rationale (MoE efficiency → DeepSeek-V3 as API baseline)
- Justifying context window choices (RoPE-extended 128k → sufficient for issue + few-shot examples)
- Describing inference setup (quantisation level, KV cache overhead, batch size)

---

## Related Notes

- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Fedus-2022-SwitchTransformers]] — Switch Transformers source
- [[30 - Permanent/31 Concepts/PN-LLM-Models-PUMA]] — model catalog using this architecture
- [[30 - Permanent/31 Concepts/PN-FineTuning-LoRA-Quantization]] — LoRA adapts FFN weights; GGUF quantises the full model
- [[30 - Permanent/31 Concepts/PN-RLHF-Constitutional]] — alignment training built on top of this architecture
- [[30 - Permanent/31 Concepts/PN-ContextEngineering]] — context window size determined by this architecture

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
