---
id: Ethics-Review-Log
title: "Ethics Review Log — PUMA"
type: log
tags: [ethics, review, ai-use, responsibility, ai-ethics, api, bias, carbon-footprint, code-review, codecarbon, critical-thinking, dataset, effort-estimation, github, issue-triage, jira, moc, navigation, privacy, project-management, red-teaming, story-points, sustainability, triage]
created: 2026-03-01
---

# Ethics Review Log — PUMA

> [!info] Overview
> Tracks ethical considerations and decisions made throughout the project.

## Ethical Risk Register
| Risk | Probability | Impact | Mitigation | Status |
|------|------------|--------|-----------|--------|
| Algorithmic bias in triage | Medium | Medium | Document dataset composition, analyse per-class metrics | Active |
| AI displacing PM roles | Low | Medium | Human-in-loop design, frame as "assist not replace" | By design |
| Data privacy (Jira SR) | Low | Low | Dataset is public CC BY 4.0, no personal data | Resolved |
| Carbon footprint | Medium | Low | CodeCarbon measurement + local models | Mitigated |
| AI hallucinations in research | High | High | Marco Veritas — verify all AI outputs in primary source | Active |

## Decisions Log
| Date | Decision | Rationale |
|------|---------|-----------|
| 2026-03-01 | Use local models only for experiments | Reproducibility + carbon + no API cost dependency |
| 2026-03-01 | Human-in-loop for all agent outputs | Ethical principle + PUMA design choice |

---

## Navigation

[[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] (§1.7 Ethical-Social Impact) · [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]] (ethical principles)
[[50 - Areas/51 Research/AI-Use-Log]] · [[50 - Areas/54 Sustainability/Carbon-Tracking-Log]] (carbon risk)
[[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] · [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
