---
id: PN-Wilcoxon-FINER-Cornell
title: "Methods: Wilcoxon · FINER · Cornell"
type: permanent-note
category: method
tags: [permanent, method, wilcoxon, statistics, finer, cornell, research-quality]
created: 2026-03-01
maturity: evergreen
---

# Wilcoxon Signed-Rank Test

> **Atomic claim:** The Wilcoxon signed-rank test is the appropriate non-parametric alternative to the paired t-test when comparing LLM condition scores against baseline scores, because F1 distributions are not assumed to be normally distributed.

## The Test in PUMA

```python
from scipy import stats
import numpy as np

def wilcoxon_test(llm_scores: list, baseline_scores: list, alpha=0.05) -> dict:
    """
    Two-sided Wilcoxon signed-rank test.
    llm_scores and baseline_scores: per-issue F1 (triage) or per-story |error| (estimation).
    """
    stat, p = stats.wilcoxon(llm_scores, baseline_scores, alternative='two-sided')
    N = len(llm_scores)
    # Effect size r from normal approximation Z
    z = stats.norm.ppf(1 - p / 2) if p > 0 else float('inf')
    r = abs(z) / np.sqrt(N)
    return {
        'W': stat, 'p_value': p,
        'effect_r': round(r, 3),
        'significant': p < alpha,
        'effect_category': 'small' if r < 0.3 else 'medium' if r < 0.5 else 'large',
        'h0_rejected': p < alpha and r >= 0.1
    }
```

## Reporting Template (H1)

> "The Wilcoxon signed-rank test revealed that [model+strategy] (Mdn=X) performed significantly [better/worse] than the heuristic baseline (Mdn=Y), W=Z, p=.0XX, r=.XX. This constitutes a [small/medium/large] effect."

## Key Choices Justified

| Choice | Justification |
|--------|--------------|
| Wilcoxon (not t-test) | F1 scores are not normally distributed |
| Two-sided | H₀ does not assume direction |
| α = 0.05 | Standard in SE research |
| r ≥ 0.1 for H₀ rejection | Minimum practical significance (Kitchenham 2002) |

**🔗** [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] · [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] · [[40 - Projects/PUMA/41.3 Methods/PR-PUMA-Ch3-Methods]] (§3.7) · [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] (F1-macro, MAE metrics)

---
---
id: PN-FINER-Criteria
title: "FINER Criteria for Research Questions"
type: permanent-note
category: method
tags: [permanent, method, finer, research-question, feasibility]
created: 2026-03-01
maturity: evergreen
---

# FINER Criteria for Research Questions

> **Atomic claim:** A well-formed research question must satisfy all five FINER criteria simultaneously — Feasible, Interesting, Novel, Ethical, Relevant — to constitute a valid academic contribution.

## The Framework

| Criterion | Question | PUMA Assessment |
|-----------|---------|----------------|
| **F**easible | Can this be done with available resources? | ✅ Local compute + public datasets + 6 months |
| **I**nteresting | Does the community care? | ✅ PM+AI is top-10 CS research growth area |
| **N**ovel | Does existing work not answer this? | ✅ No open PM+LLM+CodeCarbon benchmark exists |
| **E**thical | Does it respect privacy, fairness, consent? | ✅ Public data, open models, HITL design |
| **R**elevant | Does it matter for practice? | ✅ ICT PM is a billion-dollar industry |

**🔗** [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] · [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]] · [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]] (§1.2 RQ validation)

---
---
id: PN-Cornell-Method
title: "Cornell Note-Taking Method"
type: permanent-note
category: method
tags: [permanent, method, cornell, note-taking, learning, mit-student-method]
aliases: ["Cornell Notes", "Cornell System"]
created: 2026-03-01
maturity: evergreen
---

# Cornell Note-Taking Method

> **Atomic claim:** The Cornell system forces active processing of information by physically separating questions/cues (left) from notes (right) and demanding synthesis (bottom) — making it the structural backbone of the MIT Student Method reading process.

## Layout

```
┌─────────────────────────────────────────────────────────┐
│ Note title: [Paper/Chapter]          Date: [date]       │
├──────────────────┬──────────────────────────────────────┤
│  CUE COLUMN      │  NOTES COLUMN                        │
│  (30% width)     │  (70% width)                         │
│                  │                                      │
│  Q: Main claim?  │  [Your notes in your own words]      │
│  Q: Falsifiable? │  [Evidence, examples, data]          │
│  Key: F1-macro   │  [Definitions as used in this paper] │
│  ??              │  [Connections to other notes]        │
│                  │                                      │
├──────────────────┴──────────────────────────────────────┤
│  SUMMARY (20% height — written AFTER reading)           │
│  3 sentences: core claim + evidence + PUMA implication  │
└─────────────────────────────────────────────────────────┘
```

## Rules for Academic Use

1. **Never copy sentences verbatim** — paraphrase everything (enforces understanding)
2. **Left column during reading** — write questions as they arise, fill answers after
3. **Summary after reading** — synthesise without looking at notes first
4. **Review within 24h** — cover notes, recite from cues only

**In this vault:** Applied in [[00 - Meta/Templates/Template-Literature-Note-Paper]] (Cornell Notes section)

**🔗** [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method]]

---
---
id: PN-PRISMA-DFLLM
title: "PRISMA-DFLLM & PRISMA-trAIce — AI-Extended PRISMA"
type: permanent-note
category: framework
tags: [permanent, framework, prisma, ai-use, transparency, slr-extension]
aliases: ["PRISMA-DFLLM", "PRISMA-trAIce", "AI-augmented SLR"]
created: 2026-03-01
maturity: growing
---

# PRISMA-DFLLM & PRISMA-trAIce

> **Atomic claim:** When AI tools assist in SLR screening or synthesis, standard PRISMA 2020 reporting must be extended to document: which tasks were AI-assisted, with which models, what outputs were generated, and what human validation was applied — enabling reproducibility of the review process itself.

## PRISMA-DFLLM Extension

Adds AI-specific reporting items to standard PRISMA flow:

| PRISMA Stage | AI Extension Required |
|-------------|----------------------|
| Identification | Document any AI-assisted search query generation |
| Screening | For each AI-assisted decision: tool, model, prompt, human override rate |
| Extraction | For AI-extracted data: what was extracted, how validated |
| Synthesis | For AI-assisted synthesis: what was generated, how rewritten |

## PRISMA-trAIce Logging Format (PUMA)

Every AI-assisted screening decision requires this record in [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]]:

```
Paper: [Zotero key]
AI tool: [Elicit | Claude | Perplexity]
AI model: [version if known]
AI suggestion: [Include | Exclude | Uncertain]
AI reasoning (brief): [what the AI cited]
Human decision: [Include | Exclude]
Agreement: [Y/N]
If disagreement: [explain why human overruled]
```

**Implementation:** [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]] · [[60 - Resources/62 Workflows/WF-SLR-Pipeline]]

**🔗** [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]] · [[50 - Areas/51 Research/AI-Use-Log]]

---
---
id: PN-Contextual-Anchoring
title: "Contextual Anchoring — Prompt Drift Prevention"
type: permanent-note
category: framework
tags: [permanent, framework, prompting, contextual-anchoring, drift, long-context]
aliases: ["Contextual Anchoring", "Prompt Anchoring", "Context Anchoring"]
created: 2026-03-01
maturity: seedling
---

# Contextual Anchoring

> **Atomic claim:** Re-stating critical constraints at the *end* of a long prompt (the "anchor") significantly reduces model drift away from task requirements, exploiting the recency bias of transformer attention mechanisms.

## Why It Works

Transformer attention has a mild recency bias — tokens near the end of the context window often receive more attention. By restating constraints as "anchoring reminders" at the end of a long prompt, you reinforce what matters most at the most-attended position.

## Pattern

```
[Long prompt body — role, context, objective, instructions]

--- ANCHOR ---
Before generating: Remember that your response must:
- [Constraint 1 — most important]
- [Constraint 2]
- [Format requirement]
```

## PUMA Use Cases

- Long EGI panoramic mapping prompts (prevents scope creep)
- Multi-turn research discussions (prevents drift from initial PUMA context)
- Experiment prompt templates (prevents models from adding explanation to label-only responses)

**Prompt example:** [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Advanced-Prompts-IIPR-Anchoring-AgentOS]]

**🔗** [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]] · [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]]
