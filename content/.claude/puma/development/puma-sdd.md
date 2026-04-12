---
name: puma-sdd
description: Apply Spec-Driven Development (SDD) principles in project planning and implementation.
---

# SPEC-DRIVEN DEVELOPMENT (SDD)

- Define specifications *before* implementation.
- Specifications include:
  - **PRDs** (Product/Project Requirement Documents).
  - **Architectural designs**.
  - **Agent specifications** (inputs/outputs, roles).
- Store all specs as Markdown in `40-49 Projects/41.6 Specs`.
- Review and validate specs before coding.

## PRINCIPLES

- **Docs-First**: Specifications are the source of truth; code is a derivative artifact.
- **Traceability**: Link each piece of code or experiment back to its spec.
- **Reproducibility**: Specs enable reproducible research and implementation.

## OPEN SPEC & SPEC KIT

- Use **OpenSpec** format for structured, shareable specs.
- Use **Spec Kit** templates:
  - `Constitution.md` for project principles.
  - `Architecture.md`, `UserStory.md`, etc., as needed.
- Store these spec documents and reference them in code/repos.

## OUTPUT

- **Specification Markdown** files in `40-49 Projects/41.6 Specs`.
- Cross-links from code/experiments to spec documents.

