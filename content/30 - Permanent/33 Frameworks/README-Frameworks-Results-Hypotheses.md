---
id: README-Frameworks
title: "🔧 Frameworks — Guide"
type: readme
tags: [readme, frameworks, guide]
created: 2026-03-01
---

# 🔧 Frameworks — Research & Engineering Frameworks

> Permanent notes on all methodological frameworks. Sub-folders: `Prompting/` · `Research/` · `Engineering/`

## Current Framework Notes

| Note | Framework | Maturity |
|------|-----------|---------|
| [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]] | RCOIF structured prompting | 🌳 Evergreen |
| [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method]] | MIT Student Method | 🌳 Evergreen |
| [[30 - Permanent/33 Frameworks/PN-EGI-Framework]] | EGI guided exploration | 🌳 Evergreen |
| [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]] | AMI · DRCA · IIPR | 🌳 Evergreen |
| [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] | SDD · BDD · BMAD | 🌳 Evergreen |
| [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] | PRISMA-trAIce · Cornell · FINER | 🌳 Evergreen |

## Frameworks to Add

- `PN-Grounded-Theory.md` — For qualitative AI use analysis
- `PN-CDD-Framework.md` — Context-Driven Development detail
- `PN-Agent-OS.md` — Agent OS orchestration patterns

---
---
id: RES-Triage-Stage1-Summary
title: "📊 Results Summary — Stage 1 Triage"
type: permanent-note
category: result
tags: [permanent, results, triage, stage1, f1-macro, h1]
created: 2026-03-01
maturity: seedling
status: pending
---

# Results Summary — Stage 1: Issue Triage

> **Status:** ⏳ Pending experiment execution (Phase F2)
> This note will be populated after running all 8 triage conditions.

---

## Summary Table (to fill after F2)

| Model | Strategy | F1-macro | p-value | r | ≥0.55? |
|-------|---------|---------|---------|---|-------|
| Heuristic | — | TBD | — | — | — |
| TF-IDF+SVM | — | TBD | — | — | — |
| llama3.2:8b | zero-shot | TBD | TBD | TBD | — |
| llama3.2:8b | few-shot-3 | TBD | | | |
| llama3.2:8b | few-shot-6 | TBD | | | |
| llama3.2:8b | cot | TBD | | | |
| mistral:7b | zero-shot | TBD | | | |
| mistral:7b | few-shot-3 | TBD | | | |
| mistral:7b | few-shot-6 | TBD | | | |
| mistral:7b | cot | TBD | | | |

## H1 Decision: Pending

**Source experiments:** [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]]

---
---
id: RES-Estimation-Stage2-Summary
title: "📊 Results Summary — Stage 2 Estimation"
type: permanent-note
category: result
tags: [permanent, results, estimation, stage2, mae, h2]
created: 2026-04-10
maturity: seedling
status: pending
---

# Results Summary — Stage 2: Effort Estimation

> **Status:** ⏳ Pending experiment execution (Phase F3)

## Summary Table

| Model | Strategy | MAE | p-value | r | ≤3.0 SP? |
|-------|---------|-----|---------|---|---------|
| Historical mean | — | TBD | — | — | — |
| Deep-SE | — | ~3.2 | lit. | — | — |
| CoGEE/GPT-4 | — | ~1.9 | lit. | — | — |
| llama3.2:8b | zero-shot | TBD | | | |
| llama3.2:8b | few-shot-3 | TBD | | | |
| llama3.2:8b | cot | TBD | | | |
| mistral:7b | zero-shot | TBD | | | |
| mistral:7b | few-shot-3 | TBD | | | |
| mistral:7b | cot | TBD | | | |

## H2 Decision: Pending

**Source experiments:** [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]]

---
---
id: PN-Falsifiability-Popper
title: "Falsifiability — Popper's Criterion of Demarcation"
type: permanent-note
category: concept
tags: [permanent, concept, falsifiability, popper, scientific-method, hypothesis]
aliases: ["Falsifiability", "Popper's criterion", "Demarcation criterion"]
created: 2026-03-01
maturity: evergreen
sources: ["[[20 - Literature/20.2 Books/LN-Books-KeyReferences]]"]
---

# Falsifiability — Popper's Criterion of Demarcation

> **Atomic claim:** A hypothesis has scientific value only if it can be falsified by empirical evidence — meaning it must be possible to conceive an observation that would prove it wrong. This is the principle guiding how PUMA formulates H1 and H2.

## The Principle

Karl Popper (1934/1959) argued that the boundary between science and non-science is **falsifiability**: a statement is scientific if and only if it is possible to imagine evidence that would prove it false.

**Applied to PUMA:**
- H₀₁ is falsifiable: if any LLM condition achieves F1 > baseline with p < 0.05, H₀₁ is rejected
- H₀₁ is also non-refutable in a valid way: if no condition beats baseline, the experiment concludes local LLMs add no value in these conditions — a meaningful negative result

## The Null Hypothesis Structure

```
H₀ (null, refutable):  No effect exists
H₁ (alternative):       Effect exists with minimum magnitude X
Falsification condition: If data is consistent with H₀ under the protocol, 
                         H₀ is not rejected — the experiment is informative either way
```

## Why This Matters for PUMA

A common mistake is formulating hypotheses that cannot be falsified:
- ❌ "LLMs will be useful for triage" — too vague, no measurement
- ✅ "At least one configuration achieves F1-macro > 0.55 vs heuristic baseline (p < 0.05)" — precise, falsifiable

**🔗** [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] · [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]]
