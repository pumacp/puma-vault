---
id: REPO-SAT-022
title: "REPO — Schema and exclusion lists are single-sourced in the tool repo, never…"
type: artifact-note
status: draft
source_unit: SAT-022
confidence: repo-backed
tags: [artifact-note, puma, community, release, json-schema]
created: 2026-06-15
---

# REPO — Schema and exclusion lists are single-sourced in the tool repo, never…

Schema and exclusion lists are single-sourced in the tool repo, never duplicated: the JSON Schema is generated from Pydantic v2 models, the excluded-models list lives in the tool's builder, and the community repo cuts no versioned releases — schema version is its only versioned artifact.

> **Source:** puma-community docs/maintainer-guide.md · **Traceability:** corpus unit `SAT-022` · **Confidence:** repo-backed

## Related
- [[REPO-SAT-002]]
