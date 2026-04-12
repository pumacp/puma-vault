---
id: Glossary-Master
title: "📖 PUMA Vault — Master Glossary"
type: glossary
tags: [glossary, reference, definitions]
created: 2026-03-01
updated: 2026-04-06
---

# 📖 PUMA Vault — Master Glossary

> All technical terms used in the PUMA project and this vault, organised alphabetically.
> Total terms: 65+. All definitions in English.

---

## A

**Agent OS** — An operating system-like framework for orchestrating multiple AI agents, managing their context, tool access, memory, and coordination. In PUMA's Stage 5 vision, LangGraph + OPA forms the Agent OS layer. See [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]].

**AI-Driven Concept Mapping** — Automatically generating concept maps from text or notes using AI semantic analysis. Used in this vault via Obsidian's graph view combined with Smart Connections plugin.

**AMI (Autodiagnóstico y Mejora Iterativa)** — A prompting methodology where the researcher presents work to an AI critic, receives structured diagnosis, and iterates — retaining full authorship. Core technique in CDD. See [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]].

**Agentic AI** — AI agents capable of executing complex, multi-step tasks autonomously with access to tools, memory, and decision-making capability. PUMA's Stage 4–5 implements agentic patterns. Contrast with single-turn LLM inference.

**AnythingLLM** — A local RAG platform running privately on hardware, supporting Ollama models and vector stores (ChromaDB, Qdrant). Used in PUMA's AI research phase for private document Q&A.

---

## B

**Backlog** — The ordered list of all work items (user stories, bugs, features) for a software product, managed in tools like Jira or Linear. PUMA Stage 3 evaluates LLM backlog prioritisation.

**BDD (Behaviour-Driven Development)** — A development approach specifying desired behaviour in Given/When/Then scenarios before implementation. Related to SDD. See [[30 - Permanent/33 Frameworks/PN-SDD-Framework]].

**Benchmark** — A standardised evaluation procedure with defined datasets, metrics, and reproducible conditions enabling comparison across systems and time. PUMA is a benchmark for PM+LLM evaluation. See [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]].

**BMAD (Breakthrough Method for Agile AI-Driven Development)** — A multi-agent framework simulating a full agile team: Analyst, Product Manager, Architect, Developer, QA, Sustainability Officer. Each agent is defined in Markdown/YAML. See [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]].

---

## C

**CDD (Context-Driven Development)** — A development approach where all AI interactions and tool usage are informed by rich, explicit context about the project, constraints, and goals. Every PUMA prompt uses CDD principles via RCOIF framing.

**Chain-of-Thought (CoT)** — A prompting technique instructing LLMs to reason step-by-step before producing a final answer. One of PUMA's four prompting strategies (zero-shot, few-shot-3, few-shot-6, CoT). See [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]].

**ChromaDB** — An open-source, embeddings-focused vector database used for local RAG systems. Simple to set up; used in PUMA Stage 4 (optional RAG agent).

**CodeCarbon** — A Python library tracking and estimating CO₂ emissions from computational workloads. Integrated in PUMA as a first-class experimental variable. GitHub: `mlco2/codecarbon`. See [[50 - Areas/54 Sustainability/Carbon-Tracking-Log]].

**CoGEE (Code and GPT for Effort Estimation)** — (Tawosi et al., 2024). State-of-the-art story point estimation using LLMs, achieving MAE ~1.9 SP with GPT-4. Key PUMA baseline for Stage 2.

**Cognitive Offloading** — Delegating critical thinking to AI tools, risking atrophied reasoning skills. The Keshav Three-Pass Method and DRCA explicitly guard against this. See [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method]].

**Contextual Anchoring** — A prompting technique where core constraints and context are restated at the end of a long prompt to prevent model drift from key requirements. Used in all PUMA triage prompts.

**CPM (Critical Path Method)** — An algorithm identifying tasks where any delay would compromise a project milestone. Relevant to PUMA's Smart PMO Stage 5.

---

## D

**DRCA (Deconstrucción y Reconstrucción Conceptual Avanzada)** — Four-step cognitive procedure for deeply processing complex concepts: Deconstruct → Reconstruct → Critical → Advance. Combined with Keshav Pass-3 for deep paper analysis. See [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]].

**DSR (Design Science Research)** — A research paradigm requiring the production and evaluation of useful artefacts. PUMA follows DSR: the benchmark framework is the artefact, evaluated by utility, novelty, and rigour. See [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]].

**Dataview** — An Obsidian plugin that queries the vault as a database. Used throughout this vault for dynamic dashboards, literature tracking, and task views.

---

## E

**EBSE (Evidence-Based Software Engineering)** — Applying systematic evidence synthesis (SLR, meta-analysis) to SE research and practice decisions. The epistemological foundation of PUMA's SLR.

**Effect size (r)** — A standardised measure of the magnitude of a statistical effect, independent of sample size. In PUMA: r = Z / √N from Wilcoxon test. r ≥ 0.1 = small, ≥ 0.3 = medium, ≥ 0.5 = large.

**EGI (Exploración Guiada Interactiva)** — A multi-turn AI interaction pattern for mapping unfamiliar domains through structured panoramic → drilling → gap identification sequences. Used during Keshav Pass-1 and literature exploration. See [[30 - Permanent/33 Frameworks/PN-EGI-Framework]].

**Embeddings** — Dense vector representations of text capturing semantic meaning. Similar texts produce similar vectors. Used in RAG systems and semantic note-taking. See [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]].

---

## F

**F1-macro** — The mean F1 score calculated independently for each class, then averaged. Treats all classes equally regardless of frequency. Primary metric for PUMA Stage 1 (triage). Minimum threshold: ≥ 0.55.

**Few-Shot Prompting** — A prompting strategy providing k labelled examples within the prompt context, enabling in-context learning without fine-tuning. PUMA tests few-shot-3 and few-shot-6 variants. See [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]].

**FINER criteria** — Framework for evaluating research question quality: Feasible, Interesting, Novel, Ethical, Relevant. PUMA's research question satisfies all five. See [[30 - Permanent/32 Methods/PN-DSR-SLR-Methods]].

**Fine-Tuning** — Adjusting a pre-trained LLM on domain-specific data to improve performance on a target task. Excluded from PUMA MVP scope (cost, reproducibility risks).

**Fibonacci scale** — The non-linear scale used for story point estimation: {1, 2, 3, 5, 8, 13, 21}. Non-linearity reflects increasing uncertainty for larger work items.

---

## G

**gCO₂eq** — Grams of CO₂ equivalent. The unit used by CodeCarbon for measuring computational carbon footprint. PUMA targets the first PM+LLM study to report this per task.

**GTD (Getting Things Done)** — David Allen's productivity system: capture all commitments, clarify next actions, conduct regular reviews. Implemented in `90 - GTD/` folders. See [[30 - Permanent/33 Frameworks/PN-PARA-GTD-Zettelkasten]].

---

## H

**Human-in-the-Loop (HITL)** — A design principle where AI systems produce recommendations requiring explicit human validation before action. All PUMA agent outputs are HITL by design. Encoded in [[40 - Projects/PUMA/41.6 Specs/SP-PUMA-Constitution]].

---

## I

**IIPR (Ingeniería Inversa de Prompts y Respuestas)** — Reverse prompt engineering: diagnosing why a prompt produced poor output and systematically redesigning it. Used in PUMA prompt optimisation. See [[30 - Permanent/33 Frameworks/PN-AMI-DRCA-IIPR-Frameworks]].

**Issue Triage** — Reviewing and classifying work items (priority, severity, component) in PM tools. Stage 1 of the PUMA benchmark. Dataset: Jira SR.

**Iterative Refinement Loop** — A cycle where AI improves a text or idea through multiple guided iterations. Core technique in AMI methodology.

**ITIL 4** — IT Infrastructure Library v4. A framework for IT service management referenced in PUMA's PM context.

---

## J

**Jira SR (Jira Social Repository)** — Public dataset of 50,000+ real Jira issues from Apache Software Foundation projects with manually assigned priority labels. Primary dataset for PUMA Stage 1. DOI: 10.5281/zenodo.5901893.

**Johnny Decimal** — A filing system using two-digit area codes (10–90) and decimal sub-codes giving every note a unique, memorable address. Used for vault folder organisation. See [[60 - Resources/66 Johnny-Decimal-Index/JD-Master-Index]].

---

## K

**Keshav Three-Pass Method** — A verified academic paper-reading framework by S. Keshav (University of Waterloo, 2007). Three passes of increasing depth: bird's-eye (5–10 min), content grasp (≤1h), virtual re-implementation (4–5h). Used as the PUMA literature review protocol. See [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method]].

---

## L

**LangGraph** — A library from LangChain for building stateful, multi-actor AI agent workflows as directed graphs with cycles. Core orchestration technology for PUMA Stage 4–5.

**LlamaIndex** — A data framework connecting LLMs to external data sources, enabling RAG and structured querying. Used in PUMA Stage 4 for semantic indexing of historical issues.

**LLM (Large Language Model)** — A neural network trained on vast text corpora capable of generating, summarising, classifying, and reasoning over text. PUMA evaluates Llama 3.2 8B and Mistral 7B.

**LLM-Based Literature Review** — Using AI to analyse large volumes of papers and extract patterns, gaps, and evidence tables. Used in PUMA SLR phase with Perplexity, Consensus, Elicit.

**LM Studio** — A desktop application for discovering, downloading, and running open-source LLMs locally.

---

## M

**MAE (Mean Absolute Error)** — Primary metric for PUMA Stage 2: MAE = mean(|predicted_SP − actual_SP|). Lower is better. Minimum threshold: ≤ 3.0 SP. Baseline: mean historical SP per project.

**Marco RCOIF** — See *RCOIF*.

**MIT Student Method** — See *Keshav Three-Pass Method*. Note: "MIT Student Method" as a formal 3-question methodology is not a verified published framework. The vault uses Keshav's Three-Pass as the verified equivalent.

**MOC (Map of Content)** — A note serving as a structured index and navigation hub for a cluster of related notes. Higher-level than tags, more flexible than folders. See `80 - MOC/`. 

**MTTD (Mean Time To Detection)** — A PM metric measuring average time between issue occurrence and detection. Related to triage efficiency. PUMA Stage 5 target: 30% MTTD reduction vs. manual.

**Multi-Agent Collaboration** — Using multiple specialised AI agents that work together on a project. PUMA's Smart PMO vision (Stage 5) and BMAD framework both implement this pattern.

---

## O

**Obsidian** — A Markdown-based note-taking application creating interconnected knowledge networks via bidirectional links, tags, and plugins. This vault runs on Obsidian.

**OPA (Open Policy Agent)** — A general-purpose policy engine enforcing governance rules on AI agent actions. Used in PUMA Stage 5 for agent action validation.

**Ollama** — An open-source tool for running LLMs locally via a REST API. Primary inference engine for PUMA experiments. See [[20 - Literature/20.6 Tools/LN-Tools-Ollama-ClaudeCode-OpenCode-BrowserOS]].

**One-Shot and Few-Shot Prompting** — See *Few-Shot Prompting*.

**OpenSpec** — A YAML/Markdown-based specification format for SDD, maintaining a single evolving specification document. Used in PUMA for brownfield/iterative spec management. See [[30 - Permanent/33 Frameworks/PN-SDD-Framework]].

---

## P

**PARA (Projects, Areas, Resources, Archive)** — A four-category organisation system by Tiago Forte, integrated into this vault's folder structure (10-→70-). See [[30 - Permanent/33 Frameworks/PN-PARA-GTD-Zettelkasten]].

**PMBOK 7** — Project Management Body of Knowledge, 7th edition (PMI, 2021). Value-delivery focused framework referenced in PUMA's PM context.

**PRISMA 2020** — Preferred Reporting Items for Systematic Reviews and Meta-Analyses, 2020 update. Protocol used for PUMA SLR. See [[50 - Areas/51 Research/SLR-PRISMA/PRISMA-Log]].

**PRISMA-trAIce** — An extension of PRISMA documenting the "AI trace" — which tasks were AI-assisted, with which models, with what validation. Used in PUMA's AI use declaration.

**Prompt Engineering** — The practice of designing, refining, and optimising prompts to elicit desired behaviour from LLMs. PUMA's independent variable: four strategies (zero-shot, few-shot-3, few-shot-6, CoT).

**PUMA (Platform for Understanding and Management with Agents)** — The PUMA Project this vault supports. Full title: "Can language models manage ICT projects? Empirical benchmark of local LLM agents for issue triage and effort estimation." See [[40 - Projects/PUMA/41.1 Introduction/PR-PUMA-Ch1-Introduction]].

---

## Q

**Quantization (4-bit, Q4_K_M)** — Reducing LLM memory requirements by representing weights in lower precision. Enables ~8B parameter models to run in ~5GB RAM without significant quality loss.

**Qdrant** — A high-performance vector database for similarity search, suitable for local RAG systems. Used in PUMA Stage 4 (optional).

---

## R

**RAG (Retrieval-Augmented Generation)** — Combining LLM generation with retrieval from an external knowledge base. Used in PUMA Stage 4 (optional): agent retrieves similar historical issues before classifying. See [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]].

**RCOIF (Role, Context, Objective, Instructions, Format)** — A structured prompting framework for AI-assisted research. Every significant PUMA AI interaction uses this structure. See [[30 - Permanent/33 Frameworks/PN-RCOIF-Framework]].

**RCF (Reference Class Forecasting)** — A technique using distributions from comparable past projects to correct optimism bias in estimates. Flyvbjerg's antidote to the Uniqueness Trap. Relevant to PUMA's estimation module.

**Red Teaming** — Actively searching for evidence against your own conclusions to test their robustness. Core component of the PUMA QA Agent role (Keshav Pass-3 equivalent). See [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]].

**RMSE (Root Mean Square Error)** — Secondary metric for effort estimation: sqrt(mean((predicted−actual)²)). More sensitive to large errors than MAE.

---

## S

**SDD (Spec-Driven Development)** — An engineering approach where executable specifications are written before code; specs are the source of truth. See [[30 - Permanent/33 Frameworks/PN-SDD-Framework]].

**Semantic Note-Taking** — Taking notes connected via conceptual relationships detected by AI. Implemented via Smart Connections plugin + Zettelkasten permanent notes.

**SLR (Systematic Literature Review)** — A reproducible, explicit methodology for synthesising research literature, following a pre-registered protocol with defined inclusion/exclusion criteria. See [[60 - Resources/62 Workflows/WF-SLR-Pipeline]].

**Smart PMO** — A Project Management Office augmented by AI agents performing automated triage, estimation, risk detection, and reporting under human governance. PUMA's Stage 5 vision. See [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]].

**Spec Kit** — GitHub's open-source toolkit formalising SDD with a 4-phase gated workflow: Specify → Plan → Tasks → Implement. Each phase requires explicit human approval. See [[30 - Permanent/33 Frameworks/PN-SDD-Framework]].

**Sprint** — A time-boxed Agile iteration (typically 2 weeks) where a defined set of work items is completed. PUMA uses sprints aligned to PEC deliverables.

**Story Points (SP)** — A dimensionless unit estimating relative effort, complexity, and risk in Agile. Follows Fibonacci scale: {1, 2, 3, 5, 8, 13, 21}. PUMA Stage 2 evaluates LLM story point estimation.

---

## T

**TAWOS (The Agile Workflow Optimisation Suite)** — Dataset of 23,000+ real Agile user stories with story point estimates (Tawosi et al., 2022). Primary dataset for PUMA Stage 2. See [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]].

**Templater** — An Obsidian plugin for advanced templates with JavaScript, date variables, and user prompts. Used for all PUMA note templates.

**temperature=0** — An LLM parameter setting making output deterministic (greedy decoding). Used throughout PUMA for reproducibility.

**Token Tax** — The computational and financial cost of tokens consumed per task. PUMA tracks this as a practical efficiency metric (target: < $0.10 / ticket for cloud, $0 for local).

**Triage** — See *Issue Triage*.

---

## U

**Uniqueness Trap** — The documented tendency of project managers to treat each project as absolutely unique, preventing statistical learning from historical patterns (Flyvbjerg & Gardner, 2023). One of PUMA's three motivating problems.

---

## V

**Vector Databases** — Databases storing embeddings for intelligent similarity search. Enable RAG retrieval. Examples: ChromaDB (simple), Qdrant (production), Weaviate. See [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]].

---

## W

**Wilcoxon signed-rank test** — A non-parametric statistical test comparing two paired samples. Used in PUMA to test H1 and H2 significance (α = 0.05, two-sided). See [[30 - Permanent/32 Methods/PN-Wilcoxon-FINER-Cornell-PRISMA]].

---

## Z

**Zettelkasten** — A knowledge management method using atomic, permanently located notes linked by explicit connections. Implemented in this vault's `30 - Permanent/` folder (flat structure, declarative titles). See [[30 - Permanent/33 Frameworks/PN-PARA-GTD-Zettelkasten]].

**Zero-Shot CoT** — Chain-of-thought prompting without any examples, using a trigger phrase like "Think step by step:" to elicit reasoning. One of PUMA's four prompting strategies (Strategy 1).

---

*Glossary v2.0 · 65 terms · Updated April 2026 
