---
name: puma-anti-patterns
description: Catalogue of mistakes to avoid in PUMA Vault — file management anti-patterns, research integrity failures, prompting mistakes, Zettelkasten anti-patterns, and LLM Wiki pitfalls. Load when reviewing work, performing lint passes, or debugging vault issues. Complements puma-rules by providing the "why" behind each prohibition and concrete examples of failures. Essential for onboarding and quality control.
---

# PUMA Anti-Patterns — What NOT to Do

## Category 1: File & Structure Anti-Patterns

### ❌ Flat File Dumps
**What**: Creating all files in root or a single folder without JD addressing.
**Why bad**: Files become unfindable; breaks Dataview queries; defeats Johnny Decimal.
**Fix**: Every file gets a JD address before creation. When in doubt, start with `10-Inbox/`.

### ❌ Topic-Label Permanent Note Titles
**What**: `PN-Few-Shot-Prompting.md`, `PN-LLM-Agents.md`, `PN-Results.md`
**Why bad**: Topics are not ideas. Permanent notes must encode a declarative claim.
**Fix**: `PN-FewShot3-Achieves-MAE-1.89-On-JiraSR.md` (a testable claim).

### ❌ Moving Permanent Notes
**What**: Renaming or relocating a PN- file to "organize better".
**Why bad**: Breaks all wikilinks; corrupts Zettelkasten graph.
**Fix**: Add a redirect link or alias. Never move. Archive obsolete notes instead.

### ❌ Modifying Template Originals
**What**: Editing files in `00-Meta/Templates/` directly.
**Why bad**: Templates are shared starting points. Edits affect all future copies.
**Fix**: Copy the template, then modify the copy.

### ❌ Orphan Permanent Notes
**What**: PN- notes with no inbound links and not referenced in any MOC.
**Why bad**: Unreachable in graph; knowledge is lost even though it exists.
**Fix**: Weekly lint → add link from nearest ST- or MOC.

### ❌ Duplicate Content
**What**: Same information written in two separate notes.
**Why bad**: Notes diverge; creates contradiction; wastes tokens in LLM context.
**Fix**: Write once, link everywhere. Use `[[wikilink]]` not copy-paste.

---

## Category 2: Research Integrity Anti-Patterns

### ❌ Citing "MIT Student Method" as Academic Reference
**What**: Using "MIT AI Lab Working Paper WP316 — How to Do Research" as a citable methodology.
**Why bad**: It is a working paper, not a peer-reviewed method. Not a recognized methodology.
**Fix**: Use **Keshav's Three-Pass Method (2007)** — properly published, peer-recognized.

### ❌ Reporting Results Without Full Config
**What**: "F1 = 0.58" without specifying model, dataset, temp, seed, prompt strategy.
**Why bad**: Results are irreproducible. Violates research integrity.
**Fix**: Always report: model + temp + seed + dataset + strategy + N samples.

### ❌ Running Experiments Without Locked Spec
**What**: Improvising experiment parameters without a `locked` SP- file.
**Why bad**: Results cannot be compared; no way to reproduce.
**Fix**: Spec must be `locked` before ANY experiment run. No exceptions.

### ❌ Claiming Reproducibility Without 3 Cycles
**What**: Running experiment once, calling it "reproducible".
**Why bad**: Single run doesn't demonstrate reproducibility.
**Fix**: 3 independent execution cycles, 100% match = reproducibility verified.

### ❌ Inventing Citations
**What**: Fabricating author names, years, or findings for citations.
**Why bad**: Academic fraud. Destroys research credibility.
**Fix**: If unsure, say "source needed" and find the real source.

### ❌ AI Synthesis Without Primary Source Check
**What**: Trusting AI-generated literature review without checking actual papers.
**Why bad**: AI hallucinates citations and misattributes findings.
**Fix**: All AI-assisted synthesis must be verified against primary sources.

---

## Category 3: Prompting Anti-Patterns

### ❌ Missing Output Anchor (Label Hallucination)
**What**: Not listing valid output values in the prompt → model invents labels.
**Example**: Asking for issue type without specifying `Bug | Feature | Task | ...`
**Fix**: Always include explicit label set in FORMAT section.

### ❌ Combining ROLE + OBJECTIVE in One Sentence
**What**: "You are an expert who should classify this issue."
**Why bad**: Conflates identity with task; model anchors less strongly to role.
**Fix**: Separate ROLE declaration from OBJECTIVE declaration (RCOIF).

### ❌ Instructions After FORMAT
**What**: Placing task instructions after the format specification.
**Why bad**: Model reads format first, then tries to retrofit instructions.
**Fix**: INSTRUCTIONS before FORMAT. Always.

### ❌ Using Temperature > 0 in Benchmark Experiments
**What**: Running comparative experiments with temperature=0.3 or default.
**Why bad**: Non-deterministic; violates reproducibility; results vary per run.
**Fix**: `temperature=0.0, seed=42` for all benchmark runs.

### ❌ Context Overflow Without Truncation Strategy
**What**: Building prompts that exceed model context window.
**Why bad**: Model silently truncates; results degrade unpredictably.
**Fix**: Apply CDD budget (see puma-cdd). Never exceed 2500 tokens for qwen2.5:3b.

### ❌ k-Shot Examples Not Stratified
**What**: Using k=3 examples all from the same class.
**Why bad**: Model learns class bias, not the classification task.
**Fix**: One example per class (or stratified sampling for k > n_classes).

---

## Category 4: Zettelkasten / LLM Wiki Anti-Patterns

### ❌ Literature Notes That Are Just Abstracts
**What**: Copying the paper abstract into the LN- file.
**Why bad**: No added value; model just re-retrieves the abstract.
**Fix**: LN- must include your analysis, Keshav pass summary, and PUMA relevance.

### ❌ Wiki Drift (Karpathy Warning)
**What**: Letting permanent notes become stale as new evidence accumulates.
**Why bad**: Old claims persist; wiki becomes misleading over time.
**Fix**: Weekly lint pass; `[!update]` callouts for superseded claims.

### ❌ Skipping ZK-Hub Update After Ingest
**What**: Adding new PN- notes without updating `ZK-Hub-PUMA.md`.
**Why bad**: New notes become invisible to Claude during future sessions.
**Fix**: ZK-Hub update is part of the mandatory ingest protocol.

### ❌ AI-Generated Notes Without Human Review
**What**: Letting Claude write permanent notes without human validation.
**Why bad**: AI can misinterpret, hallucinate connections, or drift from paper.
**Fix**: Human reviews all PN- notes before marking `status: stable`.

### ❌ Notes Longer Than 500 Words
**What**: Writing essay-length permanent notes.
**Why bad**: Not atomic; violates one-idea-per-note; overloads context.
**Fix**: Break into multiple atomic notes. Link them.

---

## Category 5: Agent & BMAD Anti-Patterns

### ❌ Mixing Agent Roles in One Session
**What**: Acting as both Research-Analyst AND Academic-Writer in the same Claude Code session.
**Why bad**: Role confusion; context overload; quality degrades.
**Fix**: One role per session. Handoff explicitly to next role.

### ❌ Implicit Agent State
**What**: Assuming the agent "remembers" context from a previous session.
**Why bad**: Claude has no persistent memory. Each session starts fresh.
**Fix**: Load state from files (ZK-Hub, sprint board, AI-Use-Log) at session start.

### ❌ Hardcoded Configs in Code
**What**: Writing `model = "qwen2.5:3b"` directly in experiment scripts.
**Why bad**: Config changes require code edits; breaks traceability.
**Fix**: All configs in SP-/EX- spec files. Code reads from config files.

### ❌ Skipping the Handoff Record
**What**: Switching agent roles without writing a Handoff Record.
**Why bad**: Next agent loses context; work is duplicated or lost.
**Fix**: Always write a Handoff Record (see puma-orchestrator template).

---

## Lint Pass Checklist

Run these checks weekly (GTD Weekly Review):

```bash
# In vault root — check for orphan notes (no inbound links)
# Use Obsidian: Settings → Core Plugins → Graph view → filter orphans

# Check ZK-Hub completeness
# Count PN- files vs entries in ZK-Hub-PUMA.md

# Verify all EX- notes have carbon log entries
# Check Carbon-Tracking-Log.md

# Verify all locked specs have corresponding EX- notes
# Check 41.6-Specs/ against 41.7-Experiments/

# Verify AI-Use-Log has entries for current sprint
# grep "^## \[2026" AI-Use-Log.md | tail -10
```
