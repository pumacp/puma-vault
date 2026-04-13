---
id: CSS-Snippets-Guide
title: "🎨 CSS Snippets & Obsidian Styling Guide"
type: meta
tags: [meta, css, snippets, obsidian, styling, bdd, critical-thinking, fleeting-note, gtd, hypothesis, literature-note, metrics, moc, permanent-note, precision-recall, red-teaming, research-methodology, vault]
created: 2026-03-01
---

# 🎨 CSS Snippets & Obsidian Styling Guide

> [!info] Overview
> Custom visual styles for the PUMA vault.
> Main stylesheet: 00 - Meta/Snippets/puma-styles.css

## Activating the Stylesheet

> [!tip] How to enable
> ```
> Obsidian → Settings → Appearance → CSS Snippets
> → Click the folder icon → confirm puma-styles.css is present
> → Toggle ON: puma-styles
> → Restart Obsidian if styles don't appear immediately
> ```

---

## Custom Callout Types

```markdown
> [!fleeting] Fleeting Note
> Raw capture — process within 48 hours.

> [!literature] Literature Note  
> Insight from external source.

> [!permanent] Permanent Note
> Stable, atomic idea.

> [!experiment] Experiment Note
> Observed: F1-macro = 0.68 on condition C2.

> [!spec] Specification
> Given/When/Then BDD scenario.

> [!red-team] Red Team Challenge
> Rival hypothesis or adversarial critique.

> [!progress] Progress Bar
> Writing Chapter 2: ████░░░░ 40%
```

---

## Maturity Tags

```markdown
#seedling  → New idea, needs more evidence
#growing   → Multiple sources confirming idea
#evergreen → Stable, well-supported, reused across contexts
```

---

## Graph View Customisation

In Obsidian Graph View settings:
- **Colour groups:**
  - `path:30 - Permanent` → Green (#22c55e)
  - `path:20 - Literature` → Blue (#3b82f6)
  - `path:40 - Projects` → Orange (#f97316)
  - `path:80 - MOC` → Purple (#a855f7)
  - `path:60 - Resources` → Yellow (#eab308)
  - `path:90 - GTD` → Red (#ef4444)
- **Filters:**
  - Exclude: `path:70 - Archive` `path:00 - Meta`

---

## Recommended Themes

For best readability with this vault's CSS:
- **Minimal** (by kepano) — Clean, works well with Dataview tables
- **Things** — Nice typography for long reading
- **AnuPpuccin** — Good colour differentiation for graph view

Install via: Settings → Appearance → Themes → Browse
