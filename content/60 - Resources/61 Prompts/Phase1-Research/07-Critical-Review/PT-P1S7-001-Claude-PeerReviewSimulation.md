---
id: PT-P1S7-001
title: "Claude — Peer Review Simulation for PUMA"
type: prompt-note
tool: claude
phase: Phase1-Research
step: "07-Critical-Review"
methodology: [RCOIF, Peer-Review-Simulation, AMI]
tags: [prompt, claude, peer-review, academic-writing, puma]
rating: 5
created: 2026-04-07
updated: 2026-04-07
---

# 🔬 Claude — Peer Review Simulation for PUMA

**Tool**: Claude (Anthropic)
**Phase**: Phase 1 — Research
**Step**: 07 — Critical Review
**Methodology**: RCOIF + Peer Review Simulation + AMI

---

## Master Peer Review Prompt (RCOIF)

```
Role: Experienced academic reviewer for a top-tier software engineering conference (ICSE, FSE, or MSR). You have reviewed 60+ papers and rejected 60% of submissions. You are rigorous with methodology and skeptical of unsupported claims, but constructive — your goal is to improve the work, not destroy it.

Context: You will review a section of PUMA, a TFG at UOC Spain. PUMA evaluates local LLM agents for project management tasks: issue triage and effort estimation. It uses DSR methodology, Jira SR and TAWOS datasets, Wilcoxon statistical test, and CodeCarbon for sustainability measurement.

Objective: Produce a complete peer review report in standard academic format.

Text to review: [PASTE: Title, Abstract, Introduction, Methodology, and Conclusions]

Instructions — structure the report as:
SECTION 1 — Editorial Summary (100 words): What does this work claim? Recommendation: ACCEPT / MAJOR REVISION / MINOR REVISION / REJECT. Justification in 2–3 sentences.
SECTION 2 — Major Issues (prevent acceptance): For each: precise problem description, why it matters, specific change that resolves it. Minimum 3 major issues.
SECTION 3 — Minor Issues (recommended improvements): Clarity, style, coherence, figures, references. Numbered list. Minimum 5 minor issues.
SECTION 4 — Questions for Authors: 5 questions the author must answer in the response letter.
SECTION 5 — Strengths: 2–3 genuinely positive aspects of the work.

Format: Formal academic review. Reference specific sections of the submitted text.
```

---

## AMI Self-Critique Prompt

```
Role: Author of PUMA who has just received the peer review above.

Objective: Apply AMI (Auto-Diagnosis and Iterative Improvement) to produce a revision plan.

Instructions:
1. COMPLETENESS: For each reviewer comment, determine: (a) is the criticism valid?, (b) can it be addressed with the current data and scope?, (c) what specific change to the text will address it?
2. PRIORITY: Rank all issues as: Critical (must fix), Important (should fix), Optional (nice to have).
3. REVISION PLAN: For each Critical and Important issue, specify: what section to change, what new content to add, and estimated time.
4. RESPONSE LETTER: Draft the first paragraph of the response letter that: thanks the reviewer professionally, summarizes the main changes, and signals which concerns could not be fully addressed (and why).

Format: Revision priority table. Revision plan (issue → change → section → time). Response letter opening.
```

---

## Methodological Critique Prompt

```
Role: Skeptical methodologist analyzing PUMA's experimental design.

Context: PUMA uses 200 Jira issues, 4 prompting strategies, 2 models, Wilcoxon test, and no train/test split for the LLM (zero-shot evaluation). Temperature=0, seed=42.

Identify and evaluate these potential methodological concerns:
1. Is 200 issues sufficient for statistically meaningful F1-macro comparison across 5 priority classes?
2. Does using the same dataset for few-shot examples and evaluation create data leakage?
3. Does temperature=0 represent fair evaluation or does it artificially reduce variance?
4. Is Wilcoxon appropriate, or should Friedman test be used for 4+ conditions?
5. Can results generalize beyond Apache Jira projects?

For each concern: (a) is it a real threat?, (b) what would be the ideal mitigation?, (c) can PUMA address it within its scope and deadline?, (d) how should it be documented in Section 4 (Limitations)?
```

---

## PUMA Relevance

The peer review simulation identifies weaknesses before the actual TFG submission to UOC. The AMI cycle generates the revision plan that feeds the PEC workflow. This is the final quality gate before the experimental results section. Output feeds [[40 - Projects/PUMA/41.4 Results/PR-PUMA-Ch4-Results]] and [[40 - Projects/PUMA/41.5 Planning/PL-Sprint-Plan]].

---

## Related Notes

- [[40 - Projects/PUMA/41.4 Results/PR-PUMA-Ch4-Results]]
- [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]]
- [[50 - Areas/51 Research/AI-Use-Log]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Prompts-Library]]
