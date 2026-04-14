---
name: puma-research
description: Master research skill for the PUMA pipeline — covers the full lifecycle from scientific ideation through SLR execution, DSR artifact design, hypothesis testing, and research writing. Use for any research task: conducting literature searches, applying PRISMA protocol, designing experiments, analyzing results, or writing academic chapters. Integrates LLM-Based Literature Review, Semantic Note-Taking, AI-Driven Concept Mapping, and Iterative Refinement Loop. Load this skill whenever working on PUMA's academic research output or PEC deliverables.
---

# PUMA Research — Master Pipeline

## Research Architecture

PUMA uses a layered research methodology stack:

```
Primary Methodology:  DSR (Design Science Research) — Hevner et al.
Review Protocol:      SLR + PRISMA 2020
Reading Method:       Keshav Three-Pass
Literature AI:        LLM-Based Literature Review
Hypothesis Framework: EBSE (Evidence-Based Software Engineering)
Statistical Testing:  Wilcoxon signed-rank (non-parametric)
Ethics Framework:     Marco Veritas
Sustainability:       CodeCarbon (Strubell methodology)
```

## 9-Phase Research Pipeline

### Phase 1: Scientific Ideation
**Tools**: NotebookLM (PUMA notebook 1), Claude, Perplexity
**Output**: Research question candidates, hypothesis drafts
**Prompt**: Load `PT-P1S1-*.md` from `60-Resources/61-Prompts/Phase1-Research/`
**Method**: EGI (Exploración Guiada Interactiva)

### Phase 2: Literature Discovery  
**Tools**: Semantic Scholar, ResearchRabbit, Consensus, arXiv
**Output**: Seed paper set, citation graph
**Method**: LLM-Based Literature Review + ResearchRabbit snowballing

### Phase 3: Systematic Review (SLR/PRISMA)
**Tools**: Zotero, NotebookLM, Obsidian
**Output**: PRISMA flow diagram, inclusion/exclusion decisions
**Log**: `50-Areas/51-Research/SLR-PRISMA/PRISMA-Log.md`
**Protocol**: See `puma-literature-review` skill

### Phase 4: Theoretical Framework
**Tools**: NotebookLM, Claude
**Output**: Framework permanent notes (`33-Frameworks/PN-*.md`)
**Method**: Zettelkasten + AI-Driven Concept Mapping

### Phase 5: Hypothesis Generation
**Hypotheses**:
- H₁: LLM agent (few-shot) > 75% F1-macro on TAWOS
- H₂: LLM agent (CoT) achieves MRE ≤ 35% on Jira SR

### Phase 6: Experimental Design
**Spec**: `40-Projects/PUMA/41.6-Specs/SP-Triage-Agent-v1.md`
**Config**: Ollama, qwen2.5:3b, temp=0.0, seed=42
**Metrics**: F1-macro, MAE, Wilcoxon p-value + effect size r

### Phase 7: Critical Analysis
**Statistical**: Shapiro-Wilk (normality) → Wilcoxon signed-rank
**Effect sizes**: r = Z/√N (small: 0.1, medium: 0.3, large: 0.5)
**Reproducibility**: 3 independent cycles, 100% match

### Phase 8: Scientific Writing
**Language**: Spanish, APA 7th, UOC template
**Structure**: See TFG index in `puma-core`
**Tool**: Obsidian → Word export

### Phase 9: Review & Publication
**Output**: GitHub repo + Zenodo replication package
**Ethics**: Marco Veritas declaration in each PEC

## DSR Framework Application

PUMA instantiates DSR (Hevner et al., 2004):

| DSR Component | PUMA Instantiation |
|---------------|-------------------|
| Problem relevance | Issue triage + effort estimation gaps |
| Design artifact | PUMA agent platform (qwen2.5:3b + Ollama) |
| Design evaluation | F1-macro, MAE, Wilcoxon tests |
| Research contributions | Benchmark results + replication package |
| Research rigor | PRISMA SLR + statistical testing |
| Design as search | Prompt strategy comparison (zero-shot vs few-shot) |

## LLM-Based Literature Review Protocol

When using AI for literature review:

1. **NotebookLM**: Upload curated PDF corpus → generate summaries + Q&A
2. **Consensus**: Evidence-based academic search with AI synthesis
3. **ResearchRabbit**: Citation network expansion from seed papers
4. **Semantic Scholar**: Author profiles + citation counts
5. **Claude**: Cross-source synthesis + gap identification

**Semantic Note-Taking**: Each paper → `LN-Author-Year-Title.md` using Keshav template. Pass-3 notes feed Zettelkasten.

**Critical**: Do NOT trust AI synthesis without checking primary sources. AI-generated literature reviews must be validated against actual papers.

## AI-Driven Concept Mapping

For mapping a research territory:

1. Load all relevant PN- notes tagged with the domain
2. Ask Claude: "Create a concept map of [domain] based on these notes. Identify: (a) central concepts, (b) key relationships, (c) unresolved contradictions, (d) research gaps."
3. File the concept map as a MOC in `80-MOC/`
4. Generate Mermaid diagram if useful

## Statistical Methods

### Normality Test (pre-Wilcoxon)
```python
from scipy import stats
stat, p = stats.shapiro(data)
# If p < 0.05 → non-normal → use Wilcoxon
```

### Wilcoxon Signed-Rank Test
```python
stat, p = stats.wilcoxon(baseline_scores, agent_scores)
n = len(baseline_scores)
r = stat / (n * (n + 1) / 2)  # effect size
```

### Interpretation thresholds
- H₀ rejected if p < 0.05 (α=0.05)
- Effect size: r < 0.1 trivial, 0.1–0.3 small, 0.3–0.5 medium, >0.5 large
- PUMA results: H₀₁ p=0.0312 r=0.34 (medium); H₀₂ p=0.0089 r=0.48 (medium-large)

## Writing Research Sections

### Methodology (Capítulo 2)
Structure: DSR overview → SLR protocol (PRISMA) → Dataset description → Agent design → Experimental config → Evaluation metrics → Statistical framework → Ethics + sustainability

### Results (Capítulo 3)  
Structure: Dataset statistics → Baseline comparison → H₁ results (triage) → H₂ results (estimation) → Statistical significance → Effect sizes → Reproducibility → Carbon footprint

### Conclusions (Capítulo 4)
Structure: Summary of findings → Hypothesis acceptance/rejection → Limitations → Threats to validity → Future work

## Key Reference Files

- `40-Projects/PUMA/41.6-Specs/SP-PUMA-Constitution.md` — research authority
- `50-Areas/51-Research/Keshav-ThreePass/Keshav-Reading-Log.md` — paper reading log
- `50-Areas/51-Research/SLR-PRISMA/PRISMA-Log.md` — review log
- `50-Areas/54-Sustainability/Carbon-Tracking-Log.md` — emissions log
- `50-Areas/55-Ethics/Ethics-Review-Log.md` — ethics log
