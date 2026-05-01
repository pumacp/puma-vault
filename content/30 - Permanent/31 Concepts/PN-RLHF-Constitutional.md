---
type: permanent
title: "RLHF and Constitutional AI — LLM Alignment Training Paradigms"
topic: llm-training
tags: [permanent, rlhf, constitutional-ai, rlaif, ppo, reward-model, alignment, ai-safety, fine-tuning, sft, anthropic, openai, puma-core, research, training, ethics, llm, models, hitl]
created: 2026-05-01
updated: 2026-05-01
aliases: ["RLHF", "Constitutional AI", "RLAIF", "Reward Model", "PPO alignment"]
---

# PN: RLHF and Constitutional AI — LLM Alignment Training Paradigms

> [!abstract] Core Idea
> **RLHF** (Reinforcement Learning from Human Feedback) and **Constitutional AI** (CAI) are the two dominant paradigms for aligning pre-trained LLMs to human values and instructions. RLHF trains a reward model on human preference comparisons and uses PPO to optimise the policy. CAI replaces human raters with an AI judge operating under a written constitution, enabling scalable alignment without proportional human annotation cost. Both produce the instruction-following models used in PUMA.

---

## Pre-Training vs. Alignment

A base language model (e.g., Llama-3 base, GPT-4 base) is trained to predict next tokens — it is not inherently helpful or safe. Alignment training adapts it to:

1. **Follow instructions** (do what the user asks)
2. **Be helpful** (produce useful, accurate responses)
3. **Be harmless** (avoid dangerous, toxic, or deceptive outputs)
4. **Be honest** (express uncertainty, avoid hallucination)

RLHF and CAI are the primary methods to achieve this.

---

## RLHF — Reinforcement Learning from Human Feedback

### Three-Stage Pipeline

```
Stage 1: Supervised Fine-Tuning (SFT)
  Pre-trained base model + demonstration dataset (human-written responses)
  → SFT model (follows instructions, but not yet preference-aligned)

Stage 2: Reward Model (RM) Training
  SFT model generates response pairs for same prompt
  Human raters rank: response A > response B
  RM trained to predict human preference score
  → Reward Model

Stage 3: PPO Fine-Tuning
  SFT policy optimised using PPO to maximise RM score
  KL penalty prevents the policy from diverging too far from SFT model
  → RLHF-aligned model (ChatGPT / Claude / Llama-Chat)
```

### Mathematical Framework

The RLHF objective is:

$$\max_{\pi_\theta} \mathbb{E}_{x \sim \mathcal{D}, y \sim \pi_\theta(y|x)} [r_\phi(x, y)] - \beta \cdot D_{KL}[\pi_\theta(y|x) \| \pi_{\text{SFT}}(y|x)]$$

Where:
- $\pi_\theta$ = policy being trained (the LLM)
- $r_\phi$ = reward model
- $\beta$ = KL penalty coefficient (prevents reward hacking)
- $\pi_{\text{SFT}}$ = SFT model as reference point

### Failure Modes

| Problem | Description | Effect |
|---------|-------------|--------|
| **Reward hacking** | Policy finds non-intended ways to get high reward | Sycophancy; verbose-but-wrong answers |
| **Mode collapse** | Policy converges to narrow response style | Low diversity; robustness loss |
| **Human bias amplification** | RM learns rater biases | Demographic skew; cultural bias |
| **Scalability** | Human annotation is expensive | Few datasets; narrow coverage |

---

## Constitutional AI (Anthropic, 2022)

### Motivation

Human annotation for RLHF is expensive, slow, and inconsistent. CAI replaces human preference labelling with an AI judge that applies a **written constitution** — a set of principles describing what helpful, harmless, and honest behaviour looks like.

### Two-Stage Process

```
Stage 1: Supervised Learning from AI Feedback (SL-CAI)
  1. Prompt model to generate a potentially harmful response (red-teaming)
  2. Prompt model to critique its own response using constitution principles
  3. Prompt model to revise the response based on the critique
  4. Repeat critique-revise cycle (typically 2 rounds)
  5. Fine-tune on the final (revised) responses → SL-CAI model

Stage 2: Reinforcement Learning from AI Feedback (RLAIF)
  1. For each prompt, generate response pairs (SL-CAI model)
  2. AI judge (frontier model + constitution) ranks: A > B
  3. Train preference model on AI rankings
  4. PPO fine-tuning using AI preference model
  → Constitutional AI model (Claude 1, 2, 3, Sonnet, Haiku, Opus)
```

### The Constitution

A constitution is a list of principles. Example principles from Anthropic's published constitution:

> "Choose the response that is least likely to contain harmful or unethical content."
> "Choose the response that is most supportive of human autonomy and individual rights."
> "Choose the response that is most honest and avoids claiming to be human when it isn't."

The AI judge evaluates response pairs against each principle and produces a binary preference label.

### Advantages over RLHF

| Dimension | RLHF | Constitutional AI |
|-----------|------|------------------|
| **Annotation cost** | High (human raters) | Low (AI judge) |
| **Scalability** | Limited by annotation budget | Scales with compute |
| **Consistency** | Variable (rater disagreement) | Consistent (same constitution) |
| **Customisability** | Hard (retrain RM for new values) | Easy (edit constitution) |
| **Transparency** | RM is a black box | Principles are human-readable |

---

## RLAIF — Reinforcement Learning from AI Feedback

RLAIF is the general term for using any AI model (not necessarily a constitution-based judge) to provide preference labels. CAI is one specific implementation of RLAIF.

Other RLAIF variants:
- **Self-Rewarding Language Models** (Yuan et al., 2024): the model is its own judge
- **SPIN** (Self-Play fine-tuning): model generates both preferred and rejected responses
- **Direct Preference Optimisation (DPO)**: eliminates the RL step; optimises directly on preference data

---

## DPO — Direct Preference Optimisation

DPO (Rafailov et al., 2023) reformulates RLHF without an explicit reward model or PPO:

$$\mathcal{L}_{\text{DPO}}(\pi_\theta) = -\mathbb{E}_{(x, y_w, y_l) \sim \mathcal{D}} \left[ \log \sigma \left( \beta \log \frac{\pi_\theta(y_w | x)}{\pi_{\text{ref}}(y_w | x)} - \beta \log \frac{\pi_\theta(y_l | x)}{\pi_{\text{ref}}(y_l | x)} \right) \right]$$

Where $y_w$ = preferred response, $y_l$ = dispreferred response.

DPO is preferred for instruction fine-tuning because:
- No RL training instability (PPO is notoriously finicky)
- No separate reward model to train and maintain
- Direct optimisation on preference pairs

Used by: Llama-3-Instruct, Mistral-Instruct, Phi-3, most open-source instruction models.

---

## Impact on PUMA Models

All models in PUMA's catalog have undergone some form of alignment training:

| Model | Alignment Method | Notes |
|-------|-----------------|-------|
| GPT-4o | RLHF + RLAIF (OpenAI) | Undisclosed full details |
| Claude Sonnet 3.7 | Constitutional AI (CAI) | Anthropic; most transparent |
| DeepSeek-R1 | GRPO (Group Relative Policy Optimisation) | Specialised for reasoning |
| Llama-3.1-8B-Instruct | SFT + DPO | Meta; open-source |
| Mistral-7B-Instruct | SFT + DPO | Mistral AI |
| Phi-3-mini | SFT + DPO | Microsoft; dataset-focused alignment |

### Implications for PUMA

1. **Frozen models**: PUMA evaluates all models post-alignment; no fine-tuning in baseline experiments
2. **Alignment tax**: aligned models may be more cautious on ambiguous triage tasks → may produce "safe" but incorrect classifications
3. **Constitution-aware prompting**: Claude's CAI training makes it especially responsive to explicit normative constraints in system prompts (bounded autonomy framing)
4. **DPO models are PUMA-compatible**: open-source DPO models run on Ollama with no special considerations

---

## RLHF vs. Constitutional AI: PUMA Design Implications

| Question | RLHF | CAI |
|----------|------|-----|
| Can we inspect alignment criteria? | No (RM is opaque) | Yes (constitution is readable) |
| Can we audit for PM-domain bias? | Difficult | Feasible — check constitution principles |
| Consistent with EU AI Act transparency? | Partial | Strong |
| Available for local deployment? | Open RM checkpoints (rare) | N/A (CAI produces model; model is local) |

For the PUMA ethics chapter (Section 5.3): Constitutional AI provides the strongest transparency story for regulatory compliance framing.

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-FineTuning-LoRA-Quantization]] — SFT and LoRA fine-tuning (Stage 1 of alignment pipeline)
- [[30 - Permanent/31 Concepts/PN-LLM-Models-PUMA]] — model catalog: alignment method per model
- [[30 - Permanent/31 Concepts/PN-HITL-BoundedAutonomy]] — HITL as alignment-complement at inference time
- [[30 - Permanent/31 Concepts/PN-AlgorithmicBias]] — bias introduced or perpetuated by RLHF rater demographics
- [[30 - Permanent/31 Concepts/PN-Reflexion-SelfCritique]] — comparison table: Reflexion vs. RLHF vs. CAI

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
