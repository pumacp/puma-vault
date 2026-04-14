---
id: PN-DSR-Method
title: "Design Science Research (DSR)"
type: permanent-note
category: method
tags: [permanent, method, dsr, research-paradigm, hevner, peffers, academic-writing, ai-tools, anthropic, architecture, artefact, bdd, benchmark, bias, carbon-footprint, claude, code-review, codecarbon, cornell-notes, dataset, effort-estimation, elicit, ethics, finer, github, ict, issue-triage, jira, literature-review, llm, local-llm, metrics, moc, non-parametric, note-taking, ollama, permanent-note, perplexity, pipeline, precision-recall, prisma, project-management, quantitative-research, research, research-methodology, research-tools, sdd, semantic-scholar, slr, software-engineering, spec-driven-development, statistics, story-points, sustainability, tawos, triage, validity, wilcoxon, workflow]
aliases: ["DSR", "Design Science"]
created: 2026-03-01
maturity: evergreen
sources: ["Hevner et al. (2004) MIS Quarterly 28(1)", "Peffers et al. (2007) JMIS 24(3)"]
---

# Design Science Research (DSR)

> [!abstract] Atomic Claim

> [!info] Overview
> DSR is the appropriate research paradigm for PUMA because it explicitly produces and evaluates *artefacts* (the benchmark framework) alongside the *knowledge contribution* (empirical evidence about LLM capabilities), satisfying both engineering and academic validity requirements.

## 💡 The Paradigm

DSR (Hevner et al., 2004; Peffers et al., 2007) holds that IS research must:
1. **Produce a useful artefact** — not just knowledge, but something that works
2. **Evaluate against defined criteria** — utility, novelty, rigour
3. **Communicate to both research and practice audiences**

## The PEFFERS Process (applied to PUMA)

| Step | PUMA Implementation |
|------|-------------------|
| 1. Problem identification | Manual triage cost, inconsistent estimation, reproducibility gap |
| 2. Objectives | PUMA benchmark: F1 ≥ 0.55, MAE ≤ 3.0 SP, 100% reproducible |
| 3. Design & Development | Modular framework: Ollama + Jira SR + TAWOS + CodeCarbon |
| 4. Demonstration | Running experiments on real datasets |
| 5. Evaluation | Statistical analysis (Wilcoxon), comparison with baselines |
| 6. Communication | PUMA Project paper + GitHub repository (MIT licence) |

## Integration with SDD/BDD

In PUMA, DSR is extended by Spec-Driven Development: every artefact component is specified before implementation, using [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] and BDD scenarios. This makes the "Design" step more rigorous and reproducible.

## 🔗 Connected Ideas
**Produces:** [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]] | **Evaluated by:** [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] (SLR section) | **Extended by:** [[30 - Permanent/33 Frameworks/PN-SDD-Framework]]
**Applied in:** [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] (§1.4) | [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] (§3.1)

---
id: PN-SLR-PRISMA
title: "Systematic Literature Review + PRISMA 2020"
type: permanent-note
category: method
tags: [permanent, method, slr, prisma, literature-review, ebse]
aliases: ["SLR", "PRISMA", "Systematic Review"]
created: 2026-03-01
maturity: evergreen
---

# Systematic Literature Review + PRISMA 2020

> [!abstract] Atomic Claim
> An SLR following PRISMA 2020 protocol provides transparent, reproducible, and bias-controlled evidence synthesis — essential for establishing the research gap that motivates PUMA.

## The PRISMA Flow for PUMA

```
IDENTIFICATION
  Search strings in: arXiv, IEEE Xplore, ACM DL, Semantic Scholar, Google Scholar
  Date range: 2022–2026
  Initial records: ~[N]
         ↓
SCREENING (Title + Abstract)
  Exclusion criteria:
  - No empirical evaluation
  - No LLM component
  - No PM or SE task
  - Not reproducible (no code/data)
  Remaining: ~[N]
         ↓
ELIGIBILITY (Full text)
  Inclusion criteria:
  - Reproducible artefact published
  - Uses public dataset with labels
  - Reports quantitative metrics
  - Local or open-access models (preferred)
  Remaining: ≥40
         ↓
INCLUDED
  Final corpus: [N] papers
```

## PRISMA-DFLLM Extension

For AI-assisted screening, document for each AI tool used:
- Which screening task was automated (title/abstract/full-text)
- Which model was used (Claude, Perplexity, Elicit)
- What human validation was applied
- Inclusion/exclusion decisions that were AI-suggested vs. human-confirmed

## FINER Criteria (Research Question Validation)

| Criterion | PUMA Compliance |
|-----------|----------------|
| **F**easible | Local compute + public datasets + 6-month timeline ✅ |
| **I**nteresting | Novel benchmark, fills reproducibility gap ✅ |
| **N**ovel | No existing open-source PM+LLM+CodeCarbon benchmark ✅ |
| **E**thical | Public data, open models, human-in-loop ✅ |
| **R**elevant | Directly applicable to ICT PM practitioners ✅ |

## 🔗 Connected Ideas
**Guides:** [[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-Ch2-Ch3-Ch4-Ch5]] | **Uses:** [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] (FINER + PRISMA) | **Workflow:** [[60 - Resources/62 Workflows/WF-SLR-Pipeline]]
**Active log:** [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]] | **MOC:** [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
**DSR source:** [[20 - Literature/20.1 Papers/Research-Methods/LN-Hevner-2004-DSR]] — Hevner et al. (2004): 7 guidelines, 3 research cycles
**SLR source:** [[20 - Literature/20.1 Papers/Research-Methods/LN-Kitchenham-2007-SLR]] — Kitchenham (2007): 3-phase SLR protocol, PICO
**PRISMA source:** [[20 - Literature/20.1 Papers/Research-Methods/LN-Page-2021-PRISMA2020]] — Page et al. (2021): PRISMA 2020, 27-item checklist
