---
type: literature
title: "The PRISMA 2020 Statement: An Updated Guideline for Reporting Systematic Reviews"
authors: ["Page, Matthew J.", "McKenzie, Joanne E.", "Bossuyt, Patrick M.", "Boutron, Isabelle", "Hoffmann, Tammy C.", "Mulrow, Cynthia D.", "Shamseer, Larissa", "Tetzlaff, Jennifer M.", "Akl, Elie A.", "Brennan, Sue E."]
first-author: "Page"
year: 2021
status: reviewed
topic: research-methodology
relevance: 5
citekey: "@Page2021PRISMA2020"
venue: "BMJ, 372, n71"
arxiv: ""
doi: "10.1136/bmj.n71"
url: "https://doi.org/10.1136/bmj.n71"
tags: [literature, prisma, prisma-2020, systematic-review, reporting-guideline, transparency, reproducibility, puma-core, academic-writing, research, literature-review, flow-diagram, literature-note, moc]
created: 2026-04-14
updated: 2026-04-14
keshav-pass: 2
---

# LN: Page et al. (2021) — The PRISMA 2020 Statement

> [!cite] Bibliographic Reference
> **Citation**: Page, M. J., et al. (2021). The PRISMA 2020 statement: An updated guideline for reporting systematic reviews. *BMJ*, *372*, n71. https://doi.org/10.1136/bmj.n71

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Reporting guideline |
| **Context** | Update to the original PRISMA 2009 statement. Endorsed by the International Committee of Medical Journal Editors and adopted across disciplines including SE |
| **Correctness** | Consensus document from 49 international experts; tested for clarity with systematic review authors |
| **Contributions** | (1) 27-item PRISMA checklist; (2) PRISMA flow diagram (updated to show records from databases vs. registers); (3) Abstract checklist; (4) Guidance on AI-assisted screening transparency |
| **Clarity** | Excellent — prescriptive with worked examples for each checklist item |

> [!success] Relevance: ⭐⭐⭐⭐⭐
> PUMA's PRISMA-trAIce protocol is built on PRISMA 2020 extended with AI transparency requirements (Marco Veritas). Every AI-assisted screening decision in PUMA's SLR is documented per the PRISMA 2020 flow.

---

## Pass 2 — Key Concepts

### The PRISMA 2020 Flow Diagram

```
Identification
├── Records from databases (n=__)
├── Records from registers (n=__)
└── Records from other sources (n=__)
        ↓ Duplicates removed (n=__)
Screening
├── Records screened (n=__)
├── Records excluded (n=__)
└── Full-text assessed (n=__)
        ↓ Full-text excluded (n=__, reasons)
Included
└── Studies included in synthesis (n=__)
```

The 2020 update separates database and register records (previously merged), and adds a path for "other sources" to improve transparency.

### The 27-Item Checklist (Key Items for PUMA)

| Item | Description | PUMA Section |
|------|-------------|-------------|
| 1 | PRISMA statement identified | Methods |
| 2 | Structured abstract | Abstract |
| 5 | Research questions (PICO) | Methods 2.1 |
| 6 | Eligibility criteria (inclusion/exclusion) | Methods 2.2 |
| 7 | Information sources (databases, dates) | Methods 2.3 |
| 8 | Search strategy (full string) | Appendix |
| 9 | Selection process | Methods 2.4 |
| 10 | Data extraction | Methods 2.5 |
| 12 | Quality assessment | Methods 2.6 |
| 16 | Study selection flow diagram | Figure 1 |
| 17 | Study characteristics | Results 3.1 |
| 25 | Funding sources | Acknowledgements |
| 27 | Registration | Methods 2.1 |

### AI-Assisted Screening and PRISMA 2020

PRISMA 2020 explicitly addresses AI-assisted screening: reviewers must document which steps were AI-assisted, which model was used, and confirm that human validation was performed. This aligns with PUMA's PRISMA-trAIce protocol.

---

## PUMA Integration

- **Ch.2 Literature Review**: PRISMA 2020 flow diagram as Figure 1 (search → screened → included)
- **PRISMA-Log**: Documents all 27 checklist items
- **PRISMA-trAIce**: PUMA's extension of PRISMA 2020 for AI-assisted screening (adds AI tool, model version, validation date)

## Related Notes

- [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]] — PRISMA integration with PUMA research protocol
- [[20 - Literature/20.1 Papers/Research-Methods/LN-Kitchenham-2007-SLR]] — SLR protocol that PRISMA documents
- [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]] — PUMA's active PRISMA flow log
- [[30 - Permanent/33 Frameworks/PN-Veritas-Framework]] — Marco Veritas: AI transparency layer on PRISMA

## MOCs

- [[20 - Literature/20.1 Papers/Research-Methods/MOC Research Methods Papers]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
