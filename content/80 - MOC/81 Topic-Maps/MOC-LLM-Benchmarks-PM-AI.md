---
id: MOC-LLM-Benchmarks-PM-AI-v2
title: "📊 MOC — LLM Benchmarks, PM-AI Convergence & Agent Architectures (v2)"
type: moc
tags: [moc, llm-benchmarks, pm-ai, agents, architectures, academic-writing, agentscope, aiops, aiopslabs, architecture, autogen, baseline, benchmark, bibliography, chain-of-thought, chatdev, citation, cot, critical-thinking, devops, embeddings, evaluation, gaia, github, gpt, langgraph, llm, local-llm, mas, masai, mcp, memgpt, memory, metagpt, multi-agent, navigation, ollama, openai, openhands, orchestration, project-management, protocol, rag, react, reasoning, reasoning-action, red-teaming, research, retrieval, root-cause-analysis, security, smart-pmo, software-engineering, swarm-intelligence, swe-bench, tree-of-thoughts, vector-db, workflow]
created: 2026-04-06
updated: 2026-06-15
---

# 📊 MOC — LLM Benchmarks, PM-AI Convergence & Agent Architectures

> [!info] Overview
> Navigation map for all literature on LLM agents, PM-AI convergence, benchmarks, and agent architectures.
> Updated with verified references from bibliography supplement v3.

---

## 🎯 PUMA Core Papers (highest relevance)

| Paper | arXiv | Key Contribution | PUMA Stage |
|-------|-------|-----------------|-----------|
| Cinkusz et al. 2025 (Cognitive Agents PM) | 2508.16678 | 5-task PM benchmark with LLMs; 3 limitations PUMA addresses | 1–3 |
| Assalaarachchi et al. 2026 (Agentic SPM) | 2601.16392 | "Agentic PM" vision; SPM 3.0 framework | 5 |
| Yao et al. 2022 (ReAct) | 2210.03629 | Base agent pattern: Thought-Action-Observation | 4–5 |
| Arora et al. 2024 (MASAI) | 2406.11638 | Modular sub-agent architecture for SE | 4–5 |
| Gao et al. 2024 (AgentScope) | 2402.14034 | Multi-agent platform; native Ollama support | 5 |
| Dorri et al. 2025 (Orchestrating HA Teams) | 2510.02557 | Manager Agent framework; GPT-5 vs GPT-4.1 | 5 |

---

## 🏗️ Foundational LLM Architecture

- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Vaswani-2017-AttentionIsAllYouNeed]] — Transformer architecture: attention mechanism, the backbone of all modern LLMs (NeurIPS 2017)
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Fedus-2022-SwitchTransformers]] — MoE: sparse routing, expert capacity, DeepSeek-V3/Mixtral lineage (JMLR 2022)
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Wei-2022-ChainOfThought]] — CoT prompting: reasoning chains emerge at scale >100B parameters (NeurIPS 2022)

---

## 🤖 Agent Architectures

### Foundation Papers
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Yao-2022-ReAct]] — ReAct: Thought-Action-Observation loop
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Yao-2023-TreeOfThoughts]] — ToT: Tree search over reasoning
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Zelikman-2024-QuietSTaR]] — Quiet-STaR: why CoT works mechanistically

### Multi-Agent Frameworks
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Hong-2023-MetaGPT]] — MetaGPT: role-based multi-agent
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Qian-2023-ChatDev]] — ChatDev: chat-based agent teams
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Wu-2023-AutoGen]] — AutoGen: conversational multi-agent
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Gao-2024-AgentScope]] — AgentScope: robust platform (Ollama native)
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Talebirad-2023-MultiAgentSurvey]] — Survey: MAS communication patterns

### Software Engineering Agents
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Arora-2024-MASAI]] — MASAI: modular sub-agents (SOTA SWE-bench)
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Jimenez-2023-SWEbench]] — SWE-bench: real GitHub issue benchmark
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Wang-2024-OpenHands]] — OpenHands: open agentic platform
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-MAGIS-2024-GitHubIssues]] — MAGIS: multi-agent GitHub issue resolution

### Architecture Surveys & Taxonomies
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Masterman-2024-AgentArchSurvey]] — Landscape of AI agent architectures
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Ning-2025-AgentTaxonomy]] — Taxonomy + decision model for agent design
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Tang-2025-LLMOrbit]] — LLMOrbit: scaling to agentic AI taxonomy

### Self-Improvement & Reasoning
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Shinn-2023-Reflexion]] — Reflexion: verbal self-reflection loop (NeurIPS 2023)
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Liu-2023-AgentBench]] — AgentBench: 8-environment benchmark, open-source vs GPT-4 gap (ICLR 2024)
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Park-2023-GenerativeAgents]] — Generative Agents: memory stream + reflection + planning (UIST 2023)
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Xie-2023-OpenAgents]] — OpenAgents: Data/Plugins/Web agent triad

### Memory & State
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Packer-2023-MemGPT]] — MemGPT: virtual context management
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-AssistGUI-2023]] — AssistGUI: GUI automation for PM tool integration

### Collaboration & Coordination
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Huang-2024-InternetOfAgents]] — Internet of Agents: heterogeneous coordination
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-HiveMind-2025-SwarmOptimization]] — HiveMind: swarm-level optimisation
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-OrchestratingHumanAI-2025]] — Manager Agent as unifying challenge

### Workflow & Orchestration
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Yu-2025-DynTaskMAS]] — DynTaskMAS: async parallel task graphs
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Flow-2025-AgenticWorkflow]] — Flow: modular workflow composition
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-IntelligentSparkAgents-2024]] — LangGraph in practice

### Security & Governance
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-AuthenticatedWorkflows-2026]] — Authenticated Workflows: protecting agentic AI
- [[20 - Literature/20.1 Papers/AIOps-DevOps/LN-Hou-2025-MCP-Security]] — MCP: landscape and security threats
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-HAIF-2026-HumanAIIntegration]] — HAIF: human-AI integration governance

---

## 📋 PM-AI Convergence

### Agentic PM Vision
- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Assalaarachchi-2026-AgenticSPM]] — ⭐ SPM 3.0: Agentic PM vision
- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Cinkusz-2025-CognitiveAgentsAgilePM]] — ⭐ PUMA predecessor paper
- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Shao-2025-FutureOfWork]] — 40% PM tasks automatable

### AIOps & DevOps
- [[20 - Literature/20.1 Papers/AIOps-DevOps/LN-Chen-2025-AIOpsLab]] — AIOpsLab: AIOps benchmark (PUMA analogue)
- [[20 - Literature/20.1 Papers/AIOps-DevOps/LN-Bruneliere-2022-AIDOaRt]] — AIDOaRt: AI-augmented DevOps framework
- [[LN-Chen-2024-RootCauseAnalysis]] — Root cause analysis via LLMs (Microsoft production)
- [[20 - Literature/20.1 Papers/AIOps-DevOps/LN-Incident-Management-AI-2023]] — Incident Management survey: triage lifecycle (arXiv 2312.14411)

### PM-AI & Human Collaboration
- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-LLM-MAS-SE-2024]] — LLM-MAS for SE: PM agent taxonomy, evaluation gap (ACM TOSEM)
- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Flyvbjerg-2023-UniquenessTrap]] — Uniqueness Trap: PUMA's theoretical motivation (RCF)
- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Collaborating-AIAgents-2025]] — Field experiments: human-AI team productivity (arXiv 2503.18238)
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Hubinger-2019-LearnedOptimization]] — Risks from Learned Optimization: inner alignment, HITL basis

---

## 📊 Benchmarks & Evaluation

- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Jimenez-2023-SWEbench]] — SWE-bench (code fixing baseline)
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Mialon-2023-GAIA]] — GAIA (general AI assistant benchmark)
- [[20 - Literature/20.1 Papers/AIOps-DevOps/LN-Chen-2025-AIOpsLab]] — AIOpsLab (AIOps benchmark)

---

## 🔍 AI Code Quality & Code Review

- [[20 - Literature/20.7 Blog-Web/LN-CodeRabbit-2025-AIvsHumanCode]] — ⭐ CodeRabbit (2025): AI vs Human PRs — 470 PRs, 1.7× more issues, 2.74× security CVEs, 3× readability deficit, 7 mitigation strategies

---

## 🔗 Related Permanent Notes

- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — Agent OS, Reproducibility
- [[30 - Permanent/31 Concepts/PN-RAG-Embeddings-VectorDB]] — Stage 4 RAG
- [[30 - Permanent/31 Concepts/PN-LLM-Local-vs-Cloud]] — Local vs cloud tradeoff
- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — Specialisation evidence
- [[30 - Permanent/31 Concepts/PN-ReAct-AgentPattern]] — ReAct foundation
- [[30 - Permanent/31 Concepts/PN-IssueTriage-StoryPoints]] — PUMA target tasks
- [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]] — Stage 5 future
- [[30 - Permanent/31 Concepts/PN-Evaluation-Metrics-Comprehensive]] — F1, MAE, SA, SPR, Wilcoxon, CI
- [[30 - Permanent/31 Concepts/PN-StatisticalValidation-Full]] — Wilcoxon, bootstrap, effect size
- [[30 - Permanent/31 Concepts/PN-LLM-Models-PUMA]] — Model comparison: Llama, Mistral, GPT-4o, DeepSeek
- [[30 - Permanent/31 Concepts/PN-Reflexion-SelfCritique]] — Verbal reinforcement loop
- [[30 - Permanent/31 Concepts/PN-GenerativeAgents-Simulacra]] — Memory stream architecture
- [[30 - Permanent/31 Concepts/PN-HITL-BoundedAutonomy]] — Human oversight design
- [[30 - Permanent/31 Concepts/PN-UniquenessTrap]] — Reference class forecasting in PUMA
- [[30 - Permanent/31 Concepts/PN-COSTAR-SelfConsistency]] — Prompt engineering frameworks
- [[30 - Permanent/31 Concepts/PN-AlgorithmicBias]] — Fairness and bias in PM AI
- [[30 - Permanent/31 Concepts/PN-ComputationalSustainability]] — Carbon footprint tracking
- [[30 - Permanent/31 Concepts/PN-FineTuning-LoRA-Quantization]] — LoRA, QLoRA, GGUF

## 🔗 Related MOCs

- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
- [[80 - MOC/81 Topic-Maps/MOC-Literature-Review]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]

## Closure: empirical results & models
- [[MOC-Results-Empirical]]
- [[MOC-Evaluated-Models]]
- [[MOC-Results-Cells]]
