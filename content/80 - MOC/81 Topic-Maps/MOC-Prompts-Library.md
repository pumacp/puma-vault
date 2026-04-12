---
id: MOC-Prompts-Library
title: "💬 MOC — Prompts Library"
type: moc
version: 1.0
tags: [moc, prompts, ai-tools, rcoif, few-shot, cot, research-workflow, puma, tools]
created: 2026-03-01
updated: 2026-03-01
---

# 💬 Prompts Library — Master Map

> All prompt templates organised by tool and methodology. Each prompt follows the **RCOIF framework** (Role · Context · Objective · Instructions · Format) unless otherwise noted.

---

## 🤖 LLM Tools — Conversational AI

### Claude (Anthropic) — claude.ai
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-RCOIF-Research]] — Academic research assistant
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-DRCA-Paper]] — Paper deconstruction
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-EGI-Exploration]] — Guided concept exploration
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-AMI-Review]] — Iterative self-improvement
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-Red-Team]] — Rival hypothesis generation
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-IIPR-Prompt-Refinement]] — Prompt reverse engineering

### ChatGPT (OpenAI)
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-ChatGPT-SLR-Synthesis]] — Literature synthesis
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-ChatGPT-CoT-Analysis]] — Chain-of-thought analysis
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-ChatGPT-BDD-Stories]] — BDD scenario generation

### Perplexity AI
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Perplexity-State-of-Art]] — Current state of the art search
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Perplexity-Dataset-Discovery]] — Dataset search

### DeepSeek-R1
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-DeepSeek-Reasoning]] — Complex reasoning tasks
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-DeepSeek-Code-Review]] — Code analysis

### Google Gemini
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Gemini-Multimodal]] — Diagram and figure analysis
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Gemini-Long-Context]] — Long document processing

### NotebookLM (Google)
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-NotebookLM-Paper-Corpus]] — Multi-paper knowledge base

### AnythingLLM
- [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-AnythingLLM-Local-RAG]] — Local RAG setup

---

## 🔍 Research Tools

### Consensus
- [[60 - Resources/61 Prompts/61.2 Research-Tools/PT-Consensus-Evidence]] — Evidence-based queries

### Elicit
- [[60 - Resources/61 Prompts/61.2 Research-Tools/PT-Elicit-SLR-Screening]] — Paper screening

### Semantic Scholar
- [[60 - Resources/61 Prompts/61.2 Research-Tools/PT-SemanticScholar-Search]] — Semantic search strategies

### Google Scholar / arXiv / IEEE / ACM
- [[60 - Resources/61 Prompts/61.2 Research-Tools/PT-AcademicDB-Search-Strings]] — Boolean search strings

### Connected Papers / Research Rabbit / Litmaps
- [[60 - Resources/61 Prompts/61.2 Research-Tools/PT-CitationNetwork-Strategy]] — Citation network exploration

### Zotero
- [[60 - Resources/61 Prompts/61.2 Research-Tools/PT-Zotero-Organisation]] — Library organisation strategy

---

## 💻 Development Tools

### Claude Code
- [[60 - Resources/61 Prompts/61.3 Dev-Tools/PT-ClaudeCode-Agent-Triage]] — Triage agent implementation
- [[60 - Resources/61 Prompts/61.3 Dev-Tools/PT-ClaudeCode-Benchmark-Pipeline]] — Benchmark pipeline
- [[60 - Resources/61 Prompts/61.3 Dev-Tools/PT-ClaudeCode-Dataset-Prep]] — Dataset preparation

### OpenCode
- [[60 - Resources/61 Prompts/61.3 Dev-Tools/PT-OpenCode-Refactor]] — Code refactoring
- [[60 - Resources/61 Prompts/61.3 Dev-Tools/PT-OpenCode-Test-Gen]] — Test generation

### GitHub Copilot / Cursor AI
- [[60 - Resources/61 Prompts/61.3 Dev-Tools/PT-Copilot-Scaffolding]] — Project scaffolding
- [[60 - Resources/61 Prompts/61.3 Dev-Tools/PT-Cursor-Context-Dev]] — Context-driven development

### OpenHands (All-Hands-AI)
- [[60 - Resources/61 Prompts/61.3 Dev-Tools/PT-OpenHands-Autonomous]] — Autonomous agent tasks

### Warp AI Terminal
- [[60 - Resources/61 Prompts/61.3 Dev-Tools/PT-Warp-CLI-Workflow]] — Terminal workflow automation

### Browser OS
- [[60 - Resources/61 Prompts/61.3 Dev-Tools/PT-BrowserOS-Web-Agent]] — Web browsing agent

---


---

# 🗂️ MOC — PUMA Prompts Library

Central navigation map for all research and development prompts used in the PUMA project. Prompts are organized by phase, step, tool, and methodology.

---

## Overview

PUMA uses prompts as structured interfaces to AI tools across two main phases:

- **Phase 1 (Research)**: 7 steps from literature exploration to critical review
- **Phase 2 (Development)**: Architecture, implementation, prompt engineering, academic writing

All prompts follow the **RCOIF framework** (Role, Context, Objective, Instructions, Format) and integrate methodologies: SDD, BMAD, SLR/PRISMA, Keshav Three-Pass, DSR, Grounded Theory, EGI, AMI, DRCA, IIPR.

---

## Phase 1 — Research Prompts

### Step 1 — Literature Exploration

| ID | Title | Tool | Rating |
|----|-------|------|--------|
| [[PT-P1S1-001-SemanticScholar-CoreSearch]] | Semantic Scholar Core Search | Semantic Scholar | ⭐⭐⭐⭐⭐ |
| [[PT-P1S1-002-SemanticScholar-TaskSpecific]] | Semantic Scholar Task-Specific | Semantic Scholar | ⭐⭐⭐⭐⭐ |
| [[PT-P1S1-003-GoogleScholar-BroadSweep]] | Google Scholar Broad Sweep | Google Scholar | ⭐⭐⭐⭐⭐ |
| [[PT-P1S1-004-arXiv-FrontierScan]] | arXiv Frontier Scan | arXiv | ⭐⭐⭐⭐⭐ |
| [[PT-P1S1-005-Consensus-EvidenceSearch]] | Consensus Evidence Search | Consensus | ⭐⭐⭐⭐⭐ |
| [[PT-P1S1-006-Undermind-HighPrecision]] | Undermind High-Precision | Undermind | ⭐⭐⭐⭐⭐ |
| [[PT-P1S1-007-ResearchRabbit-SeedExpansion]] | Research Rabbit Seed Expansion | Research Rabbit | ⭐⭐⭐⭐⭐ |
| [[PT-P1S1-008-Elsevier-Scopus-Search]] | Elsevier/Scopus Search | Elsevier/Mendeley | ⭐⭐⭐⭐ |

### Step 2 — Scientific Mapping

| ID | Title | Tool | Rating |
|----|-------|------|--------|
| [[PT-P1S2-001-ConnectedPapers-CitationMap]] | Connected Papers Citation Map | Connected Papers | ⭐⭐⭐⭐⭐ |
| [[PT-P1S2-002-LitMaps-TemporalEvolution]] | LitMaps Temporal Evolution | LitMaps | ⭐⭐⭐⭐⭐ |
| [[PT-P1S2-003-Claude-LiteratureSynthesis-RCOIF]] | Claude Literature Synthesis | Claude | ⭐⭐⭐⭐⭐ |
| [[PT-P1S2-004-Perplexity-FastEvidenceMap]] | Perplexity Fast Evidence Map | Perplexity | ⭐⭐⭐⭐ |
| [[PT-P1S2-005-Gemini-BroadCorpusSynthesis]] | Gemini Broad Corpus Synthesis | Gemini | ⭐⭐⭐⭐ |

### Step 3 — Structured Extraction

| ID | Title | Tool | Rating |
|----|-------|------|--------|
| [[PT-P1S3-001-Elicit-DataExtraction]] | Elicit Data Extraction | Elicit | ⭐⭐⭐⭐⭐ |
| [[PT-P1S3-002-NotebookLM-CorpusExtraction]] | NotebookLM Corpus Extraction | NotebookLM | ⭐⭐⭐⭐⭐ |
| [[PT-P1S3-003-Zotero-BibliographicCuration]] | Zotero Bibliographic Curation | Zotero | ⭐⭐⭐⭐⭐ |
| [[PT-P1S3-004-Researcher-MonitoringFeed]] | Researcher Monitoring Feed | Researcher | ⭐⭐⭐⭐ |

### Step 4 — Conceptual Synthesis

| ID | Title | Tool | Rating |
|----|-------|------|--------|
| [[PT-P1S4-001-Claude-TheoreticalFramework]] | Claude Theoretical Framework | Claude | ⭐⭐⭐⭐⭐ |
| [[PT-P1S4-002-ChatGPT-ZettelkastenNotes]] | ChatGPT Zettelkasten Notes | ChatGPT | ⭐⭐⭐⭐⭐ |
| [[PT-P1S4-003-Gemini-ConceptualModel]] | Gemini Conceptual Model | Gemini | ⭐⭐⭐⭐ |

### Step 5 — Hypothesis Generation

| ID | Title | Tool | Rating |
|----|-------|------|--------|
| [[PT-P1S5-001-Claude-HypothesisFormulation]] | Claude Hypothesis Formulation | Claude | ⭐⭐⭐⭐⭐ |
| [[PT-P1S5-002-ChatGPT-RivalHypotheses]] | ChatGPT Rival Hypotheses | ChatGPT | ⭐⭐⭐⭐⭐ |

### Step 6 — Experimental Design

| ID | Title | Tool | Rating |
|----|-------|------|--------|
| [[PT-P1S6-001-Claude-ExperimentProtocol]] | Claude Experiment Protocol | Claude | ⭐⭐⭐⭐⭐ |
| [[PT-P1S6-002-ChatGPT-DatasetPreparation]] | ChatGPT Dataset Preparation | ChatGPT | ⭐⭐⭐⭐⭐ |

### Step 7 — Critical Review

| ID | Title | Tool | Rating |
|----|-------|------|--------|
| [[PT-P1S7-001-Claude-PeerReviewSimulation]] | Claude Peer Review Simulation | Claude | ⭐⭐⭐⭐⭐ |
| [[PT-P1S7-002-Grok-AdversarialCritique]] | Grok Adversarial Critique | Grok | ⭐⭐⭐⭐ |
| [[PT-P1S7-003-Perplexity-ClaimVerification]] | Perplexity Claim Verification | Perplexity | ⭐⭐⭐⭐ |

---

## Phase 2 — Development Prompts

| ID | Title | Tool | Rating |
|----|-------|------|--------|
| [[PT-P2-001-Claude-ArchitectureDesign-SDD]] | Architecture Design (SDD/BMAD) | Claude | ⭐⭐⭐⭐⭐ |
| [[PT-P2-002-CursorClaudeCode-Implementation]] | Cursor/Claude Code Implementation | Cursor + Claude Code | ⭐⭐⭐⭐⭐ |
| [[PT-P2-003-PromptEngineering-AgentPrompts]] | Agent Prompt Engineering | Context Engineering | ⭐⭐⭐⭐⭐ |
| [[PT-P2-004-AcademicWriting-ThesisChapters]] | Academic Writing — Thesis Chapters | Claude + ChatGPT | ⭐⭐⭐⭐⭐ |

---

## Methodology Prompts

| ID | Title | Methodology | Rating |
|----|-------|-------------|--------|
| [[PT-METH-001-PRISMA-Protocol]] | PRISMA Protocol SLR | PRISMA 2020 + Kitchenham | ⭐⭐⭐⭐⭐ |
| [[PT-METH-002-Keshav-ThreePass]] | Keshav Three-Pass Reading | Keshav (2007) | ⭐⭐⭐⭐⭐ |
| [[PT-METH-003-DSR-ArtifactDesign]] | DSR Artifact Design | Hevner 2004 + Peffers 2007 | ⭐⭐⭐⭐⭐ |
| [[PT-METH-004-GroundedTheory-QualitativeAnalysis]] | Grounded Theory Analysis | Strauss & Corbin 1990 | ⭐⭐⭐⭐ |

---

## Tool Coverage Matrix

| Tool | Phase 1 Prompts | Phase 2 Prompts |
|------|----------------|----------------|
| Semantic Scholar | PT-P1S1-001, PT-P1S1-002 | — |
| Google Scholar | PT-P1S1-003 | — |
| arXiv | PT-P1S1-004 | — |
| Consensus | PT-P1S1-005 | — |
| Undermind | PT-P1S1-006 | — |
| Research Rabbit | PT-P1S1-007 | — |
| Elsevier/Mendeley | PT-P1S1-008 | — |
| Connected Papers | PT-P1S2-001 | — |
| LitMaps | PT-P1S2-002 | — |
| Claude | PT-P1S2-003, PT-P1S4-001, PT-P1S5-001, PT-P1S6-001, PT-P1S7-001 | PT-P2-001, PT-P2-004 |
| Perplexity | PT-P1S2-004, PT-P1S7-003 | — |
| Gemini | PT-P1S2-005, PT-P1S4-003 | — |
| Elicit | PT-P1S3-001 | — |
| NotebookLM | PT-P1S3-002 | — |
| Zotero | PT-P1S3-003 | — |
| Researcher | PT-P1S3-004 | — |
| ChatGPT | PT-P1S4-002, PT-P1S5-002, PT-P1S6-002 | PT-P2-004 |
| Grok | PT-P1S7-002 | — |
| Cursor + Claude Code | — | PT-P2-002 |

---

## Methodology Coverage Matrix

| Methodology | Prompts |
|-------------|---------|
| SLR / PRISMA | PT-P1S1-001–008, PT-METH-001 |
| Keshav Three-Pass | PT-P1S3-002, PT-METH-002 |
| RCOIF Framework | PT-P1S1-006, PT-P1S2-003, PT-P1S4-001, PT-P1S5-001, PT-P1S6-001, PT-P2-001 |
| DSR (Hevner/Peffers) | PT-METH-003, PT-P1S6-001 |
| EGI (Exploratory Guided Iteration) | PT-P1S5-001 |
| AMI (Auto-Diagnosis and Improvement) | PT-P1S2-003, PT-P1S7-001 |
| DRCA (Deconstruction-Reconstruction) | PT-P1S4-001 |
| IIPR (Inverse Prompt Engineering) | PT-P1S5-002 |
| Grounded Theory | PT-METH-004 |
| SDD / BMAD / OpenSpec | PT-P2-001 |
| Context Engineering | PT-P2-003 |
| Marco Veritas | PT-P1S3-003, PT-P1S7-003, PT-P2-004 |
| Wilcoxon / Statistics | PT-P1S6-001 |
| CodeCarbon / Sustainability | PT-P1S6-001, PT-P2-002 |

---

## Related MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Research-Pipeline]]
- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI-v2]]
- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]

---

## 🧪 PUMA Experiment Prompts (Ollama)

### Issue Triage Prompts (Jira SR)
- [[60 - Resources/61 Prompts/PT-PUMA-Triage-ZeroShot]] — Zero-shot triage
- [[60 - Resources/61 Prompts/PT-PUMA-Triage-FewShot3]] — 3-shot triage
- [[60 - Resources/61 Prompts/PT-PUMA-Triage-FewShot6]] — 6-shot triage
- [[60 - Resources/61 Prompts/PT-PUMA-Triage-CoT]] — Chain-of-thought triage

### Effort Estimation Prompts (TAWOS)
- [[60 - Resources/61 Prompts/PT-PUMA-Estimation-ZeroShot]] — Zero-shot estimation
- [[60 - Resources/61 Prompts/PT-PUMA-Estimation-FewShot]] — Few-shot estimation
- [[60 - Resources/61 Prompts/PT-PUMA-Estimation-CoT]] — CoT estimation

---

## 📊 Prompt Methodology Index

| Methodology | Notes | Example Prompt |
|-------------|-------|---------------|
| RCOIF | [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]] | [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-RCOIF-Research]] |
| Zero-Shot CoT | [[30 - Permanent/31 Concepts/PN-Chain-of-Thought]] | [[60 - Resources/61 Prompts/PT-PUMA-Triage-CoT]] |
| Few-Shot | [[30 - Permanent/31 Concepts/PN-Few-Shot-Prompting]] | [[60 - Resources/61 Prompts/PT-PUMA-Triage-FewShot3]] |
| EGI | [[30 - Permanent/33 Frameworks/PN-EGI-Framework]] | [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-EGI-Exploration]] |
| AMI | [[30 - Permanent/33 Frameworks/PN-AMI-Framework]] | [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-AMI-Review]] |
| DRCA | [[30 - Permanent/33 Frameworks/PN-DRCA-Framework]] | [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-DRCA-Paper]] |
| IIPR | [[30 - Permanent/33 Frameworks/PN-IIPR-Framework]] | [[60 - Resources/61 Prompts/61.1 LLM-Tools/PT-Claude-IIPR-Prompt-Refinement]] |
| Contextual Anchoring | [[30 - Permanent/33 Frameworks/PN-Contextual-Anchoring]] | Multiple |
