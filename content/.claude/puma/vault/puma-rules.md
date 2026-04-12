---
name: puma-rules
description: Fundamental rules and best practices for the PUMA project.
---

# PUMA RULES

- **Think First, Act Second**: Always explain your reasoning before creating content or code.
- **Respect the Systems**: Use GTD, PARA, Zettelkasten, Johnny Decimal each for its purpose; do not merge them.
- **Atomic Notes**: One idea per Zettelkasten note.
- **Bi-Directional Links**: Link new notes to existing ones; never leave notes unlinked.
- **Specs are Sacred**: Never write code or proceed without a defined specification.
- **Version Control**: Commit changes after significant updates.
- **Quality Checks**: Review all outputs for clarity and alignment with goals.

# ANTI-PATTERNS

- **Note Mixing**: Don’t put Permanent ZK notes inside Project folders, or literature notes in Zettelkasten.
- **Orphan Notes**: Every note must link to others or an MOC.
- **Skipping Methodology**: Don’t proceed without choosing a methodology first.
- **Blind Trust**: Always verify AI output; don’t accept errors unchecked.
- **No Backups**: Always push to Git; never rely on a single local copy.

# ENFORCEMENT

- Use `puma-core`/`puma-orchestrator` to stay aligned.
- On rule violation, halt and address the issue before continuing.

