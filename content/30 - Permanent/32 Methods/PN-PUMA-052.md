---
id: PN-PUMA-052
title: "PN — CI security tooling wires pip-audit (CVE scanning), bandit (SAST),…"
type: permanent-note
status: draft
source_unit: PUMA-052
confidence: repo-backed
tags: [permanent-note, puma, engine]
created: 2026-06-15
---

# PN — CI security tooling wires pip-audit (CVE scanning), bandit (SAST),…

CI security tooling wires pip-audit (CVE scanning), bandit (SAST), gitleaks (secret scanning), and Trivy (container CVE scanning) with least-privilege per-workflow permissions; PyPI publishing uses OIDC trusted publishing and GHCR uses the auto-provided token.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `PUMA-052` · **Confidence:** repo-backed

## Related
- [[DEBT-PUMA-053]]
