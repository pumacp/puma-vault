---
id: PN-AMI-Framework
title: "AMI — Autodiagnóstico y Mejora Iterativa"
type: permanent-note
category: framework
tags: [permanent, framework, prompting, ami, iteration, self-improvement]
aliases: ["AMI", "Autodiagnosis Iterative Improvement"]
created: 2026-03-01
maturity: evergreen
---

# AMI — Autodiagnosis & Iterative Improvement

> **Atomic claim:** AMI is a structured feedback loop where you present your own work to an AI, request a critical diagnosis using defined criteria, then iterate — using the AI as an external critic while retaining full authorship.

## 💡 The Three-Step Loop

```
YOUR DRAFT → AI DIAGNOSIS → YOUR REVISION → (repeat)
```

**Step 1 — Submit with explicit criteria**
```
"Here is my [hypothesis / section / prompt / argument]:
[YOUR CONTENT]

Please diagnose it against these criteria:
1. Internal consistency — Are there contradictions?
2. Evidence sufficiency — Are claims supported?
3. Falsifiability — Can each claim be tested?
4. Clarity — Is the argument followable?
5. [Domain-specific criterion]

For each criterion: rating (1-5), specific problem identified, 
suggested fix. Do NOT rewrite for me."
```

**Step 2 — You revise** (never paste AI text directly)

**Step 3 — Second pass**
```
"Here is the revised version: [REVISION]
What problems remain from your previous diagnosis?"
```

## 🧩 Application to PUMA
Used to refine: research hypotheses H1/H2, prompt templates for experiments, Chapter 1 argumentation. See: [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-AMI-Review]]

## 🔗 Connected Ideas
**Part of:** [[PN-MIT-Student-Method]] | **Pairs with:** [[PN-IIPR-Framework]]

---
---
id: PN-DRCA-Framework
title: "DRCA — Deconstrucción y Reconstrucción Conceptual Avanzada"
---

# DRCA — Advanced Conceptual Deconstruction & Reconstruction

> **Atomic claim:** DRCA is a four-step cognitive procedure for deeply processing any complex concept or paper: Deconstruct its components, Reconstruct in your own framework, perform Critical analysis, then Advance by generating original output.

## 💡 The Four Steps

| Step | Action | Output |
|------|--------|--------|
| **D**econstruct | Break into atomic parts: problem, method, evidence, claim, limits | Structured outline |
| **R**econstruct | Rebuild using YOUR vocabulary and mental model | Restatement in own words |
| **C**ritical | Identify: assumptions, gaps, rival explanations, validity threats | Critical notes |
| **A**dvance | What new permanent note, hypothesis, or design decision does this generate? | Zettelkasten atom |

## 🧩 Application to PUMA
Every paper in the SLR goes through DRCA. The "Advance" step produces the permanent notes in `30 - Permanent/`. See: [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-DRCA-Paper]]

## 🔗 Connected Ideas
**Part of:** [[PN-MIT-Student-Method]] | **Produces:** [[00 - Meta/Templates/Template-Permanent-Note]]

---
---
id: PN-IIPR-Framework
title: "IIPR — Ingeniería Inversa de Prompts y Respuestas"
---

# IIPR — Inverse Prompt Engineering

> **Atomic claim:** IIPR is the practice of reverse-engineering why a prompt produced a poor result, then systematically redesigning the prompt structure to achieve the desired output — treating prompts as testable specifications.

## 💡 The IIPR Protocol

When a prompt fails or produces suboptimal output:

**Step 1 — Diagnose**
```
"I asked you: [ORIGINAL PROMPT]
You responded: [AI RESPONSE]
I wanted: [DESIRED RESPONSE]
What is wrong with my prompt that caused this mismatch?
Be specific about which component (Role/Context/Objective/Instructions/Format) 
needs improvement and why."
```

**Step 2 — Reconstruct**
Based on AI diagnosis, rewrite the prompt addressing each identified weakness.

**Step 3 — Version control**
Log both versions in the prompt note with the change reason. See: [[00 - Meta/Templates/Template-Prompt-Note]] (Refinement History section).

## 🧩 Application to PUMA
Critical for iterating on the Ollama experiment prompts (triage and estimation strategies). Each refinement iteration is logged in the experiment notes.

## 🔗 Connected Ideas
**Part of:** [[PN-MIT-Student-Method]] | **Uses:** [[PN-RCOIF-Framework]] | **SDD analogy:** Iterating on specs
