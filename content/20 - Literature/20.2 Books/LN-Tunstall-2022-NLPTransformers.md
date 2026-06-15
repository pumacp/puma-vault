---
type: literature
title: "Natural Language Processing with Transformers: Building Language Applications with Hugging Face"
authors: ["Tunstall, Lewis", "von Werra, Leandro", "Wolf, Thomas"]
first-author: "Tunstall"
year: 2022
status: reviewed
topic: nlp-transformers
relevance: 4
citekey: "@Tunstall2022NLPTransformers"
venue: "O'Reilly Media"
arxiv: ""
doi: ""
url: "https://www.oreilly.com/library/view/natural-language-processing/9781098136780/"
tags: [literature, transformers, hugging-face, nlp, fine-tuning, quantization, ollama, open-weights, mistral, gemma, bert, puma-core, book, implementation, python, literature-note, moc]
created: 2026-04-14
updated: 2026-06-15
keshav-pass: 2
---

# LN: Tunstall, von Werra & Wolf (2022) — NLP with Transformers

> [!cite] Bibliographic Reference
> **Citation**: Tunstall, L., von Werra, L., & Wolf, T. (2022). *Natural language processing with Transformers: Building language applications with Hugging Face*. O'Reilly Media. https://www.oreilly.com/library/view/natural-language-processing/9781098136780/

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Technical book — implementation guide |
| **Context** | Written by members of Hugging Face (the organisation behind the `transformers` library). Combines theoretical foundations with hands-on Python code |
| **Correctness** | Code examples tested against Hugging Face library versions; covers published models with accurate capability claims |
| **Contributions** | (1) End-to-end guide for fine-tuning and deploying Transformer models; (2) Quantization techniques (4-bit, 8-bit, GGUF); (3) Local inference with open-weight models; (4) Text classification, summarisation, generation, and Q&A pipelines |
| **Clarity** | Excellent — progressive difficulty, extensive code examples |

> [!success] Relevance: ⭐⭐⭐⭐
> Provides the technical basis for PUMA's model selection, fine-tuning rationale (LoRA/QLoRA), and the local execution pipeline (Ollama + open-weight models). The classification pipeline chapters directly map to PUMA's H1 implementation.

---

## Pass 2 — Key Concepts

### Text Classification Pipeline (PUMA H1 Mapping)

The book's classification chapter maps directly to PUMA's triage task:

```python
from transformers import pipeline

classifier = pipeline("text-classification",
                      model="meta-llama/Llama-3.2-8B-Instruct")

result = classifier(
    "Bug: User cannot login after password reset",
    candidate_labels=["Bug", "Story", "Task", "Improvement"]
)
```

For PUMA, the equivalent is a prompted LLM (via Ollama) rather than a fine-tuned classifier — but the conceptual pipeline is identical.

### Fine-Tuning with LoRA

The book's fine-tuning chapters cover parameter-efficient fine-tuning:

```python
from peft import LoraConfig, get_peft_model

config = LoraConfig(
    r=16,
    lora_alpha=32,
    target_modules=["q_proj", "v_proj"],
    lora_dropout=0.05,
    bias="none",
    task_type="CAUSAL_LM"
)
model = get_peft_model(base_model, config)
```

This is directly applicable to PUMA's optional fine-tuning stage (PUMA Stage 3+).

### Quantization and Local Deployment

Key quantization concepts from the book:
- **8-bit quantization** (bitsandbytes): 2× memory reduction, <1% quality loss
- **4-bit NF4 quantization** (QLoRA): 4× memory reduction, enables 8B models on consumer GPU
- **GGUF** (llama.cpp): CPU-compatible quantization format used by Ollama

These directly justify PUMA's choice to use Ollama for local model execution.

---

## PUMA Integration

- **Ch.3 Methods**: Cite Tunstall et al. for the technical justification of local inference, quantization, and the Python classification pipeline
- **Model selection**: The book's coverage of Mistral 7B, Gemma 2, and Phi-3.5 validates PUMA's model choices

## Related Notes

- [[30 - Permanent/31 Concepts/PN-FineTuning-LoRA-Quantization]] — LoRA, QLoRA, GGUF detailed notes
- [[30 - Permanent/31 Concepts/PN-LLM-Models-PUMA]] — model catalog (all covered by Tunstall et al.)
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Vaswani-2017-AttentionIsAllYouNeed]] — Transformer architecture that underpins all models
- [[20 - Literature/20.6 Tools/LN-Tools-Ollama-ClaudeCode-OpenCode-BrowserOS]] — Ollama for local inference

## MOCs

- [[20 - Literature/20.2 Books/MOC Books]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
