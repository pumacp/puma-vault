---
type: permanent
title: "Marco Veritas — AI Transparency and Academic Integrity Framework"
topic: research-ethics
tags: [permanent, framework, veritas, marco-veritas, ai-transparency, academic-integrity, ethics, prisma-traice, proactive-disclosure, hallucination-detection, ai-use-log, puma-core, research, methodology, accountability, open-science]
created: 2026-04-14
updated: 2026-04-14
aliases: ["Veritas Framework", "Marco Veritas", "AI Integrity Framework", "Proactive Disclosure"]
---

# PN: Marco Veritas — AI Transparency and Academic Integrity Framework

> [!abstract] Core Idea
> **Marco Veritas** (Codina, 2024) is an academic integrity framework that governs the ethical use of AI tools in research. Its central principle is **no delegation of judgement**: AI may generate options, suggestions, and drafts, but the researcher retains full decision-making authority and is responsible for validating every AI-generated output against primary sources. PUMA adopts Marco Veritas as a non-negotiable project-wide protocol.

---

## Origin and Context

**Author**: Lluís Codina (Universitat Pompeu Fabra, Barcelona)
**Year**: 2024
**Context**: Developed in response to the proliferation of LLM tools in academic research — particularly the risk of hallucinated references, fabricated evidence, and uncritical copy-pasting of AI output into scholarly work.

The name "Veritas" (Latin: *truth*) encodes the framework's commitment to factual accuracy and intellectual honesty as non-negotiable research values.

---

## Core Principle

> "No delegation of judgement. AI generates options; the author decides and validates all outputs."

The framework distinguishes two roles that must never be conflated:

| Role | Performed by | May NOT be delegated to AI |
|------|-------------|---------------------------|
| Generation of options, drafts, summaries | AI | — |
| Decision-making, validation, judgement | Human researcher | Never |

AI output is treated as a **starting point**, not a conclusion. Every statement that enters the final work must have been independently verified by the researcher.

---

## The Five Obligations

Marco Veritas imposes five concrete obligations on any researcher using AI tools:

### 1. Proactive Disclosure
All AI tools used in the research process must be declared explicitly — in the methods section, in a dedicated AI use log, or both. Disclosure is **proactive** (volunteered without being asked) rather than reactive (provided only if questioned).

> PUMA implementation: `[[50 - Areas/51 Research/AI-Use-Log]]` — complete log of all AI tool usage, updated per session.

### 2. Primary Source Verification
Every reference, fact, or claim sourced via an AI tool (ChatGPT, Perplexity, Claude, etc.) must be verified against the original primary source before inclusion in the work.

> PUMA implementation: All 30 references in BIB-Supplement verified at primary source level; no hallucinated references accepted.

### 3. Author's Voice Rewriting
AI-generated text may not be copy-pasted into academic submissions. Every AI-assisted passage must be substantially rewritten in the author's own voice before it appears in the final work.

> PUMA Constitution §7.2: "Every AI-generated passage SHALL be rewritten in the author's voice before submission."

### 4. Retained Intellectual Authority
The researcher retains full intellectual responsibility for all claims, interpretations, and conclusions. AI-assisted reasoning does not transfer liability to the tool.

> PUMA: Author signs off on all experiment designs, statistical interpretations, and project conclusions regardless of AI assistance in drafting.

### 5. Audit Trail Availability
All AI interactions relevant to the research must be logged and available for review by supervisors, reviewers, or ethics boards on request.

> PUMA implementation: `[[50 - Areas/51 Research/AI-Use-Log]]` and `[[50 - Areas/51 Research/AI-Use-Log-Entry]]` — full session-level logs available.

---

## PRISMA-trAIce Integration

Marco Veritas interfaces directly with **PRISMA-trAIce** — PUMA's extension of the PRISMA 2020 systematic review protocol for AI-augmented literature screening:

| PRISMA-trAIce requirement | Marco Veritas obligation |
|---------------------------|--------------------------|
| Document which screening steps were AI-assisted | Proactive disclosure |
| Record which model was used for each task | Proactive disclosure |
| Confirm human validation of AI decisions | Primary source verification + retained authority |
| Log uncertain cases reviewed by human | Audit trail |

See: `[[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]]`

---

## Application in PUMA

### PUMA Constitution §7 (Non-Negotiable)

> **§7.1** All AI-assisted work SHALL be declared per Marco Veritas protocol.
> **§7.2** Every AI-generated passage SHALL be rewritten in the author's voice before submission.
> **§7.3** All references obtained via AI tools SHALL be verified in primary source.

### AI Use Log Protocol

Every significant AI interaction in PUMA is recorded with:
- Date and session type
- Tool used (Claude, Perplexity, DeepSeek, Gemini, etc.)
- Task performed (synthesis, drafting, code generation, reference retrieval)
- Human validation performed
- Marco Veritas compliance status (✅ / ⚠️)

### Hallucination Risk Mitigation

Marco Veritas is PUMA's primary control for the "AI hallucinations in research" risk (rated High/High in `[[50 - Areas/55 Ethics/Ethics-Review-Log]]`):

- **Detection**: Every AI-sourced reference checked in primary source (DOI / arXiv / publisher page)
- **Prevention**: No AI output used verbatim; author rewrites and validates before submission
- **Monitoring**: QA Agent in BMAD roster audits AI use declarations per Marco Veritas

---

## Relationship to Open Science

Marco Veritas is consistent with — and reinforces — PUMA's Open Science commitments:

| Open Science principle | Marco Veritas implementation |
|-----------------------|------------------------------|
| Transparency | Proactive disclosure of all AI tools |
| Reproducibility | Full audit trail of AI-assisted decisions |
| Integrity | Primary source verification; no hallucinated references |
| Accountability | Retained intellectual authority; author signs all claims |

---

## Checklist (Per Submission)

```markdown
Marco Veritas Compliance Checklist
- [ ] All AI tools used in this phase declared in AI-Use-Log
- [ ] Every AI-sourced reference verified in primary source (DOI/arXiv)
- [ ] No AI-generated text copy-pasted verbatim — all rewritten in author's voice
- [ ] Statistical interpretations independently verified
- [ ] Conclusions reflect author's judgement, not AI's output
- [ ] Log entry available for supervisor review
```

---

## Related Notes

- [[50 - Areas/51 Research/AI-Use-Log]] — PUMA AI use log (PRISMA-trAIce compliance)
- [[50 - Areas/51 Research/AI-Use-Log-Entry]] — Milestone 2 session log entry
- [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] — PRISMA-trAIce extension
- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] — PUMA Constitution §7
- [[50 - Areas/55 Ethics/Ethics-Review-Log]] — hallucination risk + ethics decisions
- [[30 - Permanent/31 Concepts/PN-HITL-BoundedAutonomy]] — human oversight as design principle
- [[30 - Permanent/31 Concepts/PN-AlgorithmicBias]] — related AI ethics concerns

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]

## Related atomic notes (Phase 4.3)
- [[PN-ANXAG-012]]
