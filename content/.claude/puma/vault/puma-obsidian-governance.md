---
name: puma-obsidian-governance
description: High-level vault management and change governance guidelines for PUMA.
---

# VAULT MANAGEMENT

- **Version Control**: Use `Obsidian Git` to commit regularly after significant changes.
- **Naming Conventions**: Clear, descriptive titles. Use Johnny-Decimal in folder names (not in note titles).
- **Frontmatter**: Begin major notes with YAML metadata (title, date, tags).
- **Templates**: Use provided templates for Daily Notes, MOCs, Literature Notes, etc.
- **Attachments**: Store images under `00 - Meta/Assets`. Link images with `![[...]]`.
- **Dashboards**: Update files in `00 - Meta/Dashboards` to reflect project status.
- **Daily/Weekly Reviews**: Use templates `Template-Daily-Review.md`, `Template-Weekly-Review.md`.
- **Task Capture**: Use the **Inbox** (`10 - Inbox`) for quick captures; process them during reviews.
- **Confidentiality**: Tag or move sensitive notes to appropriate folders (e.g., `37 Persons`).

# CODING/GIT

- **Branching**: Use branches for major changes (vault or code).
- **Commit Messages**: Write meaningful messages for Git commits.
- **Backup**: Push to remote GitHub or backup vault frequently.

# QUALITY CHECK

- Use `puma-rules` and `puma-anti-patterns` to verify consistency.
- Ensure all notes have appropriate metadata (timestamps, tags).
- Update the Johnny-Decimal index (`66 Johnny-Decimal-Index/JD-Master-Index.md`) when adding folders.

