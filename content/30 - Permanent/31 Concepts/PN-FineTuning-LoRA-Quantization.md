---
type: permanent
title: "Fine-Tuning LLMs — LoRA, QLoRA, GGUF Quantization, and PUMA Considerations"
topic: llm-training
tags: [permanent, fine-tuning, lora, qlora, quantization, gguf, ollama, llm, training, puma-core, research, agents, benchmark, local-models, effort-estimation, issue-triage, architecture]
created: 2026-04-13
updated: 2026-06-15
aliases: ["LoRA", "QLoRA", "Fine-tuning", "Quantization", "GGUF"]
---

# PN: Fine-Tuning LLMs — LoRA, QLoRA, GGUF Quantization, and PUMA Considerations

> [!abstract] Core Idea
> PUMA's primary evaluation strategy uses **prompting** (zero-shot, few-shot, CoT) on frozen pre-trained models. Fine-tuning is a future extension. This note covers the technical landscape of fine-tuning and quantization — relevant for PUMA Stage 6 (domain adaptation) and for understanding the capability/resource tradeoffs of local models.

---

## Why PUMA Does Not Fine-Tune (For Now)

**Prompting advantages for a research benchmark**:
1. **Reproducibility**: Frozen model + fixed seed → deterministic outputs; no fine-tuning run variation
2. **Generalizability**: Results transfer across organizations without retraining on their data
3. **Fairness**: All models evaluated on equal footing (original weights, same prompting protocol)
4. **Cost**: No GPU training time; inference only

**Fine-tuning advantages (future work)**:
1. Better performance on PUMA-specific vocabulary (Jira, story points, issue types)
2. Consistent output format without instruction engineering
3. Smaller models can match larger frozen models on narrow domains
4. On-premise deployment with organizational data sovereignty

---

## Full Fine-Tuning

Update all model weights using supervised gradient descent on a domain-specific dataset.

$$\theta^* = \theta_{\text{pretrained}} - \alpha \nabla_\theta \mathcal{L}(\text{PUMA data})$$

**Requirements for a 7B model**:
- VRAM: ~112 GB (FP32) or ~56 GB (FP16/BF16) — requires multiple A100/H100 GPUs
- Training time: 1–3 days on 8× A100s for 10K examples
- **Conclusion**: Not feasible for most research groups or organizations

---

## Parameter-Efficient Fine-Tuning (PEFT)

### LoRA (Low-Rank Adaptation)

**Hu et al., 2021** — *LoRA: Low-Rank Adaptation of Large Language Models* (arXiv:2106.09685)

Instead of updating all weights $W \in \mathbb{R}^{d \times k}$, LoRA decomposes the update into two low-rank matrices:

$$W' = W + \Delta W = W + BA$$

where $B \in \mathbb{R}^{d \times r}$ and $A \in \mathbb{R}^{r \times k}$, with rank $r \ll \min(d, k)$.

| Parameter | Typical Value | Effect |
|-----------|-------------|--------|
| **rank r** | 4–64 | Higher = more expressive but more parameters |
| **alpha α** | 16–64 | Scaling factor (α/r weights the update) |
| **target modules** | q_proj, v_proj | Which attention layers to adapt |

**VRAM requirement** (7B model, r=16):
- Only ~16M additional parameters vs. 7B frozen weights
- Trainable on a single RTX 3090 (24GB) or RTX 4090 (24GB)
- Fine-tuning time: 30–90 min for 5K examples

### QLoRA (Quantized LoRA)

**Dettmers et al., 2023** — *QLoRA: Efficient Finetuning of Quantized LLMs* (arXiv:2305.14314)

- Base model weights quantized to **4-bit NormalFloat (NF4)** format
- LoRA adapters remain in BF16 during training
- Double quantization: quantize the quantization constants themselves to save additional 0.37 bits/parameter

**VRAM requirement** (13B model, QLoRA):
- ~10GB VRAM (vs. 26GB for BF16 LoRA)
- Enables fine-tuning 70B models on a single A100 80GB

```python
from transformers import AutoModelForCausalLM, BitsAndBytesConfig
from peft import LoraConfig, get_peft_model

bnb_config = BitsAndBytesConfig(
    load_in_4bit=True,
    bnb_4bit_quant_type="nf4",
    bnb_4bit_compute_dtype=torch.bfloat16,
    bnb_4bit_use_double_quant=True
)

model = AutoModelForCausalLM.from_pretrained(
    "meta-llama/Llama-3.2-8B-Instruct",
    quantization_config=bnb_config
)

lora_config = LoraConfig(
    r=16,
    lora_alpha=32,
    target_modules=["q_proj", "v_proj", "k_proj", "o_proj"],
    lora_dropout=0.05,
    task_type="CAUSAL_LM"
)

model = get_peft_model(model, lora_config)
model.print_trainable_parameters()
# Trainable: 16M / 8B = 0.2% of all parameters
```

---

## Inference Quantization (No Fine-Tuning)

### GGUF Format (llama.cpp / Ollama)

**GGUF** (GPT-Generated Unified Format) is the serialization format used by llama.cpp and Ollama for quantized inference on CPU/consumer GPU.

| Format | Bits | Quality | VRAM 7B | VRAM 13B |
|--------|------|---------|---------|---------|
| `Q8_0` | 8 | Minimal loss | ~8GB | ~14GB |
| `Q5_K_S` | 5 | Small loss | ~5.5GB | ~9.5GB |
| `Q4_K_M` | 4 | Moderate loss | ~4.8GB | ~8GB |
| `Q3_K_M` | 3 | Noticeable loss | ~3.8GB | ~6.5GB |
| `Q2_K` | 2 | Significant loss | ~3GB | ~5GB |

**Naming convention**: `Q{bits}_{type}_{size}`
- `K` = k-quant (superior quality for same bits vs. legacy quants)
- `M` = Medium size within k-quant variants
- `S` = Small size

**PUMA recommendation**: Use `Q4_K_M` for benchmark runs (best quality/VRAM ratio); report model quantization level explicitly in experiment tables.

### Ollama Workflow for PUMA

```bash
# Pull model
ollama pull llama3.2:8b

# Check loaded size
ollama list

# Run with seed for reproducibility (via API)
curl http://localhost:11434/api/generate -d '{
  "model": "llama3.2:8b",
  "prompt": "Classify this issue: ...",
  "options": {
    "seed": 42,
    "temperature": 0,
    "num_predict": 512
  }
}'
```

---

## Fine-Tuning Data for PUMA (Future Work)

If PUMA were to fine-tune a model, the training data would be:

| Source | Size | Format |
|--------|------|--------|
| TAWOS labeled issues (triage) | ~10K examples | `{issue} → {type, priority, component}` JSON |
| TAWOS issues with story points | ~5K examples | `{issue, examples} → {story_points, rationale}` |
| Augmented via GPT-4o CoT outputs | ~20K synthetic | LLM-generated reasoning traces |
| Human-corrected predictions | Ongoing | Active learning loop |

**Expected improvement** over prompting-only (literature estimate): 5–15% Macro-F1 for classification, 10–20% MAE reduction for estimation.

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-LLM-Models-PUMA]] — models being fine-tuned/quantized
- [[30 - Permanent/31 Concepts/PN-Evaluation-Metrics-Comprehensive]] — how to evaluate fine-tuned models
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Liu-2023-AgentBench]] — benchmark that showed gap between open-source and GPT-4 (partially bridgeable via fine-tuning)

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
