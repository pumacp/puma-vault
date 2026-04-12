---
id: PN-RCOIF-Framework
title: "RCOIF — Role·Context·Objective·Instructions·Format"
type: permanent-note
category: framework
tags: [permanent, framework, prompting, rcoif, rcof, methodology]
aliases: ["RCOIF", "RCOF", "structured prompting"]
created: 2026-03-01
updated: 2026-03-01
maturity: evergreen
sources: ["[[30 - Permanent/33 Frameworks/PN-MIT-Student-Method]]"]
---

# RCOIF — Role · Context · Objective · Instructions · Format

> **Atomic claim:** Structuring every AI prompt into five components (Role, Context, Objective, Instructions, Format) consistently produces higher-quality, more predictable outputs than unstructured prompting.

---

## 💡 The Framework

RCOIF is a structured prompting methodology that decomposes every prompt into five mandatory components:

| Component | Purpose | Key question |
|-----------|---------|-------------|
| **R** — Role | Define AI's persona and expertise | *Who are you in this interaction?* |
| **C** — Context | Provide all relevant background | *What does the AI need to know?* |
| **O** — Objective | State the desired outcome precisely | *What exactly do we want to achieve?* |
| **I** — Instructions | Step-by-step task breakdown | *How should the AI proceed?* |
| **F** — Format | Specify the output structure | *What form should the answer take?* |

The **RCOF** variant omits the Objective as a separate component (merging it with Instructions), used for simpler tasks.

---

## 🔬 Why It Works

The framework exploits three properties of large language models:

1. **Role anchoring** — Priming the model with a specific role activates domain-relevant knowledge and reduces generic responses
2. **Context windows are attention windows** — What you put in context shapes what the model attends to
3. **Format specification** — Explicit output format constraints reduce hallucination and improve parsability

---

## 📋 Template

```
ROLE:
You are a [specific expert type] with expertise in [domain].
Your approach is [methodological stance].

CONTEXT:
[Background information: project, constraints, prior work, definitions]
[What has already been established]
[What the user/researcher brings to the interaction]

OBJECTIVE:
[Single, precise goal statement]
[Success criterion]

INSTRUCTIONS:
1. [First action]
2. [Second action — reference CONTEXT where needed]
3. [Third action]
[Continue until complete]

FORMAT:
- Structure: [e.g., markdown with H2 headers per section]
- Length: [e.g., 500-800 words]
- Language: English
- Include: [mandatory elements]
- Exclude: [what to omit]
- Tone: [academic | technical | conversational]
```

---

## 🧩 Application to PUMA

In PUMA, RCOIF is used at two levels:

**Level 1 — Research assistance prompts** (Claude, Perplexity, DeepSeek)
- Role: domain expert in software engineering / empirical research
- Context: PUMA project specifics, dataset properties, prior findings
- See: [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-RCOIF-Research]]

**Level 2 — Experiment prompts** (Ollama Llama3.2, Mistral7B)
- These are the prompts the *benchmark itself* uses for triage and estimation
- The prompting strategy IS the independent variable being tested
- See: [[60 - Resources/61 Prompts/PT-PUMA-Triage-ZeroShot]]

---

## 🔗 Connected Ideas

**Extends:** [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] (CoT adds reasoning steps to the I component)
**Used in:** [[30 - Permanent/33 Frameworks/PN-EGI-Framework]] · [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]]
**Contrasts with:** Zero-shot unstructured prompting
**Applied to PUMA prompts:** [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-RCOIF-Research]] · [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]]
**Experiment context:** [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] (§3.4) · [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]
**MOC:** [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]

---

## ⚠️ Caveats

- RCOIF improves consistency, but does not guarantee accuracy — outputs still require human validation
- Over-specified Format constraints can suppress creative or unexpected useful responses
- For very simple one-shot queries, the full framework adds unnecessary friction — use RCOF
