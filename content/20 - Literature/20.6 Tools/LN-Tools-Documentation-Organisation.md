---
id: LN-Tools-Documentation-Organisation
title: "📋 Tools — Documentation, Organisation & Productivity"
type: literature-tools
tags: [tools, documentation, obsidian, notion, excalidraw, grammarly, puma]
created: 2026-04-06
updated: 2026-04-06
phase: [F0, F1, F2, F3, F4, F5]
---

# 📋 Tools — Documentation, Organisation & Productivity

> All tools for project documentation, knowledge management, diagrams, and academic writing.

---

## Knowledge Management

### Obsidian
- **URL**: https://obsidian.md
- **Function**: Markdown-based knowledge management with bidirectional links
- **Phase**: F0 – continuous
- **PUMA use**: PRIMARY knowledge management tool; this vault; PARA + GTD + Zettelkasten + Johnny Decimal integration; research documentation; sprint boards; literature notes (Keshav Three-Pass); permanent notes
- **Plugins**: Dataview, Templater, Tasks, Kanban, Zotero Integration, Obsidian Git, Excalidraw, Pandoc, Calendar
- **Structure**: See [[60 - Resources/66 Johnny-Decimal-Index/JD-Master-Index]] and [[VAULT-GUIDE]]

### Notion + Notion AI
- **URL**: https://www.notion.so
- **Function**: Team knowledge base and task management with integrated AI
- **Phase**: F0 – continuous
- **PUMA use**: Centralised project information hub (complementary to Obsidian); meeting notes; task tracking during F3–F4 (when sprint velocity tracking needed beyond Obsidian Tasks plugin); AI for note synthesis
- **Justification**: AI synthesis of notes without sending to external APIs (Notion AI processed within Notion's infrastructure); useful for quick project status summaries

---

## Academic Writing

### Overleaf
- **URL**: https://www.overleaf.com
- **Function**: Collaborative online LaTeX editor
- **Phase**: F5 (optional)
- **PUMA use (optional)**: Final TFG memoir typesetting in LaTeX if required; UOC template import; automatic reference formatting from Zotero BibTeX export
- **Note**: UOC template in Word is the primary format; Overleaf is optional for higher typesetting quality

### Grammarly
- **URL**: https://www.grammarly.com
- **Function**: Grammar and style corrector for English text
- **Phase**: F3 – F5
- **PUMA use**: Reviewing Abstract and English-language sections of the TFG memoir; all Grammarly suggestions reviewed and selectively applied by author
- **Note**: Tool assists, author decides; no automatic acceptance of suggestions

### Jenni AI
- **URL**: https://jenni.ai
- **Function**: AI-powered academic writing assistant
- **Phase**: F3 – F5
- **PUMA use**: Structuring formal academic sections with consistent style; maintaining academic register; citation format suggestions (verified manually)
- **Declaration**: Used as structural assistant; all content written/verified by author (Marco Veritas)

---

## Diagrams & Visualisation

### Excalidraw
- **URL**: https://excalidraw.com
- **Function**: Collaborative whiteboard for architecture diagrams
- **Phase**: F2 – F3
- **PUMA use**: PUMA system architecture diagrams (7-layer SwarmPMO); LangGraph state machine visualisation; multi-agent communication flow diagrams for the TFG memoir
- **Obsidian integration**: Excalidraw plugin for in-vault diagram editing → [[Excalidraw/]]
- **Export format**: SVG (vector) for memoir; PNG for Obsidian preview

### draw.io (diagrams.net)
- **URL**: https://www.drawio.com
- **Function**: More formal diagram tool (UML, C4, flowcharts)
- **Phase**: F2 – F3
- **PUMA use**: Formal C4 architecture diagrams; sequence diagrams for agent interactions; class diagrams for data schemas
- **Justification**: C4 model diagrams for Section 3 (Materials & Methods) architecture documentation

### Mermaid (in GitHub)
- **URL**: https://mermaid.js.org
- **Function**: Diagrams-as-code in Markdown
- **Phase**: F2 – F3
- **PUMA use**: README.md sequence/flow diagrams in GitHub repository; versioned alongside code; renders automatically in GitHub Markdown
- **Example**: LangGraph state transitions, experiment pipeline flow, agent communication patterns

---

## Automation Tools

### BrowserOS
- **URL**: https://github.com/browseros-ai/BrowserOS
- **Function**: Chromium-based browser with native AI agent capabilities for research and documentation automation
- **Phase**: F0 – continuous
- **PUMA use**:
  - Centralised organisation of research information (papers, decisions, tasks, drafts)
  - AI-assisted note synthesis and documentation organisation
  - Automated web research sessions for SLR paper discovery
  - Document management with AI integration
- **Justification**: Natively integrates AI agents for document organisation and research workflows without requiring separate API calls; complements Obsidian for web-based research tasks

---

## Related Notes

- [[VAULT-GUIDE]] — Complete Obsidian vault usage guide
- [[60 - Resources/62 Workflows/WF-Research-Experiment-Routines]]
- [[50 - Areas/52 Writing/Writing-Progress-Tracker]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
