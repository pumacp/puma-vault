---
id: PT-P1S2-003
title: "Claude — Literature Synthesis with RCOIF Framework"
type: prompt-note
tool: claude
phase: Phase1-Research
step: "02-Scientific-Mapping"
methodology: [RCOIF, DSR, SLR, Keshav-Three-Pass]
tags: [prompt, claude, rcoif, synthesis, keshav, puma]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 🤖 Claude — Literature Synthesis with RCOIF Framework

**Tool**: Claude (Anthropic)
**Phase**: Phase 1 — Research
**Step**: 02 — Scientific Mapping
**Framework**: RCOIF + Keshav Three-Pass Method

---

## Master Synthesis Prompt (RCOIF)

```
Role: Senior research synthesizer specializing in AI agents applied to software engineering and project management.

Context: I am developing PUMA (Project Understanding and Management with Agents), a TFG at UOC following Design Science Research methodology. PUMA evaluates local LLM agents (Llama 3.2 8B, Mistral 7B via Ollama) for two tasks: (1) issue triage on Jira Social Repository dataset (F1-macro target ≥ 0.55) and (2) effort estimation on TAWOS dataset (MAE target ≤ 3.0 SP). All experiments use seed=42, temperature=0.0 for reproducibility.

Objective: Synthesize the provided literature into a coherent research model for PUMA, covering: task automation evidence, benchmark design patterns, agent architectures applicable to PM, and governance requirements.

Instructions:
1. Apply Keshav's Three-Pass Method to the corpus:
   - Pass 1 (Bird's-eye): Classify each paper by type, topic cluster, and relevance level (High/Medium/Low) for PUMA.
   - Pass 2 (Content): Extract methods, datasets, evaluation metrics, and key limitations.
   - Pass 3 (Re-implementation): Reconstruct design implications for PUMA's four experiment stages.
2. Apply MIT-style critical questions to each cluster:
   - How can this be used in PUMA?
   - Does the evidence actually support the claim?
   - What if the result doesn't generalize to local LLMs on Jira/TAWOS?
3. Apply AMI (Auto-diagnosis and Iterative Improvement): After synthesis, critique your own output for overclaims, missing assumptions, and weak links. Revise once.
4. Map findings to PUMA's research hypotheses: H1 (triage) and H2 (estimation).

Format:
- Executive synthesis (300 words)
- Thematic cluster table (Theme | Papers | Key Finding | PUMA Implication)
- Top-10 papers to read first with brief justification
- Self-critique section
- Revised synthesis with explicit PUMA design principles extracted
```

---

## Follow-Up Prompts

### AMI Self-Improvement Round

```
Review the synthesis above. Identify: (1) any claims not directly supported by the cited papers, (2) any important papers or findings that were missed, (3) any overclaims about what LLM agents can do for PM tasks. Flag all issues with [VERIFY] and [OVERCLAIM] markers. Then produce a corrected version.
```

### Gap Matrix Generation

```
Using the synthesis above, create a gap matrix for PUMA: a table where rows are research dimensions (datasets, evaluation metrics, local inference, reproducibility, sustainability, human-in-the-loop) and columns are existing papers. Mark each cell as ✓ (covered), ✗ (not covered), or ◑ (partially covered). The cells with ✗ in multiple papers represent PUMA's contribution.
```

---

## PUMA Relevance

This RCOIF prompt is the canonical synthesis engine for PUMA's Section 2 (Materials and Methods). The output directly informs [[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-Ch2-Ch3-Ch4-Ch5]] and the gap analysis in [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]].

---

## Related Notes

- [[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-Ch2-Ch3-Ch4-Ch5]]
- [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]]
- [[50 - Areas/51 Research/AI-Use-Log]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
- [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]]
