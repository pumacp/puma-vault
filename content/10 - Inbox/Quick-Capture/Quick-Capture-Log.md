---
id: Quick-Capture-Log
title: "⚡ Quick Capture Log"
type: capture-log
tags: [inbox, capture, quick]
created: 2026-03-01
---

# ⚡ Quick Capture Log

> **Ultra-fast capture**: one line per idea. Process weekly into proper notes.
> Format: `- [ ] [DATE] [SOURCE] [IDEA/LINK/QUOTE]`

---

## How to Use
1. Use keyboard shortcut `Alt+F` (QuickAdd) to add here instantly
2. Or type directly — keep it to one line per item
3. Every Sunday during Weekly Review: process all items → Permanent / Literature / Delete

---

## Unprocessed Captures

*(Add items here via QuickAdd or manually. Process weekly.)*

- [ ] [2026-03-01] [Idea] Check if Phi-3.5 Mini works better than Mistral for classification — r/LocalLlama discussion
- [ ] [2026-03-01] [Paper] Al-Kaswan et al. (2025) NLBSE'25 tool competition — need to add to SLR
- [ ] [2026-03-01] [Tool] Hermes AI — check what this is and whether relevant to PUMA Stage 5
- [ ] [2026-03-01] [Quote] "The bot functioned correctly according to instructions. It still produced massive wrong results" — rambot Wikipedia 2002 → great opening quote for Chapter 1
- [ ] [2026-03-01] [Idea] Could PUMA add a "human agreement rate" metric? How often does the model agree with the human-assigned priority?

---

## Processed (Archive)

*(Move processed items here with date processed)*

---
---
id: README-Inbox
title: "📥 Inbox — How It Works"
type: readme
tags: [inbox, readme, guide]
created: 2026-03-01
---

# 📥 Inbox — How It Works

> **The Inbox is your capture zone. Everything that enters the vault starts here.**
> **Rule: The inbox must be processed to zero at least every 48 hours.**

---

## Note Types in the Inbox

### 🔶 Fleeting Notes (`Fleeting-Notes/`)
Short, ephemeral captures — ideas, observations, quotes, links encountered during research or daily life.

**Template:** [[10 - Inbox/Fleeting-Notes/Template-Fleeting-Note]]
**Shortcut:** `Alt+F` (via QuickAdd)
**Lifespan:** Max 48 hours before processing

**Processing decision tree:**
```
Is this from an external source (paper, book, video)?
  → YES → Create Literature Note in 20 - Literature/
  → NO → Is it an insight/concept worth keeping?
      → YES → Create Permanent Note in 30 - Permanent/
      → NO → Is it a task?
          → YES → Add to 90 - GTD/91 Tasks/TASKS-Active
          → NO → Delete
```

### ⚡ Quick Capture (`Quick-Capture/`)
One-liner captures for links, quotes, references, ideas when you have no time to write even a fleeting note.

**File:** [[10 - Inbox/Quick-Capture/Quick-Capture-Log]]
**Processing:** During Weekly Review

---

## The 2-Minute Rule (GTD)

When processing an inbox item:
- If it takes < 2 minutes to handle → do it now
- If it takes > 2 minutes → create the right note and schedule it

---

## Why Zero Inbox Matters

An inbox full of unprocessed items creates **cognitive debt** — you know there's something there but don't know what it is. This erodes trust in your system and forces you to keep things "in your head."

The goal is not to process everything perfectly — it's to make a **decision** about every item: where it belongs or that it can be deleted.
