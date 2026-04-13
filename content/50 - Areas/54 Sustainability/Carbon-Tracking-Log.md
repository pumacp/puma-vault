---
id: Carbon-Tracking-Log
title: "Carbon Tracking Log — PUMA Experiments"
type: log
tags: [sustainability, carbon, codecarbon, co2, green-ai, academic-writing, api, architecture, benchmark, carbon-footprint, chain-of-thought, code-review, cot, critical-thinking, dataset, effort-estimation, elicit, few-shot, github, gpt, hypothesis, issue-triage, jira, literature-review, llm, local-llm, metrics, mistral, moc, openai, precision-recall, prisma, project-management, python, red-teaming, research, research-methodology, research-tools, semantic-scholar, slr, software-engineering, story-points, tawos, triage, zero-shot, zotero]
created: 2026-03-01
updated: 2026-03-01
---

# Carbon Tracking Log — PUMA Experiments

> **PUMA tracks gCO₂eq for every experimental condition using CodeCarbon.**
> This log is the first systematic PM+LLM carbon measurement dataset in the literature.

---

## Why Carbon Matters in PUMA

PUMA is the first PM+LLM benchmark to include carbon measurement as a **primary experimental variable** — not an afterthought. This follows Strubell et al. (2019) methodology and responds to the identified gap that no existing PM+LLM paper measures environmental cost.

The hypothesis: **local quantized models (4-bit, CPU) have dramatically lower carbon footprint than cloud API models**, making them environmentally preferable when quality is sufficient.

---

## CodeCarbon Setup

```python
from codecarbon import EmissionsTracker

# Per-experiment tracking (not global)
tracker = EmissionsTracker(
    project_name=f"puma-{model}-{strategy}-{task}",
    output_dir="./results/carbon/",
    output_file=f"emissions_{model}_{strategy}_{task}.csv",
    log_level="error",
    country_iso_code="ESP",  # Spain — EU grid mix
    save_to_file=True
)
tracker.start()
# ... inference calls ...
emissions_kg = tracker.stop()  # returns kg CO2 eq
emissions_gco2 = emissions_kg * 1000  # convert to gCO2 eq
```

---

## Results Log (to fill during F2–F4)

| Experiment | Model | Strategy | Task | gCO₂eq | Duration (s) | kWh | Date |
|-----------|-------|---------|------|---------|-------------|-----|------|
| *Pending F2* | llama3.2:8b | zero-shot | triage | TBD | TBD | TBD | — |
| *Pending F2* | llama3.2:8b | few-shot-3 | triage | TBD | TBD | TBD | — |
| *Pending F2* | llama3.2:8b | few-shot-6 | triage | TBD | TBD | TBD | — |
| *Pending F2* | llama3.2:8b | cot | triage | TBD | TBD | TBD | — |
| *Pending F2* | mistral:7b | zero-shot | triage | TBD | TBD | TBD | — |
| *Pending F2* | mistral:7b | few-shot-3 | triage | TBD | TBD | TBD | — |
| *Pending F2* | mistral:7b | few-shot-6 | triage | TBD | TBD | TBD | — |
| *Pending F2* | mistral:7b | cot | triage | TBD | TBD | TBD | — |
| *Pending F3* | llama3.2:8b | zero-shot | estimation | TBD | | | — |
| *[...continue...]* | | | | | | | |

---

## Reference Values (Literature)

| System | Approx. CO₂ | Source |
|--------|------------|--------|
| GPT-3 training | 552,000 kg | Strubell et al. (2019) |
| Single GPT-4 API call | ~0.002–0.02 kg | Estimates |
| PUMA full experiment (est.) | < 0.050 kg total | Target |

---

## Analysis Plan (Chapter 4)

- Carbon per condition (bar chart, sorted by gCO₂eq)
- Carbon vs F1 tradeoff frontier (scatter plot)
- Carbon vs MAE tradeoff frontier
- Total PUMA experiment carbon vs estimated GPT-4 equivalent
- Recommendation: "minimum carbon condition achieving MVP threshold"

---

## 🔗 Related Notes

[[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] (Reproducibility section) | [[20 - Literature/20.6 Tools/LN-Tools-Dev-Stack]]
[[40 - Projects/PUMA/41.4 Results/PR-PUMA-Ch4-Results]] | [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]] (§CodeCarbon layer)
[[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — tasks tracked | [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] — conditions tracked
[[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]] | [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]

---
---
id: PRISMA-Log
title: "PRISMA Screening Log"
type: log
tags: [slr, prisma, screening, log, literature]
created: 2026-03-01
---

# PRISMA Screening Log

> **Transparent record of all screening decisions for the PUMA SLR.**
> Every AI-assisted decision is documented (PRISMA-trAIce compliance).

---

## Identification Log

| Date | Database | Search String (abbreviated) | N returned | N forwarded |
|------|---------|---------------------------|-----------|------------|
| *TBD* | arXiv | LLM benchmark PM estimation | TBD | TBD |
| *TBD* | IEEE Xplore | LLM issue triage 2022-2026 | TBD | TBD |
| *TBD* | ACM DL | LLM story point effort | TBD | TBD |
| *TBD* | Semantic Scholar (API) | LLM SE benchmark reproducible | TBD | TBD |
| *TBD* | Google Scholar | Local LLM PM benchmark | TBD | TBD |

**Total identified:** TBD
**After deduplication:** TBD

---

## Screening Decisions (Title/Abstract)

| Zotero Key | Title (abbreviated) | AI suggest | Human decision | Reason (if excluded) |
|-----------|-------------------|-----------|---------------|---------------------|
| Tawosi2024 | CoGEE: Story Point Estimation | Include | Include | — |
| Angermeir2025 | Reproducibility LLM Studies SE | Include | Include | — |
| Tawosi2022 | TAWOS Dataset | Include | Include | — |
| Ortu2015 | Jira Social Repository | Include | Include | — |
| Manzoor2025 | AI in PM 2019-2024 | Include | Include | — |
| *[add all screened papers]* | | | | |

---

## AI-Assisted Screening (PRISMA-trAIce)

| Date | Tool | Task | N processed | N uncertain | Validation done |
|------|------|------|------------|------------|----------------|
| TBD | Elicit | Abstract screening batch 1 | TBD | TBD | Human reviewed all uncertain + 20% sample |

---

## Eligibility Decisions (Full Text)

| Zotero Key | Decision | Reason |
|-----------|---------|--------|
| Tawosi2024 | Include | Full paper verified, TAWOS dataset, GPT-4, MAE reported |
| Angermeir2025 | Include | Full paper verified, 85 papers meta-study, ICSE 2026 |
| *[add all]* | | |

---

## Final PRISMA Counts

| Stage | N |
|-------|---|
| Identified | TBD |
| After deduplication | TBD |
| Screened (title/abstract) | TBD |
| Excluded at screening | TBD |
| Full-text reviewed | TBD |
| Excluded at full-text | TBD |
| **Included** | **TBD (target ≥40)** |
