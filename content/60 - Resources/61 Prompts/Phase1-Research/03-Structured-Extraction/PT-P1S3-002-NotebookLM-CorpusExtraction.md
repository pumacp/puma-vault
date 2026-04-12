---
id: PT-P1S3-002
title: "NotebookLM — Corpus-Grounded Extraction for PUMA"
type: prompt-note
tool: notebooklm
phase: Phase1-Research
step: "03-Structured-Extraction"
methodology: [RAG-Grounded, Keshav-Three-Pass]
tags: [prompt, notebooklm, rag, corpus-grounded, puma]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 📓 NotebookLM — Corpus-Grounded Extraction for PUMA

**Tool**: NotebookLM (Google)
**Phase**: Phase 1 — Research
**Step**: 03 — Structured Extraction
**Methodology**: RAG-grounded (source-only responses)

---

## Configuration

Upload to NotebookLM workspace:
- All SLR corpus PDFs (40+ papers)
- PUMA project documentation (TFG merged)
- PRISMA Log template

System instruction: "Answer only from the uploaded documents. Never generate information not present in the sources. Always cite the specific document and section for each claim."

---

## Prompt A — Source-Grounded Synthesis

```
Using only the uploaded documents, answer: What evidence exists that LLM agents can automate issue triage in software projects? For each claim, cite the specific document title and section. If there are contradictions between documents, explicitly flag them.
```

## Prompt B — Three-Pass Reading Application

```
Apply Keshav's Three-Pass reading method to the uploaded papers:
- Pass 1 (Bird's-eye): For each paper, provide a 3-line summary stating: paper type, main claim, and relevance to PUMA (1-3 scale).
- Pass 2 (Content grasp): Extract methods, datasets, metrics, and limitations for papers rated 2 or 3.
- Pass 3 (Re-implementation): For the top 5 papers by PUMA relevance, describe how their framework could be adapted for PUMA's experimental design.
Only use information from the uploaded documents.
```

## Prompt C — Methodology Extraction

```
List all research methodologies mentioned across the uploaded documents. For each: what document uses it, how is it applied, what are the stated limitations of this method. Focus on: experimental design, evaluation protocols, statistical tests, and reproducibility measures.
```

## Prompt D — Gap Identification from Corpus

```
Based ONLY on the uploaded documents: what research questions remain unanswered? What contradictions between documents are left unresolved? What contexts, datasets, or model types have NOT been studied? Do not add information from your training data.
```

## Prompt E — Mini Framework Construction

```
Using exclusively the uploaded PDFs, draft a 400-word theoretical framework for PUMA. Structure: (1) define issue triage and effort estimation as PM tasks, (2) explain why LLM agents are appropriate for these tasks, (3) identify the key evaluation dimensions, (4) state the logical justification for PUMA's experimental design. Cite all claims to specific documents.
```

## Prompt F — Podcast Synthesis (Native Feature)

```
Generate a podcast-style synthesis of the uploaded documents oriented to explaining the current state of AI agents for project management to an academic audience. Focus on: the three most surprising findings, the most contested debates, and the open questions that PUMA addresses.
```

---

## PUMA Relevance

NotebookLM is PUMA's private RAG system over the paper corpus. Unlike general LLMs, it cannot hallucinate external references — every claim is traceable to a source. This is critical for PUMA's Section 1.8 (AI use declaration) compliance with Marco Veritas protocol.

---

## Related Notes

- [[50 - Areas/51 Research/AI-Use-Log]]
- [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]]
- [[60 - Resources/65 Bibliographies/BIB-Supplement-v3]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
