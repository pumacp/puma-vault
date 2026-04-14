---
id: PN-Chain-of-Thought
title: "Chain-of-Thought (CoT) Prompting"
type: permanent-note
category: concept
tags: [permanent, concept, prompting, cot, reasoning, llm, academic-writing, api, baseline, bias, chain-of-thought, dashboard, dataset, effort-estimation, ethics, evaluation, few-shot, hypothesis, issue-triage, jira, llama, meta, metrics, mistral, moc, permanent-note, precision-recall, project-management, rcoif, react, reasoning-action, research, research-methodology, story-points, tawos, template, triage, zero-shot, zettelkasten]
aliases: ["CoT", "Chain of Thought", "Zero-Shot CoT", "Step-by-step reasoning"]
created: 2026-03-01
maturity: evergreen
sources: ["Wei et al. (2022) arXiv:2201.11903", "Brown et al. (2020) arXiv:2005.14165"]
---

# Chain-of-Thought (CoT) Prompting

> [!abstract] Atomic Claim

> [!info] Overview
> Instructing a language model to reason step-by-step before producing a final answer (CoT) consistently improves performance on tasks requiring multi-step inference — including issue triage and effort estimation — compared to direct answer prompting.

---

## 💡 The Concept

Chain-of-Thought prompting elicits intermediate reasoning steps from LLMs before they produce a final answer. Two main variants:

### Zero-Shot CoT
Add a simple trigger to the prompt — no examples needed:
```
"Think step by step before giving your final answer."
"Let's reason through this carefully:"
"Walk me through your reasoning before classifying:"
```

### Few-Shot CoT
Provide examples where the reasoning chain is shown:
```
Example 1:
Issue: "Login page returns 500 error for all users"
Reasoning: This affects all users (scope: entire system), 
           is a hard blocker (severity: critical), 
           is a production system (environment: prod).
Priority: Critical

Example 2:
Issue: "Dashboard graph legend overlaps text on mobile"
Reasoning: This is a visual issue (severity: minor),
           affects only mobile users (scope: partial),
           has a workaround (pinch to zoom).
Priority: Low

Now classify:
Issue: [NEW ISSUE]
Reasoning: [MODEL GENERATES HERE]
Priority: [FINAL ANSWER]
```

---

## 📊 Relevance to PUMA

| Strategy | H1 Test | Expected Effect |
|----------|---------|----------------|
| Zero-shot (no CoT) | Baseline comparison | Lower F1 |
| Zero-shot CoT | Experimental condition | Moderate improvement |
| Few-shot-3 | Experimental condition | Significant improvement |
| Few-shot-6 CoT | Experimental condition | Highest F1 expected |

**Key research question:** Does CoT help more with triage (classification) or estimation (regression proxy)?

**Key reference:** Wei et al. (2022) show CoT gains are most pronounced for models ≥100B parameters — may be limited for 7-8B local models like Llama 3.2 and Mistral 7B. This is a testable prediction in PUMA H1.

---

## 🔗 Connected Ideas

**Extends:** [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] (Few-Shot section) | **Used in:** [[60 - Resources/61 Prompts/PT-PUMA-Experiment-Prompts]]
**Tested in:** [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] (S4 strategy)
**Contrasts with:** Zero-shot direct prompting | **Enabled by:** [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]] (I component)
**PM target:** [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] | **Structure:** [[30 - Permanent/30 Zettelkasten-Hub/ST-Prompting-Strategies]]
**Grounded by:** [[30 - Permanent/31 Concepts/PN-ReAct-AgentPattern]] (Stage 4 extension)

---
---
id: PN-Few-Shot-Prompting
title: "Few-Shot Prompting"
type: permanent-note
category: concept
tags: [permanent, concept, prompting, few-shot, in-context-learning, llm]
aliases: ["Few-Shot", "In-Context Learning", "ICL", "k-shot"]
created: 2026-03-01
maturity: evergreen
---

# Few-Shot Prompting

> [!abstract] Atomic Claim
> Providing k labelled examples (k=3,6) within the prompt context enables LLMs to adapt their classification behaviour to the target task distribution without gradient updates — a form of in-context learning that is the primary variable being manipulated in PUMA Stages 1 and 2.

---

## 💡 The Concept

Few-shot prompting places k (input, label) pairs in the prompt before the test instance. The model uses these as implicit demonstrations of the desired mapping.

**Why it works:** LLMs learn to identify the pattern (task format, label space, reasoning style) from demonstrations and apply it to novel instances.

**Key design decisions for PUMA:**
1. **Example selection** — Stratified sampling (one per priority class for k=4, two per class for k=8)
2. **Example ordering** — Random order to prevent recency bias
3. **Example diversity** — Cover edge cases, not just easy examples
4. **Label format** — Consistent with expected output format

---

## 📋 Template for Issue Triage (k=3)

```
You are an expert software project manager. 
Classify the priority of Jira issues.

Priority classes: Critical | High | Medium | Low

Examples:
---
Issue: "Database connection pool exhausted — 100% of API requests failing"
Priority: Critical

Issue: "Search results take 8 seconds to load instead of 2 seconds"
Priority: High  

Issue: "Tooltip text is cut off at the right edge in Firefox"
Priority: Low
---

Now classify this issue:
Issue: "{issue_title} — {issue_description}"
Priority:
```

---

## 🔗 Connected Ideas

**Complements:** [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]] (CoT section) | **Contrasts with:** Zero-shot
**Key paper:** [[20 - Literature/20.1 Papers/LN-Calikli-2025-RequestFormats]] — request format affects estimation non-monotonically
**Tested in:** [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] (S2, S3 strategies)
**PM application:** [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] | **Framework:** [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]]
**Datasets:** [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] | **Structure:** [[30 - Permanent/30 Zettelkasten-Hub/ST-Prompting-Strategies]]
**MOC:** [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
**Foundational paper:** [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Wei-2022-ChainOfThought]] — Wei et al. (2022): original CoT paper, scaling analysis, zero-shot CoT
