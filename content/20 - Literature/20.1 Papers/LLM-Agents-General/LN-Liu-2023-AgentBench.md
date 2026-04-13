---
type: literature
title: "AgentBench: Evaluating LLMs as Agents"
authors: ["Liu, Xiao", "Yu, Hao", "Zhang, Hanchen", "Xu, Yifan", "Lei, Xuanyu", "Lai, Hanyu", "Gu, Yu", "Ding, Hangliang", "Men, Kaiwen", "Yang, Kejuan", "Zhang, Shudan", "Deng, Xiang", "Zeng, Aohan", "Du, Zhengxiao", "Zhang, Chenhui", "Shen, Shengding", "Fu, Tianhao", "Liu, Guanyu", "Ni, Tai", "Xiao, Xiao", "Wang, Jiawen", "Yao, Yuan", "Li, Penghui", "Tang, Zhilin", "Li, Leo Z.", "Zhao, Xiaohan", "Tang, Jie", "Dong, Yuxiao"]
first-author: "Liu"
year: 2023
status: reviewed
topic: llm-agents
relevance: 5
citekey: "@Liu2023AgentBench"
venue: "ICLR 2024"
arxiv: "2308.03688"
doi: "10.48550/arXiv.2308.03688"
url: "https://arxiv.org/abs/2308.03688"
tags: [literature, llm-agents, benchmark, agentbench, evaluation, puma-core, agents, architecture, baseline, coding, critical-thinking, effort-estimation, gpt, keshav, literature-note, llm, local-llm, moc, multi-agent, ollama, open-source, project-management, react, red-teaming, research, story-points, triage, web]
created: 2026-04-13
updated: 2026-04-13
keshav-pass: 3
---

# LN: Liu et al. (2023) — AgentBench: Evaluating LLMs as Agents

> [!cite] Bibliographic Reference
> **Citation**: Liu, X., Yu, H., Zhang, H., et al. (2023). *AgentBench: Evaluating LLMs as agents*. arXiv:2308.03688. https://arxiv.org/abs/2308.03688
> **Venue**: ICLR 2024.

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Benchmark paper + empirical evaluation |
| **Context** | First comprehensive benchmark for LLMs acting as agents; responds to the proliferation of agent systems with no common evaluation framework |
| **Correctness** | 8 environments, 25+ LLMs tested. Results are systematic and reproducible. Open-sourced on GitHub. |
| **Contributions** | (1) 8 distinct environments: OS, DB, KG, ALFWorld, WebShop, Mind2Web, House3D, Minecraft; (2) Standardized protocol for agent evaluation; (3) GPT-4 dramatically outperforms open-source on real-world tasks; (4) Gap between chat and agent performance identified |
| **Clarity** | Excellent. Environment descriptions, scoring, and replication guide are clear. |

> [!success] Relevance: ⭐⭐⭐⭐⭐
> PUMA uses Ollama-based open-source LLMs (Llama, Mistral). AgentBench's finding that open-source models underperform GPT-4 on agentic tasks is a key threat to validity for PUMA.

---

## Pass 2 — Content

### The 8 Environments

| Environment | Type | Task |
|-------------|------|------|
| OS | Code/Action | Bash scripting, file management |
| DB | Code/Action | SQL, database manipulation |
| KG | Reasoning | Knowledge graph QA |
| ALFWorld | Embodied | Text-based household tasks |
| WebShop | Web | E-commerce purchasing |
| Mind2Web | Web | Website navigation |
| House3D | Embodied | 3D navigation |
| Minecraft | Embodied | Open-world tasks |

### Key Findings

> [!warning] Critical finding for PUMA
> Open-source LLMs (Llama, Vicuna) score **5–30% of GPT-4** on most AgentBench tasks. This suggests that PUMA's use of local LLMs (Llama 3, Mistral) will show significantly lower performance than cloud models — which must be explicitly addressed in the discussion chapter.

| Model | Overall Score |
|-------|---------------|
| GPT-4 | ~100 (normalized) |
| GPT-3.5 | ~52 |
| Llama-2-70B | ~18 |
| Vicuna-33B | ~14 |

### Root Cause of Gap
- Instruction following: open-source models frequently deviate from the expected output format
- Long-context reasoning: degraded performance on tasks requiring multi-step reasoning over 4k+ tokens
- Action grounding: models hallucinate actions not in the action space

---

## Pass 3 — Virtual Reconstruction

**Q1 (What does AgentBench tell PUMA?)**: PUMA Stage 1–2 are "tool-augmented classification" tasks, not full agentic tasks. The OS/DB environments are harder than PM triage. However, the format-following failures are directly relevant — PUMA must use structured output prompts and validate JSON responses.

**Q2 (How does this affect H1/H2?)**: AgentBench establishes that open-source LLMs have systematic format-following weaknesses. PUMA should implement a **successful parsing rate** metric alongside F1/MAE to track how often the LLM returns parseable output.

**Q3 (Benchmarking PUMA)**: PUMA could contribute a PM-specific agent evaluation environment to the AgentBench ecosystem — issue triage as a structured action space (Type × Priority × Component classification).

---

## PUMA Integration

- **Threat to validity**: AgentBench's open-source capability gap must be discussed in Ch.5 Discussion
- **Metrics**: Add "Successful Parsing Rate" metric to [[40 - Projects/PUMA/41.7 Experiments/EX-Stages-Overview]]
- **Baseline choice**: Justifies using GPT-4o as a cloud comparison baseline in PUMA Stage 1
- **Spec**: [[40 - Projects/PUMA/41.6 Specs/SP-Triage-Agent-v1]] — output format validation required

## Related Notes

- [[30 - Permanent/31 Concepts/PN-KeyConcepts-Agents-Reproducibility-RedTeam]] — AgentBench as evaluation framework
- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — environment taxonomy
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Jimenez-2023-SWEbench]] — complementary coding benchmark
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Mialon-2023-GAIA]] — GAIA general benchmark
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Masterman-2024-AgentArchSurvey]] — architecture survey

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
