---
id: MOC-Home
title: PUMA Vault
type: home
tags:
created: 2026-03-01
updated: 2026-04-12
methodology:
  - PARA
  - GTD
  - Zettelkasten
  - JohnnyDecimal
  - SDD
  - BMAD
  - CDD
  - KeshavThreePass
  - PRISMA
  - OpenSpec
  - ContextEngineering
  - Marco-Veritas
  - TDD
  - Popper-Falsifiability
---

<p align="center">
  <img src="https://raw.githubusercontent.com/pumacp/puma/main/assets/img/PUMA.png" alt="PUMA 307" width="307" />
</p>

---

<p align="center">
  <a href="https://github.com/pumacp/puma-vault/" rel="noopener noreferrer">
    <img alt="PUMA Vault"
         src="https://img.shields.io/badge/Explore%20PUMA%20Vault-Click%20Here-00bfff?style=for-the-badge&logo=github&cacheSeconds=1"
         style="display:inline-block; vertical-align:middle; margin:0 8px;" height="60" width="420" />
  </a>
  </p>

<h2 align="center">Benchmark - Local LLM Evaluation Framework</h2>

<br>
<p align="center">
  <a href="https://github.com/pumacp/puma" rel="noopener noreferrer">
    <img alt="PUMA Repo"
         src="https://img.shields.io/badge/Explore%20PUMA%20Repo-Click%20Here-00bfff?style=for-the-badge&logo=github&cacheSeconds=1"
         style="display:inline-block; vertical-align:middle; margin:0 8px;" />
  </a>
  </p>

---

# PUMA Research Vault

> **Platform for Understanding and Management with Agents — Empirical Benchmark for LLM-Assisted ICT Project Management**

> [!ABSTRACT] 
> A unified, multi-methodology knowledge system for research on autonomous AI agents applied to software project management. This vault integrates six knowledge management paradigms, multiple research methodologies, a rich prompt library, and a custom Claude AI skill system — all organized under the Johnny Decimal numbering scheme.

---

## Table of Contents
1. [Project Overview](#overview)
2. [Knowledge Management Methodologies](#methodologies)
3. [Research Frameworks](#research-frameworks)
4. [Note Types & Prefixes](#note-types)
5. [The .claude Folder & Skills](#claude-folder)
6. [Vault Structure (Johnny Decimal)](#vault-structure)
7. [Full Index of Files](#full-index)
    - [Root](#idx-root)
    - [00 — Meta](#idx-00)
    - [10 — Inbox](#idx-10)
    - [20 — Literature](#idx-20)
    - [30 — Permanent](#idx-30)
    - [40 — Projects](#idx-40)
    - [50 — Areas](#idx-50)
    - [60 — Resources](#idx-60)
    - [70 — Archive](#idx-70)
    - [80 — MOC](#idx-80)
    - [90 — GTD](#idx-90)
    - [· claude](#idx-claude)

---

<a name="overview"></a>
## 1. Project Overview

PUMA (**PUMA Understanding & Management w Agents**) is a research project investigating whether autonomous Large Language Model agents can perform practical software project management tasks — specifically issue triage and effort estimation — with accuracy and reproducibility comparable to human experts.

The project is conducted as a project in ICT Engineering and uses a multi-stage empirical pipeline: systematic literature review → artifact design → LLM-based agent construction → experiment on real-world datasets (TAWOS, Jira SR) → statistical validation and replication package publication.

<p align="center">
  <img src="00%20-%20Meta/Assets/obsidian.png" alt="Obsidian" width="509" />
</p>

### Core Mission
Design, implement, and empirically evaluate a multi-agent LLM system — the PUMA platform — that autonomously triages software issues (classifying type, priority, and component) and estimates story-point effort from issue text. The platform is benchmarked against human-annotated ground truth using standard SE metrics (accuracy, F1, MAE, MRE) and statistical tests (Wilcoxon, ANOVA).

### Research Hypotheses
- **H1 (Triage):** An LLM agent using few-shot prompting achieves >75% F1 on issue type and priority classification on the TAWOS dataset.
- **H2 (Estimation):** An LLM agent using chain-of-thought reasoning achieves a Mean Relative Error ≤35% on story-point estimation on the Jira SR dataset.

### Datasets
- **TAWOS:** The Agile Work Items and Operations Study. A curated dataset of Jira issues from multiple open-source projects, providing ground-truth labels for type, priority, component, and resolution. Hosted on GitHub (SOLAR-group/TAWOS).
- **Jira SR (Story Points):** Zenodo dataset (DOI: 10.5281/zenodo.5901893) containing story point estimates and issue descriptions from multiple industrial and open-source Jira projects, enabling regression and classification experiments on effort estimation.

### Technology Stack
`Claude (Anthropic)` `GPT-4o (OpenAI)` `Llama 3 (local)` `Ollama` `Python` `Zotero` `Obsidian` `GitHub Actions` `Semantic Scholar` `Google Scholar` `Consensus` `arXiv` `IEEE Xplore` `Docker` `Git` `GitHub Pages` `BrowserOS` `Opencode`"

---

### 1.1 PUMA - Tools, Platforms, and Public Profiles

> [!ABSTRACT] Purpose
> This README systematically documents and provides traceability for the entire ecosystem of tools, digital platforms, and public profiles utilized in the development of the **PUMA Project**. Transparency in the use of research and development tools is a primary ethical and methodological requirement, especially when employing Generative AI systems as epistemic partners in the research process.

---

#### 1.1. Primary Access Points & Repositories

> [!INFO] Code & Documentation Hubs
> All technical artifacts, specifications, and the research vault are hosted on GitHub under the **pumacp** organization.

| Resource | Description | URL |
| :--- | :--- | :--- |
| **GitHub Organization** | Main project hub | [https://github.com/pumacp](https://github.com/pumacp) |
| **PUMA Vault (Source)** | Obsidian Vault source files | [https://github.com/pumacp/puma-vault](https://github.com/pumacp/puma-vault) |
| **PUMA Vault (Web)** | Live web version of the Vault | [https://pumacp.github.io/puma-vault/](https://pumacp.github.io/puma-vault/) |
| **GitHub Vault Wiki** | Project documentation wiki | [https://github.com/pumacp/puma-vault/wiki](https://github.com/pumacp/puma-vault/wiki) |
| **PUMA Code Repo** | Main application source code | [https://github.com/pumacp/puma](https://github.com/pumacp/puma) |
| **YouTube Playlist** | Demonstrations & Video logs | [https://www.youtube.com/feed/playlists](https://www.youtube.com/feed/playlists) |

---

#### 1.2. AI-Powered Research Platforms

##### 1.2.1 NotebookLM Research Notebooks
The following notebooks represent specialized AI contexts trained on the project's specific bibliographic corpus for synthesis and deep analysis.

- [ ] **PUMA - 1. AI Agents & Swarm Intelligence** | [Access Notebook](https://notebooklm.google.com/notebook/07a22c3a-f60a-4a82-8260-bf8236ca6855)
- [ ] **PUMA - 1. Scientific Ideation** | [Access Notebook (Preview)](https://notebooklm.google.com/notebook/7cf6498c-223f-424e-8fe5-39c31a235f23/preview)
- [ ] **PUMA - 2. Literature Discovery** | [Access Notebook](https://notebooklm.google.com/notebook/88c75743-be48-4432-9934-d1f8098dc4c5)
- [ ] **PUMA - 3. Systematic Review** | [Access Notebook](https://notebooklm.google.com/notebook/9c7aa64a-99ae-46af-bc41-edf67adb7be6)
- [ ] **PUMA - 4. Theoretical Framework** | [Access Notebook](https://notebooklm.google.com/notebook/8e45222e-8b9a-4ab7-a7c2-c2dbcc855676)
- [ ] **PUMA - 5. Hypothesis Generation** | [Access Notebook](https://notebooklm.google.com/notebook/f11eac9d-71d2-49a9-8a85-15a2831692f5)
- [ ] **PUMA - 6. Experimental Design** | [Access Notebook](https://notebooklm.google.com/notebook/6828418c-32ec-4e30-9fe7-1050d4246b9e)
- [ ] **PUMA - 7. Critical Analysis** | [Access Notebook](https://notebooklm.google.com/notebook/f59a9677-a0d0-4928-b8ad-39bf248f35f9)
- [ ] **PUMA - 8. Scientific Writing** | [Access Notebook](https://notebooklm.google.com/notebook/737b8d23-5601-4920-bbc0-f4de281d3be1)
- [ ] **PUMA - 9. Review Output** | [Access Notebook](https://notebooklm.google.com/notebook/87deeb50-8e16-41c0-bc13-b4ea7243d752)

##### 1.2.2 Consensus Academic Search Profiles
Publicly shared searches and bibliographies focused on evidence-based AI research.

* **Advanced Academic Research Prompt:** [View Search](https://consensus.app/search/prompt-for-advanced-academic-research/YolH5kQSRyA1AaoHwNFyw/?utm_source=share&utm_medium=clipboard)
* **Master Bibliography:** [View Search](https://consensus.app/search/bibliography/YolH5kQSRyA1AaoHwNFyw/)
* **Step-by-Step Research Methodology:**
    1. [Scientific Ideation](https://consensus.app/search/1-scientific-ideation/pJTBL6n8TZCgCQGiUHGAZg/)
    2. [Literature Discovery](https://consensus.app/search/2-literature-discovery/4yrbLFpnQ-61Mj9i4gB7Dw/)
    3. [Systematic Review](https://consensus.app/search/3-systematic-review/YpjtsXl6Sy-cYE661R4u6g/)
    4. [Theoretical Framework](https://consensus.app/search/4-theoretical-framework/b3upmKAwQA6CZ6HXmnpNfw/)
    5. [Hypothesis Generation](https://consensus.app/search/5-hypothesis-generation/Gwo-Sjy2RvOg_XfBoY-f1w/)
    6. [Experimental Design](https://consensus.app/search/6-experimental-design/tJxdutFISF6pDGt3cdLbVA/)
    7. [Critical Analysis](https://consensus.app/search/7-critical-analysis/zlVwmALzTd-Q7czMSNX7iQ/)
    8. [Scientific Writing](https://consensus.app/search/8-scientific-writing/Qyc5eFXUR7qdTlc_Gol2Xw/)
    9. [Review Output](https://consensus.app/search/9-review-output/ayaH1XacQ1ehkroUsF9XwQ/)

---

#### 1.3. Knowledge & Bibliographic Management

##### 1.3.1 Zotero Public Library
Centralized metadata and PDF management for all project citations.
> [!LINK] [PUMA Public Library (Zotero)](https://www.zotero.org/pumacp/library)
> *RSS/API Access:* [JSON/Atom Feed](https://api.zotero.org/users/20166221/items/top?direction=asc&format=atom&sort=title&key=LJRpz6CWHKqns1k1fgbZylhL)

##### 1.3.2 Researcher.Discovery Reading Lists
Curated collections for specific project domains.

| Collection Name | Link |
| :--- | :--- |
| **Main PUMA Library** | [Access List](https://discovery.researcher.life/my-library/reading-list/1815730) |
| **LLM Benchmark Core** | [Access List](https://discovery.researcher.life/my-library/reading-list/1815726) |
| **Project Management Benchmarks** | [Access List](https://discovery.researcher.life/my-library/reading-list/1811429) |
| **Local LLM Benchmarking** | [Access List](https://discovery.researcher.life/my-library/reading-list/1811261) |
| **LLM Based Agents** | [Access List](https://discovery.researcher.life/my-library/reading-list/1815722) |
| **Phase 1: Scientific Ideation** | [Access List](https://discovery.researcher.life/my-library/reading-list/1815872) |
| **Phase 2: Literature Discovery** | [Access List](https://discovery.researcher.life/my-library/reading-list/1815877) |
| **Phase 3: Systematic Review** | [Access List](https://discovery.researcher.life/my-library/reading-list/1815881) |
| **Phase 4: Theoretical Framework** | [Access List](https://discovery.researcher.life/my-library/reading-list/1815884) |
| **Phase 5: Hypothesis Generation** | [Access List](https://discovery.researcher.life/my-library/reading-list/1815888) |
| **Phase 6: Experimental Design** | [Access List](https://discovery.researcher.life/my-library/reading-list/1815892) |
| **Phase 7: Critical Analysis** | [Access List](https://discovery.researcher.life/my-library/reading-list/1815894) |
| **Phase 8: Scientific Writing** | [Access List](https://discovery.researcher.life/my-library/reading-list/1815898) |
| **Phase 9: Review Output** | [Access List](https://discovery.researcher.life/my-library/reading-list/1815901) |

##### 1.3.3 ResearchRabbit & Storage
* **ResearchRabbit Map 1:** [Folder Share 1](https://app.researchrabbit.ai/folder-shares/d8244f17-47f7-4f6c-a589-473876578b54)
* **ResearchRabbit Map 2:** [Folder Share 2](https://app.researchrabbit.ai/folder-shares/b6c00471-2f28-4c66-85f5-ab5399470228)
* **Google Drive (Full Papers Repo):** [Access PDF Collection](https://drive.google.com/drive/folders/1TKbYhYqLIrq7liAPISF7ztS2Bv0l7vZS?usp=sharing)

---

#### 1.4. Generative AI Research Partners

##### 1.4.1 Custom AI Profiles & Spaces
* **Gemini (PUMA GEM):** [Access Profile](https://gemini.google.com/gem/1h-rxrzZagTsvX59_CGfaoDHjisJ48cz7?usp=sharing)
* **Perplexity PUMA Space:** [Access Space](https://www.perplexity.ai/spaces/puma-6IpatdqAS_yOxg9j69qvAQ)

##### 1.4.2 Research Session Artifacts
* **Claude (Scientific Ideation Session):** [View Chat Share](https://claude.ai/share/b3b80d43-d1bd-49ac-a067-53bd3d7c0f93)
* **ChatGPT (Scientific Ideation Session):** [View Chat Share](https://chatgpt.com/share/69d689d8-2150-8389-ab5d-3500e8c0b930)

---

#### 1.5. Ecosystem Table

| Category | Primary Tools | Methodology / Key Standard |
| :--- | :--- | :--- |
| **D.1 Repositories** | GitHub, Pages, Wiki | SDD, Open Source, DSR |
| **D.2 AI Research** | NotebookLM, Consensus, R.Discovery | SLR, PRISMA, Keshav |
| **D.3 AI Assistants** | Claude, ChatGPT, Gemini | Prompt Engineering, Chain-of-Thought |
| **D.4 Documentation** | Obsidian, GitHub Pages | Zettelkasten, PARA, Johnny Decimal |

---

#### 1.6. Open Science & Reproducibility Statement

> [!SUCCESS] Note
> This ecosystem is organized into five functional categories corresponding to specific domains within the PUMA research cycle. All listed resources are **publicly accessible** and are part of the project's transparency infrastructure, aligned with the **Open Science** principles and the commitment to the **MIT License**.

---

<a name="methodologies"></a>
## 2. Knowledge Management Methodologies

<p align="center">
  <img src="00%20-%20Meta/Assets/research_pipeline.svg" alt="Obsidian" width="509" />
</p>

The vault fuses six complementary knowledge management systems into a single coherent workspace. Each system is not used in isolation — they reinforce each other, each covering a different dimension of the research lifecycle.

### MOC — Maps of Content
MOC notes act as index pages that gather links to related notes by topic, forming a navigable graph of knowledge rather than a rigid hierarchy. Each major domain (agents, benchmarks, methods, tools, videos) has a dedicated MOC in `80 - MOC/81 Topic-Maps/`. The MOC layer is the primary navigation surface for the vault; it replaces folders as the main organizational paradigm at the semantic level.

### GTD — Getting Things Done
David Allen's GTD system governs all task and commitment management. The vault's `90 - GTD/` area houses the active task list, master projects list, and someday/maybe queue. Daily and weekly reviews (templated) ensure that captured tasks are processed, clarified, and either acted upon, deferred, or discarded. GTD prevents the research inbox from becoming a graveyard of unprocessed ideas.

### PARA — Projects · Areas · Resources · Archive
Tiago Forte's PARA framework provides the macro-level organizational skeleton. `40 - Projects` holds active, deadline-bound research work. `50 - Areas` contains ongoing responsibilities with no end date. `60 - Resources` stores reusable assets. `70 - Archive` holds completed material. PARA ensures every note has a home and that homes decay gracefully as work evolves.

### Zettelkasten
Niklas Luhmann's slip-box methodology generates atomic, permanent, densely-linked knowledge notes in `30 - Permanent/`. Each permanent note encodes a single idea, carries a unique identifier, and links to related notes by concept rather than by topic. The Zettelkasten is the intellectual core of the vault. Literature notes (`LN-`) feed the Zettelkasten; permanent notes (`PN-`) are its output.

### Johnny Decimal
A numeric address system that assigns a unique two-digit code to every area (00–90) and a decimal sub-code to every sub-area (20.1, 20.2, …). This prevents folder sprawl, enables precise cross-referencing (e.g., *see 60.64 Glossary*), and makes every file findable by its address alone.

### SDD / BDD / BMAD
**Spec-Driven Development (SDD)** treats formal specifications as the source of truth. **Behaviour-Driven Development (BDD)** expresses requirements as human-readable scenarios. **BMAD (Build, Manage, Adapt, Deploy)** is an AI-native project management methodology that orchestrates specialized AI agents through clearly defined roles (Analyst, Architect, QA, etc.) using structured PRDs and sprint boards.

---

<a name="research-frameworks"></a>
## 3. Research Frameworks

PUMA integrates a layered stack of research methodologies — from the macro study design down to the micro level of individual prompting strategies.

### Primary Research Methods
- **EBSE + SLR / PRISMA:** Evidence-Based Software Engineering and Systematic Literature Review (reported using PRISMA 2020) map the state of the art on LLM agents.
- **DSR — Design Science Research:** Hevner et al.'s framework treats the PUMA agent platform as an *artifact* to be evaluated against utility criteria.
- **Grounded Theory:** Used for qualitative analysis of emergent patterns — particularly for analysing agent reasoning traces and failure modes.
- **MIT Student Method:** A structured research workflow (vision → steps → news) from the MIT AI Lab (Working Paper WP316). Literature notes follow a three-pass reading protocol (Keshav 2007).

### Prompting & Agent Engineering Frameworks

| Framework | Category | Description |
| :--- | :--- | :--- |
| **RCOIF** | Prompting | Role · Context · Objective · Instructions · Format. Default format across the vault. |
| **EGI** | Prompting | Explicit Goal-setting and Iterative refinement loop. |
| **AMI** | Prompting | Anchored Multi-step Inference to prevent reasoning drift. |
| **DRCA** | Prompting | Decompose · Reason · Critique · Answer. |
| **IIPR** | Prompting | Intent · Information · Process · Result. |
| **CoT** | Prompting | Chain-of-Thought prompting for step-by-step reasoning. |
| **Few-Shot** | Prompting | Provides 3–8 labelled examples in the prompt context. |
| **Zero-Shot CoT**| Prompting | Model reasons without examples, guided by "think step by step". |
| **CDD** | Development | Context-Driven Development: treatments of context window as primary design space. |
| **Agent OS** | Architecture | Framework for orchestrating specialized agents through a shared interface. |
| **Agent Prompt Engineering** | Architecture | Discipline of designing and testing system prompts for autonomous agents. |

---

<a name="note-types"></a>
## 4. Note Types & Prefixes

| Prefix | Type | Location | Example |
| :--- | :--- | :--- | :--- |
| `FL-` | Fleeting Note | 10 - Inbox | FL-2026-03-15-LLM-idea |
| `LN-` | Literature Note | 20 - Literature | LN-Tawosi2022-TAWOS |
| `PN-` | Permanent Note | 30 - Permanent | PN-Few-Shot-Prompting |
| `ST-` | Structure Note | 30 - Permanent | ST-Prompting-Strategies |
| `SRC-` | Source Note | 30 - Permanent/36 Sources | SRC-Keshav-2007-HowToReadPaper |
| `PER-` | Person Note | 30 - Permanent/37 Persons | PER-Yao-Shunyu |
| `RES-` | Results Note | 30 - Permanent/34 Results | RES-Results-Placeholders |
| `PR-` | Project Note | 40 - Projects | PR-PUMA-Ch1-Introduction |
| `SP-` | Spec Note | 40 - Projects/Specs | SP-Triage-Agent-v1 |
| `EX-` | Experiment Note | 40 - Projects/Experiments | EX-Llama32-ZeroShot-Triage |
| `PT-` | Prompt Template | 60 - Resources/61 Prompts | PT-Claude-RCOIF-Research |
| `WF-` | Workflow Note | 60 - Resources/62 Workflows | WF-SLR-Pipeline |
| `CL-` | Checklist | 60 - Resources/63 Checklists | CL-Quality-Checklists |
| `BIB-` | Bibliography | 60 - Resources/65 Bibliographies | BIB-Master-APA7 |
| `KW-` | Keyword Map | 60 - Resources/64 Glossary | KW-Category1-AI-Agents |
| `VID-` | Video Note | 20 - Literature/20.4 Videos-Podcasts | VID-AGT-001-Karpathy-RAG |
| `GT-` | GTD Note | 90 - GTD | GT-Weekly-Review-2026-W10 |
| `MC-` | Map of Content | 80 - MOC | MC-LLM-Benchmarks |
| `BMAD-` | BMAD Agent Doc | 40 - Projects/BMAD-Agents | BMAD-PRD-PUMA |

---

<a name="claude-folder"></a>
## 5. The .claude Folder & Skills

The `.claude/` folder is the AI integration layer of the vault. It contains the **PUMA skill library** (custom skills) and the **obsidian-skills plugin**. These turn Claude Code into a domain-aware research assistant that understands vault conventions and research methodologies.

### PUMA Custom Skills

<details>
  <summary>+ Click to expand</summary>

- **puma-core**: Defines project identity, Johnny Decimal rule set, and thinking framework.
- **puma-orchestrator**: Protocols for coordinating specialized agents.
- **puma-agent-design**: Guidelines for agent roles, tool specs, and memory architecture.
- **puma-agile**: Agile conventions adapted for AI-assisted development cycles.
- **puma-bmad**: BMAD method implementation: PRD formats and agent rosters.
- **puma-cdd**: Context-Driven Development rules and context window budgeting.
- **puma-experiment**: Protocol for reproducible experiment notes and logging.
- **puma-openspec**: Standards for writing machine-readable specifications.
- **puma-sdd**: Spec-Driven Development conventions (spec-first workflow).
- **puma-spec-kit**: Templates for architecture, agents, and datasets.
- **puma-moc**: Rules for creating and maintaining Maps of Content.
- **puma-zettelkasten**: Atomic note principles and Zettelkasten Hub rules.
- **puma-rcoif**: Implements the RCOIF prompting framework.
- **puma-cot**: Chain-of-Thought prompting guidelines.
- **puma-prompting**: Master skill consolidating all prompting frameworks.
- **puma-advanced-prompt**: Self-consistency, multi-turn design, and red-teaming.
- **puma-research**: Master research skill for the PUMA pipeline.
- **puma-literature-review**: SLR execution protocol (PICO/PRISMA).
- **puma-keshav-method**: Three-pass paper reading protocol implementation.
- **puma-mit-student-method**: vision → steps → news structure.
- **puma-dataview**: Dataview query syntax for dynamic indexing.
- **puma-research-tools**: Reference for Semantic Scholar, ResearchRabbit, etc.
- **puma-zotero**: Integration conventions for citations.
- **puma-vault-architecture**: Johnny Decimal address ranges and folder semantics.
- **puma-obsidian-governance**: Plugin configuration and frontmatter schema.
- **puma-rules**: Binding governance rules (Always/Never).
- **puma-anti-patterns**: Catalogue of mistakes to avoid (e.g., flat file dumps).
- **puma-obsidian-cli**: Instructions for interacting with the vault from the terminal.


</details>


### Obsidian-Skills Plugin

<details>
  <summary>+ Click to expand</summary>

- **obsidian-markdown**: Reference for callouts, embeds, and frontmatter.
- **obsidian-cli**: Reference for `obsidian create`, `search`, and `open` commands.
- **obsidian-bases**: Reference for the native database feature.
- **json-canvas**: JSON Canvas format specification for programmatic editing.
- **defuddle**: Skill for extracting clean text from web pages.
</details>

---

<a name="vault-structure"></a>
## 6. Vault Structure (Johnny Decimal)

| Address | Folder | PARA Layer | Purpose |
| :--- | :--- | :--- | :--- |
| `00` | 00 - Meta | — | Templates, dashboards, plugin configs, CSS. |
| `10` | 10 - Inbox | Inbox | Raw capture zone. Fleetings notes processed via GTD. |
| `20` | 20 - Literature | Resources | External source materials: papers, books, datasets. |
| `20.1` | 20.1 Papers | — | Lit notes organized by research cluster. |
| `20.2` | 20.2 Books | — | Lit notes for books. |
| `20.3` | 20.3 Datasets | — | Documentation for TAWOS, Jira SR, etc. |
| `20.4` | 20.4 Videos-Podcasts | — | Topic-organized video notes (Agent-arch, RAG, etc). |
| `20.5` | 20.5 Repos-Code | — | Documentation of codebases and toolkits. |
| `30` | 30 - Permanent | — | Zettelkasten: atomic, concept-linked notes. |
| `40` | 40 - Projects | Projects | Active research tracks, specs, and experiments. |
| `50` | 50 - Areas | Areas | Long-term responsibilities (PhD Admin, Ethics). |
| `60` | 60 - Resources | Resources | Reusable assets: prompts, workflows, glossary. |
| `70` | 70 - Archive | Archive | Completed stages and deprecated drafts. |
| `80` | 80 - MOC | — | Maps of Content: the semantic navigation layer. |
| `90` | 90 - GTD | — | Task management, sprint boards, and reviews. |

---

<a name="full-index"></a>
## 7. Full Index of Files **386 notes**
All files are listed as clickable relative links, organized by folder following the Johnny Decimal structure. Click any link to open the file.

---

<a name="idx-root"></a>
### Root
* [00 - Home.md](00%20-%20Home.md)

---

<a name="idx-00"></a>
### 00 — Meta **25 files**

#### Dashboards
* [Dashboard-Experiment-Status.md](00%20-%20Meta/Dashboards/Dashboard-Experiment-Status.md)
* [Dashboard-Research-Progress.md](00%20-%20Meta/Dashboards/Dashboard-Research-Progress.md)

#### Plugins-Config
* [Git-GitHub-Setup.md](00%20-%20Meta/Plugins-Config/Git-GitHub-Setup.md)
* [Recommended-Plugins.md](00%20-%20Meta/Plugins-Config/Recommended-Plugins.md)

#### Snippets
* [CSS-Snippets-Guide.md](00%20-%20Meta/Snippets/CSS-Snippets-Guide.md)

#### Templates

<details>
  <summary>+ Click to expand</summary>

* [Daily Note Template.md](00%20-%20Meta/Templates/Daily%20Note%20Template.md)
* [Idea Template.md](00%20-%20Meta/Templates/Idea%20Template.md)
* [Log Template.md](00%20-%20Meta/Templates/Log%20Template.md)
* [MOC Template.md](00%20-%20Meta/Templates/MOC%20Template.md)
* [Permanent Note Template.md](00%20-%20Meta/Templates/Permanent%20Note%20Template.md)
* [Private Note Template.md](00%20-%20Meta/Templates/Private%20Note%20Template.md)
* [Task Template.md](00%20-%20Meta/Templates/Task%20Template.md)
* [Template-Book-Note.md](00%20-%20Meta/Templates/Template-Book-Note.md)
* [Template-Daily-Review.md](00%20-%20Meta/Templates/Template-Daily-Review.md)
* [Template-Experiment-Note.md](00%20-%20Meta/Templates/Template-Experiment-Note.md)
* [Template-Keshav-ThreePass.md](00%20-%20Meta/Templates/Template-Keshav-ThreePass.md)
* [Template-Literature-Note-Paper.md](00%20-%20Meta/Templates/Template-Literature-Note-Paper.md)
* [Template-Permanent-Note.md](00%20-%20Meta/Templates/Template-Permanent-Note.md)
* [Template-Person-Note.md](00%20-%20Meta/Templates/Template-Person-Note.md)
* [Template-Prompt-Note.md](00%20-%20Meta/Templates/Template-Prompt-Note.md)
* [Template-Source-Note.md](00%20-%20Meta/Templates/Template-Source-Note.md)
* [Template-Sprint-Board.md](00%20-%20Meta/Templates/Template-Sprint-Board.md)
* [Template-Structure-Note.md](00%20-%20Meta/Templates/Template-Structure-Note.md)
* [Template-Video-Tool-Repo-Notes.md](00%20-%20Meta/Templates/Template-Video-Tool-Repo-Notes.md)
* [Template-Weekly-Review.md](00%20-%20Meta/Templates/Template-Weekly-Review.md)

</details>


---

<a name="idx-10"></a>
### 10 — Inbox **4 files**
* [README-Inbox.md](10%20-%20Inbox/README-Inbox.md)

#### Fleeting-Notes
* [Template-Fleeting-Note.md](10%20-%20Inbox/Fleeting-Notes/Template-Fleeting-Note.md)
* [Untitled Kanban.md](10%20-%20Inbox/Fleeting-Notes/Untitled%20Kanban.md)

#### Quick-Capture
* [Quick-Capture-Log.md](10%20-%20Inbox/Quick-Capture/Quick-Capture-Log.md)

---

<a name="idx-20"></a>
### 20 — Literature **~160 files**
* [MOC Library.md](20%20-%20Literature/MOC%20Library.md)

#### 20.1 Papers
<details>
  <summary>+ Click to expand</summary>
  
* [MOC Paper and Article Notes.md](20%20-%20Literature/20.1%20Papers/MOC%20Paper%20and%20Article%20Notes.md)
* [README-Papers.md](20%20-%20Literature/20.1%20Papers/README-Papers.md)
* [LN-Angermeir-2025-Reproducibility.md](20%20-%20Literature/20.1%20Papers/LN-Angermeir-2025-Reproducibility.md)
* [LN-Calikli-2025-RequestFormats.md](20%20-%20Literature/20.1%20Papers/LN-Calikli-2025-RequestFormats.md)
* [LN-KeyPapers-CoGEE-Angermeir-Flyvbjerg.md](20%20-%20Literature/20.1%20Papers/LN-KeyPapers-CoGEE-Angermeir-Flyvbjerg.md)
* [LN-Spichkova-2025-CognitiveAgents.md](20%20-%20Literature/20.1%20Papers/LN-Spichkova-2025-CognitiveAgents.md)

</details>

##### Agent-Architectures
<details>
  <summary>+ Click to expand</summary>
  
* [LN-Arora-2024-MASAI.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-Arora-2024-MASAI.md)
* [LN-AuthenticatedWorkflows-2026.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-AuthenticatedWorkflows-2026.md)
* [LN-Chen-2024-RootCauseAnalysis.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-Chen-2024-RootCauseAnalysis.md)
* [LN-Flow-2025-AgenticWorkflow.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-Flow-2025-AgenticWorkflow.md)
* [LN-GraphAgent-2024.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-GraphAgent-2024.md)
* [LN-HAIF-2026-HumanAIIntegration.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-HAIF-2026-HumanAIIntegration.md)
* [LN-HiveMind-2025-SwarmOptimization.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-HiveMind-2025-SwarmOptimization.md)
* [LN-Huang-2024-InternetOfAgents.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-Huang-2024-InternetOfAgents.md)
* [LN-IntelligentSparkAgents-2024.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-IntelligentSparkAgents-2024.md)
* [LN-Jimenez-2023-SWEbench.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-Jimenez-2023-SWEbench.md)
* [LN-MAGIS-2024-GitHubIssues.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-MAGIS-2024-GitHubIssues.md)
* [LN-Masterman-2024-AgentArchSurvey.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-Masterman-2024-AgentArchSurvey.md)
* [LN-Ning-2025-AgentTaxonomy.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-Ning-2025-AgentTaxonomy.md)
* [LN-OrchestratingHumanAI-2025.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-OrchestratingHumanAI-2025.md)
* [LN-Tang-2025-LLMOrbit.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-Tang-2025-LLMOrbit.md)
* [LN-Wang-2024-OpenHands.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-Wang-2024-OpenHands.md)
* [LN-Yao-2023-TreeOfThoughts.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-Yao-2023-TreeOfThoughts.md)
* [LN-Yu-2025-DynTaskMAS.md](20%20-%20Literature/20.1%20Papers/Agent-Architectures/LN-Yu-2025-DynTaskMAS.md)

</details>

##### Agentic-Science
* [LN-Felin-2024-TheoryIsAllYouNeed.md](20%20-%20Literature/20.1%20Papers/Agentic-Science/LN-Felin-2024-TheoryIsAllYouNeed.md)
* [LN-Zhang-2025-AgenticScienceSurvey.md](20%20-%20Literature/20.1%20Papers/Agentic-Science/LN-Zhang-2025-AgenticScienceSurvey.md)

##### AI-Knowledge-Generation
<details>
  <summary>+ Click to expand</summary>
  
* [LN-ArkaniHamed-2026-GluonAmplitudes.md](20%20-%20Literature/20.1%20Papers/AI-Knowledge-Generation/LN-ArkaniHamed-2026-GluonAmplitudes.md)
* [LN-Degrave-2022-PlasmaControl.md](20%20-%20Literature/20.1%20Papers/AI-Knowledge-Generation/LN-Degrave-2022-PlasmaControl.md)
* [LN-Jain-2023-GNoME-Materials.md](20%20-%20Literature/20.1%20Papers/AI-Knowledge-Generation/LN-Jain-2023-GNoME-Materials.md)
* [LN-Jumper-2021-AlphaFold.md](20%20-%20Literature/20.1%20Papers/AI-Knowledge-Generation/LN-Jumper-2021-AlphaFold.md)
* [LN-Klinger-2025-AIScience-SocialProblem.md](20%20-%20Literature/20.1%20Papers/AI-Knowledge-Generation/LN-Klinger-2025-AIScience-SocialProblem.md)
* [LN-Lam-2023-GraphCast.md](20%20-%20Literature/20.1%20Papers/AI-Knowledge-Generation/LN-Lam-2023-GraphCast.md)
* [LN-Lu-2024-AIScientist.md](20%20-%20Literature/20.1%20Papers/AI-Knowledge-Generation/LN-Lu-2024-AIScientist.md)

</details>

##### AIOps-DevOps
* [LN-Bruneliere-2022-AIDOaRt.md](20%20-%20Literature/20.1%20Papers/AIOps-DevOps/LN-Bruneliere-2022-AIDOaRt.md)
* [LN-Chen-2025-AIOpsLab.md](20%20-%20Literature/20.1%20Papers/AIOps-DevOps/LN-Chen-2025-AIOpsLab.md)
* [LN-Hou-2025-MCP-Security.md](20%20-%20Literature/20.1%20Papers/AIOps-DevOps/LN-Hou-2025-MCP-Security.md)
* [LN-Weichbroth-2025-EmotionsSurvey.md](20%20-%20Literature/20.1%20Papers/AIOps-DevOps/LN-Weichbroth-2025-EmotionsSurvey.md)

##### Effort-Estimation
* [README.md](20%20-%20Literature/20.1%20Papers/Effort-Estimation/README.md)

##### LLM-Agents-General
<details>
  <summary>+ Click to expand</summary>
  
* [README.md](20%20-%20Literature/20.1%20Papers/LLM-Agents-General/README.md)
* [LN-Gao-2024-AgentScope.md](20%20-%20Literature/20.1%20Papers/LLM-Agents-General/LN-Gao-2024-AgentScope.md)
* [LN-Hong-2023-MetaGPT.md](20%20-%20Literature/20.1%20Papers/LLM-Agents-General/LN-Hong-2023-MetaGPT.md)
* [LN-Mialon-2023-GAIA.md](20%20-%20Literature/20.1%20Papers/LLM-Agents-General/LN-Mialon-2023-GAIA.md)
* [LN-Packer-2023-MemGPT.md](20%20-%20Literature/20.1%20Papers/LLM-Agents-General/LN-Packer-2023-MemGPT.md)
* [LN-Qian-2023-ChatDev.md](20%20-%20Literature/20.1%20Papers/LLM-Agents-General/LN-Qian-2023-ChatDev.md)
* [LN-Talebirad-2023-MultiAgentSurvey.md](20%20-%20Literature/20.1%20Papers/LLM-Agents-General/LN-Talebirad-2023-MultiAgentSurvey.md)
* [LN-Wu-2023-AutoGen.md](20%20-%20Literature/20.1%20Papers/LLM-Agents-General/LN-Wu-2023-AutoGen.md)
* [LN-Yao-2022-ReAct.md](20%20-%20Literature/20.1%20Papers/LLM-Agents-General/LN-Yao-2022-ReAct.md)
* [LN-Zelikman-2024-QuietSTaR.md](20%20-%20Literature/20.1%20Papers/LLM-Agents-General/LN-Zelikman-2024-QuietSTaR.md)
</details>

##### PM-AI-Convergence
* [README.md](20%20-%20Literature/20.1%20Papers/PM-AI-Convergence/README.md)
* [LN-Assalaarachchi-2026-AgenticSPM.md](20%20-%20Literature/20.1%20Papers/PM-AI-Convergence/LN-Assalaarachchi-2026-AgenticSPM.md)
* [LN-Cinkusz-2025-CognitiveAgentsAgilePM.md](20%20-%20Literature/20.1%20Papers/PM-AI-Convergence/LN-Cinkusz-2025-CognitiveAgentsAgilePM.md)
* [LN-Shao-2025-FutureOfWork.md](20%20-%20Literature/20.1%20Papers/PM-AI-Convergence/LN-Shao-2025-FutureOfWork.md)

##### Reproducibility-SE
* [README.md](20%20-%20Literature/20.1%20Papers/Reproducibility-SE/README.md)

##### Research-Methods
* [LN-MITAILab-WP316-HowToDoResearch.md](20%20-%20Literature/20.1%20Papers/Research-Methods/LN-MITAILab-WP316-HowToDoResearch.md)

##### Scheduling-MAS
* [LN-Li-2018-MultiProjectScheduling.md](20%20-%20Literature/20.1%20Papers/Scheduling-MAS/LN-Li-2018-MultiProjectScheduling.md)
* [LN-Sha-2026-MASchedulingRL.md](20%20-%20Literature/20.1%20Papers/Scheduling-MAS/LN-Sha-2026-MASchedulingRL.md)

##### Triage-Benchmarks
* [README.md](20%20-%20Literature/20.1%20Papers/Triage-Benchmarks/README.md)

#### 20.2 Books
* [LN-Books-KeyReferences.md](20%20-%20Literature/20.2%20Books/LN-Books-KeyReferences.md)
* [MOC Books.md](20%20-%20Literature/20.2%20Books/MOC%20Books.md)
* [Tasks of MOC Books.md](20%20-%20Literature/20.2%20Books/Tasks%20of%20MOC%20Books.md)

#### 20.3 Datasets
* [LN-Datasets-JiraSR-TAWOS.md](20%20-%20Literature/20.3%20Datasets/LN-Datasets-JiraSR-TAWOS.md)

#### 20.4 Videos-Podcasts
<details>
  <summary>+ Click to expand</summary>
  
* [LN-Videos-Repos-Community.md](20%20-%20Literature/20.4%20Videos-Podcasts/LN-Videos-Repos-Community.md)
* [MOC Podcast, Video and Seminar.md](20%20-%20Literature/20.4%20Videos-Podcasts/MOC%20Podcast%2C%20Video%20and%20Seminar.md)
* [README-Videos.md](20%20-%20Literature/20.4%20Videos-Podcasts/README-Videos.md)
* [Tasks of MOC Podcast, Video and Seminar.md](20%20-%20Literature/20.4%20Videos-Podcasts/Tasks%20of%20MOC%20Podcast%2C%20Video%20and%20Seminar.md)

</details>

##### YouTube / Context-Engineering
<details>
  <summary>+ Click to expand</summary>
  
* [LN-Videos-Context-Engineering.md](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Context-Engineering/LN-Videos-Context-Engineering.md)
* [VID-CE-001 · Context Engineering Clearly Explained](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Context-Engineering/VID-CE-001-Context-Engineering-Clearly-Explained.md)
* [VID-CE-002 · No construyas Agentes IA hasta que veas esto](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Context-Engineering/VID-CE-002-No-construyas-Agentes-IA-hasta-que-veas-esto.md)
* [VID-CE-003 · Aprende los Agent Skills](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Context-Engineering/VID-CE-003-Aprende-los-Agent-Skills-y-usalos-en-cualquie.md)
* [VID-CE-004 · Ingeniería de Contexto — La Habilidad CLAVE](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Context-Engineering/VID-CE-004-Ingenier%C3%ADa-de-Contexto-La-Habilidad-CLAVE-pa.md)
* [VID-CE-005 · How to build, evaluate and refine prompts](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Context-Engineering/VID-CE-005-How-to-build-evaluate-and-refine-prompts-wi.md)
</details>

##### YouTube / Dev-Tools-IDE
<details>
  <summary>+ Click to expand</summary>
  
* [LN-Videos-Dev-Tools-IDE.md](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Dev-Tools-IDE/LN-Videos-Dev-Tools-IDE.md)
* [VID-DEV-001 · Demo De Ticket a Pull Request en 30 minutos](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Dev-Tools-IDE/VID-DEV-001-Demo-De-Ticket-a-Pull-Request-en-30-minutos.md)
* [VID-DEV-002 · 12 Claude Code Features Every Engineer Should Know](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Dev-Tools-IDE/VID-DEV-002-12-Claude-Code-Features-Every-Engineer-Should.md)
* [VID-DEV-003 · AI Testing Series Day 1 — Test AI 10x Faster](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Dev-Tools-IDE/VID-DEV-003-AI-Testing-Series-Day-1--Test-AI-10x-Faster.md)
* [VID-DEV-004 · How I use Cursor — my best tips](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Dev-Tools-IDE/VID-DEV-004-How-I-use-Cursor--my-best-tips.md)
* [VID-DEV-005 · OpenCode — Probablemente la mejor herramienta](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Dev-Tools-IDE/VID-DEV-005-OpenCode-Probablemente-la-mejor-herramienta.md)

</details>

##### YouTube / LLM-Agents-MultiAgent
<details>
  <summary>+ Click to expand</summary>
  
* [LN-Videos-LLM-Agents-MultiAgent.md](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/LN-Videos-LLM-Agents-MultiAgent.md)
* [VID-AGT-001 · Karpathy: Just Replaced RAG With Obsidian](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-001-Karpathy-Just-Replaced-RAG-With-Obsidian--Cl.md)
* [VID-AGT-002 · 12 Factor Agents — Patterns of reliable LLM apps](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-002-12-Factor-Agents-Patterns-of-reliable-LLM-ap.md)
* [VID-AGT-003 · 3 Advanced AI agent design patterns](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-003-3-Advanced-AI-agent-design-patterns.md)
* [VID-AGT-004 · Flujos de trabajo utilizando Agentes (Andrew Ng)](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-004-Flujos-de-trabajo-utilizando-Agentes---Andrew.md)
* [VID-AGT-005 · Building AI Agents that actually work](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-005-Building-AI-Agents-that-actually-work-Full-C.md)
* [VID-AGT-006 · CrewAI vs AutoGen vs LangGraph — Features Pros](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-006-CrewAI-vs-AutoGen-vs-LangGraph-Features-Pro.md)
* [VID-AGT-007 · Construyendo IA Fiable: Evals, Trazabilidad](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-007-Construyendo-IA-Fiable-Evals-Trazabilidad-y.md)
* [VID-AGT-008 · Karpathy's Autoresearch: Near Human Performance](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-008-Karpathys-Autoresearch-We-Achieved-Near-Hum.md)
* [VID-AGT-009 · The only AutoResearch tutorial you'll ever need](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-009-The-only-AutoResearch-tutorial-youll-ever-ne.md)
* [VID-AGT-010 · No construyas Agentes IA hasta que veas esto](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-010-No-construyas-Agentes-IA-hasta-que-veas-esto.md)
* [VID-AGT-011 · AI Agent Specialization: RAG vs Fine-tuning](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-011-AI-Agent-Specialization-RAG-vs-Fine-tuning.md)
* [VID-AGT-012 · Orquestación de Agentes — Control Determinista](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-012-Orquestaci%C3%B3n-de-Agentes-Control-Determinista.md)
* [VID-AGT-013 · Agentes de IA y LangGraph](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-013-Agentes-de-IA-y-LangGraph-c%C3%B3mo-las-empresas.md)
* [VID-AGT-014 · Codelab: Construyendo un Sistema Multi-Agente](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-014-Codelab-Construyendo-un-Sistema-Multi-Agente.md)
* [VID-AGT-015 · MAIA Master Class: De NLP a la IA Agéntica](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/LLM-Agents-MultiAgent/VID-AGT-015-MAIA-Master-Class--De-NLP-a-la-IA-Ag%C3%A9ntica.md)

</details>

##### YouTube / Local-LLM-Ollama
<details>
  <summary>+ Click to expand</summary>
  
* [LN-Videos-Local-LLM-Ollama.md](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Local-LLM-Ollama/LN-Videos-Local-LLM-Ollama.md)
* [VID-LOC-001 · Mac Mini M4 básico para LLM](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Local-LLM-Ollama/VID-LOC-001-Mac-Mini-M4-b%C3%A1sico-para-LLM--Probamos-modelo.md)
* [VID-LOC-002 · Ollama vs LM Studio vs Docker Models vs Llama](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Local-LLM-Ollama/VID-LOC-002-Ollama-vs-LM-Studio-vs-Docker-Models-vs-Llama.md)
* [VID-LOC-003 · Run a Powerful AI Agent Locally (Hermes Agent)](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Local-LLM-Ollama/VID-LOC-003-Run-a-Powerful-AI-Agent-Locally--Hermes-Agen.md)
* [VID-LOC-004 · DEJA de pagar ChatGPT — Despliega tu propia IA](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Local-LLM-Ollama/VID-LOC-004-DEJA-de-pagar-ChatGPT-Despliega-tu-propia-IA.md)
* [VID-LOC-005 · Claude Code con Modelos Locales](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Local-LLM-Ollama/VID-LOC-005-Claude-Code-con-Modelos-Locales-Privacidad-y.md)

</details>

##### YouTube / MCP-Protocols
<details>
  <summary>+ Click to expand</summary>
  
* [LN-Videos-MCP-Protocols.md](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/MCP-Protocols/LN-Videos-MCP-Protocols.md)
* [VID-MCP-001 · You need to learn MCP RIGHT NOW](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/MCP-Protocols/VID-MCP-001-you-need-to-learn-MCP-RIGHT-NOW-Model-Cont.md)
* [VID-MCP-002 · How to implement secure MCP patterns](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/MCP-Protocols/VID-MCP-002-How-to-implement-secure-MCP-patterns-Identit.md)
* [VID-MCP-003 · Learn MCP For Beginners](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/MCP-Protocols/VID-MCP-003-Learn-MCP-For-Beginners--Create-Our-First-M.md)
* [VID-MCP-004 · Claude MCP has Changed AI Forever](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/MCP-Protocols/VID-MCP-004-Claude-MCP-has-Changed-AI-Forever--Heres-Wh.md)
* [VID-MCP-005 · Build ANYTHING with MCP Servers](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/MCP-Protocols/VID-MCP-005-Build-ANYTHING-with-MCP-Servers--Coding-Tuto.md)

</details>

##### YouTube / Miscellaneous
<details>
  <summary>+ Click to expand</summary>
  
* [LN-Videos-Miscellaneous.md](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Miscellaneous/LN-Videos-Miscellaneous.md)
* [VID-MISC-001 · A Visual Tour of Modern LLM Architectures](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Miscellaneous/VID-MISC-001-A-Visual-Tour-of-Modern-LLM-Architectures.md)
* [VID-MISC-002 · Supabase con IA: CLI, MCP, Skills](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Miscellaneous/VID-MISC-002-Supabase-con-IA-CLI--MCP--Skills-Automat.md)
* [VID-MISC-003 · Gemini CLI — Google's Free Open Source Coding](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Miscellaneous/VID-MISC-003-Gemini-CLI--Googles-Free-Open-Source-Coding.md)
* [VID-MISC-004 · CrewAI vs AutoGen vs LangGraph — Features](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Miscellaneous/VID-MISC-004-CrewAI-vs-AutoGen-vs-LangGraph--Features-Pr.md)
* [VID-MISC-005 · How to Permanently Fix Your Forgetful AI Agent](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Miscellaneous/VID-MISC-005-How-to-Permanently-Fix-Your-Forgetful-AI-Agen.md)

</details>

##### YouTube / Observability-Testing
<details>
  <summary>+ Click to expand</summary>
  
* [LN-Videos-Observability-Testing.md](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Observability-Testing/LN-Videos-Observability-Testing.md)
* [VID-OBS-001 · Construyendo IA Fiable: Evals, Trazabilidad](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Observability-Testing/VID-OBS-001-Construyendo-IA-Fiable-Evals-Trazabilidad-y.md)
* [VID-OBS-002 · Curso evaluación LLM con Promptfoo](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Observability-Testing/VID-OBS-002-Curso-evaluacion-LLM-con-Promptfoo--episodio.md)
* [VID-OBS-003 · AI Testing Series Day 2 — Variable Injection](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Observability-Testing/VID-OBS-003-AI-Testing-Series-Day-2--Variable-Injection.md)
* [VID-OBS-004 · Introduction to Observability and Prometheus](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Observability-Testing/VID-OBS-004-Introduction-to-Observability-and-Prometheus.md)
* [VID-OBS-005 · E124: Creando agentes con PydanticAI](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Observability-Testing/VID-OBS-005-E124--Creando-agentes-con-PydanticAI.md)

</details>

##### YouTube / PM-Agile-AI
<details>
  <summary>+ Click to expand</summary>
  
* [LN-Videos-PM-Agile-AI.md](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/PM-Agile-AI/LN-Videos-PM-Agile-AI.md)
* [VID-PM-001 · El viejo Product Manager ha muerto](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/PM-Agile-AI/VID-PM-001-El-viejo-Product-Manager-ha-muerto-bienvenid.md)
* [VID-PM-002 · El clásico Sprint hoy es demasiado lento](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/PM-Agile-AI/VID-PM-002-El-cl%C3%A1sico-Sprint-hoy-es-demasiado-lento-las.md)
* [VID-PM-003 · I Built a Second Brain That Organises Itself](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/PM-Agile-AI/VID-PM-003-I-Built-a-Second-Brain-That-Organises-Itself.md)
* [VID-PM-004 · La IA ha Matado a Scrum](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/PM-Agile-AI/VID-PM-004-La-IA-ha-Matado-a-Scrum-esto-es-lo-que-viene.md)
* [VID-PM-005 · MI INTELIGENCIA y ESTRATEGIA se disparan](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/PM-Agile-AI/VID-PM-005-MI-INTELIGENCIA-y-ESTRATEGIA-se-disparan-grac.md)

</details>

##### YouTube / RAG-VectorDB
<details>
  <summary>+ Click to expand</summary>
  
* [LN-Videos-RAG-VectorDB.md](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/RAG-VectorDB/LN-Videos-RAG-VectorDB.md)
* [VID-RAG-001 · How to Build a Scalable RAG System](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/RAG-VectorDB/VID-RAG-001-How-to-Build-a-Scalable-RAG-System-for-AI-App.md)
* [VID-RAG-002 · Introducing RAG 2.0 — Agentic RAG](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/RAG-VectorDB/VID-RAG-002-Introducing-RAG-20-Agentic-RAG--Knowledge.md)
* [VID-RAG-003 · GraphRAG LOCAL — Soluciona PARA SIEMPRE los problemas](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/RAG-VectorDB/VID-RAG-003-GraphRAG-LOCAL-Soluciona-PARA-SIEMPRE-los-pr.md)
* [VID-RAG-004 · MISO Master Class: RAG en entornos reales](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/RAG-VectorDB/VID-RAG-004-MISO-Master-Class--RAG-en-entornos-reales-y.md)
* [VID-RAG-005 · The Future of RAG is Agentic](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/RAG-VectorDB/VID-RAG-005-The-Future-of-RAG-is-Agentic--Learn-this-Str.md)
* [VID-RAG-006 · LM Studio + AnythingLLM — Process Local Documents](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/RAG-VectorDB/VID-RAG-006-LM-Studio--AnythingLLM-Process-Local-Docume.md)
* [VID-RAG-007 · Por qué NO uso RAG y qué uso en su lugar](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/RAG-VectorDB/VID-RAG-007-Por-qu%C3%A9-NO-uso-RAG-y-qu%C3%A9-uso-en-su-lugar.md)
* [VID-RAG-008 · How to Build Scalable Agentic RAG with Dify](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/RAG-VectorDB/VID-RAG-008-How-to-Build-Scalable-Agentic-RAG-with-Dify-a.md)
* [VID-RAG-009 · RAG 2.0 — Olvida las alucinaciones de tu IA](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/RAG-VectorDB/VID-RAG-009-RAG-20-Olvida-las-alucinaciones-de-tu-IA-pa.md)
* [VID-RAG-010 · Did you like NotebookLM? Create it yourself](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/RAG-VectorDB/VID-RAG-010-Did-you-like-NotebookLM-Create-it-yourself-f.md)

</details>

##### YouTube / Research-Literature
<details>
  <summary>+ Click to expand</summary>
  
* [LN-Videos-Research-Literature.md](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Research-Literature/LN-Videos-Research-Literature.md)
* [VID-RES-001 · How To Do A Literature Review STRESS FREE](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Research-Literature/VID-RES-001-How-To-Do-A-Literature-Review-STRESS-FREE.md)
* [VID-RES-002 · This EMBARRASSING AI Generated Paper Exposed](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Research-Literature/VID-RES-002-This-EMBARRASSING-AI-Generated-Paper-Exposed.md)
* [VID-RES-003 · I Compared Every Popular AI Literature Review Tool](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Research-Literature/VID-RES-003-I-Compared-Every-Popular-AI-Literature-Review.md)
* [VID-RES-004 · Ditch The Old Google Scholar — This AI Method](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Research-Literature/VID-RES-004-Ditch-The-Old-Google-Scholar--This-AI-Method.md)
* [VID-RES-005 · How To Use Research Rabbit](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Research-Literature/VID-RES-005-How-To-Use-Research-Rabbit--Effortlessly-Exp.md)
* [VID-RES-006 · La IA que todo INVESTIGADOR debería conocer](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/Research-Literature/VID-RES-006-La-IA-que-todo-INVESTIGADOR-deber%C3%ADa-conocer.md)

</details>

##### YouTube / SDD-Specs-BMAD
<details>
  <summary>+ Click to expand</summary>
  
- [LN-Videos-SDD-Specs-BMAD.md](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/SDD-Specs-BMAD/LN-Videos-SDD-Specs-BMAD.md)
- [VID-SDD-001 · Spec-Driven Development in the Real World](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/SDD-Specs-BMAD/VID-SDD-001-Spec-Driven-Development-in-the-Real-Worl.md)
- [VID-SDD-002 · The Official BMad Method Masterclass](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/SDD-Specs-BMAD/VID-SDD-002-The-Official-BMad-Method-Masterclass-Th.md)
- [VID-SDD-003 · BMAD Method V6 — PRD Architecture Agent](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/SDD-Specs-BMAD/VID-SDD-003-BMAD-Method-V6-PRD-Architecture-Agent.md)
- [VID-SDD-004 · AgentOS VS BMAD VS Spec Kit](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/SDD-Specs-BMAD/VID-SDD-004-AgentOS-VS-BMAD-VS-Spec-Kit-Which-AI-De.md)
- [VID-SDD-005 · Plan, Specify and Implement with Spec Kit](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/SDD-Specs-BMAD/VID-SDD-005-Plan-Specify-and-Implement-with-Spec-K.md)
- [VID-SDD-006 · OpenSpec is Insane — Spec-Driven Development](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/SDD-Specs-BMAD/VID-SDD-006-OpenSpec-is-Insane-Spec-Driven-Developm.md)
- [VID-SDD-007 · BMAD Method Agent Cheatsheet (From Mary)](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/SDD-Specs-BMAD/VID-SDD-007-BMAD-Method-Agent-Cheatsheet-From-Mary-.md)
- [VID-SDD-008 · Me PIDIERON que muestre CÓMO trabajo con AI](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/SDD-Specs-BMAD/VID-SDD-008-Me-PIDIERON-que-muestre-C%C3%93MO-trabajo-con.md)
- [VID-SDD-009 · Gemini CLI Conductor — Spec-Driven Development](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/SDD-Specs-BMAD/VID-SDD-009-Gemini-CLI-Conductor-Spec-Driven-Develo.md)
- [VID-SDD-010 · Spec-Driven Development for AI Agents](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/SDD-Specs-BMAD/VID-SDD-010-Spec-Driven-Development-for-AI-Agents-I.md)
- [VID-SDD-011 · BMAD vs Open Spec vs Spec Kit](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/SDD-Specs-BMAD/VID-SDD-011-BMAD-vs-Open-Spec-vs-Spec-Kit-Which-AI-.md)
- [VID-SDD-012 · El ECOSISTEMA de IA que le falta a tu agente](20%20-%20Literature/20.4%20Videos-Podcasts/YouTube/SDD-Specs-BMAD/VID-SDD-012-El-ECOSISTEMA-de-IA-que-le-falta-a-tu-ag.md)

</details>

#### 20.5 Repos-Code
<details>
  <summary>+ Click to expand</summary>
  
- [LN-Repos-AgentFrameworks.md](20%20-%20Literature/20.5%20Repos-Code/LN-Repos-AgentFrameworks.md)
- [LN-Repos-ReferenceCode.md](20%20-%20Literature/20.5%20Repos-Code/LN-Repos-ReferenceCode.md)
- [README-Repos.md](20%20-%20Literature/20.5%20Repos-Code/README-Repos.md)

</details>

#### 20.6 Tools
<details>
  <summary>+ Click to expand</summary>
  
- [LN-Tools-AI-Assistants-LLMs.md](20%20-%20Literature/20.6%20Tools/LN-Tools-AI-Assistants-LLMs.md)
- [LN-Tools-Datasets-Benchmarks.md](20%20-%20Literature/20.6%20Tools/LN-Tools-Datasets-Benchmarks.md)
- [LN-Tools-Dev-Environment.md](20%20-%20Literature/20.6%20Tools/LN-Tools-Dev-Environment.md)
- [LN-Tools-Dev-Stack.md](20%20-%20Literature/20.6%20Tools/LN-Tools-Dev-Stack.md)
- [LN-Tools-Documentation-Organisation.md](20%20-%20Literature/20.6%20Tools/LN-Tools-Documentation-Organisation.md)
- [LN-Tools-Ollama-ClaudeCode-OpenCode-BrowserOS.md](20%20-%20Literature/20.6%20Tools/LN-Tools-Ollama-ClaudeCode-OpenCode-BrowserOS.md)
- [LN-Tools-RAG-VectorDB.md](20%20-%20Literature/20.6%20Tools/LN-Tools-RAG-VectorDB.md)
- [LN-Tools-Research-Bibliographic.md](20%20-%20Literature/20.6%20Tools/LN-Tools-Research-Bibliographic.md)
- [LN-Tools-Research-Discovery.md](20%20-%20Literature/20.6%20Tools/LN-Tools-Research-Discovery.md)

</details>

#### 20.7 Blog-Web
- [LN-Web-Resources.md](20%20-%20Literature/20.7%20Blog-Web/LN-Web-Resources.md)

#### 20.8 Conferences
- [LN-Web-Resources.md](20%20-%20Literature/20.8%20Conferences/LN-Web-Resources.md)
- [MOC People and Thinkers.md](20%20-%20Literature/20.8%20Conferences/MOC%20People%20and%20Thinkers.md)

### 30 — Permanent (Zettelkasten) 35 files

#### 30 Zettelkasten-Hub
- [ST-Prompting-Strategies.md](30%20-%20Permanent/30%20Zettelkasten-Hub/ST-Prompting-Strategies.md)
- [ST-Reproducibility-Cluster.md](30%20-%20Permanent/30%20Zettelkasten-Hub/ST-Reproducibility-Cluster.md)
- [ZK-Hub-PUMA.md](30%20-%20Permanent/30%20Zettelkasten-Hub/ZK-Hub-PUMA.md)

#### 31 Concepts
<details>
  <summary>+ Click to expand</summary>
  
- [README-Concepts.md](30%20-%20Permanent/31%20Concepts/README-Concepts.md)
- [PN-ActiveReading-CognitivePractice.md](30%20-%20Permanent/31%20Concepts/PN-ActiveReading-CognitivePractice.md)
- [PN-Agentic-Science-Paradigm.md](30%20-%20Permanent/31%20Concepts/PN-Agentic-Science-Paradigm.md)
- [PN-AI-Scientific-Knowledge-Generation.md](30%20-%20Permanent/31%20Concepts/PN-AI-Scientific-Knowledge-Generation.md)
- [PN-CoT-FewShot-Prompting.md](30%20-%20Permanent/31%20Concepts/PN-CoT-FewShot-Prompting.md)
- [PN-IssueTriage-StoryPoints.md](30%20-%20Permanent/31%20Concepts/PN-IssueTriage-StoryPoints.md)
- [PN-KeyConcepts-Agents-Reproducibility-RedTeam.md](30%20-%20Permanent/31%20Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam.md)
- [PN-LLM-Local-vs-Cloud.md](30%20-%20Permanent/31%20Concepts/PN-LLM-Local-vs-Cloud.md)
- [PN-MultiAgent-ArchitecturePatterns.md](30%20-%20Permanent/31%20Concepts/PN-MultiAgent-ArchitecturePatterns.md)
- [PN-PUMA-within-AgenticScience-Trajectory.md](30%20-%20Permanent/31%20Concepts/PN-PUMA-within-AgenticScience-Trajectory.md)
- [PN-RAG-Embeddings-VectorDB.md](30%20-%20Permanent/31%20Concepts/PN-RAG-Embeddings-VectorDB.md)
- [PN-ReAct-AgentPattern.md](30%20-%20Permanent/31%20Concepts/PN-ReAct-AgentPattern.md)
- [PN-ToolSelection-PUMA.md](30%20-%20Permanent/31%20Concepts/PN-ToolSelection-PUMA.md)

</details>

#### 32 Methods
<details>
  <summary>+ Click to expand</summary>
  
- [README-Methods.md](30%20-%20Permanent/32%20Methods/README-Methods.md)
- [PN-DSR-SLR-Methods.md](30%20-%20Permanent/32%20Methods/PN-DSR-SLR-Methods.md)
- [PN-Wilcoxon-FINER-Cornell-PRISMA.md](30%20-%20Permanent/32%20Methods/PN-Wilcoxon-FINER-Cornell-PRISMA.md)

</details>

#### 33 Frameworks
<details>
  <summary>+ Click to expand</summary>
  
- [README-Frameworks-Results-Hypotheses.md](30%20-%20Permanent/33%20Frameworks/README-Frameworks-Results-Hypotheses.md)
- [PN-AMI-DRCA-IIPR-Frameworks.md](30%20-%20Permanent/33%20Frameworks/PN-AMI-DRCA-IIPR-Frameworks.md)
- [PN-EGI-Framework.md](30%20-%20Permanent/33%20Frameworks/PN-EGI-Framework.md)
- [PN-MIT-Student-Method-Complete.md](30%20-%20Permanent/33%20Frameworks/PN-MIT-Student-Method-Complete.md)
- [PN-MIT-Student-Method.md](30%20-%20Permanent/33%20Frameworks/PN-MIT-Student-Method.md)
- [PN-PARA-GTD-Zettelkasten.md](30%20-%20Permanent/33%20Frameworks/PN-PARA-GTD-Zettelkasten.md)
- [PN-RCOIF-Framework.md](30%20-%20Permanent/33%20Frameworks/PN-RCOIF-Framework.md)
- [PN-SDD-Framework.md](30%20-%20Permanent/33%20Frameworks/PN-SDD-Framework.md)

</details>

#### 34 Results
- [RES-Results-Placeholders.md](30%20-%20Permanent/34%20Results/RES-Results-Placeholders.md)

#### 36 Sources
- [SRC-Keshav-2007-HowToReadPaper.md](30%20-%20Permanent/36%20Sources/SRC-Keshav-2007-HowToReadPaper.md)
- [SRC-MITAILab-WP316.md](30%20-%20Permanent/36%20Sources/SRC-MITAILab-WP316.md)

#### 37 Persons
<details>
  <summary>+ Click to expand</summary>
  
- [PER-Assalaarachchi-Nuwan.md](30%20-%20Permanent/37%20Persons/PER-Assalaarachchi-Nuwan.md)
- [PER-Flyvbjerg-Bent.md](30%20-%20Permanent/37%20Persons/PER-Flyvbjerg-Bent.md)
- [PER-Hong-Sirui-MetaGPT.md](30%20-%20Permanent/37%20Persons/PER-Hong-Sirui-MetaGPT.md)
- [PER-Keshav-Srinivasan.md](30%20-%20Permanent/37%20Persons/PER-Keshav-Srinivasan.md)
- [PER-Yao-Shunyu.md](30%20-%20Permanent/37%20Persons/PER-Yao-Shunyu.md)

</details>

### 40 — Projects 19 files

#### 41.1 Introduction
- [PR-PUMA-Ch1-Introduction.md](40%20-%20Projects/PUMA/41.1%20Introduction/PR-PUMA-Ch1-Introduction.md)

#### 41.2 Literature-Review
- [PR-PUMA-Ch2-Ch3-Ch4-Ch5.md](40%20-%20Projects/PUMA/41.2%20Literature-Review/PR-PUMA-Ch2-Ch3-Ch4-Ch5.md)

#### 41.3 Methods
- [PR-PUMA-Ch3-Methods.md](40%20-%20Projects/PUMA/41.3%20Methods/PR-PUMA-Ch3-Methods.md)

#### 41.4 Results
<details>
  <summary>+ Click to expand</summary>
  
- [PR-PUMA-Ch4-Results.md](40%20-%20Projects/PUMA/41.4%20Results/PR-PUMA-Ch4-Results.md)
- [Stage1-Triage / README.md](40%20-%20Projects/PUMA/41.4%20Results/Stage1-Triage/README.md)
- [Stage2-Estimation / README.md](40%20-%20Projects/PUMA/41.4%20Results/Stage2-Estimation/README.md)

</details>

#### 41.5 Discussion
- [PR-PUMA-Ch5-Discussion.md](40%20-%20Projects/PUMA/41.5%20Discussion/PR-PUMA-Ch5-Discussion.md)

#### 41.6 Specs
<details>
  <summary>+ Click to expand</summary>
  
- [SP-Architecture-v1.md](40%20-%20Projects/PUMA/41.6%20Specs/SP-Architecture-v1.md)
- [SP-Estimation-Dataset-Specs.md](40%20-%20Projects/PUMA/41.6%20Specs/SP-Estimation-Dataset-Specs.md)
- [SP-PUMA-Constitution.md](40%20-%20Projects/PUMA/41.6%20Specs/SP-PUMA-Constitution.md)
- [SP-Triage-Agent-v1.md](40%20-%20Projects/PUMA/41.6%20Specs/SP-Triage-Agent-v1.md)

</details>

#### 41.7 Experiments
<details>
  <summary>+ Click to expand</summary>
  
- [EX-Hypotheses-H1-H2.md](40%20-%20Projects/PUMA/41.7%20Experiments/EX-Hypotheses-H1-H2.md)
- [EX-Stages-Overview.md](40%20-%20Projects/PUMA/41.7%20Experiments/EX-Stages-Overview.md)
- [Stage1-Triage / README.md](40%20-%20Projects/PUMA/41.7%20Experiments/Stage1-Triage/README.md)
- [Stage2-Estimation / README.md](40%20-%20Projects/PUMA/41.7%20Experiments/Stage2-Estimation/README.md)

</details>

#### 41.8 Sprint-Boards
- [Sprint-02.md](40%20-%20Projects/PUMA/41.8%20Sprint-Boards/Sprint-02.md)

#### 41.9 BMAD-Agents
- [BMAD-Agent-Roster.md](40%20-%20Projects/PUMA/41.9%20BMAD-Agents/BMAD-Agent-Roster.md)
- [BMAD-PRD-PUMA.md](40%20-%20Projects/PUMA/41.9%20BMAD-Agents/BMAD-PRD-PUMA.md)

### 50 — Areas 10 files

#### 51 Research
<details>
  <summary>+ Click to expand</summary>
  
- [AI-Use-Log.md](50%20-%20Areas/51%20Research/AI-Use-Log.md)
- [AI-Use-Log-PEC2-Entry.md](50%20-%20Areas/51%20Research/AI-Use-Log-PEC2-Entry.md)
- [Keshav-Reading-Log.md](50%20-%20Areas/51%20Research/Keshav-ThreePass/Keshav-Reading-Log.md)
- [MIT-AILab-Reading-Practice.md](50%20-%20Areas/51%20Research/MIT-AILab-Method/MIT-AILab-Reading-Practice.md)
- [PRISMA-Log.md](50%20-%20Areas/51%20Research/SLR-PRISMA/PRISMA-Log.md)

</details>

#### 52 Writing
- [Writing-Progress-Tracker.md](50%20-%20Areas/52%20Writing/Writing-Progress-Tracker.md)

#### 53 Code-Dev
- [Code-Review-Log.md](50%20-%20Areas/53%20Code-Dev/Code-Review-Log.md)

#### 54 Sustainability
- [Carbon-Tracking-Log.md](50%20-%20Areas/54%20Sustainability/Carbon-Tracking-Log.md)

#### 55 Ethics
- [Ethics-Review-Log.md](50%20-%20Areas/55%20Ethics/Ethics-Review-Log.md)

#### 56 Smart-PMO
- [Smart-PMO-Vision.md](50%20-%20Areas/56%20Smart-PMO/Smart-PMO-Vision.md)

### 60 — Resources ~60 files

#### 61 Prompts — General
- [PT-PUMA-Experiment-Prompts.md](60%20-%20Resources/61%20Prompts/PT-PUMA-Experiment-Prompts.md)

##### 61.1 LLM-Tools
- [PT-Advanced-Prompts-IIPR-Anchoring-AgentOS.md](60%20-%20Resources/61%20Prompts/61.1%20LLM-Tools/PT-Advanced-Prompts-IIPR-Anchoring-AgentOS.md)
- [PT-Claude-RCOIF-Research.md](60%20-%20Resources/61%20Prompts/61.1%20LLM-Tools/PT-Claude-RCOIF-Research.md)
- [PT-LLM-Tools-All-Prompts.md](60%20-%20Resources/61%20Prompts/61.1%20LLM-Tools/PT-LLM-Tools-All-Prompts.md)

##### 61.2 Research-Tools
- [PT-Research-Discovery-Prompts.md](60%20-%20Resources/61%20Prompts/61.2%20Research-Tools/PT-Research-Discovery-Prompts.md)

##### 61.3 Dev-Tools
- [PT-DevTools-Prompts.md](60%20-%20Resources/61%20Prompts/61.3%20Dev-Tools/PT-DevTools-Prompts.md)

##### 61.5 BMAD-Prompts
- [PT-BMAD-Agent-Prompts.md](60%20-%20Resources/61%20Prompts/61.5%20BMAD-Prompts/PT-BMAD-Agent-Prompts.md)

##### Methodologies
<details>
  <summary>+ Click to expand</summary>
  
- [PT-METH-001-PRISMA-Protocol.md](60%20-%20Resources/61%20Prompts/Methodologies/PT-METH-001-PRISMA-Protocol.md)
- [PT-METH-002-Keshav-ThreePass.md](60%20-%20Resources/61%20Prompts/Methodologies/PT-METH-002-Keshav-ThreePass.md)
- [PT-METH-003-DSR-ArtifactDesign.md](60%20-%20Resources/61%20Prompts/Methodologies/PT-METH-003-DSR-ArtifactDesign.md)
- [PT-METH-004-GroundedTheory-QualitativeAnalysis.md](60%20-%20Resources/61%20Prompts/Methodologies/PT-METH-004-GroundedTheory-QualitativeAnalysis.md)

</details>

##### Phase 1 — Research / 01 Literature-Exploration
<details>
  <summary>+ Click to expand</summary>
  
- [PT-P1S1-001-SemanticScholar-CoreSearch.md](60%20-%20Resources/61%20Prompts/Phase1-Research/01-Literature-Exploration/PT-P1S1-001-SemanticScholar-CoreSearch.md)
- [PT-P1S1-002-SemanticScholar-TaskSpecific.md](60%20-%20Resources/61%20Prompts/Phase1-Research/01-Literature-Exploration/PT-P1S1-002-SemanticScholar-TaskSpecific.md)
- [PT-P1S1-003-GoogleScholar-BroadSweep.md](60%20-%20Resources/61%20Prompts/Phase1-Research/01-Literature-Exploration/PT-P1S1-003-GoogleScholar-BroadSweep.md)
- [PT-P1S1-004-arXiv-FrontierScan.md](60%20-%20Resources/61%20Prompts/Phase1-Research/01-Literature-Exploration/PT-P1S1-004-arXiv-FrontierScan.md)
- [PT-P1S1-005-Consensus-EvidenceSearch.md](60%20-%20Resources/61%20Prompts/Phase1-Research/01-Literature-Exploration/PT-P1S1-005-Consensus-EvidenceSearch.md)
- [PT-P1S1-006-Undermind-HighPrecision.md](60%20-%20Resources/61%20Prompts/Phase1-Research/01-Literature-Exploration/PT-P1S1-006-Undermind-HighPrecision.md)
- [PT-P1S1-007-ResearchRabbit-SeedExpansion.md](60%20-%20Resources/61%20Prompts/Phase1-Research/01-Literature-Exploration/PT-P1S1-007-ResearchRabbit-SeedExpansion.md)
- [PT-P1S1-008-Elsevier-Scopus-Search.md](60%20-%20Resources/61%20Prompts/Phase1-Research/01-Literature-Exploration/PT-P1S1-008-Elsevier-Scopus-Search.md)

</details>

##### Phase 1 — Research / 02 Scientific-Mapping
<details>
  <summary>+ Click to expand</summary>
  
- [PT-P1S2-001-ConnectedPapers-CitationMap.md](60%20-%20Resources/61%20Prompts/Phase1-Research/02-Scientific-Mapping/PT-P1S2-001-ConnectedPapers-CitationMap.md)
- [PT-P1S2-002-LitMaps-TemporalEvolution.md](60%20-%20Resources/61%20Prompts/Phase1-Research/02-Scientific-Mapping/PT-P1S2-002-LitMaps-TemporalEvolution.md)
- [PT-P1S2-003-Claude-LiteratureSynthesis-RCOIF.md](60%20-%20Resources/61%20Prompts/Phase1-Research/02-Scientific-Mapping/PT-P1S2-003-Claude-LiteratureSynthesis-RCOIF.md)
- [PT-P1S2-004-Perplexity-FastEvidenceMap.md](60%20-%20Resources/61%20Prompts/Phase1-Research/02-Scientific-Mapping/PT-P1S2-004-Perplexity-FastEvidenceMap.md)
- [PT-P1S2-005-Gemini-BroadCorpusSynthesis.md](60%20-%20Resources/61%20Prompts/Phase1-Research/02-Scientific-Mapping/PT-P1S2-005-Gemini-BroadCorpusSynthesis.md)

</details>

##### Phase 1 — Research / 03 Structured-Extraction
<details>
  <summary>+ Click to expand</summary>
  
- [PT-P1S3-001-Elicit-DataExtraction.md](60%20-%20Resources/61%20Prompts/Phase1-Research/03-Structured-Extraction/PT-P1S3-001-Elicit-DataExtraction.md)
- [PT-P1S3-002-NotebookLM-CorpusExtraction.md](60%20-%20Resources/61%20Prompts/Phase1-Research/03-Structured-Extraction/PT-P1S3-002-NotebookLM-CorpusExtraction.md)
- [PT-P1S3-003-Zotero-BibliographicCuration.md](60%20-%20Resources/61%20Prompts/Phase1-Research/03-Structured-Extraction/PT-P1S3-003-Zotero-BibliographicCuration.md)
- [PT-P1S3-004-Researcher-MonitoringFeed.md](60%20-%20Resources/61%20Prompts/Phase1-Research/03-Structured-Extraction/PT-P1S3-004-Researcher-MonitoringFeed.md)

</details>

##### Phase 1 — Research / 04 Conceptual-Synthesis
<details>
  <summary>+ Click to expand</summary>
  
- [PT-P1S4-001-Claude-TheoreticalFramework.md](60%20-%20Resources/61%20Prompts/Phase1-Research/04-Conceptual-Synthesis/PT-P1S4-001-Claude-TheoreticalFramework.md)
- [PT-P1S4-002-ChatGPT-ZettelkastenNotes.md](60%20-%20Resources/61%20Prompts/Phase1-Research/04-Conceptual-Synthesis/PT-P1S4-002-ChatGPT-ZettelkastenNotes.md)
- [PT-P1S4-003-Gemini-ConceptualModel.md](60%20-%20Resources/61%20Prompts/Phase1-Research/04-Conceptual-Synthesis/PT-P1S4-003-Gemini-ConceptualModel.md)

</details>

##### Phase 1 — Research / 05 Hypothesis-Generation
<details>
  <summary>+ Click to expand</summary>
  
- [PT-P1S5-001-Claude-HypothesisFormulation.md](60%20-%20Resources/61%20Prompts/Phase1-Research/05-Hypothesis-Generation/PT-P1S5-001-Claude-HypothesisFormulation.md)
- [PT-P1S5-002-ChatGPT-RivalHypotheses.md](60%20-%20Resources/61%20Prompts/Phase1-Research/05-Hypothesis-Generation/PT-P1S5-002-ChatGPT-RivalHypotheses.md)

</details>


##### Phase 1 — Research / 06 Experimental-Design
<details>
  <summary>+ Click to expand</summary>
  
- [PT-P1S6-001-Claude-ExperimentProtocol.md](60%20-%20Resources/61%20Prompts/Phase1-Research/06-Experimental-Design/PT-P1S6-001-Claude-ExperimentProtocol.md)
- [PT-P1S6-002-ChatGPT-DatasetPreparation.md](60%20-%20Resources/61%20Prompts/Phase1-Research/06-Experimental-Design/PT-P1S6-002-ChatGPT-DatasetPreparation.md)

</details>


##### Phase 1 — Research / 07 Critical-Review
<details>
  <summary>+ Click to expand</summary>
  
- [PT-P1S7-001-Claude-PeerReviewSimulation.md](60%20-%20Resources/61%20Prompts/Phase1-Research/07-Critical-Review/PT-P1S7-001-Claude-PeerReviewSimulation.md)
- [PT-P1S7-002-Grok-AdversarialCritique.md](60%20-%20Resources/61%20Prompts/Phase1-Research/07-Critical-Review/PT-P1S7-002-Grok-AdversarialCritique.md)
- [PT-P1S7-003-Perplexity-ClaimVerification.md](60%20-%20Resources/61%20Prompts/Phase1-Research/07-Critical-Review/PT-P1S7-003-Perplexity-ClaimVerification.md)

</details>

##### Phase 2 — Development
<details>
  <summary>+ Click to expand</summary>
  
- [PT-P2-001-Claude-ArchitectureDesign-SDD.md](60%20-%20Resources/61%20Prompts/Phase2-Development/PT-P2-001-Claude-ArchitectureDesign-SDD.md)
- [PT-P2-002-CursorClaudeCode-Implementation.md](60%20-%20Resources/61%20Prompts/Phase2-Development/PT-P2-002-CursorClaudeCode-Implementation.md)
- [PT-P2-003-PromptEngineering-AgentPrompts.md](60%20-%20Resources/61%20Prompts/Phase2-Development/PT-P2-003-PromptEngineering-AgentPrompts.md)
- [PT-P2-004-AcademicWriting-ThesisChapters.md](60%20-%20Resources/61%20Prompts/Phase2-Development/PT-P2-004-AcademicWriting-ThesisChapters.md)

</details>

#### 62 Workflows
<details>
  <summary>+ Click to expand</summary>
  
- [WF-MIT-AILab-Reading-Workflow.md](60%20-%20Resources/62%20Workflows/WF-MIT-AILab-Reading-Workflow.md)
- [WF-Research-Experiment-Routines.md](60%20-%20Resources/62%20Workflows/WF-Research-Experiment-Routines.md)
- [WF-SLR-Pipeline.md](60%20-%20Resources/62%20Workflows/WF-SLR-Pipeline.md)

#### 63 Checklists
- [CL-Quality-Checklists.md](60%20-%20Resources/63%20Checklists/CL-Quality-Checklists.md)

</details>

#### 64 Glossary
<details>
  <summary>+ Click to expand</summary>
  
- [Glossary-Master.md](60%20-%20Resources/64%20Glossary/Glossary-Master.md)
- [Glossary-Supplement.md](60%20-%20Resources/64%20Glossary/Glossary-Supplement.md)
- [Glossary-Tools.md](60%20-%20Resources/64%20Glossary/Glossary-Tools.md)
- [KW-Category1-AI-Agents-Swarm-Intelligence.md](60%20-%20Resources/64%20Glossary/KW-Category1-AI-Agents-Swarm-Intelligence.md)
- [KW-Category2-Project-Management-Smart-PMO.md](60%20-%20Resources/64%20Glossary/KW-Category2-Project-Management-Smart-PMO.md)
- [KW-Category3-Research-Methodology-Academic-Rigor.md](60%20-%20Resources/64%20Glossary/KW-Category3-Research-Methodology-Academic-Rigor.md)
- [KW-Category4-Data-Engineering-Technical-Stack.md](60%20-%20Resources/64%20Glossary/KW-Category4-Data-Engineering-Technical-Stack.md)
- [KW-Category5-Evaluation-Ethics-Sustainability.md](60%20-%20Resources/64%20Glossary/KW-Category5-Evaluation-Ethics-Sustainability.md)

</details>

#### 65 Bibliographies
<details>
  <summary>+ Click to expand</summary>
  
- [BIB-Master-APA7.md](60%20-%20Resources/65%20Bibliographies/BIB-Master-APA7.md)
- [BIB-Supplement.md](60%20-%20Resources/65%20Bibliographies/BIB-Supplement.md)
- [BIB-Supplement-PEC2-AIKnowledge.md](60%20-%20Resources/65%20Bibliographies/BIB-Supplement-PEC2-AIKnowledge.md)

</details>

#### 66 Johnny-Decimal-Index
- [JD-Master-Index.md](60%20-%20Resources/66%20Johnny-Decimal-Index/JD-Master-Index.md)

### 70 — Archive 3 files
- [71 Old-Notes / README.md](70%20-%20Archive/71%20Old-Notes/README.md)
- [72 Completed / README.md](70%20-%20Archive/72%20Completed/README.md)
- [73 Deprecated / README.md](70%20-%20Archive/73%20Deprecated/README.md)

### 80 — MOC (Maps of Content) 12 files

#### 81 Topic-Maps
<details>
  <summary>+ Click to expand</summary>
  
- [MOC-AI-Knowledge-Generation.md](80%20-%20MOC/81%20Topic-Maps/MOC-AI-Knowledge-Generation.md)
- [MOC-Keywords-Master.md](80%20-%20MOC/81%20Topic-Maps/MOC-Keywords-Master.md)
- [MOC-Literature-Review.md](80%20-%20MOC/81%20Topic-Maps/MOC-Literature-Review.md)
- [MOC-LLM-Benchmarks-PM-AI.md](80%20-%20MOC/81%20Topic-Maps/MOC-LLM-Benchmarks-PM-AI.md)
- [MOC-Methods-Frameworks.md](80%20-%20MOC/81%20Topic-Maps/MOC-Methods-Frameworks.md)
- [MOC-Prompts-Library.md](80%20-%20MOC/81%20Topic-Maps/MOC-Prompts-Library.md)
- [MOC-PUMA-Master.md](80%20-%20MOC/81%20Topic-Maps/MOC-PUMA-Master.md)
- [MOC-Research-Pipeline.md](80%20-%20MOC/81%20Topic-Maps/MOC-Research-Pipeline.md)
- [MOC-Tools-Stack.md](80%20-%20MOC/81%20Topic-Maps/MOC-Tools-Stack.md)
- [MOC-Videos-Library.md](80%20-%20MOC/81%20Topic-Maps/MOC-Videos-Library.md)
- [MOC-Zettelkasten-PUMA.md](80%20-%20MOC/81%20Topic-Maps/MOC-Zettelkasten-PUMA.md)

</details>

#### 82 Index
- [Master-Index.md](80%20-%20MOC/82%20Index/Master-Index.md)

### 90 — GTD 3 files
- [TASKS-Active.md](90%20-%20GTD/91%20Tasks/TASKS-Active.md)
- [PROJECTS-Master.md](90%20-%20GTD/92%20Projects-List/PROJECTS-Master.md)
- [SOMEDAY-WAITING-PROJECTS.md](90%20-%20GTD/93%20Someday-Maybe/SOMEDAY-WAITING-PROJECTS.md)

### .claude — AI Skills & Governance 45 files

#### .claude / puma / core
- [puma-core.md](.claude/puma/core/puma-core.md)
- [puma-orchestrator.md](.claude/puma/core/puma-orchestrator.md)

#### .claude / puma / development
<details>
  <summary>+ Click to expand</summary>
  
- [puma-agent-design.md](.claude/puma/development/puma-agent-design.md)
- [puma-agile.md](.claude/puma/development/puma-agile.md)
- [puma-bmad.md](.claude/puma/development/puma-bmad.md)
- [puma-cdd.md](.claude/puma/development/puma-cdd.md)
- [puma-experiment.md](.claude/puma/development/puma-experiment.md)
- [puma-openspec.md](.claude/puma/development/puma-openspec.md)
- [puma-sdd.md](.claude/puma/development/puma-sdd.md)
- [puma-spec-kit.md](.claude/puma/development/puma-spec-kit.md)

</details>

#### .claude / puma / integration
- [puma-obsidian-cli.md](.claude/puma/integration/puma-obsidian-cli.md)

#### .claude / puma / knowledge
- [puma-moc.md](.claude/puma/knowledge/puma-moc.md)
- [puma-zettelkasten.md](.claude/puma/knowledge/puma-zettelkasten.md)

#### .claude / puma / meta
- [puma-anti-patterns.md](.claude/puma/meta/puma-anti-patterns.md)
- [puma-rules.md](.claude/puma/meta/puma-rules.md)

#### .claude / puma / prompting
<details>
  <summary>+ Click to expand</summary>
  
- [puma-advanced-prompt.md](.claude/puma/prompting/puma-advanced-prompt.md)
- [puma-cot.md](.claude/puma/prompting/puma-cot.md)
- [puma-prompting.md](.claude/puma/prompting/puma-prompting.md)
- [puma-rcoif.md](.claude/puma/prompting/puma-rcoif.md)

</details>

#### .claude / puma / research
<details>
  <summary>+ Click to expand</summary>
  
- [puma-keshav-method.md](.claude/puma/research/puma-keshav-method.md)
- [puma-literature-review.md](.claude/puma/research/puma-literature-review.md)
- [puma-mit-student-method.md](.claude/puma/research/puma-mit-student-method.md)
- [puma-research.md](.claude/puma/research/puma-research.md)

</details>

#### .claude / puma / tools
<details>
  <summary>+ Click to expand</summary>
  
- [puma-dataview.md](.claude/puma/tools/puma-dataview.md)
- [puma-research-tools.md](.claude/puma/tools/puma-research-tools.md)
- [puma-zotero.md](.claude/puma/tools/puma-zotero.md)

</details>

#### .claude / puma / vault
<details>
  <summary>+ Click to expand</summary>
  
- [puma-anti-patterns.md](.claude/puma/vault/puma-anti-patterns.md)
- [puma-obsidian-governance.md](.claude/puma/vault/puma-obsidian-governance.md)
- [puma-rules.md](.claude/puma/vault/puma-rules.md)
- [puma-vault-architecture.md](.claude/puma/vault/puma-vault-architecture.md)

</details>

#### .claude / obsidian-skills
<details>
  <summary>+ Click to expand</summary>
 
* [README.md](.claude/obsidian-skills/README.md)
* [skills / defuddle / SKILL.md](.claude/obsidian-skills/skills/defuddle/SKILL.md)
* [skills / json-canvas / SKILL.md](.claude/obsidian-skills/skills/json-canvas/SKILL.md)
* [skills / json-canvas / references / EXAMPLES.md](.claude/obsidian-skills/skills/json-canvas/references/EXAMPLES.md)
* [skills / obsidian-bases / SKILL.md](.claude/obsidian-skills/skills/obsidian-bases/SKILL.md)
* [skills / obsidian-bases / references / FUNCTIONS_REFERENCE.md](.claude/obsidian-skills/skills/obsidian-bases/references/FUNCTIONS_REFERENCE.md)
* [skills / obsidian-cli / SKILL.md](.claude/obsidian-skills/skills/obsidian-cli/SKILL.md)
* [skills / obsidian-markdown / SKILL.md](.claude/obsidian-skills/skills/obsidian-markdown/SKILL.md)
* [skills / obsidian-markdown / references / CALLOUTS.md](.claude/obsidian-skills/skills/obsidian-markdown/references/CALLOUTS.md)
* [skills / obsidian-markdown / references / EMBEDS.md](.claude/obsidian-skills/skills/obsidian-markdown/references/EMBEDS.md)
* [skills / obsidian-markdown / references / PROPERTIES.md](.claude/obsidian-skills/skills/obsidian-markdown/references/PROPERTIES.md)

</details>

---


## 8. More About PUMA Vault 

**PUMA** is a research project investigating whether autonomous Large Language Model agents can perform practical software project management tasks — specifically **issue triage** and **effort estimation** — with accuracy and reproducibility comparable to human experts.

The project uses a multi-stage empirical pipeline: systematic literature review → artifact design → LLM-based agent construction → experiment on real-world datasets → statistical validation and replication package publication.

### Core Mission

Design, implement, and empirically evaluate a multi-agent LLM system — the PUMA platform — that autonomously triages software issues (classifying type, priority, and component) and estimates story-point effort from issue text. The platform is benchmarked against human-annotated ground truth using standard SE metrics (accuracy, F1, MAE, MRE) and statistical tests (Wilcoxon, ANOVA).

### Research Hypotheses

> [!info] H1 — Triage
> An LLM agent using few-shot prompting achieves >75% F1 on issue type and priority classification on the TAWOS dataset.

> [!info] H2 — Estimation
> An LLM agent using chain-of-thought reasoning achieves a Mean Relative Error ≤35% on story-point estimation on the Jira SR dataset.

### Datasets

| Dataset | Description | Source |
|---------|-------------|--------|
| **TAWOS** | The Agile Work Items and Operations Study. Curated Jira issues from multiple open-source projects with ground-truth labels for type, priority, component, and resolution. | GitHub: SOLAR-group/TAWOS |
| **Jira SR** | Story point estimates and issue descriptions from multiple industrial and open-source Jira projects, enabling regression experiments on effort estimation. | Zenodo DOI: 10.5281/zenodo.5901893 |

### Technology Stack

`Claude (Anthropic)` `GPT-4o (OpenAI)` `Llama 3 (local)` `Ollama` `LangGraph` `AutoGen` `CrewAI` `Python` `Zotero` `Obsidian` `GitHub Actions` `Prometheus / Grafana` `Semantic Scholar API` `Promptfoo` `PydanticAI` `Supabase`

---

## 9. Vault Sections

| Section | Description |
|---------|-------------|
| [[MOC Meta\|00 - Meta]] | Templates, dashboards, plugin configuration |
| [[10 - Inbox/README-Inbox\|10 - Inbox]] | GTD capture point — fleeting notes and quick capture |
| [[MOC Library\|20 - Literature]] | Papers, books, videos, tools, datasets |
| [[30 - Permanent/31 Concepts/README-Concepts\|30 - Permanent]] | Zettelkasten — concepts, methods, frameworks, results |
| [[MOC Projects\|40 - Projects]] | Active project work — chapters, specs, experiments, BMAD |
| [[50 - Areas/51 Research/Keshav-ThreePass/Keshav-Reading-Log\|50 - Areas]] | Ongoing responsibilities — research, writing, code, ethics |
| [[60 - Resources/64 Glossary/Glossary-Master\|60 - Resources]] | Prompts, workflows, checklists, glossary, bibliography |
| [[70 - Archive/72 Completed/README\|70 - Archive]] | Completed and deprecated material |
| [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master\|80 - MOC]] | Maps of Content — navigation and synthesis layer |
| [[90 - GTD/95 Reviews/Daily-Review-Template\|90 - GTD]] | Tasks, reviews, sprint boards, someday/maybe |

---

## 10. Knowledge Management Methodologies

The vault fuses six complementary knowledge management systems into a single coherent workspace. Each system covers a different dimension of the research lifecycle.

| System | Purpose | Location |
|--------|---------|----------|
| **MOC** — Maps of Content | Top-level navigation maps that gather links to related notes by topic, forming a navigable knowledge graph rather than a rigid hierarchy. The primary navigation surface. | [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master\|80 - MOC]] |
| **GTD** — Getting Things Done | Governs all task and commitment management. Daily and weekly reviews ensure captured tasks are processed, clarified, and acted upon. Prevents the inbox from becoming a graveyard. | [[90 - GTD/95 Reviews/Daily-Review-Template\|90 - GTD]] |
| **PARA** — Projects · Areas · Resources · Archive | Macro-level organizational skeleton. Every note has a home and homes decay gracefully as work evolves. | All sections |
| **Zettelkasten** | Generates atomic, permanent, densely-linked knowledge notes. The intellectual core of the vault — where literature notes are distilled into original insights. | [[30 - Permanent/31 Concepts/README-Concepts\|30 - Permanent]] |
| **Johnny Decimal** | Numeric address system assigning a unique two-digit code to every area (00–90) and a decimal sub-code to every sub-area. Prevents folder sprawl and makes every file findable by address alone. | [[60 - Resources/64 Glossary/Glossary-Master\|60 - Resources]] |
| **SDD / BMAD** | *Spec-Driven Development* treats formal specifications as the source of truth. *BMAD* orchestrates specialized AI agents (Analyst, Architect, QA) using structured PRDs and sprint boards. | [[MOC Projects\|40 - Projects]] |

---

## 11. Research Frameworks

### Primary Research Methods

| Method | Description |
|--------|-------------|
| **EBSE + SLR / PRISMA** | Evidence-Based Software Engineering is the epistemological foundation. The SLR protocol — reported using the PRISMA 2020 checklist — maps the state of the art on LLM agents in project management. |
| **DSR** — Design Science Research | Treats the PUMA agent platform as an *artifact* to be designed, built, and evaluated against utility criteria. Maps directly to thesis chapters (problem → design → evaluation → communication). |
| **Grounded Theory** | Used for qualitative analysis of emergent patterns — agent reasoning traces, failure modes, unexpected behaviours. Open coding and memo-writing allow categories to emerge from data. |
| **MIT Student Method** | Structured research workflow emphasising *vision → steps → news* as the three essential contributions of any research work. Applied to structure each experimental stage. |

### Prompting & Agent Engineering Frameworks

| Framework | Category | Description |
|-----------|----------|-------------|
| **RCOIF** | Prompting | Role · Context · Objective · Instructions · Format. Eliminates ambiguity by forcing explicit specification of each element before querying an LLM. Default prompt format across the vault. |
| **EGI** | Prompting | Explicit Goal-setting and Iterative refinement. Dialogue-based loop where each agent turn confirms goal alignment or requests clarification before proceeding. |
| **AMI** | Prompting | Anchored Multi-step Inference. Grounds long reasoning chains in verified anchors at each step to prevent reasoning drift in multi-hop questions. |
| **DRCA** | Prompting | Decompose · Reason · Critique · Answer. Four-phase pattern forcing explicit task decomposition, step-by-step reasoning, self-critique, and a synthesized answer. |
| **IIPR** | Prompting | Intent · Information · Process · Result. Ensures the LLM understands intent, available context, required process, and expected result format. |
| **CoT** | Prompting | Chain-of-Thought. Elicits step-by-step reasoning. Dramatically improves performance on multi-step tasks like story-point estimation. |
| **Few-Shot** | Prompting | Provides 3–8 labelled examples in the prompt context, enabling in-context learning without fine-tuning. Used in Stage 1 (triage). |
| **Zero-Shot CoT** | Prompting | Combines zero-shot prompting with chain-of-thought elicitation. Baseline for comparison against few-shot variants. |
| **CDD** | Development | Context-Driven Development. Treats the LLM context window as the primary design space. Every agent and memory component is designed with explicit consideration of context limits. |
| **Agent OS** | Architecture | Orchestrates multiple specialized LLM agents through a shared OS-like interface: task queue, memory bus, tool registry, and inter-agent messaging. |

---

## 12. Note Types & Prefixes

Every note carries a prefix encoding its type, enabling Dataview queries, filtered searches, and Zettelkasten linking. The lifecycle flows: raw capture → literature note → permanent note → project reference → MOC entry.

| Prefix | Type | Location | Example |
|--------|------|----------|---------|
| `FL-` | Fleeting Note | `10 - Inbox` | `FL-2026-03-15-LLM-idea` |
| `LN-` | Literature Note | `20 - Literature` | `LN-Tawosi2022-TAWOS` |
| `PN-` | Permanent Note | `30 - Permanent` | `PN-Few-Shot-Prompting` |
| `ST-` | Structure Note | `30 - Permanent` | `ST-Prompting-Strategies` |
| `SRC-` | Source Note | `30 - Permanent/36 Sources` | `SRC-Keshav-2007-HowToReadPaper` |
| `PER-` | Person Note | `30 - Permanent/37 Persons` | `PER-Yao-Shunyu` |
| `RES-` | Results Note | `30 - Permanent/34 Results` | `RES-Stage1-Triage` |
| `PR-` | Project Note | `40 - Projects` | `PR-PUMA-Ch1-Introduction` |
| `SP-` | Spec Note | `40 - Projects/Specs` | `SP-Triage-Agent-v1` |
| `EX-` | Experiment Note | `40 - Projects/Experiments` | `EX-Llama32-ZeroShot-Triage` |
| `PT-` | Prompt Template | `60 - Resources/61 Prompts` | `PT-Claude-RCOIF-Research` |
| `WF-` | Workflow Note | `60 - Resources/62 Workflows` | `WF-SLR-Pipeline` |
| `CL-` | Checklist | `60 - Resources/63 Checklists` | `CL-Quality-Checklists` |
| `BIB-` | Bibliography | `60 - Resources/65 Bibliographies` | `BIB-Master-APA7` |
| `VID-` | Video Note | `20 - Literature/20.4 Videos-Podcasts` | `VID-AGT-001-Karpathy-RAG` |
| `GT-` | GTD Note | `90 - GTD` | `GT-Weekly-Review-2026-W10` |
| `MOC-` | Map of Content | `80 - MOC` | `MOC-LLM-Benchmarks` |
| `BMAD-` | BMAD Agent Doc | `40 - Projects/BMAD-Agents` | `BMAD-PRD-PUMA` |

---

## ⚡ Quick Access

| Action | Link | Status |
|--------|------|--------|
| 📋 Today's Daily Review | [[90 - GTD/95 Reviews/Daily-Review-Template]] | Open daily |
| 📥 New Fleeting Note | [[10 - Inbox/Fleeting-Notes/Template-Fleeting-Note]] | Capture now |
| 🗺️ PUMA Master Map | [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]] | Central hub |
| 🤖 BMAD Agent Roster | [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]] | Agent team |
| 📋 Sprint Board | [[40 - Projects/PUMA/41.8 Sprint-Boards/Sprint-02]] | Active sprint |
| 📚 Glossary | [[60 - Resources/64 Glossary/Glossary-Master]] | All terms |
| 📖 Bibliography | [[60 - Resources/65 Bibliographies/BIB-Master-APA7]] | APA7 refs |
| 🔢 JD Index | [[60 - Resources/66 Johnny-Decimal-Index/JD-Master-Index]] | File address book |

---

## 📊 Milestones

| M | Deadline | Focus | Status |
|---|----------|-------|--------|
| M1 | 2026-03-08 | Ch.1 + Environment verified | ✅ Delivered |
| M2 | 2026-04-08 | Triage Module + Baseline + Stats | 🔄 In Progress |
| M3 | 2026-05-10 | Estimation Module + TAWOS | ⏳ Pending |
| M4 | 2026-06-07 | Full Results + Carbon + Video | ⏳ Pending |
| M5 | 2026-06-23 | Defence + v1.0 Tag | ⏳ Pending |

---

## 📈 Active Tasks (next 14 days)

```tasks
not done
due before 2026-04-26
sort by due
limit 15
```

---

## 📊 Experiment Tracker

```dataview
TABLE experiment-id AS "ID", status AS "Status", methodology AS "Method", tool AS "Tool"
FROM #experiment
SORT date-started DESC
```

---

## 📚 Literature Pipeline

```dataview
TABLE title AS "Title", first-author AS "Author", year AS "Year", status AS "Status", relevance AS "⭐"
FROM #literature
SORT relevance DESC, year DESC
LIMIT 15
```

---

## 🔄 Recently Modified

```dataview
TABLE file.mtime AS "Modified"
FROM ""
WHERE file.mtime >= date(today) - dur(3 days)
SORT file.mtime DESC
LIMIT 15
```

---

## 📂 Vault Information Flow

```
New idea / paper / observation
         ↓
[10 - Inbox] Fleeting Note  ← GTD Capture
         ↓ process within 48h
[20 - Literature] LN-citekey.md  ← Keshav Pass-1 + Pass-2
         OR
[30 - Permanent] PN-Declarative-Title.md  ← Keshav Pass-3 + Zettelkasten
         ↓
[40 - Projects] PUMA Chapters + Specs + Experiments  ← SDD + BMAD
         ↓
[80 - MOC] Maps of Content  ← Navigation + Synthesis
         ↓
[90 - GTD] Tasks, Sprint Boards, Reviews  ← GTD Execute
```

### Methodology Integration

| Layer | Methodology | Purpose | Note |
|-------|-------------|---------|------|
| Structure | PARA | Organise by actionability | [[30 - Permanent/33 Frameworks/PN-PARA-GTD-Zettelkasten]] |
| Numbering | Johnny Decimal | Every file has an address | [[60 - Resources/66 Johnny-Decimal-Index/JD-Master-Index]] |
| Workflow | GTD | Capture → Clarify → Organise → Reflect → Engage | [[30 - Permanent/33 Frameworks/PN-PARA-GTD-Zettelkasten]] |
| Knowledge | Zettelkasten | Atomic, permanent, linked ideas | [[30 - Permanent/30 Zettelkasten-Hub/ZK-Hub-PUMA]] |
| Development | SDD + OpenSpec + Spec Kit | Spec-first | [[30 - Permanent/33 Frameworks/PN-SDD-Framework]] |
| AI Team | BMAD | Multi-agent simulation | [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]] |
| Paper Reading | Keshav Three-Pass | Systematic literature processing | [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method]] |
| AI Prompting | CDD + RCOIF + CoT + AMI + EGI | Context-driven AI assistance | [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]] |
| Navigation | MOCs | Hub notes for complex topics | [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]] |

---

> [!QUOTE] Update Log
> This annex reflects the ecosystem status as of **April, 2026)**. In accordance with the *Veritas Framework* proactive disclosure principle, this will be updated in each partial delivery to reflect new tools or public profile updates.

---

PUMA Research Vault &nbsp;·&nbsp; - Last updated: 2026 &nbsp;·&nbsp; License: MIT

*Vault v1.0 · April 2026 · PARA + GTD + Zettelkasten + Johnny Decimal + SDD + BMAD + Keshav + CDD · [GitHub](https://github.com/pumacp/PUMA)*
