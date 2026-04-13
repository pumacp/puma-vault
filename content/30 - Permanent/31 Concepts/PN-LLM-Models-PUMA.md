---
type: permanent
title: "LLM Models Used in PUMA — Technical Reference"
topic: llm-models
tags: [permanent, llm, models, llama, mistral, phi, gemma, deepseek, gpt4o, claude, qwen, moe, quantization, ollama, puma-core, research, benchmark, effort-estimation, issue-triage, agents, architecture]
created: 2026-04-13
updated: 2026-04-13
aliases: ["PUMA Models", "LLM Comparison", "Model Reference"]
---

# PN: LLM Models Used in PUMA — Technical Reference

> [!abstract] Core Idea
> PUMA experiments compare local open-source models (run via Ollama) against proprietary cloud APIs. This note catalogs each model's architecture, key specifications, Ollama identifiers, and relevance to PUMA's evaluation methodology.

---

## Model Architecture Background

### Transformer Architecture (Vaswani et al., 2017)

All modern LLMs are based on the Transformer:
- **Self-attention**: $\text{Attention}(Q,K,V) = \text{softmax}\left(\frac{QK^T}{\sqrt{d_k}}\right)V$
- **Multi-head attention**: Parallel attention heads capture different relationship types
- **Feed-forward layers**: Position-wise transformation after attention
- **Positional encoding**: Adds sequence position information (sinusoidal or RoPE)

### Key Design Axes

| Axis | Options | PUMA Implication |
|------|---------|-----------------|
| **Attention type** | Full, Flash Attention 2, GQA | Affects inference speed/VRAM |
| **Context length** | 4k–128k tokens | Limits few-shot example count |
| **Tokenizer** | BPE, SentencePiece | Affects token efficiency for code/PM text |
| **Quantization** | FP16, Q4_K_M, Q5_K_S, GGUF | Local VRAM vs. quality tradeoff |

### Mixture of Experts (MoE)

Instead of a dense feed-forward layer, MoE uses a **router** that activates only a subset of expert sub-networks per token:

$$y = \sum_{i \in \text{Top-k}} g_i \cdot E_i(x)$$

- **Sparse activation**: Only 2–8 experts fire per token despite total model having many more parameters
- **Benefit**: Larger effective capacity at lower inference cost than equivalent dense model
- **Examples**: Mixtral 8×7B, DeepSeek-V3 (256 experts, 37B active/671B total)
- **PUMA**: DeepSeek-V3 is the frontier MoE model tested in cloud evaluation

---

## Open-Source Local Models

### Llama 3.2 8B (Meta, 2024)

| Property | Value |
|----------|-------|
| **Parameters** | 8B (active) |
| **Architecture** | Transformer (dense), GQA |
| **Context** | 128K tokens |
| **Training tokens** | 15T |
| **Ollama tag** | `llama3.2:8b` |
| **GGUF quantization** | Q4_K_M (~5GB VRAM) |
| **License** | Llama 3.2 Community (commercial allowed ≤700M MAU) |

**PUMA relevance**: Primary local baseline; strong instruction following; 128K context allows multi-shot prompting. GQA reduces KV-cache memory for long contexts.

---

### Mistral 7B Instruct v0.3 (Mistral AI, 2023)

| Property | Value |
|----------|-------|
| **Parameters** | 7.3B |
| **Architecture** | Transformer (dense), Sliding Window Attention, GQA |
| **Context** | 32K tokens |
| **Ollama tag** | `mistral:7b-instruct-v0.3` |
| **License** | Apache 2.0 (fully open) |

**PUMA relevance**: Strong at structured JSON output; Sliding Window Attention enables long contexts efficiently. Apache 2.0 = most permissive license for commercial/academic deployment.

---

### Phi-3.5 Mini Instruct (Microsoft, 2024)

| Property | Value |
|----------|-------|
| **Parameters** | 3.8B |
| **Architecture** | Transformer (dense) |
| **Context** | 128K tokens |
| **Ollama tag** | `phi3.5:mini` |
| **License** | MIT |

**PUMA relevance**: Smallest model; tests feasibility of extreme resource constraints (edge deployment, no GPU). Strong reasoning-per-parameter ratio due to "textbook quality" training data curation.

---

### Gemma 2 9B Instruct (Google DeepMind, 2024)

| Property | Value |
|----------|-------|
| **Parameters** | 9B |
| **Architecture** | Transformer, alternating local/global attention, logit soft-capping |
| **Context** | 8K tokens |
| **Ollama tag** | `gemma2:9b` |
| **License** | Gemma Terms of Use (permissive non-commercial research) |

**PUMA relevance**: Strong instruction following; alternating attention is a novel architectural choice. Shorter context (8K) limits few-shot example count — relevant constraint for H2 estimation.

---

### DeepSeek-R1 (DeepSeek, 2025)

| Property | Value |
|----------|-------|
| **Parameters** | 7B (distilled from 671B) variants available |
| **Architecture** | Dense (distilled); parent uses MoE |
| **Context** | 128K tokens |
| **Training** | GRPO reinforcement learning from reasoning traces; no SFT cold start |
| **Ollama tag** | `deepseek-r1:7b`, `deepseek-r1:14b`, `deepseek-r1:32b` |
| **License** | MIT |

**PUMA relevance**: First fully open reasoning model trained with RL from scratch (not RLHF). Generates explicit chain-of-thought between `<think>` tags — aligns with PUMA's CoT prompting strategy. Competitive with OpenAI o1 on AIME/MATH at fraction of cost.

---

### Qwen 3 (Alibaba, 2025)

| Property | Value |
|----------|-------|
| **Parameters** | 0.6B–235B (dense); 30B-A3B, 235B-A22B (MoE) |
| **Context** | 128K tokens (32K recommended) |
| **Feature** | Thinking mode (extended CoT) switchable |
| **License** | Apache 2.0 |

**PUMA relevance**: State-of-the-art open-source model family at time of PUMA experiments; 8B and 14B variants competitive with GPT-4o on coding and instruction following benchmarks.

---

## Proprietary Cloud Models

### GPT-4o (OpenAI, 2024)

| Property | Value |
|----------|-------|
| **Parameters** | Unknown (estimated ~200B MoE) |
| **Context** | 128K tokens |
| **API** | `gpt-4o` via OpenAI API |
| **Input cost** | $2.50 / 1M tokens |
| **Output cost** | $10.00 / 1M tokens |

**PUMA relevance**: Frontier cloud baseline; upper-bound reference for H1/H2 experiments. GPT-4o's JSON mode (`response_format={"type": "json_object"}`) directly supports PUMA's structured output requirements.

---

### Claude 3.5 Sonnet / Claude 4 (Anthropic, 2024–2025)

| Property | Value |
|----------|-------|
| **Architecture** | Constitutional AI + RLHF; transformer-based |
| **Context** | 200K tokens |
| **API** | `claude-3-5-sonnet-20241022` / `claude-sonnet-4` |
| **Strength** | Long context, structured output, careful instruction following |

**PUMA relevance**: Tested as alternative cloud model; 200K context allows embedding full TAWOS dataset subsets. Strong for few-shot examples with long issue descriptions.

---

### DeepSeek-V3 (DeepSeek, 2024)

| Property | Value |
|----------|-------|
| **Parameters** | 671B total, 37B active (MoE) |
| **Experts** | 256 experts, top-2 routing per token |
| **Context** | 128K tokens |
| **Training cost** | $6M (fraction of GPT-4 cost) |
| **License** | MIT (weights open) |

**PUMA relevance**: Most capable open-weights model; competitive with GPT-4o on coding. Demonstrates that frontier-quality performance is achievable with open-source models — validates PUMA's open-model track.

---

## Quantization Reference (Local Deployment)

| Format | Bits | Quality Loss | VRAM (7B) | VRAM (13B) |
|--------|------|-------------|-----------|------------|
| FP16 | 16 | None (baseline) | ~14GB | ~26GB |
| Q8_0 | 8 | Minimal | ~8GB | ~14GB |
| Q5_K_S | 5 | Very small | ~5.5GB | ~9GB |
| Q4_K_M | 4 | Small | ~4.8GB | ~8GB |
| Q3_K_M | 3 | Moderate | ~4GB | ~6.5GB |
| Q2_K | 2 | Large | ~3GB | ~5GB |

**PUMA**: Use Q4_K_M as default for local experiments (best quality/VRAM tradeoff). Run FP16 for final reported results when hardware allows.

---

## Model Selection Rationale for PUMA

| Model | Track | Rationale |
|-------|-------|-----------|
| Llama 3.2 8B | Local (primary) | Best balance of capability and resource requirements |
| Mistral 7B | Local | Apache 2.0 license; strong JSON compliance |
| Phi-3.5 Mini | Local (efficiency) | Tests minimum viable deployment |
| Gemma 2 9B | Local | Google architecture variant; novel attention |
| GPT-4o | Cloud (primary) | Performance upper bound |
| DeepSeek-R1 7B | Local (reasoning) | Open reasoning model; CoT alignment with PUMA |
| DeepSeek-V3 | Cloud (open-weight) | Validates open frontier model feasibility |

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-Evaluation-Metrics-Comprehensive]] — how models are evaluated
- [[30 - Permanent/31 Concepts/PN-FineTuning-LoRA-Quantization]] — fine-tuning approaches
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Liu-2023-AgentBench]] — benchmark showing model capability gaps
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] — experimental design using these models

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
