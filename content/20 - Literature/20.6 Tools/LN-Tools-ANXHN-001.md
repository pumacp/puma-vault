---
id: LN-Tools-ANXHN-001
title: "LN-Tools — PUMA runs as three Docker services: puma_ollama (inference, port 11434),…"
type: literature-tools
status: draft
source_unit: ANXHN-001
confidence: verified-at-primary-source
tags: [literature-tools, puma, reference, ollama, docker]
created: 2026-06-15
---

# LN-Tools — PUMA runs as three Docker services: puma_ollama (inference, port 11434),…

PUMA runs as three Docker services: puma_ollama (inference, port 11434), puma_runner (pipeline CLI + migrations, owns the puma_data volume), and puma_dashboard (Streamlit, port 8501); shutdown order is dashboard->runner->ollama, startup the reverse, automated by start_puma.sh.

> **Source:** PUMA project documentation · **Traceability:** corpus unit `ANXHN-001` · **Confidence:** verified-at-primary-source

## Related
- [[LN-Tools-ANXAG-018]]
