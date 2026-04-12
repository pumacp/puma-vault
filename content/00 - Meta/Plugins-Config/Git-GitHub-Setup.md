---
id: Git-GitHub-Setup
title: "⚙️ Git & GitHub Setup Guide — PUMA Vault"
type: meta
tags: [meta, git, github, setup, obsidian-git]
created: 2026-03-01
---

# Git & GitHub Setup Guide

> **How to sync this vault with GitHub** for version control, backup, and sharing with your tutor.

---

## Initial Setup (One-Time)

### Step 1 — Create GitHub Repository

```bash
# Option A: GitHub CLI
gh repo create PUMA-Vault --public --description "PUMA Research Vault — Obsidian knowledge base for PUMA Project"

# Option B: GitHub web → New repository → name: PUMA-Vault
```

### Step 2 — Initialise Git in Vault

```bash
# In the vault root directory (where README.md is)
cd /path/to/PUMA-Vault/

git init
git remote add origin https://github.com/pumacp/PUMA-Vault.git

# First commit
git add .
git commit -m "feat: initial PUMA vault structure"
git push -u origin main
```

### Step 3 — Configure Obsidian Git Plugin

```
In Obsidian:
1. Settings → Community Plugins → Install "Obsidian Git"
2. Enable the plugin
3. Settings → Obsidian Git:
   - Auto pull on startup: ON
   - Auto push after auto commit: ON
   - Auto commit interval: 30 (minutes)
   - Commit message: "vault: auto-save "{{date}}"
   - Pull before push: ON
   - Disable notifications: OFF (keep ON for awareness)
```

---

## Daily Workflow

```bash
# Obsidian Git handles this automatically, but for manual control:

# Pull latest (in case you edited from another device)
git pull

# Stage and commit all changes
git add -A
git commit -m "daily: $(date +%Y-%m-%d) — [brief description]"

# Push
git push
```

---

## Commit Message Conventions

| Type | Format | When |
|------|--------|------|
| Auto-save | `vault: auto-save 2026-03-15 14:30` | Obsidian Git auto |
| New note | `feat: add LN-Tawosi2024-CoGEE` | New literature note |
| Note update | `update: refine PN-RCOIF-Framework` | Permanent note edit |
| Experiment | `exp: run-llama32-zeroshot-triage-20260401` | After experiment run |
| Chapter | `thesis: Ch2 draft section 2.2` | Writing progress |
| Fix | `fix: broken link in MOC-PUMA-Master` | Link repair |

---

## Branch Strategy (Optional)

```bash
# If you want to draft experiments without committing to main:
git checkout -b exp/stage1-triage
# ... run experiments, record results ...
git checkout main
git merge exp/stage1-triage
```

---

## Sharing with Tutor

```bash
# Share read-only view via GitHub
# Share specific notes via GitHub web UI
# Or: generate a PDF export of any chapter using Obsidian's export

# Tag major milestones for easy reference
git tag -a PEC1-submitted -m "PEC1 submitted 2026-03-08"
git tag -a PEC2-submitted -m "PEC2 submitted 2026-04-08"
git push origin --tags
```

---

## Troubleshooting

**Merge conflict in Obsidian Git:**
```bash
# If auto-merge fails:
git status           # see conflicting files
git diff             # see the conflict
# Edit files to resolve conflict
git add [file]
git commit -m "fix: resolve merge conflict in [file]"
```

**Reset to last commit (discard unsaved changes):**
```bash
git checkout -- .   # ⚠️ IRREVERSIBLE — only use if sure
```

**View history of a specific note:**
```bash
git log --oneline -- "30 - Permanent/33 Frameworks/PN-RCOIF-Framework.md"
```
