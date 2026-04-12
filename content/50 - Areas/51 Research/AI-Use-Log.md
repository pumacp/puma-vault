---
id: AI-Use-Log
title: "AI Use Log — PUMA Project (PRISMA-trAIce Compliance)"
type: log
tags: [ai-use, prisma-traice, ethics, transparency, marco-veritas]
created: 2026-03-01
updated: 2026-03-01
---

# AI Use Log — PUMA Project

> **Purpose:** Complete log of all significant AI tool usage in the PUMA project, per Marco Veritas principles and PRISMA-trAIce requirements.
> **Principle:** No delegation of judgement. AI generates options; author decides and validates all outputs.

---

## Logging Protocol

For every significant AI interaction (not minor autocomplete), record:

| Field | Description |
|-------|-------------|
| **Date** | YYYY-MM-DD |
| **Phase** | F0–F5 |
| **Tool** | Tool name and version/model |
| **Purpose** | What was the AI asked to do |
| **Input given** | Brief description of what was provided |
| **Output received** | Brief description of what was generated |
| **Validation** | How output was verified |
| **Action taken** | What you did with the output |
| **Discarded?** | Any output discarded and why |

---

## Log Entries

### Template Entry (copy to add new entries)

```
---
Date: YYYY-MM-DD
Phase: F0
Tool: Claude (claude.ai, claude-opus-4.6)
Purpose: [What task]
Input: [Brief description]
Output: [Brief description]
Validation: [How verified]
Action: [What done with it]
Discarded: [N/A or reason]
---
```

---

### Phase F0 — Initiation

```
Date: 2026-02-24
Phase: F0
Tool: Claude (claude.ai)
Purpose: Initial state-of-the-art panoramic mapping using EGI prompting
Input: RCOIF prompt describing PUMA project + EGI Panoramic Mapping variant
Output: Map of 6 sub-areas in PM+LLM research with key papers per area
Validation: Verified 12/15 papers in Google Scholar; 3 could not be confirmed (flagged)
Action: Used as starting point for Zotero library; discarded 3 unverifiable papers
Discarded: 3 hallucinated paper details (correct titles, wrong DOIs)
---

Date: 2026-02-26
Phase: F0
Tool: Perplexity AI (Sonar model)
Purpose: Dataset discovery for issue triage
Input: Query: "Public datasets for Jira issue priority classification machine learning"
Output: Mentioned JIRA Social Repository, Eclipse Bug Dataset, Mozilla Bug Dataset
Validation: Verified all 3 exist in primary sources; Jira SR chosen for PUMA
Action: Added Jira SR and TAWOS to Zotero with #puma-include tag
Discarded: None — all outputs verified
---

Date: 2026-03-01
Phase: F0
Tool: NotebookLM (Google)
Purpose: Cross-paper synthesis of reproducibility limitations
Input: Uploaded 8 papers on LLM benchmarks in SE
Output: Summary identifying reproducibility as the most cited limitation
Validation: Manually checked each paper's limitations section to confirm
Action: Used to strengthen Section 1.1 gap argument; rewritten in own words
Discarded: Some specific percentages NotebookLM cited — not traceable to specific pages
---
```

---

### Phase F1 — Design

```
Date: {{DATE}}
Phase: F1
Tool: Claude Code (claude-sonnet-4.6)
Purpose: Generate SDD spec template for TriageAgent
Input: Described TriageAgent requirements in natural language
Output: Draft OpenSpec YAML for TriageAgent
Validation: Reviewed against BDD requirements and PUMA specs; significant revision made
Action: Used as starting point for SP-Triage-Agent-v1.md; 60% rewritten
Discarded: Initial output had unrealistic latency requirements (<5s); revised to <60s
---
```

---

### Phase F2 — Prototype

*(Entries to be added during implementation)*

---

## Summary Statistics

```dataview
TABLE count(rows) as "Interactions", tool, phase
FROM "50 - Areas/51 Research"
WHERE type = "ai-use-log"
GROUP BY tool, phase
```

---

## Tool Registry (All tools used in PUMA)

| Tool | Category | Phase | PRISMA-trAIce role |
|------|---------|-------|-------------------|
| Claude (claude.ai) | LLM conversational | F0–F5 | Research synthesis, writing review |
| ChatGPT (OpenAI) | LLM conversational | F0–F2 | Cross-validation, alternative perspectives |
| DeepSeek-R1 | LLM reasoning | F0–F1 | Statistical and technical questions |
| Google Gemini | LLM multimodal | F0–F1 | Figure analysis, long documents |
| Perplexity AI | Web-grounded LLM | F0–F1 | State-of-art discovery |
| Consensus | Evidence AI | F0 | Literature evidence validation |
| Elicit | SLR assistant | F0 | Abstract screening |
| NotebookLM | Paper corpus | F0–F1 | Multi-paper synthesis |
| AnythingLLM | Local RAG | F1–F4 | Local document Q&A |
| Llama 3.2 8B (Ollama) | Experiment model | F2–F4 | **Research subject**, not research tool |
| Mistral 7B (Ollama) | Experiment model | F2–F4 | **Research subject**, not research tool |
| Claude Code | Coding agent | F2–F4 | Code generation (human-reviewed) |
| GitHub Copilot | Code completion | F2–F3 | Inline code suggestions |
| Cursor AI | Code assistant | F2–F3 | Code refactoring |
| OpenCode | Code agent | F2–F3 | Open-source alternative |
| OpenHands | Autonomous agent | F2 | Scaffolding generation |
| Warp AI Terminal | CLI assistant | F2–F4 | Terminal command generation |
| Browser OS | Web agent | F0–F1 | Research automation |
| Microsoft Copilot | Office assistant | F0–F5 | Minor document tasks |

---

## Navigation

[[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] (§1.8 AI Use Declaration) · [[50 - Areas/55 Ethics/Ethics-Review-Log]]

[[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]] · [[20 - Literature/20.6 Tools/LN-Tools-AI-Assistants-LLMs]]

[[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]] · [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]]
