---
id: README-Papers-Subfolders
title: "📄 Papers Sub-folders Guide"
type: readme
tags: [readme, papers, guide, slr]
created: 2026-03-01
---

# 📄 Papers — Sub-folder Guide

> Use the template [[00 - Meta/Templates/Template-Literature-Note-Paper]] for every new paper note.

| Sub-folder | Papers to file here |
|-----------|---------------------|
| `Triage-Benchmarks/` | Issue classification, bug triage, defect priority prediction |
| `Effort-Estimation/` | Story points, software cost estimation, COCOMO, ML for effort |
| `LLM-Agents-General/` | LLM agent frameworks, prompt engineering surveys, GPT-N papers |
| `PM-AI-Convergence/` | PM + AI surveys, tool papers, Jira AI, project risk AI |
| `Reproducibility-SE/` | Open science, reproducibility in SE/ML, experiment design |

## Naming Convention

`LN-AuthorYear-Keyword.md`

Examples:
- `LN-Tawosi2024-CoGEE.md`
- `LN-Angermeir2025-Reproducibility.md`
- `LN-Wei2022-ChainOfThought.md`

## Status Tags (in YAML frontmatter)

```yaml
read_status: unread | reading | read | processed
prisma_decision: include | exclude | pending
```
