---
id: PT-P1S3-004
title: "Researcher — Continuous Literature Monitoring for PUMA"
type: prompt-note
tool: researcher
phase: Phase1-Research
step: "03-Structured-Extraction"
methodology: [Continuous-Monitoring, SLR-Update]
tags: [prompt, researcher, monitoring, discovery, puma]
rating: 4
created: 2026-04-07
updated: 2026-04-07
---

# 🔔 Researcher — Continuous Literature Monitoring for PUMA

**Tool**: Researcher (https://discovery.researcher.life)
**Phase**: Phase 1 — Research
**Step**: 03 — Structured Extraction
**Methodology**: Continuous SLR update / weekly screening

---

## Prompt A — Topic Feed Setup

```
Create a personalized monitoring feed for the following PUMA research topics. Alert me when new papers are published (2023–2026) on: AI agents in project management, LLM-based issue triage, effort estimation with language models, multi-agent orchestration for software engineering, reproducible benchmarks for AI agents, human-in-the-loop governance for PM agents, and sustainability metrics for AI inference (CodeCarbon, energy efficiency).
```

## Prompt B — Weekly Screening Protocol

```
From this week's new papers in the AI agents and software engineering domains, classify each as: (1) Must Read — directly relevant to PUMA's H1 or H2 hypotheses, (2) Maybe Read — tangentially related, useful for background, (3) Archive — interesting but not relevant now, (4) Irrelevant — does not match PUMA scope. For Must Read papers, provide a 2-sentence justification. Return as a prioritized reading list.
```

## Prompt C — Relevance Filter Configuration

```
Configure alerts to only notify me of papers that meet ALL of these criteria: (1) published 2023–2026, (2) contains at least one of: "issue triage", "effort estimation", "story point", "LLM agent", "multi-agent", "project management automation", (3) is an empirical study, benchmark paper, or survey — NOT an opinion piece, (4) has an abstract available. Exclude papers from venues without peer review.
```

## Prompt D — Emerging Terminology Scanner

```
Scan the recent literature for new terminology being used for concepts related to PUMA. Specifically look for: new names for "agentic project management", new benchmarks for LLM evaluation in SE contexts, new datasets for Jira/GitHub mining, new evaluation frameworks for AI agents in enterprise settings. Alert me when a new term appears in 3+ papers within a 60-day window.
```

---

## PUMA Relevance

Researcher.life ensures PUMA's SLR remains current throughout the TFG development period (PEC1 through PEC5). New papers published after the initial literature review can be incorporated into the thesis if they appear before the PEC4 submission deadline (2026-06-07).

---

## Related Notes

- [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]
- [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
