---
id: LN-Web-Resources
title: "🌐 Web Resources — Blogs, Docs & Key Links"
type: literature-note
subtype: web
tags: [literature, web, blog, docs, links]
created: 2026-03-01
---

# 🌐 Web Resources — Blogs, Docs & Key Links

> Important web resources that don't fit other categories.
> These are references, not captures — for raw captures use [[10 - Inbox/Quick-Capture/Quick-Capture-Log]].

---

## Official Documentation

| Resource | URL | PUMA Use |
|----------|-----|---------|
| Ollama docs | https://ollama.ai/docs | API reference, model tags |
| Ollama API reference | https://github.com/ollama/ollama/blob/main/docs/api.md | seed/temperature params |
| CodeCarbon docs | https://mlco2.github.io/codecarbon | EmissionsTracker setup |
| Anthropic docs | https://docs.anthropic.com | Claude API, Claude Code |
| Pydantic AI docs | https://ai.pydantic.dev | Structured output patterns |
| LangGraph docs | https://langchain-ai.github.io/langgraph | Multi-agent reference |

---

## Academic Search Portals

| Resource | URL | Best for |
|----------|-----|---------|
| arXiv cs.SE | https://arxiv.org/list/cs.SE/recent | SE + LLM preprints |
| arXiv cs.AI | https://arxiv.org/list/cs.AI/recent | AI papers |
| Semantic Scholar | https://www.semanticscholar.org | Citation search |
| ACM DL | https://dl.acm.org | Conference papers |
| IEEE Xplore | https://ieeexplore.ieee.org | IEEE papers |

---

## Key GitHub Repositories

| Repo | URL | Purpose |
|------|-----|---------|
| Jira SR (Zenodo) | https://zenodo.org/records/5901893 | Dataset download |
| TAWOS | https://github.com/SOLAR-group/TAWOS | Dataset download |
| CodeCarbon | https://github.com/mlco2/codecarbon | Carbon tracking |
| Ollama | https://github.com/ollama/ollama | LLM inference |
| LangGraph template | https://github.com/wassim249/fastapi-langgraph-agent-production-ready-template | Arch reference |
| Obsidian Zettelkasten Kit | https://github.com/groepl/Obsidian-Zettelkasten-Starter-Kit | Vault reference |

---

## PUMA-Specific Resources (to be created)

| Resource | Status |
|----------|--------|
| PUMA GitHub repo | ⏳ To create in F2 |
| PUMA GitHub Pages (results) | ⏳ Optional, F5 |
| PUMA HuggingFace Spaces demo | 🔴 Someday/Maybe |

---
---
id: CSS-Snippets-Guide
title: "🎨 CSS Snippets Guide"
type: meta
tags: [meta, css, snippets, obsidian, styling]
created: 2026-03-01
---

# CSS Snippets Guide

> How to use and extend the custom styles in this vault.

## Activating Snippets

```
Settings → Appearance → CSS Snippets
→ Toggle ON: puma-styles
```

The main stylesheet: [[00 - Meta/Snippets/puma-styles.css]]

## Custom Callout Usage

```markdown
> [!fleeting] Fleeting Note
> This is a fleeting note that needs processing.

> [!literature] Literature Source
> Key finding from a paper.

> [!permanent] Permanent Note Insight
> This is a stable, evergreen idea.

> [!experiment] Experiment Result
> Observed: F1-macro = 0.68 on condition C2.

> [!red-team] Red Team Analysis
> Rival hypothesis: the improvement may be due to...
```

## Maturity Colour Indicators

```markdown
#seedling  → Yellow background (new, unverified)
#growing   → Light green (multiple sources)  
#evergreen → Dark green (stable, well-supported)
```

## Adding New Snippets

1. Create `.css` file in `00 - Meta/Snippets/`
2. Enable in Settings → Appearance → CSS Snippets
3. Document usage in this file
