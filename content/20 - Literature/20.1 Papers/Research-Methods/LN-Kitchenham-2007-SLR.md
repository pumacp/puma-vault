---
type: literature
title: "Guidelines for Performing Systematic Literature Reviews in Software Engineering"
authors: ["Kitchenham, Barbara", "Charters, Stuart"]
first-author: "Kitchenham"
year: 2007
status: reviewed
topic: research-methodology
relevance: 5
citekey: "@Kitchenham2007SLR"
venue: "Technical Report EBSE-2007-01, Keele University"
arxiv: ""
doi: ""
url: "https://www.elsevier.com/solutions/sciencedirect"
tags: [literature, slr, systematic-literature-review, research-methodology, kitchenham, evidence-based-se, puma-core, academic-writing, research, literature-review, inclusion-criteria, exclusion-criteria, search-protocol, literature-note, moc]
created: 2026-04-14
updated: 2026-06-15
keshav-pass: 2
---

# LN: Kitchenham & Charters (2007) — Guidelines for Systematic Literature Reviews in SE

> [!cite] Bibliographic Reference
> **Citation**: Kitchenham, B., & Charters, S. (2007). *Guidelines for performing systematic literature reviews in software engineering* (Technical Report EBSE-2007-01). Keele University.

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Methodological guidelines (technical report) |
| **Context** | Evidence-Based Software Engineering group at Keele University. Adapts Cochrane Collaboration's systematic review protocol for the SE domain |
| **Correctness** | The most widely cited SLR guideline in software engineering (8,000+ citations); basis for PRISMA-adapted SE reviews |
| **Contributions** | (1) SLR protocol with three phases (Planning, Conducting, Reporting); (2) Research question formulation (PICO framework); (3) Search string construction; (4) Inclusion/exclusion criteria; (5) Data extraction forms; (6) Quality assessment checklist |
| **Clarity** | Very good — structured, prescriptive, with worked examples |

> [!success] Relevance: ⭐⭐⭐⭐⭐
> PUMA's SLR (literature review phase) follows Kitchenham & Charters (2007) as its methodological basis. The search protocol, inclusion/exclusion criteria, and PRISMA logging in PUMA's PRISMA-Log directly implement this guideline.

---

## Pass 2 — Key Concepts

### The Three SLR Phases

#### Phase 1: Planning
- Define the need for a review (is an SLR necessary or does one exist?)
- Define research questions using PICO: Population, Intervention, Comparison, Outcome
- Develop review protocol (document before execution — the key rigour mechanism)

**PUMA's Research Questions (PICO format)**:
| Element | PUMA SLR |
|---------|---------|
| Population | LLM-based agents applied to PM tasks |
| Intervention | Prompting strategies (Zero-Shot, Few-Shot, CoT) |
| Comparison | Human baseline + rule-based systems |
| Outcome | F1-macro (triage), MAE (estimation), statistical significance |

#### Phase 2: Conducting
1. **Search string construction**: Combine keywords with Boolean operators across multiple databases
2. **Source selection**: IEEE Xplore, ACM DL, arXiv, Semantic Scholar
3. **Study selection**: Title → Abstract → Full-text screening against inclusion/exclusion criteria
4. **Data extraction**: Structured form per included study
5. **Quality assessment**: Internal validity, construct validity, external validity

**PUMA's inclusion criteria**:
- Published 2019–2025
- LLMs applied to software engineering or PM tasks
- Empirical evaluation with measurable outcomes
- English language

**PUMA's exclusion criteria**:
- Pure theoretical/survey papers without empirical component
- Applications outside software/PM domain
- No reproducible methodology

#### Phase 3: Reporting
- Narrative synthesis of findings
- PRISMA flow diagram (search → screened → included → analysed)
- Evidence tables for each included study

### SLR vs. Narrative Review

| Dimension | Narrative Review | SLR (Kitchenham) |
|-----------|-----------------|-----------------|
| Search | Opportunistic | Systematic, documented |
| Inclusion | Author's discretion | Explicit criteria, applied independently |
| Bias | High (publication, selection) | Controlled and documented |
| Reproducibility | Low | High — protocol is pre-registered |
| Update | Ad hoc | Structured (same protocol) |

---

## PUMA Integration

- **Ch.2 Literature Review methodology section**: Kitchenham & Charters (2007) as the SLR protocol basis
- **PRISMA-Log**: Documents the search execution against this protocol
- **Bibliography supplement**: All included papers validated per Kitchenham criteria

## Related Notes

- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] — integration of DSR and SLR for PUMA
- [[20 - Literature/20.1 Papers/Research-Methods/LN-Page-2021-PRISMA2020]] — PRISMA 2020 as reporting complement to Kitchenham
- [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]] — PUMA's active SLR log
- [[60 - Resources/62 Workflows/WF-SLR-Pipeline]] — step-by-step SLR execution workflow

## MOCs

- [[20 - Literature/20.1 Papers/Research-Methods/MOC Research Methods Papers]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
