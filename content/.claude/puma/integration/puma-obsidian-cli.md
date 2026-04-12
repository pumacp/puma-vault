---
name: puma-obsidian-cli
description: Override the Obsidian CLI skill to enforce PUMA vault rules before execution.
---

# PUMA OBSIDIAN CLI OVERRIDE

Before running any `obsidian` CLI command:

1. **Check PUMA Vault Rules**: Ensure command aligns with vault structure and rules.
2. **Validate Target**: Confirm the target file is in the correct section (Projects vs Resources vs Zettelkasten).
3. **Prepare Metadata**: If creating notes, include appropriate YAML frontmatter or use a template.
4. **Task Alignment**: For tasks, use the Tasks plugin or `obsidian tasks` with correct context.
5. **Snapshot (optional)**: Commit current vault state if performing large changes.

**DO NOT**:
- Create notes without using the specified templates.
- Rename or move Zettelkasten notes into project folders.
- Bypass the `puma-core` or `puma-orchestrator` steps.

