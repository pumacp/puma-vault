---
id: "FL-{{date}}-{{keyword}}"
title: "Fleeting Note — {{date}} — {{keyword}}"
type: fleeting-note
tags: [fleeting, inbox, to-process]
created: {{date}}
process_by: {{date+2days}}
source: "{{where this came from: paper/conversation/idea/podcast}}"
---

# Fleeting Note — {{date}}

> ⚡ **Capture now, process later.** This note should be converted to a Literature Note or Permanent Note within 48 hours, then deleted or archived.

---

**Raw capture:**

{{Write exactly what you want to remember. No formatting needed.
Examples:
- "Angermeir 2025 says only 5/18 papers with artefacts are reproducible — need to check exact quote"
- "Idea: Could Contextual Anchoring help when using long few-shot prompts for triage? The model might forget the priority definitions"
- "YouTube: Andrej Karpathy video on tokenisation — relevant for understanding why 'Critical' might be tokenised differently across models"
- "Reddit r/LocalLlama: someone mentioned phi-3.5-mini outperforms mistral-7b on classification tasks at 1/3 the RAM — worth testing as fallback"
}}

---

**Action required:**
- [ ] Verify in primary source
- [ ] Create literature note: [[20 - Literature/...]]
- [ ] Create permanent note: [[30 - Permanent/...]]
- [ ] Add to experiment plan
- [ ] Add to backlog
- [ ] Just delete — not useful

---

*Process by: {{date+2days}} — if not processed, move to [[70 - Archive/71 Old-Notes/]]*

---

## 📥 Example Fleeting Notes (Educational)

### Example 1 — Paper idea
```
FL-2026-03-12-CoT-small-models

Source: Reading Calikli & Alhamed (2025)

Raw capture:
The paper says request format has "non-monotonic" effect on effort estimation.
This is surprising — more prompt structure doesn't always help.
Specifically: few-shot-6 sometimes WORSE than few-shot-3.
Question: Is this because 6 examples increases context length and the model
"forgets" the task definition? Or is it example selection bias?

Need to:
- Read the paper carefully (currently only read abstract)
- Check if they tested this with local models or only GPT
- Design PUMA experiments to test few-shot-3 vs few-shot-6 for this reason

Action: Create permanent note on "non-monotonic prompting effects"
```

### Example 2 — Tool observation
```
FL-2026-03-15-Ollama-seed-issue

Source: Own testing

Raw capture:
Discovered that Ollama doesn't guarantee determinism across different
hardware even with seed=42. Tested same prompt on M1 Mac and Intel CPU —
different responses. This might affect reproducibility claims.

Need to:
- Research if this is known behaviour
- Check Ollama GitHub issues
- Consider documenting this as a limitation
- Maybe: always use Docker to standardise hardware layer?

Action: Update SP-Architecture-v1 with reproducibility caveat
        Log in experiment design under "Threats to Validity"
```

### Example 3 — YouTube / Podcast
```
FL-2026-03-18-Karpathy-tokenisation

Source: YouTube - Andrej Karpathy "Let's build the GPT Tokenizer" 
URL: https://youtu.be/zduSFxRajkE

Raw capture:
Karpathy explains that tokenisation matters enormously for model behaviour.
The word "Critical" might be a single token, while "critical" might be split.
This could explain why the triage agent sometimes ignores case in the prompt.
Also: priority labels might tokenise differently in different model families.

Implication for PUMA: document model tokenisers used,
test with multiple capitalisation variants in labels.

Action: Add to "Threats to Validity" in experiment design.
        Maybe add to Glossary under "tokenization"
        Note type: Fleeting → maybe Permanent if confirmed
```
