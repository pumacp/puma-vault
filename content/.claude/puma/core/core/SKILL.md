---
name: puma-core
description: Core identity, principles, and thinking framework for the PUMA Project (Project Understanding and Management with Agents). Activate for any PUMA-related task, vault navigation, Johnny Decimal addressing, project identity questions, or general research context. This is the foundational skill — load it whenever working in the PUMA Vault or contributing to PUMA research. It defines who PUMA is, what it does, and how all other skills fit together. Use this skill FIRST before any other puma-* skill when starting a new session.
---

# PUMA Core — Project Identity & Thinking Framework

## What is PUMA?

**PUMA — PUMA Understanding and Management with Agents**

An empirical benchmark framework evaluating local LLM agents on ICT project management tasks:
- **Issue triage**: automated classification of issue type and priority (F1-macro target: >0.75)
- **Story point estimation**: effort estimation using chain-of-thought (MRE target: ≤35%)

**Research question**: Can autonomous LLM agents perform software project management tasks with accuracy and reproducibility comparable to human experts?

**TFG context**: Trabajo Final de Grado at Universitat Oberta de Catalunya (UOC), academic year 2025–26. Student: D. Language: Spanish (academic register). Template: `TF_Plantilla_Memoria_es_v9_2025.docx`.

## Current Experimental Results (MVP Benchmark)

| Metric | Value | Config |
|--------|-------|--------|
| F1-macro (triage) | 0.5867 | qwen2.5:3b, zero-shot |
| MAE (estimation) | 1.89 SP | few-shot-3 |
| Wilcoxon H₀₁ | p=0.0312, r=0.34 (rejected) | — |
| Wilcoxon H₀₂ | p=0.0089, r=0.48 (rejected) | — |
| CO₂ emissions | ~3.075 gCO₂eq | CodeCarbon, full MVP |
| Reproducibility | 100% | 3 independent cycles |

**Model config**: Ollama, qwen2.5:3b, temperature=0.0, seed=42

## Johnny Decimal Address System

Every file has a unique JD address. Never create files outside this schema:

```
00 — Meta           (templates, plugins, dashboards, CSS)
10 — Inbox          (GTD capture: fleeting notes, quick capture)
20 — Literature     (papers, books, datasets, videos, tools, repos)
30 — Permanent      (Zettelkasten: concepts, methods, frameworks, results)
40 — Projects       (PUMA chapters, specs, experiments, BMAD, sprint boards)
50 — Areas          (research, writing, code, sustainability, ethics, Smart-PMO)
60 — Resources      (prompts, workflows, checklists, glossary, bibliography, JD-index)
70 — Archive        (completed, deprecated)
80 — MOC            (Maps of Content — navigation layer)
90 — GTD            (tasks, reviews, kanban, someday/maybe)
```

Sub-area decimals for `40 — Projects`:
- `41.1` Introduction | `41.2` Literature Review | `41.3` Methods
- `41.4` Results | `41.5` Discussion | `41.6` Specs | `41.7` Experiments
- `41.8` Sprint-Boards | `41.9` BMAD-Agents

## Core Thinking Framework

When working on any PUMA task, apply this sequence:

1. **Locate** — what JD address does this belong to?
2. **Classify** — what note type prefix applies? (LN-, PN-, PR-, SP-, EX-, PT-, WF-...)
3. **Link** — what existing notes should connect to this?
4. **Validate** — does this serve PUMA's research mission?
5. **Preserve** — minimal modifications; never destroy existing structure

## Note Type Prefixes (mandatory)

| Prefix | Type | Location |
|--------|------|----------|
| `FL-` | Fleeting Note | 10 - Inbox |
| `LN-` | Literature Note | 20 - Literature |
| `PN-` | Permanent Note | 30 - Permanent |
| `ST-` | Structure Note | 30 - Permanent |
| `SRC-` | Source Note | 30/36 Sources |
| `PER-` | Person Note | 30/37 Persons |
| `RES-` | Results Note | 30/34 Results |
| `PR-` | Project Note | 40 - Projects |
| `SP-` | Spec Note | 40/41.6 Specs |
| `EX-` | Experiment Note | 40/41.7 Experiments |
| `PT-` | Prompt Template | 60/61 Prompts |
| `WF-` | Workflow Note | 60/62 Workflows |
| `CL-` | Checklist | 60/63 Checklists |
| `BIB-` | Bibliography | 60/65 Bibliographies |
| `MOC-` | Map of Content | 80 - MOC |
| `BMAD-` | BMAD Agent Doc | 40/41.9 BMAD-Agents |
| `VID-` | Video Note | 20/20.4 Videos |

## Research Hypotheses

- **H₁ (Triage)**: LLM agent with few-shot achieves >75% F1 on TAWOS dataset
- **H₂ (Estimation)**: LLM agent with CoT achieves MRE ≤35% on Jira SR dataset

## Datasets

- **TAWOS** (GitHub: SOLAR-group/TAWOS) — triage benchmark
- **Jira SR** (Zenodo DOI: 10.5281/zenodo.5901893) — estimation benchmark

## Key Links

- GitHub Org: https://github.com/pumacp
- Vault Web: https://pumacp.github.io/puma-vault/
- Zotero: https://www.zotero.org/pumacp/library (user ID: 20166221)

## Related Skills

Load these for specific tasks:
- `puma-rules` — binding governance (ALWAYS/NEVER)
- `puma-vault-architecture` — folder structure details
- `puma-zettelkasten` — note creation protocols
- `puma-research` — research pipeline master
- `puma-llm-wiki` — LLM Wiki pattern (Karpathy)
