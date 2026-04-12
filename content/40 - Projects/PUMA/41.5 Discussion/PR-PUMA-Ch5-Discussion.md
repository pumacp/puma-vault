---
id: PR-PUMA-Ch5-Discussion
title: "Chapter 5 — Discussion & Conclusions"
type: project-note
tags: [project, chapter, discussion, conclusions, limitations, future-work]
status: pending
deadline: 2026-06-07
pec: PEC4
word_count_target: 3500
created: 2026-03-01
---

# Chapter 5 — Discussion & Conclusions

> **Status:** ⏳ Pending F4 results
> **Requires:** Completed results tables from [[40 - Projects/PUMA/41.4 Results/PR-PUMA-Ch4-Results]]

---

## Chapter Structure

### 5.1 Interpretation of Results

**H1 (Triage) interpretation framework:**
```
If H₀₁ REJECTED (p < 0.05, r ≥ 0.1):
  → "Local LLMs provide measurable improvement over keyword heuristics..."
  → Discuss which model/strategy performed best and why
  → Discuss whether improvement is practically significant

If H₀₁ NOT REJECTED:
  → "No configuration achieved statistically significant improvement..."
  → This is a valid negative result — explain value
  → Possible explanations: 8B models too small for complex classification?
    CoT less effective at small model sizes? Dataset characteristics?
```

**H2 (Estimation) interpretation framework:**
```
If H₀₂ REJECTED:
  → Compare to CoGEE (MAE ~1.9 SP) — how close did local models get?
  → Discuss the quality-cost tradeoff (local vs GPT-4 API)

If H₀₂ NOT REJECTED:
  → Discuss why historical mean is hard to beat
  → Reference Flyvbjerg's Uniqueness Trap — teams use local context
    (not base rates) → model without fine-tuning faces same challenge
```

### 5.2 Implications for Practice

**For ICT project managers:**
- Under what conditions should they adopt LLM-assisted triage?
- What is the minimum acceptable F1 for practical deployment?
- Carbon cost: is local inference sustainable at scale?

**For researchers:**
- Which prompting strategies warrant further investigation?
- Is fine-tuning necessary for PM tasks?
- What would Stage 4 (RAG) add?

### 5.3 Limitations (Threats to Validity)

**Internal validity threats:**
- Confound: model quantization level may affect results
- Confound: hardware performance variation despite seed=42
- Selection: Jira SR is Apache Software Foundation projects only → community OSS bias

**External validity threats:**
- Results may not generalise to: closed-source Jira data, non-English issues, post-2014 issues
- Local model results may not generalise to larger models (13B+)
- 8B parameter models may behave differently from 70B models

**Construct validity threats:**
- F1-macro treats all classes equally — Critical errors may matter more in practice
- Story points are team-relative — TAWOS cross-team ground truth has noise

**Conclusion validity threats:**
- N=200 for triage, N=350 for estimation — may have limited power for small effects
- Wilcoxon test assumptions: paired, continuous — per-issue scores may not be fully independent

### 5.4 Future Work

```dataview
LIST
FROM "90 - GTD/93 Someday-Maybe"
WHERE contains(tags, "future-work")
```

**Priority extensions:**
1. Stage 3: Backlog prioritisation (Spearman correlation)
2. Stage 4: RAG-enhanced triage (ChromaDB + semantic retrieval)
3. Fine-tuning Llama 3.2 on Jira SR for fair comparison
4. Fairness analysis: does triage accuracy differ by project type?
5. Publication: MSR 2027 or EASE 2027

### 5.5 Conclusions

```
Answering the main RQ:
"Do statistically significant differences exist in automatic issue triage
quality and effort estimation when using different LLMs and prompting
strategies, evaluated on real ICT project datasets?"

Answer: [To be written based on results]

Contribution summary:
1. First fully reproducible PM+LLM benchmark (100%, local, MIT)
2. First systematic prompting strategy comparison for PM tasks
3. First carbon measurement dataset for PM+LLM research
4. [Result-dependent: evidence for/against local LLM viability in PM]
```

---

## Red Team Preparation (Pre-Submission)

Before submitting Ch. 5, run these red team prompts:
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Advanced-Prompts-IIPR-Anchoring-AgentOS]] → rival hypothesis for main finding
- [[60 - Resources/61 Prompts/61.5 BMAD-Prompts/PT-BMAD-Agent-Prompts]] → section review via Red Teamer agent
- Manual: "If F1=0.58, is this practically meaningful or just statistically significant?"

---

## 🔗 Related Notes

**Results source:**
[[40 - Projects/PUMA/41.4 Results/PR-PUMA-Ch4-Results]] · [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]

**Theoretical context:**
[[30 - Permanent/31 Concepts/PN-LLM-Local-vs-Cloud]] · [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] (Red Teaming)
[[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] (Uniqueness Trap — §5.1 H2 discussion)
[[30 - Permanent/37 Persons/PER-Flyvbjerg-Bent]] — Uniqueness Trap in H2 interpretation

**Future work:**
[[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]] · [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]] (Stage 4)
[[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] (Stage 5)

**Navigation:**
[[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] · [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
