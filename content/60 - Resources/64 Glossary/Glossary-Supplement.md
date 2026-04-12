---
id: Glossary-Supplement-v2
title: "📖 Glossary Supplement v2 — Extended Technical Terms"
type: glossary
tags: [glossary, reference, definitions, supplement]
created: 2026-04-06
updated: 2026-04-06
source: "PUMA Project Technical Glosary v5.0"
---

# 📖 Glossary Supplement — Extended Technical Terms

> **Supplement to**: [[60 - Resources/64 Glossary/Glossary-Master]]
> This file adds terms from the full PUMA Project technical glossary (v5.0, 139 terms) not yet in the Master.
> All definitions in English. Organised by PUMA Project glossary categories.

---

## A — Evaluation Metrics (new entries)

**Accuracy (Global Accuracy)** — Proportion of totally correct predictions over all instances: (TP + TN) / Total. Misleading in class-imbalanced datasets. A classifier predicting always 'Major' on Jira SR achieves ~60% Accuracy without learning anything. PUMA uses F1-macro as primary metric for this reason.

**AUC-ROC (Area Under the ROC Curve)** — Measures the global discriminative capacity of a binary classifier across all decision thresholds. AUC = 1.0 → perfect; AUC = 0.5 → random. In multiclass, computed One-vs-Rest per class. Secondary metric in PUMA Stage 1.

**BLEU (Bilingual Evaluation Understudy)** — Standard metric for automatic translation quality based on modified n-gram precision with a brevity penalty. Used in NLP for text similarity between generated and reference text. Relevant for PUMA Stage 5 (report generation evaluation).

**Bootstrap** — Statistical resampling technique generating multiple samples with replacement from the original dataset to calculate empirical distributions of statistics and 95% confidence intervals. Used in PUMA for CI on F1-macro and MAE where normality cannot be assumed.

**Confidence Interval (CI)** — Range within which the true population value is expected to fall with a given probability (typically 95%). Reported alongside p-values in PUMA results. Calculated via bootstrap over n=200 evaluation instances.

**Effect Size (Cohen's d / r)** — Standardised measure of the magnitude of a difference between groups, independent of sample size. Complements p-value. r = Z / √N from Wilcoxon. r ≥ 0.1 = small, ≥ 0.3 = medium, ≥ 0.5 = large.

**F1-micro** — F1 variant computing Precision and Recall globally by summing all TPs, FPs, FNs across all classes before computing F1. Gives more weight to majority classes. Equivalent to Accuracy in balanced datasets. Secondary metric in PUMA Stage 1.

**F1-weighted** — F1 variant averaging per-class F1 scores weighted by class frequency. Intermediate between F1-macro and F1-micro. Included as reference metric in PUMA results tables.

**Latency (inference latency)** — Time from sending a request to the LLM to receiving the complete response. Includes tokenisation, forward pass, detokenisation. Target in PUMA: < 60s/inference on 16GB RAM CPU. Measured as `eval_duration` in Ollama verbose output.

**MdAE (Median Absolute Error)** — Median of absolute errors. More robust than MAE to outliers (e.g., Fibonacci-scale story points with rare high values). Recommended as complement to MAE in PUMA Stage 2.

**MRR (Mean Reciprocal Rank)** — Retrieval metric averaging the reciprocal of the rank of the first relevant result per query. MRR = (1/|Q|) × Σ(1/rank_i). Relevant in PUMA Stage 4 for evaluating RAG retrieval quality.

**MTTD (Mean Time To Detection)** — Average time between a risk signal appearing and its detection. Standard AIOps metric. PUMA Stage 5 target: 30% MTTD reduction vs. manual triage.

**MTTR (Mean Time To Resolution)** — Average time from detection to full resolution. Standard ITSM/ITIL metric. Lower MAE in estimation improves sprint planning → reduces MTTR.

**Perplexity (PPL)** — Measure of LLM uncertainty in predicting the next token. Lower perplexity = higher confidence. Used to compare base models before task-specific evaluation. Not a task evaluation metric in PUMA.

**Pre-registered analysis** — Documenting experimental design, hypotheses, metrics, and analysis plan *before* seeing data. Prevents p-hacking and HARKing. In PUMA: H1 + H2 thresholds specified in PEC1 before experiments run.

**Recall@k** — In RAG systems: proportion of relevant documents appearing in the top-k retrieved results. Recall@1 = most similar document is relevant. Used in PUMA Stage 4 to evaluate retrieval quality.

**ROUGE** — Family of metrics (ROUGE-1, ROUGE-2, ROUGE-L) evaluating n-gram overlap between generated and reference text. Relevant for PUMA Stage 5 (automated PM report generation).

**SA (Standardized Accuracy)** — Effort estimation metric measuring proportion of predictions correct within a tolerable margin on the reference scale. For story points (Fibonacci), "correct" = same value or adjacent Fibonacci level. Documented in Tawosi et al. (2022).

**Spearman ρ** — Non-parametric rank correlation coefficient. Range: −1 (perfect rank reversal) to +1 (perfect rank agreement). Used in PUMA Stage 3 to evaluate backlog prioritisation quality. Target: ρ ≥ 0.50.

**Standardized Accuracy** — See *SA*.

**Tokens per second (t/s)** — LLM generation speed. Determines inference latency. Apple M2 Pro: ~15–28 t/s with Llama 3.2 8B. Intel i7 CPU: ~8–10 t/s. Measure with `ollama run mistral:7b 'ok' --verbose`.

**Triage success rate** — Proportion of responses that can be automatically parsed into a valid label (e.g., 'Critical', 'Major', 'Minor', 'Trivial') without manual intervention. Target: > 95%. Improved via structured output prompting and temperature=0.

---

## B — Prompting Strategies (new entries)

**CO-STAR** — Structured prompt design framework: Context · Objective · Style · Tone · Audience · Response. Alternative structured approach to RCOIF for high-stakes prompts.

**Few-Shot + CoT** — Combination of few-shot examples with Chain-of-Thought reasoning chains within each example. Highest-performing documented strategy for complex tasks (Wei et al., 2022). PUMA Strategy 4 uses this combination.

**One-Shot Prompting** — Few-shot variant with exactly 1 example. Intermediate between zero-shot and few-shot-3. Evaluating this in PUMA would measure the marginal value of each additional example.

**ReAct (Reason + Act)** — Agent paradigm interleaving reasoning steps (Thought) with tool actions (Action) and environment observations (Observation). Proposed by Yao et al. (2022). Base paradigm for PUMA Stage 4–5 agents.

**Reflexion** — Extension of ReAct adding a self-reflection step after failure: the agent analyses why it failed and generates a revised strategy. Shinn et al. (2023). Relevant for PUMA Stage 5 agent improvement.

**Self-consistency Prompting** — Generates multiple independent responses (temperature > 0) and selects the most frequent answer (majority voting). Wang et al. (2022). Improves robustness at cost of multiplying inference calls (and latency). Not recommended for PUMA MVP.

**Structured Output Prompting** — Forces the model to generate responses in predefined structured format (JSON, XML). Implemented in Ollama with `format='json'` or explicit instructions. Ensures automatic parseability. Used in PUMA to guarantee triage label extraction.

**System Prompt** — Initial instruction configuring the model's role and global constraints before user messages. In Ollama API: `system` field. Sets agent persona: "You are an expert ICT project manager. Classify the following issue..."

**Tree-of-Thoughts (ToT)** — Extension of CoT exploring multiple reasoning chains as a search tree. Each node evaluates partial reasoning quality and decides whether to continue or backtrack. Yao et al. (2023). Relevant for PUMA Stage 4–5 planning tasks.

**Zero-shot CoT** — Chain-of-Thought without examples, using trigger phrases like "Think step by step." Kojima et al. (2022). Less effective than few-shot CoT but simpler to implement.

---

## C — LLM Models (new entries)

**DeepSeek-R1** — Family of reasoning models from DeepSeek AI (2025) trained with pure reinforcement learning (GRPO) without supervised fine-tuning. Emerged spontaneously with CoT-like reasoning capabilities. DeepSeek-R1-Distill-Llama-8B is an 8B distilled version. Ballarín et al. (2025) report F1 = 59.33% with fine-tuned version on GitHub issue classification.

**DeepSeek-V3** — Mixture-of-Experts model from DeepSeek AI, 671B total parameters (37B activated per token). Trained on 14.8T tokens at ~$5.5M cost. Uses Multi-head Latent Attention (MLA). Too large for local full inference in PUMA MVP. State-of-the-art open-weights reference.

**Fine-tuning (SFT)** — Continuing training of a pre-trained LLM on task-specific labelled data. Produces more accurate models than prompting for specialised tasks but requires labelled data, GPU, and time. Excluded from PUMA MVP scope. Ballarín et al. (2025) fine-tuned DeepSeek-R1 8B with LoRA for comparison.

**Gemma 2 9B** — Open-weights model from Google DeepMind, 9B parameters. Designed for efficient consumer hardware execution. Strong instruction following. Licence: Gemma Terms of Use. Alternative model for PUMA if additional evaluation is possible.

**Instruct Model vs. Base Model** — Base models predict the next token in text. Instruct/chat models are base models adjusted with RLHF/RLAIF to follow instructions. Dramatically superior to base models for prompting tasks. All PUMA models are instruct variants.

**LoRA (Low-Rank Adaptation)** — Parameter-efficient fine-tuning technique adding small trainable low-rank matrices to transformer layers instead of adjusting all weights. Reduces trainable parameters from ~7B to ~4M. Used by Ballarín et al. (2025) for DeepSeek-R1 fine-tuning. Not implemented in PUMA MVP but relevant for future work.

**MoE (Mixture of Experts)** — Transformer variant activating only a subset of parameters (the "experts") per token instead of all parameters. Enables scaling total parameters without proportional compute increase. Used in DeepSeek-V3.

**num_predict** — Ollama parameter limiting maximum output tokens. Reducing from default (~128–512) to 10–20 tokens for single-label classification tasks reduces latency by 80–90% without quality impact. Critical optimisation for PUMA.

**Open-weights model** — LLM with publicly available weights for download and use. Licence varies (Apache 2.0, MIT, custom). Distinct from "open source" (source code + training data not always available). Llama, Mistral, Gemma are open-weights. All PUMA experimental models are open-weights.

**Phi-3.5 Mini** — Microsoft model, ~3.8B parameters. Matches 7B performance on reasoning benchmarks through high-quality training data. ~2× faster than Mistral 7B on CPU. Licence: MIT. PUMA fallback model if inference latency > 30s.

**Qwen 3** — Family of open-weights models from Alibaba Cloud, 0.6B–235B parameters. Qwen 3 8B at ~8.62 t/s on 12th-gen Intel CPU. Strong bilingual (Chinese–English) and reasoning capabilities. Alternative model for PUMA cross-family comparison.

**RLHF (Reinforcement Learning from Human Feedback)** — Training technique using human quality ratings to train a reward model, which then guides LLM fine-tuning via reinforcement learning (PPO). Transforms base models into helpful, safe assistants. GPT-4, Claude, Llama-chat are RLHF-trained.

**Seed** — Initial value of the random number generator determining the complete randomness sequence. With same seed + temperature=0, a model generates bit-identical output for the same prompt. In Ollama: `options.seed`. PUMA standard: seed=42.

**Temperature** — LLM parameter controlling output randomness. temperature=0 → deterministic (greedy decoding). temperature=1 → original model distribution. PUMA standard: temperature=0 for all experiments.

---

## D — Datasets (new entries)

**APSTUD (TAWOS project)** — Atlassian project within TAWOS dataset. Baseline MAE (mean historical): ~3.8 SP. CoGEE (J.P. Morgan, 2024) achieves MAE ~2.1–3.4 SP. PUMA secondary evaluation dataset.

**AgentBench** — First comprehensive benchmark for LLMs-as-Agents in real-world tasks (Liu et al., Tsinghua, ICLR 2024). Evaluates agents in 8 environments. GPT-4 achieves 52% average. Design pattern reference for PUMA's multi-condition benchmark architecture.

**Jira Red Hat Dataset (2024)** — Alternative Jira dataset from Red Hat projects, available on Zenodo (DOI: 14558684). More recent than Apache Jira SR. No MongoDB required. Useful for testing PUMA generalisation beyond Apache open-source projects.

**MESOS (TAWOS project)** — Apache Mesos project within TAWOS. Baseline MAE (mean historical): ~2.9 SP. Most favourable for achieving PUMA's MAE ≤ 3.0 SP threshold. Primary Stage 2 evaluation project.

**NLBSE Challenge** — Annual academic competition on NLP for software engineering. NLBSE'24 includes GitHub issue classification (bug/enhancement/question). Ballarín et al. (2025): F1-macro = 82.8% with GPT-3.5 fine-tuned. Reference for calibrating PUMA's F1-macro ≥ 0.55 threshold.

**SWE-bench** — Benchmark evaluating LLMs on resolving real GitHub issues in Python repositories (arXiv:2310.06770, ICLR 2024). State-of-the-art resolves 13.8% of issues. Reference for the most demanding SE+LLM benchmark in the field.

**XD (TAWOS project)** — Highest-variance project within TAWOS. Baseline MAE: ~4.1 SP. Most challenging for LLM estimation. Included in PUMA to characterise cross-project variability.

---

## E — Research Methodology (new entries)

**Ablation Study** — Experiment systematically disabling system components to measure each component's individual contribution. In PUMA: removing few-shot examples, removing CoT reasoning, or varying k (1/3/5/6). Complement to the main experiment.

**External validity** — Degree to which results generalise to populations, contexts, and conditions beyond those studied. PUMA's Apache open-source results may not generalise directly to commercial project teams. Declared as a limitation in Ch.4.

**Ground truth** — Reference labels representing the correct answer in a supervised problem. PUMA Stage 1: Jira SR priority labels assigned by Apache community. Stage 2: story points assigned by development teams during sprint planning.

**Pre-registered analysis** — Documenting experimental design, hypotheses, and analysis plan before running experiments and seeing data. In PUMA: H1 + H2 with thresholds specified in PEC1. Prevents p-hacking.

---

## F — Tools & Frameworks (new entries)

**AgentScope** — Flexible multi-agent platform by Alibaba Research (arXiv:2402.14034). Compatible with Ollama models and remote APIs. Alternative to LangGraph for PUMA Stage 5.

**AutoGen (Microsoft Research)** — Multi-agent framework where agents communicate via text conversations. Supports human agents, LLM agents, code agents. Alternative for PUMA Stage 5.

**ChromaDB** — Lightweight, embeddable Python vector database. No external server required. Simple to configure: `pip install chromadb`. Recommended for PUMA Stage 4 RAG prototype.

**CrewAI** — Multi-agent framework with role, goal, and backstory-defined agents collaborating on tasks. Simpler alternative to LangGraph for Supervisor+Workers pattern. Relevant for PUMA Stage 5.

**FAISS (Facebook AI Similarity Search)** — C++ library with Python bindings for efficient vector similarity search. No server required. Standard for RAG prototypes. `pip install faiss-cpu`. Alternative to ChromaDB for PUMA Stage 4.

**LangChain** — Python/JS framework for LLM applications with chains, memory, tools, and agents. Not required for PUMA MVP (Stages 1–2). Candidate for Stage 4 RAG pipeline.

**LangGraph** — LangChain extension for stateful multi-agent workflows as directed graphs with cycle support. Enables reflection loops. Candidate for PUMA Stage 4 RAG agent and Stage 5 orchestration.

**LlamaIndex** — Python framework specialised in RAG pipelines (indexing, retrieval, generation). Simpler than LangChain for pure RAG use cases. Alternative for PUMA Stage 4.

**LM Studio** — GUI application for running local LLMs. No terminal knowledge required. Exposes OpenAI-compatible REST API at `localhost:1234`. Primary fallback if Ollama fails.

**Qdrant** — High-performance vector database for production RAG systems. Metadata filtering, HNSW indexing. Alternative to ChromaDB for PUMA Stage 4 if performance requirements increase.

**TF-IDF + SVM (baseline classifier)** — Classic text classification pipeline: TF-IDF vectors + SVM/logistic regression classifier. Supervised baseline requiring labelled training data. Implemented with `sklearn.feature_extraction.text.TfidfVectorizer` + `sklearn.svm.SVC`.

**llama.cpp** — Efficient C++ inference implementation for LLaMA-based models. Backend underlying Ollama and LM Studio. Supports GGUF quantised models. Can be used directly via `llama-cpp-python` if Ollama/LM Studio unavailable.

---

## G — Architectures (new entries)

**Bounded Autonomy** — Design principle explicitly limiting agent actions requiring human validation above an impact threshold. PUMA agents can classify and estimate autonomously (low impact) but cannot modify backlogs or reassign resources without human approval.

**Context Window** — Maximum tokens processable simultaneously as input. Llama 3.2 8B: 128K tokens; Mistral 7B: 32K tokens. PUMA few-shot prompts (~500–2000 tokens) are well within limits.

**Hallucination** — Phenomenon where an LLM generates factually incorrect information confidently. Mitigated in PUMA via temperature=0 (determinism), response parsing validation, and RAG (Stage 4) anchoring responses in real documents.

**Manager Agent (Supervisor Pattern)** — Architectural pattern where a central agent receives tasks, decomposes them, delegates to specialised sub-agents, and coordinates results. See *Orchestrating Human-AI Teams* (arXiv:2510.02557, 2025). Pattern for PUMA Stage 5.

**Multi-Agent System (MAS)** — System composed of multiple independent agents perceiving their environment, reasoning, and acting autonomously, coordinating to solve tasks no individual agent could optimally solve. PUMA Stage 5 architecture.

**Swarm** — Multi-agent pattern where multiple agents work in parallel without a strict centralised coordinator, communicating to converge on a solution. More robust than Supervisor but harder to debug. PUMA Stage 5 alternative architecture (SwarmPM).

**Tool Use (Function Calling)** — LLM capability to invoke external functions (APIs, databases, calculators, code interpreters) during response generation. Formalised as Function Calling in OpenAI API. Fundamental for PUMA Stage 4–5 agents.

---

## H — Key Concepts (new entries)

**Active Reading** — Reading practice maintaining deliberate questions while engaging with text to produce actionable, usable knowledge rather than passive familiarity. MIT AI Lab WP 316 Q1/Q2/Q3 operationalise this practice. See [[30 - Permanent/31 Concepts/PN-ActiveReading-CognitivePractice]].

**Algorithmic Bias** — Systematic error in AI system outputs caused by biased training assumptions or data. In PUMA triage, an LLM may be biased toward Apache project priority conventions and misclassify issues from other domains. Documented in Section 1.3.

**Baseline Heuristic** — Simple non-learned comparison method (rule-based or statistical) that any reasonable system must surpass. PUMA Stage 1 heuristic: predict 'Major' for every issue (F1-macro ≈ 0.25 with balanced classes). Stage 2 heuristic: historical mean SP per project.

**Cognitive Offloading** — Delegating critical thinking to AI tools, risking atrophied reasoning skills. WP 316 and the Keshav/Q1-Q2-Q3 protocol explicitly guard against this by requiring the researcher to apply the questions themselves. See [[30 - Permanent/31 Concepts/PN-ActiveReading-CognitivePractice]].

**MIT Student Method** — Informal label for the combination of MIT AI Lab WP 316's three reading questions (Q1/Q2/Q3) with Keshav Three-Pass and AI-prompting frameworks (RCOIF, EGI, AMI, DRCA, IIPR). Not a formal published methodology. See [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method-Complete]].

**MIT AI Lab WP 316** — *"How to Do Research at the MIT AI Lab"* (1988, ed. David Chapman). Internal guide proposing three active reading questions (Q1/Q2/Q3) as habits of mind for graduate researchers. Not peer-reviewed. See [[20 - Literature/20.1 Papers/Research-Methods/LN-MITAILab-WP316-HowToDoResearch]].

**Open-weights vs. Open Source** — Open-weights models have publicly available trained weights but may not provide training data or full source code. Llama (Meta), Mistral AI, and Gemma (Google) are open-weights but not fully open source. All PUMA experimental models are open-weights.

**Overfitting (Few-shot risk)** — In few-shot prompting: the model becomes biased toward labels present in the demonstration examples. If all three 'Critical' examples are security bugs, the model may ignore other types of critical issues. Mitigated with representative, diverse example selection.

**Seed 42** — The random seed used throughout all PUMA experiments: `seed=42`. Combined with `temperature=0`, guarantees bit-identical reproduction across runs. Conventional choice (from *The Hitchhiker's Guide to the Galaxy*) with no special statistical significance.

**Uniqueness Trap** — See *Glossary-Master.md* — Flyvbjerg's term for the project manager bias treating each project as absolutely unique, blocking statistical learning from history. One of PUMA's three motivating problems.

**Velocity (team velocity)** — Average story points completed per sprint in previous sprints. The "historical mean SP per project" baseline in PUMA Stage 2 is a simple operationalisation of reference class thinking on team velocity.

---

## Appendix: Abbreviations Added

| Acronym | Term |
|---------|------|
| **APSTUD** | Atlassian TAWOS project |
| **AUC** | Area Under the Curve |
| **BLEU** | Bilingual Evaluation Understudy |
| **CI** | Confidence Interval |
| **CoGEE** | Context-Guided Effort Estimation |
| **F1-weighted** | Weighted-averaged F1 |
| **GRPO** | Group Relative Policy Optimization |
| **GQA** | Grouped Query Attention |
| **GGUF** | GPT-Generated Unified Format (quantisation) |
| **HITL** | Human-in-the-Loop |
| **KPI** | Key Performance Indicator |
| **LoRA** | Low-Rank Adaptation |
| **MAS** | Multi-Agent System |
| **MdAE** | Median Absolute Error |
| **MoE** | Mixture of Experts |
| **MRR** | Mean Reciprocal Rank |
| **MTTD** | Mean Time To Detection |
| **MTTR** | Mean Time To Resolution |
| **NLBSE** | Natural Language-Based Software Engineering |
| **PPL** | Perplexity |
| **ReAct** | Reasoning + Acting |
| **RLHF** | Reinforcement Learning from Human Feedback |
| **RMSE** | Root Mean Square Error |
| **ROUGE** | Recall-Oriented Understudy for Gisting Evaluation |
| **SA** | Standardized Accuracy |
| **SLA** | Service Level Agreement |
| **SLR** | Systematic Literature Review |
| **ToT** | Tree-of-Thoughts |
| **WP 316** | MIT AI Lab Working Paper 316 |

---

*Glossary Supplement v2 · 90+ new terms · April 2026 · Source: PUMA Project Technical Glosary v5.0*
