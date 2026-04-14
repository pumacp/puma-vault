---
name: puma-templates
description: Template routing and note creation protocol for PUMA Vault. ALWAYS load this skill before creating any new note, card, or file in the vault. Maps every note type (FL-, LN-, PN-, ST-, EX-, SP-, PT-, WF-, CL-, MOC-, BMAD-, VID-, PER-, SRC-, RES-, BIB-, PR-) to its canonical template in 00 - Meta/Templates/. Enforces correct frontmatter schema, mandatory fields, naming convention, and Johnny Decimal placement for each note type. Also governs QuickAdd macro selection and Templater trigger behaviour. Use this skill whenever asked to "create a note", "add a paper", "log an experiment", "write a prompt", "create a spec", "start a sprint", "add a task", or any action that produces a new vault file.
---

# PUMA Templates — Note Creation Protocol

## Core Rule

**Every new vault file must be created from its canonical template.**  
Templates live at: `00 - Meta/Templates/`  
GitHub source: `https://github.com/pumacp/puma-vault/tree/v4/content/00%20-%20Meta/Templates`

Never create a note from scratch. Always copy the right template first, then fill it.

---

## Template Registry

Complete mapping of note type → template → vault location → QuickAdd macro.

| Note Type | Prefix | Template File | Vault Destination | Macro |
|-----------|--------|---------------|-------------------|-------|
| Fleeting Note | `FL-` | `Template-Fleeting-Note.md` | `10 - Inbox/Fleeting-Notes/` | `Alt+F` |
| Literature Note (Paper) | `LN-` | `Template-Literature-Note-Paper.md` | `20 - Literature/20.1-Papers/[Topic]/` | `Alt+L` |
| Book Note | `LN-` | `Template-Book-Note.md` | `20 - Literature/20.2-Books/` | — |
| Video / Tool / Repo Note | `VID-` | `Template-Video-Tool-Repo-Notes.md` | `20 - Literature/20.4-Videos-Podcasts/YouTube/[Cat]/` | — |
| Permanent Note | `PN-` | `Template-Permanent-Note.md` | `30 - Permanent/[31\|32\|33]-*/` | `Alt+P` |
| Structure Note | `ST-` | `Template-Structure-Note.md` | `30 - Permanent/30-Zettelkasten-Hub/` | — |
| Person Note | `PER-` | `Template-Person-Note.md` | `30 - Permanent/37-Persons/` | — |
| Source Note | `SRC-` | `Template-Source-Note.md` | `30 - Permanent/36-Sources/` | — |
| Results Note | `RES-` | `Template-Permanent-Note.md` | `30 - Permanent/34-Results/` | — |
| Project Note | `PR-` | `Template-Permanent-Note.md` | `40 - Projects/PUMA/[41.X]-*/` | — |
| Spec Note | `SP-` | `Template-Permanent-Note.md` | `40 - Projects/PUMA/41.6-Specs/` | — |
| Experiment Note | `EX-` | `Template-Experiment-Note.md` | `40 - Projects/PUMA/41.7-Experiments/` | `Alt+E` |
| BMAD Agent Doc | `BMAD-` | `Template-Permanent-Note.md` | `40 - Projects/PUMA/41.9-BMAD-Agents/` | — |
| Prompt Template | `PT-` | `Template-Prompt-Note.md` | `60 - Resources/61-Prompts/[subfolder]/` | — |
| Workflow Note | `WF-` | `Template-Permanent-Note.md` | `60 - Resources/62-Workflows/` | — |
| Checklist | `CL-` | `Template-Permanent-Note.md` | `60 - Resources/63-Checklists/` | — |
| Bibliography | `BIB-` | `Template-Permanent-Note.md` | `60 - Resources/65-Bibliographies/` | — |
| MOC | `MOC-` | `Template-MOC.md` (or `MOC-Template.md`) | `80 - MOC/[81\|82\|83]-*/` | — |
| Idea Note | `IDEA-` | `Idea-Template.md` | `10 - Inbox/Fleeting-Notes/` | — |
| Log Entry | `LOG-` | `Log-Template.md` | `50 - Areas/51-Research/` | — |
| Daily Review | `GT-` | `Template-Daily-Review.md` | `90 - GTD/95-Reviews/` | auto (Calendar) |
| Weekly Review | `GT-` | `Template-Weekly-Review.md` | `90 - GTD/95-Reviews/` | auto (Calendar) |
| Sprint Board | `Sprint-` | `Template-Sprint-Board.md` | `40 - Projects/PUMA/41.8-Sprint-Boards/` | — |
| Task Note | — | `Task-Template.md` | `90 - GTD/91-Tasks/` | `Ctrl+Shift+T` |
| Private Note | — | `Private-Note-Template.md` | `70 - Archive/` | — |

---

## Template Schemas (Canonical Frontmatter)

### FL- · Fleeting Note (`Template-Fleeting-Note.md`)

```yaml
---
title: "FL - YYYY-MM-DD - [topic]"
type: FL
status: unprocessed
tags: [puma, fleeting-note]
created: YYYY-MM-DD
jd: "10.1"
---

## Quick Capture
[Raw idea, observation, or reference — no editing required]

## Source / Context
[Where did this come from? URL, conversation, reading?]

## Processing Action
- [ ] Convert to → [LN- | PN- | task | discard]
- Deadline: process within 48h
```

**Naming**: `FL-YYYY-MM-DD-brief-topic.md`  
**Rule**: Never leave FL- notes unprocessed for more than 48 hours.

---

### LN- · Literature Note — Paper (`Template-Literature-Note-Paper.md`)

```yaml
---
title: "LN - [Author] [Year] - [Short Title]"
type: LN
author: "Last, First"
year: YYYY
venue: "Journal/Conference"
doi: "10.XXXX/XXXXX"
url: ""
zotero_key: "@citekey"
abstract: ""
status: to-read
keshav_pass: "0"
puma_relevance: "high | medium | low"
tags: [puma, literature-note, topic-tag]
created: YYYY-MM-DD
updated: YYYY-MM-DD
jd: "20.1"
---

# [Full Paper Title]

## Bibliographic Reference
**Authors**: [Full author list]
**Year**: YYYY | **Venue**: [venue] | **DOI**: [doi]

---

## Keshav Pass 1 — Bird's Eye View
**Summary (1 sentence)**: 
**Category**: measurement | analysis | system | position | survey
**Context**: [Papers this builds on]
**Contributions**: 
**Decision**: read-further | skim | skip
**Reason**: 

---

## Keshav Pass 2 — Careful Reading
### Key Contributions
### Methodology
### Key Results
### Limitations
### PUMA Connections
**Related notes**: 

---

## Keshav Pass 3 — Deep Understanding *(top papers only)*
### Critical Analysis
### Innovations vs. Standard
### Weaknesses
### Permanent Note Candidates
- PN-[Concept]: [why]

---

## Integration Actions
- [ ] Update: [[PN-existing]] with new evidence
- [ ] Create: [[PN-new-concept]]
- [ ] Update ZK-Hub-PUMA.md
- [ ] Append to AI-Use-Log.md
```

**Naming**: `LN-Author-Year-ShortTitle.md` or `@citekey.md` (Zotero import)  
**Placement**: `20 - Literature/20.1-Papers/[Topic-Subfolder]/`

---

### PN- · Permanent Note (`Template-Permanent-Note.md`)

```yaml
---
title: "PN - [Declarative claim as title]"
type: PN
status: draft
tags: [puma, permanent-note, concept-tag]
created: YYYY-MM-DD
updated: YYYY-MM-DD
jd: "30.31"
related:
  - "[[LN-source]]"
  - "[[PN-connected]]"
contradicts: []
moc: "[[MOC-topic]]"
evergreen: false
---

# [Declarative Title — a testable claim, not a topic label]

[1–3 paragraphs stating the idea clearly. No hedging. Cite evidence inline.]

## Evidence
- [[LN-Author-Year]]: [specific supporting evidence]
- [[LN-Author-Year]]: [corroborating evidence]

## Connections
- Supports: [[PN-note]] because [reason]
- Extends: [[PN-note]] by [mechanism]
- Challenges: [[PN-note]] because [reason]

## PUMA Relevance
[How this note connects to H₁ or H₂. What it implies for experiments.]

## Open Questions
- [Question this note raises]
```

**Naming**: `PN-DeclarativeTitle-In-Kebab-Case.md`  
**Rule**: Title MUST be a declarative statement. Topic labels are forbidden.  
**Placement**: `30 - Permanent/31-Concepts/` | `32-Methods/` | `33-Frameworks/` based on content.

---

### ST- · Structure Note (`Template-Structure-Note.md`)

```yaml
---
title: "ST - [Theme Cluster Name]"
type: ST
status: active
tags: [puma, structure-note, theme-tag]
created: YYYY-MM-DD
updated: YYYY-MM-DD
jd: "30.30"
---

# [Theme Name] — Structure Note

[2–3 sentence overview of this cluster and its research significance]

## Core Claims
- [[PN-central-1]]: [one-line summary]
- [[PN-central-2]]: [one-line summary]
- [[PN-central-3]]: [one-line summary]

## Peripheral Notes
- [[PN-related]]: [one-line summary]

## Key Sources
- [[LN-Author-Year]]: [relevance]

## Contradictions in This Cluster
- [[PN-claim-A]] vs. [[PN-claim-B]]: [nature of disagreement]

## Research Gaps
- [Gap 1 this cluster reveals]

## Related MOCs
- [[MOC-topic]]
```

---

### EX- · Experiment Note (`Template-Experiment-Note.md`)

```yaml
---
title: "EX - [NNN] - [Short Description]"
type: EX
experiment_id: "EX-NNN"
hypothesis: "H1 | H2 | exploratory"
status: "planned | running | completed | failed"
spec: "[[SP-ExperimentSpec-vN]]"
prompt_ref: "[[PT-name-vN]]"
model: "qwen2.5:3b"
temperature: 0.0
seed: 42
dataset: "TAWOS | jira-sr"
strategy: "zero-shot | few-shot-1 | few-shot-3 | few-shot-5 | cot | few-shot-3-cot"
k_shot: 0
created: YYYY-MM-DD
completed: ""
tags: [puma, experiment, hypothesis-tag]
jd: "40.41"
---

# EX-NNN — [Short Description]

## Objective
[What does this experiment test? Which hypothesis?]

## Spec Reference
[[SP-ExperimentSpec-vN]] — status must be `locked` before run

## Dataset
- Dataset: [TAWOS | Jira SR]
- Split: [train/test ratio]
- N samples: 
- Sampling: stratified / random / seed=42

## Prompt
[[PT-name-vN]] — prompt hash: `[sha256[:12]]`

## Execution Log
| Run | Date | Duration | Status | Notes |
|-----|------|----------|--------|-------|
| Run-1 | | | | |
| Run-2 | | | | reproducibility check |
| Run-3 | | | | reproducibility check |

## Results

### Primary Metrics
| Metric | Agent | Baseline | Δ |
|--------|-------|---------|---|
| F1-macro | | | |
| MAE (SP) | | | |

### Statistical Test
| Test | Statistic | p-value | Effect size r | Decision |
|------|-----------|---------|---------------|---------|
| Wilcoxon | | | | |

### Reproducibility
| Run | F1 / MAE | Match |
|-----|---------|-------|
| Run-1 | | — |
| Run-2 | | ✅ |
| Run-3 | | ✅ |

## Carbon Footprint
- Emissions: X.XXX gCO₂eq
- Duration: Xs
- Log: [[Carbon-Tracking-Log]]

## Conclusions
[What did this experiment find? Supports / rejects hypothesis?]

## Next Steps
- [ ] Update [[RES-Results-Placeholders]]
- [ ] Update Dashboard-Experiment-Status
- [ ] Commit: `git commit -m "EX-NNN: [brief]"`
```

**Naming**: `EX-NNN-Description.md` (NNN = zero-padded integer, e.g. EX-001)  
**Rule**: Spec MUST be `locked` before any run. Never modify after first run.

---

### PT- · Prompt Template (`Template-Prompt-Note.md`)

```yaml
---
title: "PT - [Task] - [Strategy] - v[N]"
type: PT
framework: "RCOIF | CoT | FewShot | ZeroShot | EGI | AMI | DRCA | IIPR | CDD"
task: "triage | estimation | synthesis | ideation | review | agent"
model: "qwen2.5:3b | claude-sonnet | general"
strategy: "zero-shot | few-shot-3 | cot | few-shot-3-cot"
k_shot: 0
status: "draft | validated | locked"
version: "1.0"
token_estimate: 0
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [puma, prompt-template, framework-tag]
jd: "60.61"
---

# PT — [Task] · [Strategy] · v[N]

## ROLE
[Specific expert role with domain and experience framing]

## CONTEXT
[Background the model needs. Dataset, research question, constraints.
Keep within token budget.]

## OBJECTIVE
[Single sentence. Action verb. Measurable outcome.]

## INSTRUCTIONS
1. [Atomic step — imperative, unambiguous]
2. [...]
3. [Edge case: If X, then Y. If not X, then Z.]

## FEW-SHOT EXAMPLES *(if applicable)*

**Example 1:**
Input: [...]
[Reasoning: ... *(if CoT)*]
Output: [label or value]

**Example 2:**
Input: [...]
Output: [...]

**Example 3:**
Input: [...]
Output: [...]

## FORMAT
[Exact output schema. List all valid values if classification.]
`Output: [value] — must be exactly one of {A | B | C}`

---

## Validation Checklist
- [ ] ROLE: specific and domain-grounded
- [ ] CONTEXT: complete, no redundancy
- [ ] OBJECTIVE: single sentence, measurable
- [ ] INSTRUCTIONS: each step atomic
- [ ] FORMAT: all valid values listed
- [ ] Token budget: within CDD limit for target model
- [ ] Anchor: valid labels explicitly stated
- [ ] Consistency: 100% at temp=0.0 over 3 runs

## Token Budget
| Component | Est. Tokens |
|-----------|-------------|
| ROLE + CONTEXT | |
| INSTRUCTIONS | |
| Examples (k=N) | |
| Query input | |
| Output space | |
| **Total** | |

## Version History
| Version | Date | Change |
|---------|------|--------|
| 1.0 | YYYY-MM-DD | Initial |
```

**Naming**: `PT-[Task]-[Strategy]-v[N].md`  
**Rule**: Once `locked`, file is immutable. All changes create a new version (`v[N+1]`).

---

### MOC- · Map of Content (`Template-MOC.md` / `MOC-Template.md`)

```yaml
---
title: "MOC - [Topic Name]"
type: MOC
status: active
tags: [puma, moc, topic-tag]
created: YYYY-MM-DD
updated: YYYY-MM-DD
jd: "80.81"
---

# [Topic Name] — Map of Content

> [One-sentence scope statement]

## Overview
[2–3 paragraphs: research territory, key tensions, PUMA relevance]

## Core Concepts
- [[PN-central-1]] — [one-line]
- [[PN-central-2]] — [one-line]

## Methods & Frameworks
- [[PN-method-1]] — [one-line]

## Key Papers
- [[LN-Author-Year]] — [finding]

## Experimental Results
- [[RES-note]] — [summary]

## Open Questions / Research Gaps
- [Gap 1]

## Related MOCs
- [[MOC-related]]

## Recently Updated *(Dataview)*
```dataview
TABLE file.mtime as "Updated"
FROM "30 - Permanent"
WHERE contains(tags, "REPLACE-TAG")
SORT file.mtime DESC
LIMIT 8
```
```

---

### VID- · Video / Tool / Repo Note (`Template-Video-Tool-Repo-Notes.md`)

```yaml
---
title: "VID - [CAT]-[NNN] · [Short Title]"
type: VID
category: "AGT | CE | DEV | LOC | MCP | PM | RAG | RES | SDD | OBS | MISC"
url: "https://youtube.com/..."
author: "[Channel or Author]"
duration: "HH:MM"
status: "to-watch | watched | notes-done"
puma_relevance: "high | medium | low"
tags: [puma, video, category-tag]
created: YYYY-MM-DD
jd: "20.4"
---

# VID-[CAT]-[NNN] · [Full Title]

**URL**: [link]  
**Channel**: [name] | **Duration**: HH:MM | **Watched**: YYYY-MM-DD

## Summary
[3–5 sentence summary of key content]

## Key Takeaways
- [Takeaway 1]
- [Takeaway 2]
- [Takeaway 3]

## PUMA Connections
- Relevant to: [H₁ | H₂ | methodology | tooling | ...]
- Related notes: [[PN-concept]], [[LN-paper]]

## Timestamp Notes *(optional)*
| Time | Note |
|------|------|
| MM:SS | [key point] |
```

**Naming**: `VID-[CAT]-[NNN]-Short-Title.md`  
**Categories**: AGT (Agents), CE (Context Engineering), DEV (Dev Tools), LOC (Local LLM), MCP, PM, RAG, RES (Research), SDD, OBS (Observability), MISC

---

### PER- · Person Note (`Template-Person-Note.md`)

```yaml
---
title: "PER - [Last, First]"
type: PER
full_name: "[First Last]"
affiliation: "[Institution]"
url: "https://..."
semantic_scholar: "https://api.semanticscholar.org/graph/v1/author/..."
tags: [puma, person, research-area-tag]
created: YYYY-MM-DD
jd: "30.37"
---

# [First Last]

**Affiliation**: [Institution]  
**Profile**: [URL]  
**Research area**: [main domain]

## Key Contributions to PUMA Research
- [[LN-Author-Year-Title]]: [relevance]

## Related Permanent Notes
- [[PN-concept-from-their-work]]
```

---

### SRC- · Source Note (`Template-Source-Note.md`)

```yaml
---
title: "SRC - [Author] [Year] - [Title]"
type: SRC
source_type: "paper | book | report | blog | talk"
citation: "[APA 7th full citation]"
url: ""
tags: [puma, source, topic-tag]
created: YYYY-MM-DD
jd: "30.36"
---

# [Full Source Title]

**Citation**: [APA 7th]  
**Access**: [URL or local file]

## Why This Source Matters for PUMA
[Explain the source's importance to the project]

## Key Passages / Data Points
- [Quote or data point]: [significance]

## Links to Vault
- Literature note: [[LN-Author-Year]]
- Permanent notes derived: [[PN-concept]]
```

---

### Sprint- · Sprint Board (`Template-Sprint-Board.md`)

```yaml
---
title: "Sprint-NN — [Sprint Name]"
type: sprint-board
sprint: NN
goal: "[One-sentence sprint goal]"
dates: "YYYY-MM-DD → YYYY-MM-DD"
status: "planned | active | completed"
pec: "PEC1 | PEC2 | PEC3 | Final"
tags: [puma, sprint, agile]
created: YYYY-MM-DD
jd: "40.41"
---
kanban-plugin: board
---

## 📥 Backlog
- [ ] TASK-NNN: [description] | Agent: [role] | Priority: high

## 📋 To Do
(pulled from Backlog at sprint start)

## 🔄 In Progress
- [ ] TASK-NNN: [description] | Agent: [role] | Started: YYYY-MM-DD

## 🔍 Review
- [ ] TASK-NNN: [description] | Output: [[link]] | Reviewer: —

## ✅ Done
- [x] TASK-NNN: [description] | Completed: YYYY-MM-DD | Commit: `abc123f`
```

---

## Template Selection Decision Tree

```
Creating a new vault file?
│
├── Is it a raw captured idea or observation?
│   └── → FL-  Template-Fleeting-Note.md  → 10 - Inbox/Fleeting-Notes/
│
├── Is it a new academic paper / article?
│   ├── Paper or article → LN-  Template-Literature-Note-Paper.md
│   ├── Book            → LN-  Template-Book-Note.md
│   └── Video / repo    → VID- Template-Video-Tool-Repo-Notes.md
│
├── Is it a synthesised insight (single idea)?
│   ├── Atomic concept / method / framework → PN-  Template-Permanent-Note.md
│   ├── Cluster of related PN- notes        → ST-  Template-Structure-Note.md
│   ├── Researcher profile                  → PER- Template-Person-Note.md
│   └── Key source summary                  → SRC- Template-Source-Note.md
│
├── Is it active PUMA project work?
│   ├── Experiment run        → EX-   Template-Experiment-Note.md
│   ├── Prompt template       → PT-   Template-Prompt-Note.md
│   ├── Spec or architecture  → SP-   Template-Permanent-Note.md
│   ├── BMAD agent document   → BMAD- Template-Permanent-Note.md
│   └── Sprint board          → Sprint-NN Template-Sprint-Board.md
│
├── Is it a reusable resource?
│   ├── Workflow  → WF-  Template-Permanent-Note.md
│   ├── Checklist → CL-  Template-Permanent-Note.md
│   └── Bib entry → BIB- Template-Permanent-Note.md
│
├── Is it a navigation / synthesis layer?
│   └── MOC → MOC- Template-MOC.md
│
├── Is it a GTD review?
│   ├── Daily  → GT- Template-Daily-Review.md
│   └── Weekly → GT- Template-Weekly-Review.md
│
└── Is it a task?
    └── — Task-Template.md → 90 - GTD/91-Tasks/
```

---

## Note Creation Protocol (Step-by-Step)

When Claude Code creates any new vault file:

### Step 1 — Identify note type
Use the Decision Tree above. Never create a file without a determined type.

### Step 2 — Resolve template path
```
Template path: 00 - Meta/Templates/[Template-FileName].md
GitHub ref:    https://github.com/pumacp/puma-vault/tree/v4/content/00%20-%20Meta/Templates
```

### Step 3 — Determine destination
Use the Template Registry table and the JD address. When in doubt, start in `10 - Inbox/`.

### Step 4 — Generate filename
Follow naming convention exactly:
```
FL-  → FL-YYYY-MM-DD-brief-topic.md
LN-  → LN-Author-Year-ShortTitle.md  OR  @citekey.md
PN-  → PN-Declarative-Claim-In-Kebab.md
ST-  → ST-Theme-Name.md
EX-  → EX-NNN-Description.md
PT-  → PT-Task-Strategy-vN.md
VID- → VID-CAT-NNN-Short-Title.md
MOC- → MOC-Topic-Name.md
SP-  → SP-ComponentName-vN.md
```

### Step 5 — Fill mandatory frontmatter
All notes require at minimum: `title`, `type`, `status`, `tags`, `created`, `jd`.  
Additional fields are type-specific (see schemas above).

### Step 6 — Apply type-specific rules
| Type | Critical Rule |
|------|--------------|
| PN- | Title MUST be a declarative statement (not a topic label) |
| EX- | Spec SP- MUST be `locked` before first run |
| PT- | Once `locked`, file is immutable — version bump for any change |
| LN- | Must include Keshav Pass-1 before saving |
| FL- | Must have processing action checkbox; process within 48h |

### Step 7 — Post-creation actions
After creating any note:
1. **PN-**: Update `ZK-Hub-PUMA.md` + link from nearest MOC
2. **LN-**: Update `20 - Literature/MOC-Library.md` + Keshav-Reading-Log
3. **EX-**: Update `Dashboard-Experiment-Status.md` + Carbon-Tracking-Log
4. **PT-** (locked): Record prompt hash in corresponding EX-
5. **All**: Append to `AI-Use-Log.md` with `## [date] create | [type]: [name]`
6. **All**: `git add . && git commit -m "create: [TYPE] [filename]"`

---

## Templater Integration

Claude Code triggers Templater-compatible frontmatter automatically.  
All date fields use ISO format: `YYYY-MM-DD`.  
All `jd` fields use two-digit dot notation: `"20.1"`, `"30.31"`, `"40.41"`.

When using QuickAdd macros:
```
Alt+F → Template-Fleeting-Note.md   → 10 - Inbox/Fleeting-Notes/
Alt+L → Template-Literature-Note-Paper.md → 20 - Literature/20.1-Papers/
Alt+P → Template-Permanent-Note.md → 30 - Permanent/31-Concepts/
Alt+E → Template-Experiment-Note.md → 40 - Projects/PUMA/41.7-Experiments/
```

For other types: copy from `00 - Meta/Templates/` manually or via Templater `Alt+T`.

---

## Anti-Patterns

- ❌ Creating a file without a template
- ❌ Using a generic frontmatter instead of the type-specific schema
- ❌ Naming a PN- note with a topic label (`PN-Few-Shot-Prompting.md`)
- ❌ Running an EX- experiment when the SP- spec is not `locked`
- ❌ Placing a file in the wrong JD folder
- ❌ Forgetting to update ZK-Hub after creating a PN-
- ❌ Skipping the AI-Use-Log entry
- ❌ Skipping the git commit after note creation
