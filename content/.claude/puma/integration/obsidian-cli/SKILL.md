---
name: puma-obsidian-cli
description: CLI and terminal interaction protocols for the PUMA Vault — file operations, search, git backup, and Python tooling from the command line. Use when operating the vault from Claude Code terminal, automating vault maintenance, running experiment scripts, or performing batch operations on vault files. Includes Obsidian CLI commands, bash utilities for vault health, and git workflow for the PUMA vault.
---

# PUMA Obsidian CLI — Terminal Vault Operations

## Vault Location

```bash
# Set vault root (adjust to your system)
VAULT="$HOME/puma-vault"
cd $VAULT
```

## File Operations

### Create Note from Template
```bash
# Copy template and open for editing
cp "$VAULT/00 - Meta/Templates/Template-Permanent-Note.md" \
   "$VAULT/30 - Permanent/31-Concepts/PN-NewConcept.md"
```

### Find Notes by Tag
```bash
# Find all notes tagged with 'puma-include' in frontmatter
grep -rl "puma-include" "$VAULT/20 - Literature/"

# Find all notes with status: to-read
grep -rl "status: to-read" "$VAULT/20 - Literature/20.1-Papers/"
```

### Find Notes by Type
```bash
# Find all permanent notes
find "$VAULT/30 - Permanent" -name "PN-*.md" | wc -l

# Find all experiment notes
find "$VAULT/40 - Projects/PUMA/41.7-Experiments" -name "EX-*.md"

# Find all locked specs
grep -rl "status: locked" "$VAULT/40 - Projects/PUMA/41.6-Specs/"
```

### Check for Orphan Notes (no inbound links)
```bash
# List all PN- files
find "$VAULT/30 - Permanent" -name "PN-*.md" > /tmp/all_pn.txt

# For each, check if any other file links to it
while IFS= read -r note; do
    basename=$(basename "$note" .md)
    # Search for [[PN-basename]] in vault
    links=$(grep -rl "\[\[$basename\]\]" "$VAULT" 2>/dev/null | grep -v "$note" | wc -l)
    if [ "$links" -eq 0 ]; then
        echo "ORPHAN: $basename"
    fi
done < /tmp/all_pn.txt
```

### Count Notes by Type
```bash
echo "=== PUMA Vault Statistics ==="
echo "Fleeting notes: $(find "$VAULT/10 - Inbox" -name "FL-*.md" | wc -l)"
echo "Literature notes: $(find "$VAULT/20 - Literature" -name "LN-*.md" | wc -l)"
echo "Permanent notes: $(find "$VAULT/30 - Permanent" -name "PN-*.md" | wc -l)"
echo "Experiment notes: $(find "$VAULT/40 - Projects" -name "EX-*.md" | wc -l)"
echo "Spec files: $(find "$VAULT/40 - Projects" -name "SP-*.md" | wc -l)"
echo "Prompt templates: $(find "$VAULT/60 - Resources" -name "PT-*.md" | wc -l)"
echo "MOC files: $(find "$VAULT/80 - MOC" -name "MOC-*.md" | wc -l)"
```

## AI-Use-Log Operations

```bash
# View last 10 log entries
grep "^## \[" "$VAULT/50 - Areas/51-Research/AI-Use-Log.md" | tail -10

# Append a new log entry
cat >> "$VAULT/50 - Areas/51-Research/AI-Use-Log.md" << EOF

## [$(date +%Y-%m-%d)] ingest | LN-Author-Year-Title processed
- Pass-1 completed
- PN- notes updated: PN-ConceptA, PN-ConceptB
- ZK-Hub updated
EOF
```

## Git Operations

```bash
# Standard daily commit
cd $VAULT
git add .
git commit -m "Daily: [brief description of work]"
git push origin main

# After experiment run
git add .
git commit -m "EX-NNN: [brief description of results]"
git push origin main

# After PEC submission
git tag "PEC-N-submitted-$(date +%Y-%m-%d)"
git push origin --tags

# Check status
git status
git log --oneline -10

# Diff since last commit
git diff --name-only HEAD
```

## Python Environment

```bash
# Create virtual environment for experiments
cd $VAULT/../puma-code  # experiment code directory
python3 -m venv .venv
source .venv/bin/activate

# Install dependencies
pip install -r requirements.txt --break-system-packages

# Install specific PUMA tools
pip install ollama codecarbon pandas scikit-learn scipy matplotlib --break-system-packages

# Verify Ollama
ollama list         # list downloaded models
ollama pull qwen2.5:3b  # download PUMA model
ollama serve &      # start Ollama server (background)

# Quick Ollama test
python3 -c "
import ollama
r = ollama.generate(model='qwen2.5:3b', prompt='Hello', options={'temperature': 0.0, 'seed': 42})
print(r['response'])
"
```

## Vault Search

```bash
# Full-text search (ripgrep if available)
rg "few-shot" "$VAULT/30 - Permanent/" --type md

# Find notes mentioning a concept
grep -rl "chain-of-thought" "$VAULT/" --include="*.md"

# Search frontmatter for specific values
grep -rl "hypothesis: H1" "$VAULT/40 - Projects/"

# Find all wikilinks to a specific note
grep -rl "\[\[PN-CoT-FewShot-Prompting\]\]" "$VAULT/"
```

## Batch Operations

### Update All Outdated Notes
```bash
# Find notes where updated date is > 30 days old
python3 << 'EOF'
import os
import yaml
from datetime import date, timedelta
from pathlib import Path

vault = Path(os.environ.get("VAULT", "."))
threshold = date.today() - timedelta(days=30)

for md_file in vault.rglob("*.md"):
    try:
        content = md_file.read_text()
        if content.startswith("---"):
            end = content.index("---", 3)
            fm = yaml.safe_load(content[3:end])
            if fm and "updated" in fm:
                updated = fm["updated"]
                if isinstance(updated, str):
                    updated = date.fromisoformat(updated)
                if updated < threshold and fm.get("status") not in ["archived", "done"]:
                    print(f"STALE: {md_file.relative_to(vault)}")
    except Exception:
        pass
EOF
```

### Validate Frontmatter
```bash
python3 << 'EOF'
import os
import yaml
from pathlib import Path

vault = Path(os.environ.get("VAULT", "."))
required = ["title", "type", "status", "tags", "created"]
errors = []

for md_file in vault.rglob("*.md"):
    if any(skip in str(md_file) for skip in [".obsidian", ".claude", "Templates"]):
        continue
    try:
        content = md_file.read_text()
        if content.startswith("---"):
            end = content.index("---", 3)
            fm = yaml.safe_load(content[3:end])
            if fm:
                for field in required:
                    if field not in fm:
                        errors.append(f"Missing '{field}': {md_file.relative_to(vault)}")
    except Exception as e:
        errors.append(f"Parse error: {md_file.relative_to(vault)}: {e}")

print(f"Found {len(errors)} issues:")
for e in errors[:20]:
    print(f"  {e}")
EOF
```

## Obsidian CLI Plugin Commands

If using obsidian-cli plugin:
```bash
# Create a note
obsidian create --template "Template-Permanent-Note" --title "PN-NewConcept"

# Search vault
obsidian search "few-shot prompting"

# Open a specific note
obsidian open "30 - Permanent/31-Concepts/PN-CoT-FewShot-Prompting.md"
```

## Quick Vault Health Check

```bash
#!/bin/bash
# puma-health-check.sh
echo "=== PUMA Vault Health Check ==="
echo "Date: $(date)"
echo ""
echo "--- Note counts ---"
echo "Fleeting (unprocessed): $(find "${VAULT}/10 - Inbox/Fleeting-Notes" -name "FL-*.md" | wc -l)"
echo "Literature: $(find "${VAULT}/20 - Literature" -name "LN-*.md" | wc -l)"
echo "Permanent: $(find "${VAULT}/30 - Permanent" -name "PN-*.md" | wc -l)"
echo "Specs (locked): $(grep -rl "status: locked" "${VAULT}/40 - Projects" | wc -l)"
echo ""
echo "--- Git status ---"
cd $VAULT && git status --short | head -10
echo ""
echo "--- Recent AI log entries ---"
grep "^## \[" "${VAULT}/50 - Areas/51-Research/AI-Use-Log.md" | tail -5
```
