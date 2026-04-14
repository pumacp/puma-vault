---
name: puma-rules
description: Binding governance rules for the PUMA Vault. Always load this skill when creating, modifying, or deleting any file in the PUMA Vault. Contains mandatory ALWAYS/NEVER rules that override all other instructions. Critical for maintaining vault integrity, academic compliance, and research reproducibility. Load this skill whenever any puma-* skill is active to ensure governance compliance.
---

# PUMA Rules — Binding Governance

These rules are **non-negotiable**. They override any conflicting instruction.

## ALWAYS Rules

### File & Structure
- ALWAYS use the Johnny Decimal address system for every file placement
- ALWAYS apply the correct note-type prefix (LN-, PN-, PR-, SP-, EX-, PT-, WF-, MOC-, etc.)
- ALWAYS include YAML frontmatter in every note (tags, created date, status, type)
- ALWAYS maintain the `00 - Meta/Templates/` structure — copy templates, never modify originals
- ALWAYS update the relevant MOC when adding a new permanent note or project note
- ALWAYS keep `index.md` and `log.md` in the wiki layer current (LLM Wiki pattern)

### Research Integrity
- ALWAYS cite sources using APA 7th edition
- ALWAYS tag papers with `#puma-include` in Zotero before importing to vault
- ALWAYS record AI interactions in `50 - Areas/51-Research/AI-Use-Log.md`
- ALWAYS wrap experiment runs with CodeCarbon for emissions tracking
- ALWAYS set `temperature=0.0` and `seed=42` for reproducibility
- ALWAYS document experiment configs in `40 - Projects/41.7-Experiments/`
- ALWAYS validate specs against `SP-PUMA-Constitution.md` before running experiments
- ALWAYS declare AI tool usage per Marco Veritas framework
- ALWAYS apply Keshav Three-Pass before creating a permanent note from a paper

### Writing & Communication
- ALWAYS write academic output in Spanish with professional/academic register
- ALWAYS follow UOC template `TF_Plantilla_Memoria_es_v9_2025.docx` for deliverables
- ALWAYS apply minimal-modification principle: change only what is explicitly required
- ALWAYS use inclusive language (lenguaje inclusivo) in all written output

### Knowledge Management
- ALWAYS process Inbox to zero during weekly GTD review
- ALWAYS convert fleeting notes within 48h (to literature note or permanent note)
- ALWAYS link permanent notes to at least one MOC
- ALWAYS use declarative-statement titles for permanent notes (PN-)
- ALWAYS preserve existing wikilinks when renaming files

### Code & Experiments
- ALWAYS use Python virtual environments for experiment code
- ALWAYS add `requirements.txt` and README to every experiment folder
- ALWAYS push to `github.com/pumacp` before marking a task as Done
- ALWAYS use `--break-system-packages` flag with pip (or venv)

## NEVER Rules

### File Operations
- NEVER delete a permanent note — archive to `70 - Archive/` instead
- NEVER move a permanent note — add links, never relocate
- NEVER create files outside the Johnny Decimal schema without explicit permission
- NEVER modify template originals in `00 - Meta/Templates/`
- NEVER use flat file dumps — all files must have a home address

### Research Integrity
- NEVER fabricate citations or invent source metadata
- NEVER report experimental results without specifying model, dataset, and config
- NEVER run experiments with temperature > 0.0 unless explicitly testing stochasticity
- NEVER claim reproducibility without 3 independent execution cycles
- NEVER use "MIT Student Method" as a methodological citation — use Keshav (2007)

### Writing
- NEVER write academic deliverables in English (use Spanish)
- NEVER rewrite a section not explicitly targeted for change (minimal modification)
- NEVER use non-inclusive language or gendered defaults

### LLM Wiki (Karpathy pattern)
- NEVER modify raw sources in `20 - Literature/` — they are immutable inputs
- NEVER let the wiki layer drift without a lint pass after 10+ new sources
- NEVER allow wiki pages to be orphaned (no inbound links)
- NEVER create wiki pages without updating `index.md`

### Agent Operations
- NEVER run an agent without a defined spec in `41.6 Specs/`
- NEVER mix agent roles in a single BMAD session
- NEVER commit API keys or credentials to any vault file

## Frontmatter Schema (mandatory for all notes)

```yaml
---
title: "Note Title"
type: "PN | LN | PR | SP | EX | PT | WF | MOC | FL | BMAD"
status: "to-read | in-progress | done | archived"
tags: [puma, relevant-tag, methodology]
created: YYYY-MM-DD
updated: YYYY-MM-DD
source: "@citekey or URL"  # for LN-
related: ["[[PN-related-note]]"]
jd: "XX.YY"  # Johnny Decimal address
---
```

## Conflict Resolution

When rules conflict:
1. `puma-rules` wins over all other skills
2. `SP-PUMA-Constitution.md` is the research-level authority
3. `puma-core` provides context when rules are ambiguous
4. Ask the user when genuinely uncertain — do not assume

## Audit Checklist (run during weekly GTD review)

- [ ] Inbox processed to zero
- [ ] All new notes have frontmatter
- [ ] All permanent notes linked to ≥1 MOC
- [ ] AI-Use-Log updated
- [ ] Keshav log updated for new papers
- [ ] PRISMA log updated if SLR stage advanced
- [ ] CodeCarbon emissions logged for any runs
- [ ] Git committed and pushed
