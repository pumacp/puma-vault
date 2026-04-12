---
name: puma-orchestrator
description: Master orchestrator. ALWAYS execute this skill first to select and enforce PUMA rules and relevant skills.
---

# ORCHESTRATOR ENGINE

Before ANY task or interaction:

1. **Activate PUMA Core**: Load `puma-core` to establish project context and rules.
2. **Classify Task Type**:
   - Research & Learning
   - Content Creation (notes, MOC, documentation)
   - Project Planning / Development
   - Vault Operations (structure, organization)
   - Prompt Design / AI Experiment
3. **Select Skills**: Based on classification:
   - **Research**: Activate `puma-research-tools`, `puma-literature-review`, `puma-keshav-method`, `puma-mit-student-method`.
   - **Knowledge (Zettelkasten)**: Activate `puma-zettelkasten`, `puma-moc`, `puma-semantic`.
   - **Development**: Activate `puma-sdd`, `puma-openspec`, `puma-spec-kit`, `puma-bmad`, `puma-agile`, `puma-cdd`, `puma-agent-design`, `puma-experiment`.
   - **Prompting**: Activate `puma-prompting`, `puma-rcoif`, `puma-advanced-prompt`.
   - **Vault/Organization**: Activate `puma-vault-architecture`, `puma-obsidian-governance`, `puma-obsidian-cli`, `puma-johnny-decimal`.
4. **Explain & Plan**: State the chosen skills, methodology, and plan of action:
   - Why each skill is relevant.
   - What output type will be created.
5. **Execute**: Perform the task guided by the activated skills, adhering to all PUMA rules.

