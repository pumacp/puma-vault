---
type: literature
title: "Pensar con Prompts: La guía definitiva de la ingeniería de prompts"
authors: ["Shum, Jan"]
first-author: "Shum"
year: 2025
status: reviewed
topic: prompting
relevance: 4
citekey: "@Shum2025PensarConPrompts"
venue: "Independently published / Self-published"
arxiv: ""
doi: ""
url: ""
tags: [literature, prompting, prompt-engineering, costar, chain-of-thought, few-shot, zero-shot, structured-output, puma-core, book, methodology, research, literature-note, keshav, moc, llm, agents, human-ai-co-creation, generative-cognition, spanish]
created: 2026-04-13
updated: 2026-06-15
keshav-pass: 2
---

# LN: Shum (2025) — Pensar con Prompts

> [!cite] Bibliographic Reference
> **Citation**: Shum, J. (2025). *Pensar con prompts: La guía definitiva de la ingeniería de prompts*. Independently published.
> **Note**: Independently published in 2025; available via major online book retailers. No official author website confirmed at time of writing. Verify current availability via retailer search.

> [!warning] Metadata Note
> This book is self-published. Author details and edition information reflect vault metadata. The Spanish-language original title is preserved; the summary below is in English per PUMA convention.

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Practical guide + methodology compendium |
| **Context** | Spanish-language comprehensive reference for prompt engineering techniques; fills a gap in accessible Spanish-language AI resources |
| **Correctness** | Synthesizes published techniques (CO-STAR, CoT, Self-Consistency, ReAct, etc.) with practical examples |
| **Contributions** | (1) CO-STAR framework formalization in Spanish; (2) Curated taxonomy of 20+ prompting techniques; (3) Applied examples for business and research contexts |
| **Clarity** | Excellent. Structured for both beginners and practitioners. |

> [!success] Relevance: ⭐⭐⭐⭐
> The CO-STAR framework in this book is the primary structural guide for PUMA's prompt design. The taxonomy of techniques maps directly to PUMA's experimental prompt strategy matrix.

---

## Pass 2 — Content

### CO-STAR Framework (Detailed)

Shum operationalizes CO-STAR as a six-section prompt template:

```
[C] CONTEXTO: Quién eres y cuál es el trasfondo de la tarea
[O] OBJETIVO: Qué quieres que el modelo haga exactamente
[S] ESTILO: Cómo debe escribir o responder
[T] TONO: El registro emocional o actitudinal de la respuesta
[A] AUDIENCIA: A quién va dirigida la respuesta
[R] RESPUESTA: El formato exacto que esperas
```

**Key principle**: The [R] section (Response format) is the most critical for programmatic use. Specifying JSON schema in [R] reduces format errors by 60–80% compared to unstructured prompts.

### Prompting Technique Taxonomy

| Technique | Category | When to Use | PUMA Status |
|-----------|---------|-------------|------------|
| Zero-Shot | Basic | Simple, well-defined tasks | H1/H2 baseline |
| Few-Shot | Basic | Pattern matching, classification | H1/H2 primary |
| Zero-Shot CoT | Reasoning | Multi-step inference | H1 augmented |
| Few-Shot CoT | Reasoning | Complex estimation with examples | H2 primary |
| Self-Consistency | Reliability | High-stakes, ambiguous cases | H2 production |
| ReAct | Agentic | Tool use + reasoning | Stage 4+ |
| COSTAR | Structure | Any LLM task | All PUMA prompts |
| Role Prompting | Persona | Specialized expert behavior | PM agent persona |
| Meta-Prompting | Advanced | Self-improving prompts | Research extension |
| Tree of Thoughts | Advanced | Complex multi-path decisions | Future work |

### Structured Output Best Practices

1. **Always include a concrete JSON example** in the prompt — not just a schema description
2. **Specify field constraints explicitly**: `"priority": "one of [Critical, High, Medium, Low]"`
3. **Include a "rationale" field** even if not consumed — forces model to reason before classifying
4. **Add an escape hatch**: `"confidence": 0–1; if confidence < 0.6, set type to 'uncertain'`

### Prompt Anti-Patterns (to avoid in PUMA)

- **Vague instructions**: "Analyze this issue" → "Classify this issue as Bug, Feature, Task, Improvement, or Sub-task"
- **Missing format specification**: No JSON schema → inconsistent outputs, parse failures
- **Role without persona**: "You are an AI assistant" → "You are a senior project manager with 10 years of Agile experience"
- **No examples for classification**: Zero-shot on subjective tasks → high variance outputs
- **Overlong prompts**: >4K tokens for simple classification → model loses focus on task

---

### Human-AI Co-Creation and Generative Cognition

Beyond the technical taxonomy, *Pensar con Prompts* advances a broader project about what prompting represents epistemologically: it is a form of **generative cognition** — thinking *through* and *with* an AI system rather than simply instructing it.

Key claims:
- Prompts are not commands to a tool; they are the articulation of thought in a form that another mind (the model) can extend
- The act of writing a good prompt requires the human to clarify their own thinking: vague prompts reflect vague intentions
- The output of a well-designed prompt session is not just the AI's response — it is the human's clarified understanding plus the AI's contribution

This framing positions prompt engineering as a **cognitive practice**, not merely a technical skill. The quality of human-AI interaction depends as much on the human's ability to think clearly as on the model's capability.

### Implications for Human-AI Collaboration

Shum argues that the most valuable prompt engineers are not those who memorise technique lists — they are those who develop a genuine understanding of how language models "think" (statistically, contextually, pattern-matching on training distributions). This understanding enables:
- Anticipating model failure modes before they occur
- Diagnosing why a prompt produces poor results
- Iterating deliberately rather than randomly
- Designing prompts that surface the model's genuine capabilities rather than averaging over its patterns

### Generative AI and Cognitive Extension

The book closes with a philosophical claim: LLMs are the first general-purpose cognitive extension tools available to everyone. Unlike calculators (which extend numerical cognition) or search engines (which extend memory), LLMs extend the full range of linguistic-reasoning cognition. The implications are systemic: how humans think, write, and decide will change fundamentally in a world where generative AI is ubiquitous.

---

## PUMA Integration

- **Prompt design**: CO-STAR structure is the template for all PUMA H1/H2 prompts
- **Technique selection**: Shum's taxonomy provides vocabulary for PUMA's experimental conditions
- **Anti-pattern checklist**: Review all PUMA prompts against Shum's anti-pattern list before experiment execution
- **Spanish-language resource**: Relevant for PUMA academic context (Spanish university project)
- **Generative cognition framing**: Supports PUMA's claim that prompt engineering is a methodology, not just a parameter

## Related Notes

- [[30 - Permanent/31 Concepts/PN-COSTAR-SelfConsistency]] — permanent note on these techniques
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] — where these techniques are applied
- [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] — CoT and few-shot prompting techniques
- [[30 - Permanent/31 Concepts/PN-ActiveReading-CognitivePractice]] — cognitive offloading; prompt engineering as cognitive practice
- [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]] — RCOIF as a complementary Spanish-language prompting framework

## MOCs

- [[20 - Literature/20.2 Books/MOC Books]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
