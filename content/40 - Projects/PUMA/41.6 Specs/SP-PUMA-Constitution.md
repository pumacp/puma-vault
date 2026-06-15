---
id: SP-PUMA-Constitution
title: "⚖️ PUMA Project Constitution"
type: constitution
version: "1.0"
status: locked
tags: [sdd, speckit, constitution, puma, bmad, anthropic, api, architecture, carbon-footprint, checklist, code-review, codecarbon, critical-thinking, dataset, effort-estimation, falsifiability, gemini, github, google, gpt, human-in-the-loop, hypothesis, llm, local-llm, moc, multi-agent, navigation, non-parametric, ollama, openai, openspec, popper, prisma, privacy, project-management, python, red-teaming, research-methodology, slr, software-engineering, spec, spec-driven-development, spec-kit, sprint, statistics, story-points, sustainability, wilcoxon]
created: 2026-03-01
updated: 2026-06-15
---

# ⚖️ PUMA Project Constitution

> [!important] Constitutional Preamble
> **Spec Kit concept**: the constitution defines non-negotiable project principles.

> [!info] Overview
> These principles persist across all sprints, features, and deliverables.
> Changing the constitution requires explicit advisor approval.
> All generated code, prompts, and artefacts MUST pass constitutional validation.

---

## Article 1: Reproducibility (NON-NEGOTIABLE)

**1.1** All experiments SHALL use `seed=42` and `temperature=0` for deterministic results.  
**1.2** A clean-environment reproduction (fresh install, no cached results) SHALL produce bit-identical outputs.  
**1.3** All Python dependencies SHALL be pinned with exact versions in `requirements.txt`.  
**1.4** All dataset sampling scripts SHALL be committed to the GitHub repository.

> [!quote] Rationale
> Angermeir et al. (2025) found only 5 of 18 published LLM-SE papers with artefacts were executable. PUMA SHALL be fully reproducible.

---

## Article 2: Local-Only Inference (NON-NEGOTIABLE)

**2.1** All primary experiments SHALL use locally-executed models via Ollama.  
**2.2** No paid API calls (GPT-4, Claude Opus, Gemini) SHALL be used in benchmarked experiments.  
**2.3** Models SHALL be open-weights with publicly verifiable checksums.

> [!quote] Rationale
> Cost-free replication, privacy, and environmental comparability require local execution.

---

## Article 3: Falsifiability (NON-NEGOTIABLE)

**3.1** H1 and H2 SHALL be stated in null (H₀) + alternative (H₁) form.  
**3.2** Statistical tests SHALL use α = 0.05 with two-sided Wilcoxon signed-rank test.  
**3.3** Effect sizes SHALL be reported (r = Z / √N) alongside p-values.  
**3.4** Failure to reject H₀ SHALL be reported and discussed, not hidden.

> [!quote] Rationale
> Popper's demarcation criterion. Scientific claims require falsifiability.

---

## Article 4: Human-in-the-Loop (NON-NEGOTIABLE)

**4.1** All agent outputs SHALL be presented as recommendations, not decisions.  
**4.2** No autonomous write operations to production systems SHALL be implemented.  
**4.3** The system SHALL include explicit validation gates before any consequential action.

> [!quote] Rationale
> Ethical AI design (Taddeo & Floridi, 2024) and GDPR compliance.

---

## Article 5: Open Source (NON-NEGOTIABLE)

**5.1** All project code SHALL be published under MIT License.  
**5.2** The GitHub repository SHALL be public.  
**5.3** The README SHALL contain ≤ 10 commands to go from zero to reproduced results.

> [!quote] Rationale
> Academic contribution requires verifiable, replicable artefacts.

---

## Article 6: Environmental Accountability (STRONGLY RECOMMENDED)

**6.1** CodeCarbon SHALL wrap every inference loop in every experiment.  
**6.2** gCO₂eq SHALL be reported per experimental condition in the results table.  
**6.3** Energy-efficient models (quantised 4-bit) SHALL be preferred over large cloud models.

> [!quote] Rationale
> Strubell et al. (2019). First PM+LLM study to measure carbon per task.

---

## Article 7: AI Use Transparency (NON-NEGOTIABLE)

**7.1** All AI-assisted work SHALL be declared per Marco Veritas protocol.  
**7.2** Every AI-generated passage SHALL be rewritten in the author's voice before submission.  
**7.3** All references obtained via AI tools SHALL be verified in primary source.

> [!quote] Rationale
> PUMA Project integrity policy and PRISMA-trAIce protocol.

---

## Validation Checklist

Before any sprint review, validate:

- [ ] No experiment uses paid API models
- [ ] All code runs with `seed=42, temperature=0`
- [ ] H1/H2 statistical tests are two-sided Wilcoxon at α=0.05
- [ ] CodeCarbon is enabled for all inference loops
- [ ] GitHub repo is up-to-date with this sprint's work
- [ ] AI use log is updated for this sprint

---

---

## 🔗 Related Notes

**Core concepts referenced:**
- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — Reproducibility crisis (Art. 1) · Human-in-the-Loop (Art. 4)
- [[30 - Permanent/31 Concepts/PN-LLM-Local-vs-Cloud]] — Local-only inference rationale (Art. 2)
- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] — H1/H2 falsifiability requirements (Art. 3)
- [[50 - Areas/51 Research/AI-Use-Log]] — AI transparency log (Art. 7)
- [[50 - Areas/54 Sustainability/Carbon-Tracking-Log]] — Environmental accountability (Art. 6)

**Implemented through:**
- [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] — Spec Kit + OpenSpec methodology
- [[SP-Architecture]] — System architecture implementing these principles
- [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] — Reproducibility protocol in practice

**Navigation:**
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]] — Project hub
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]] — All methodologies

---

*Constitution v1.0 — Locked 2026-03-01 — Any amendment requires advisor approval*
