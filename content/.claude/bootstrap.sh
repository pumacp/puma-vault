#!/usr/bin/env bash
# bootstrap.sh
# Creates .claude/commands/ symlinks that expose both skill sets to Claude Code.
#
# Skill sets:
#   puma/                   — PUMA domain-specific skills (prefix: puma-)
#   obsidian-skills/skills/ — Generic Obsidian skills (no prefix)
#
# Conflict resolution: if two files share the same basename, the one with a
# proper YAML frontmatter (---) wins. If both have frontmatter, the first
# encountered wins and a warning is printed.
#
# Run once (or after adding new skills). Safe to re-run.

set -euo pipefail

CLAUDE_DIR="$(cd "$(dirname "$0")" && pwd)"
COMMANDS_DIR="$CLAUDE_DIR/commands"

mkdir -p "$COMMANDS_DIR"

linked=0
skipped=0
conflicts=0

# Associative map: command_name → source_path (resolved so far)
declare -A seen

has_frontmatter() {
    head -1 "$1" | grep -q '^---'
}

register_skill() {
    local target="$1"   # absolute path to .md file
    local name="$2"     # command name (no .md extension)

    if [ -n "${seen[$name]+x}" ]; then
        existing="${seen[$name]}"
        # Prefer the file that has frontmatter
        if has_frontmatter "$existing" && ! has_frontmatter "$target"; then
            return   # keep existing
        fi
        if ! has_frontmatter "$existing" && has_frontmatter "$target"; then
            seen[$name]="$target"   # upgrade to the one with frontmatter
            return
        fi
        # Both have (or both lack) frontmatter — keep first, warn
        echo "  WARN: conflict '$name':"
        echo "        kept   : $existing"
        echo "        ignored: $target"
        conflicts=$((conflicts + 1))
        return
    fi

    seen[$name]="$target"
}

# ── Collect all PUMA skills ───────────────────────────────────────────────────
while IFS= read -r -d '' file; do
    name=$(basename "$file" .md)
    register_skill "$file" "$name"
done < <(find "$CLAUDE_DIR/puma" -name "*.md" -print0)

# ── Collect Obsidian generic skills ──────────────────────────────────────────
while IFS= read -r -d '' file; do
    name=$(basename "$(dirname "$file")")   # e.g. obsidian-markdown
    register_skill "$file" "$name"
done < <(find "$CLAUDE_DIR/obsidian-skills/skills" -name "SKILL.md" -print0)

# ── Write symlinks ────────────────────────────────────────────────────────────
for name in "${!seen[@]}"; do
    target="${seen[$name]}"
    dest="$COMMANDS_DIR/${name}.md"
    rel=$(realpath --relative-to="$COMMANDS_DIR" "$target")

    if [ -L "$dest" ] && [ "$(readlink "$dest")" = "$rel" ]; then
        skipped=$((skipped + 1))
        continue
    fi

    [ -e "$dest" ] && rm "$dest"
    ln -s "$rel" "$dest"
    echo "  linked: commands/${name}.md"
    linked=$((linked + 1))
done

echo ""
echo "Done."
echo "  New links   : $linked"
echo "  Up-to-date  : $skipped"
[ $conflicts -gt 0 ] && echo "  Conflicts   : $conflicts (warnings above)"
echo ""
echo "Commands directory: $COMMANDS_DIR"
