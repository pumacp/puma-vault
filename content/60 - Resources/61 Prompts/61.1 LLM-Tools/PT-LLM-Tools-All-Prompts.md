---
id: PT-Claude-EGI-Exploration
title: "Prompt: Claude — EGI Guided Exploration"
type: prompt-template
tags: [prompt, claude, egi, exploration, panoramic-mapping]
tool: claude
methodology: egi
use_case: research
phase: F0
version: 1.1
tested: true
effectiveness: high
created: 2026-03-01
---

# Prompt: Claude — EGI Guided Exploration

> **Use when entering unfamiliar territory.** The three EGI moves progressively narrow from panoramic to specific.
> [[30 - Permanent/33 Frameworks/PN-EGI-Framework]]

---

## Move 1 — Panoramic Landscape Mapping

```
ROLE:
You are an expert in AI for software engineering with comprehensive knowledge
of academic literature from 2020–2026.

CONTEXT:
I am starting a Master's thesis on applying local LLMs to ICT project management tasks.
I am at the beginning of my literature review and need to map the landscape before
drilling into specific sub-areas.

OBJECTIVE:
Give me a structured panoramic map of the research landscape at the intersection
of LLMs and software project management.

INSTRUCTIONS:
1. Identify the 5–7 major sub-areas in this research intersection
2. For each sub-area:
   a. State what the core research question is
   b. Name the 2–3 most important papers or authors (with year if known)
   c. Describe the current state of knowledge in one sentence
   d. Identify the main open gap or limitation
3. Highlight which sub-areas have the most reproducibility issues
4. Flag which sub-areas use local vs cloud-only models

FORMAT:
Structured outline with H3 headers per sub-area.
Each sub-area: 4 bullet points (core question, key papers, current state, main gap).
End with: "Top 3 sub-areas most relevant to a reproducible local-LLM benchmark"
Language: English | Length: 600–900 words
```

---

## Move 2 — Targeted Drilling

```
ROLE: Expert in [sub-area identified from Move 1]

CONTEXT:
Based on the panoramic map you provided, I want to drill into:
[PASTE THE SUB-AREA NAME AND DESCRIPTION FROM MOVE 1]

I already know about these papers in this sub-area:
[LIST PAPERS YOU ALREADY HAVE — prevents duplication]

OBJECTIVE:
Give me a focused review of the 5 most important papers on [sub-area]
published since 2022.

INSTRUCTIONS:
For each paper:
1. Full citation (Author, Year, Venue)
2. Main contribution in 2 sentences
3. Dataset(s) used (name them, note if public)
4. Key metric and best result
5. Is code/data published? (Y/N)
6. Why it matters for a reproducible local-LLM PM benchmark

FORMAT:
Numbered list 1–5, consistent structure per paper.
End with: "The most significant gap these papers leave open is..."
⚠️ Only include papers you are confident exist — flag any uncertainty.
```

---

## Move 3 — Gap Identification

```
ROLE: Senior researcher reviewing a thesis proposal

CONTEXT:
I am planning PUMA — a reproducible benchmark for local LLMs on PM tasks.
Key design choices already made:
- Local models only (Llama 3.2 8B, Mistral 7B via Ollama)
- Datasets: Jira SR (triage) + TAWOS (estimation)
- 4 prompting strategies: zero-shot, few-shot-3, few-shot-6, CoT
- Carbon measurement via CodeCarbon
- Statistical testing via Wilcoxon signed-rank

Based on the papers discussed in Moves 1 and 2:

OBJECTIVE:
Identify which research gaps PUMA genuinely fills and which it does NOT address.

INSTRUCTIONS:
1. For each gap I claim to fill, assess: does the literature truly leave this open?
2. Identify any gaps I am overclaiming
3. Identify additional gaps I could address with minimal scope change
4. Give PUMA's contribution a fair academic positioning in 2–3 sentences

FORMAT:
Table: Gap | Evidence it's real | Does PUMA address it? | Assessment
Followed by 2–3 sentence positioning statement.
Be honest — I need to defend this in front of a thesis committee.
```

---
---
id: PT-Claude-AMI-Review
title: "Prompt: Claude — AMI Self-Improvement Review"
type: prompt-template
tags: [prompt, claude, ami, review, iteration, self-improvement]
tool: claude
methodology: ami
use_case: research
phase: F0-F5
version: 1.0
tested: true
effectiveness: high
created: 2026-03-01
---

# Prompt: Claude — AMI Iterative Self-Improvement

> [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]]

---

## Prompt — Hypothesis Review

```
ROLE:
You are a rigorous academic reviewer with expertise in empirical software
engineering and LLM evaluation methodologies.

CONTEXT:
I am writing a project about benchmarking local LLMs for
ICT project management. The following is my current hypothesis formulation
and experimental design for Stage 1 (issue triage):

[PASTE YOUR H1 TEXT AND DESIGN DETAILS HERE]

OBJECTIVE:
Diagnose this hypothesis and design against five quality criteria.

INSTRUCTIONS:
Evaluate each criterion independently, then give an overall score:

1. FALSIFIABILITY — Is H₀ clearly statable and refutable by the data?
2. OPERATIONALISATION — Are all variables (IV, DV, controls) precisely defined?
3. BASELINE APPROPRIATENESS — Is the comparison baseline challenging enough?
4. STATISTICAL VALIDITY — Is the chosen test (Wilcoxon) appropriate for this data type?
5. SCOPE REALISM — Can a single researcher complete this in the stated timeframe?

For each: Rating (1=poor, 5=excellent) + Specific problem identified + Suggested fix.
Do NOT rewrite the hypothesis for me — give me the diagnosis only.

FORMAT:
Table: Criterion | Rating | Problem | Fix
Overall assessment: [2 sentences]
Most critical issue to address: [1 sentence]
```

---

## Prompt — Writing Section Review

```
ROLE:
You are a senior academic editor specialising in empirical CS research papers.
You are reviewing a Master's thesis chapter.

CONTEXT:
This is Section [X.Y] from a PUMA — a benchmark
for local LLMs in project management.

[PASTE THE SECTION TEXT HERE]

OBJECTIVE:
Provide a structured editorial diagnosis of this section.

INSTRUCTIONS:
Evaluate these dimensions:
1. ARGUMENT CLARITY — Is the main point stated clearly in the first paragraph?
2. EVIDENCE QUALITY — Are all claims supported by appropriate citations?
3. TRANSITION LOGIC — Does each paragraph follow logically from the previous?
4. ACADEMIC REGISTER — Is the tone appropriate for a Master's thesis?
5. UNJUSTIFIED CLAIMS — Highlight any assertions that need a citation or evidence
6. REDUNDANCY — Identify any repeated information

For each: specific location (quote the sentence) + diagnosis + fix suggestion.
Do NOT rewrite paragraphs — diagnosis only.

FORMAT:
Structured list per dimension.
Priority fix: [The one change that would most improve this section]
```

---
---
id: PT-Claude-DRCA-Paper
title: "Prompt: Claude — DRCA Paper Deconstruction"
type: prompt-template
tags: [prompt, claude, drca, paper-processing, analysis]
tool: claude
methodology: drca
use_case: research
phase: F0-F1
version: 1.0
tested: true
effectiveness: high
created: 2026-03-01
---

# Prompt: Claude — DRCA Paper Deconstruction

> [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]] — DRCA section

---

## Full DRCA Prompt

```
ROLE:
You are a research analyst applying the DRCA method
(Deconstruct → Reconstruct → Critical → Advance) to academic papers.

CONTEXT:
I am processing papers for PUMA — a benchmark for local LLMs
in ICT project management. I need to extract insights efficiently while
maintaining academic rigour.

The paper I want to process:
Title: [PAPER TITLE]
Authors + Year: [AUTHORS (YEAR)]
Abstract: [PASTE ABSTRACT]

If I have more content available: [PASTE KEY SECTIONS]

OBJECTIVE:
Apply the four DRCA steps to produce a structured analysis suitable
for creating a Zettelkasten permanent note.

INSTRUCTIONS:
1. DECONSTRUCT: Break the paper into its atomic components:
   - Problem statement (1 sentence)
   - Research question (1 sentence)
   - Methodology (2–3 sentences)
   - Key evidence (3 bullet points)
   - Main claim (1 sentence)
   - Stated limitations (2–3 bullet points)

2. RECONSTRUCT: Restate the paper's contribution using these concepts
   from MY project: LLM agents, issue triage, story points, F1-macro, MAE,
   reproducibility, local models. (3–5 sentences in plain language)

3. CRITICAL: Identify:
   - 2 unstated assumptions the paper makes
   - 1 rival explanation for the main finding
   - Assessment of reproducibility (can I run this myself?)
   - Relevance to PUMA (High/Medium/Low + reason)

4. ADVANCE: Suggest:
   - 1–2 permanent note titles this paper could generate
   - 1 follow-up question worth investigating
   - 1 connection to papers I likely already know

FORMAT:
Use the four section headers (DECONSTRUCT / RECONSTRUCT / CRITICAL / ADVANCE).
Keep each section concise — this is a processing tool, not a summary.
⚠️ Flag any claim you are uncertain about rather than asserting it confidently.
```

---
---
id: PT-Claude-Red-Team
title: "Prompt: Claude — Red Team Analysis"
type: prompt-template
tags: [prompt, claude, red-team, rival-hypothesis, critical-thinking]
tool: claude
methodology: red-teaming
use_case: research
phase: F0-F5
version: 1.0
tested: true
effectiveness: high
created: 2026-03-01
---

# Prompt: Claude — Red Team Analysis

> [[30 - Permanent/33 Frameworks/PN-Red-Teaming]]

---

## Prompt — Rival Hypothesis Generator

```
ROLE:
You are a sceptical reviewer at ICSE 2027 who has seen too many overclaimed
LLM results. You are not trying to be constructive — you are trying to
find fatal flaws.

CONTEXT:
Here is my research claim and supporting evidence:

CLAIM: [YOUR CLAIM — e.g., "Few-shot prompting with Llama 3.2 8B achieves
F1-macro = 0.68 on issue triage, significantly better than a keyword baseline
(p = 0.02, r = 0.31)"]

EVIDENCE: [PASTE YOUR RESULTS TABLE OR METHODOLOGY]

OBJECTIVE:
Generate the 3 strongest arguments that would invalidate or seriously
weaken my claim.

INSTRUCTIONS:
For each argument:
1. State the rival interpretation clearly (one sentence)
2. Explain what evidence supports this rival view
3. Describe what additional analysis would distinguish my claim from yours
4. Rate the seriousness of this challenge (Fatal / Major / Minor)

Do not be diplomatic — I need the hardest critique possible.
This is for strengthening my thesis before submission.

FORMAT:
Numbered list 1–3. For Fatal challenges: explain exactly what would need to change.
End with: "The most important defensive analysis you should add is..."
```

---
---
id: PT-ChatGPT-SLR-Synthesis
title: "Prompt: ChatGPT — SLR Cross-Validation"
type: prompt-template
tags: [prompt, chatgpt, slr, synthesis, cross-validation]
tool: chatgpt
methodology: rcoif
use_case: research
phase: F0
version: 1.0
tested: true
effectiveness: medium
created: 2026-03-01
---

# Prompt: ChatGPT — SLR Cross-Validation

> **Use case:** Cross-validate summaries and gap analyses produced with Claude.
> Different models have different training data and biases — disagreements reveal uncertainty.

---

## Prompt

```
I am conducting a systematic literature review on LLMs for software project
management (issue triage and effort estimation). I have already reviewed
these papers using another AI tool:

[LIST THE PAPERS YOU HAVE — titles and years only]

TASKS:
1. Are there important papers in this area (2022–2026) that are NOT in my list?
   Give up to 5 suggestions with: Title, Authors, Year, Venue, why important.
   Only suggest papers you are confident exist.

2. Review my gap analysis:
   Gap 1: No open-source PM+LLM benchmark with local models
   Gap 2: No systematic comparison of prompting strategies for PM tasks
   Gap 3: No carbon measurement in PM+LLM research
   
   For each gap: is it real? Is there a paper I might have missed that addresses it?

3. What is the most significant claim in this area that is contested or unclear?

CONSTRAINTS:
- Only cite papers you are confident about — flag uncertainty
- Focus on 2022–2026 publications
- Prioritise empirical work over surveys

OUTPUT FORMAT:
Section 1: Missing papers (table: Title | Authors | Year | Why important)
Section 2: Gap analysis review (3 paragraphs)
Section 3: Contested claim (1 paragraph)
```

---
---
id: PT-DeepSeek-Reasoning
title: "Prompt: DeepSeek-R1 — Statistical & Technical Reasoning"
type: prompt-template
tags: [prompt, deepseek, reasoning, statistics, technical]
tool: deepseek
methodology: cot
use_case: research
phase: F0-F4
version: 1.0
tested: true
effectiveness: high
created: 2026-03-01
---

# Prompt: DeepSeek-R1 — Statistical & Technical Reasoning

> **Best for:** Complex statistical questions, methodology decisions, technical trade-offs.
> DeepSeek-R1's chain-of-thought reasoning outperforms Claude/GPT on technical analysis.

---

## Prompt — Statistical Test Selection

```
I am designing experiments for a benchmark of local LLMs on issue classification.

Setup:
- N = 200 issues (50 per class: Critical, High, Medium, Low)
- I will compare 8 LLM conditions against 1 heuristic baseline
- For each condition and issue, I have: predicted_label, actual_label
- Primary metric: F1-macro across 200 issues per condition

Statistical question:
I plan to use the Wilcoxon signed-rank test comparing per-instance F1 scores
between each LLM condition and the baseline.

Think step by step:
1. Is Wilcoxon appropriate here, or would a different test be better?
   Consider: paired vs unpaired, distribution assumptions, ordinal vs continuous
2. What is the exact null hypothesis I am testing?
3. How should I compute "per-instance F1"? (F1 is a global metric — explain how
   to get per-instance values for paired testing)
4. Is my sample size (200) sufficient for this test to have adequate power
   to detect a medium effect (r = 0.3) at α = 0.05?
5. What corrections should I apply for multiple comparisons (8 conditions)?

Be precise. Show the mathematical reasoning. Flag where there is genuine
uncertainty or where my approach has weaknesses.
```

---
---
id: PT-NotebookLM-Paper-Corpus
title: "Prompt: NotebookLM — Multi-Paper Knowledge Base"
type: prompt-template
tags: [prompt, notebooklm, paper-corpus, synthesis, rag]
tool: notebooklm
methodology: egi
use_case: research
phase: F0-F1
version: 1.0
tested: true
effectiveness: medium
created: 2026-03-01
---

# Prompt: NotebookLM — Multi-Paper Knowledge Base

> **Setup:** Upload 8–15 core papers as PDFs. Then use these query patterns.
> ⚠️ Always verify NotebookLM's answers against the source papers — it can hallucinate connections.

---

## Setup Checklist

1. Create new notebook: "PUMA Core Papers"
2. Upload PDFs (max 15 sources recommended):
   - Tawosi et al. (2024) CoGEE
   - Tawosi et al. (2022) TAWOS
   - Ortu et al. (2015) Jira SR
   - Angermeir et al. (2025) Reproducibility
   - Calikli & Alhamed (2025) Request Formats
   - Wei et al. (2022) CoT
   - Brown et al. (2020) GPT-3 Few-Shot
   - Hevner et al. (2004) DSR
   - Strubell et al. (2019) Energy NLP
   - *[Add more as SLR progresses]*

---

## Query Patterns

```
Query 1 — Cross-paper synthesis:
"What datasets are used across these papers for effort estimation?
For each dataset: name, size, and which papers use it."

Query 2 — Metric comparison:
"What evaluation metrics are reported across these papers?
Create a table: Paper | Metric | Best value | Model used"

Query 3 — Reproducibility check:
"Which of these papers make their code and data publicly available?
For each paper: what exactly is available and where?"

Query 4 — Gap identification:
"What limitations do these papers themselves acknowledge?
List the most frequently mentioned limitations across papers."

Query 5 — Prompting strategy survey:
"Which papers compare different prompting strategies (zero-shot, few-shot, CoT)?
For each: what strategies were compared and what was the conclusion?"
```

## Validation Protocol (⚠️ Critical)

After every NotebookLM response:
1. Open the cited source paper
2. Find the specific passage NotebookLM referenced
3. Verify the claim matches the actual paper content
4. If it doesn't match → discard the claim, log as hallucination in [[50 - Areas/51 Research/AI-Use-Log]]

*NotebookLM hallucination rate: approximately 5–15% for specific claims.*
