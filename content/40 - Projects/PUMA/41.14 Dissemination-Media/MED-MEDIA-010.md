---
id: MED-MEDIA-010
title: "MED — The compositing pipeline renders the 106-slide deck to final-state PNGs…"
type: artifact-note
status: draft
source_unit: MEDIA-010
confidence: verified-at-primary-source
tags: [artifact-note, puma, media, animation, deck]
created: 2026-06-15
---

# MED — The compositing pipeline renders the 106-slide deck to final-state PNGs…

The compositing pipeline renders the 106-slide deck to final-state PNGs via the LibreOffice Docker image pumacp/puma-info-libreoffice:0.1.0 (soffice->PDF->pdftoppm), then uses ffmpeg for composition/fades/concat/mux/faststart; segments are pre-built per slide and split by language and full-vs-animations cut.

> **Source:** media/_video/BUILD_REPORT_v2243.md · **Traceability:** corpus unit `MEDIA-010` · **Confidence:** verified-at-primary-source

## Related
- [[MED-MEDIA-006]]
- [[CH-ANXAG-042]] — published via the project YouTube channel (@PUMA_Project)
