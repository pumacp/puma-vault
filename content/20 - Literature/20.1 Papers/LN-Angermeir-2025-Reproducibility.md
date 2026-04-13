---
type: literature
title: "Reproducibility of LLM Studies in Software Engineering"
authors: ["Angermeir, Florian", "Kalinowski, Marcos", "Méndez, Daniel"]
first-author: "Angermeir"
year: 2025
status: reviewed
topic: reproducibility
relevance: 5
citekey: "@Angermeir2025Reproducibility"
venue: "ICSE 2026 (preprint)"
arxiv: "2510.25506"
tags: [literature, reproducibility, llm, se, benchmark, puma-core, academic-writing, api, architecture, bibliography, citation, code-review, critical-thinking, effort-estimation, github, keshav, literature-note, literature-review, moc, obsidian, permanent-note, reading-method, red-teaming, research, slr, software-engineering, story-points, vault, zettelkasten]
created: 2026-03-05
updated: 2026-04-06
keshav-pass: 3
---

# LN: Angermeir (2025) — Reproducibility of LLM Studies in SE

**Citation**: Angermeir, F., Kalinowski, M., & Méndez, D. (2025). *Reproducibility of LLM studies in software engineering* [Preprint]. arXiv:2510.25506.

---

## Pass 1 Summary (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Empirical analysis / systematic mapping study |
| **Context** | Builds on EBSE tradition; related to Wohlin (2012) on SE experimentation |
| **Correctness** | Strong: reviews 85 papers, 18 with artefacts. Methodology clearly described. |
| **Contributions** | (1) Only 5/18 papers with published artefacts are executable. (2) Zero papers are fully reproducible end-to-end. (3) Taxonomy of reproducibility failures. |
| **Clarity** | Excellent. Well-structured, clear definitions. |

**Relevance**: ⭐⭐⭐⭐⭐ (5/5) — **Directly justifies PUMA's reproducibility design**

---

## Pass 2 Key Points

**Core finding**: Out of 85 LLM-SE papers (2020–2024), 18 published artefacts. Of those, only 5 could be executed. **Zero** were fully reproducible (same results from scratch).

**Failure taxonomy**:
1. Missing dependencies or broken environments
2. Undocumented data preprocessing steps  
3. Non-deterministic LLM calls (API model updates, temperature > 0)
4. Absent or incorrect random seeds

**Implication for PUMA**: PUMA's constitution (Articles 1, 2, 4) directly addresses all four failure categories: fixed dependencies, reproducible scripts, local inference with pinned models, seed=42 + temperature=0.

**Key quote context**: The study confirms that reproducibility in LLM-SE research is "a critical, largely unresolved problem" — the specific gap PUMA claims to address.

---

## Pass 3 — Virtual Reconstruction

**Methodology**: Manual screening of arXiv + ACM DL + IEEE Xplore. Inclusion: LLM-based SE studies 2020–2024. Execution test: fresh environment, follow published instructions.

**What I would change**: The study doesn't measure *why* researchers don't share reproducible artefacts. A survey component would strengthen the taxonomy.

**Challenge for PUMA**: Angermeir et al. don't define "fully reproducible" formally. PUMA should provide its own operational definition: "clean environment, seed=42, same results within statistical tolerance."

---

## PUMA Integration

**Used in**: Section 1.1 (justification), Section 1.3 (contribution), Section 2.1 (SLR protocol)

**Supports**: H1 and H2 design (why we need reproducible conditions)

**Permanent note generated**: [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]]

---

## References in this paper (follow-up)
- Wohlin et al. (2012) — Experimentation in SE ✅ already in vault
- Kitchenham & Charters (2007) — SLR guidelines ✅ already in vault

---

## 🔗 Connected Notes

**Permanent note:** [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] (Reproducibility section)
**Also in:** [[20 - Literature/20.1 Papers/LN-KeyPapers-CoGEE-Angermeir-Flyvbjerg]]
**Cluster:** [[30 - Permanent/30 Zettelkasten-Hub/ST-Reproducibility-Cluster]]
**Constitution response:** [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] (Art. 1, 2)
**Architecture response:** [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]]
**Chapter citation:** [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] (Gap 1) · [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] (§3.8)
**MOC:** [[80 - MOC/81 Topic-Maps/MOC-Literature-Review]] · [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
