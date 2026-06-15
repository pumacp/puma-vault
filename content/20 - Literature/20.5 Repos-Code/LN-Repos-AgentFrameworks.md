---
id: LN-Repos-AgentFrameworks
title: "📦 Repository Notes — Verified Agent Frameworks and Tools"
type: literature
topic: tools-repos
tags: [literature, tools, repositories, github, open-source, frameworks, academic-writing, agentscope, aiops, aiopslabs, api, architecture, autogen, benchmark, bibliography, bmad, carbon-footprint, citation, code-review, codecarbon, dataset, devops, effort-estimation, human-in-the-loop, issue-triage, jira, langchain, langgraph, literature-note, llm, local-llm, mcp, metagpt, moc, multi-agent, ollama, openhands, orchestration, project-management, protocol, rag, research, retrieval, scrum, security, smart-pmo, story-points, sustainability, tawos, template, triage]
created: 2026-04-06
updated: 2026-06-15
---

# 📦 Repository Notes — Verified Agent Frameworks and Tools

> [!info] Overview
> All repositories listed here have been verified as existing, active GitHub repositories with the cited URLs. Only verified repos with academic backing or direct PUMA relevance are included.

---

## Core Tools for PUMA

### OpenHands (All-Hands AI → OpenHands org)
- **GitHub**: https://github.com/OpenHands/OpenHands *(org renamed from All-Hands-AI/OpenHands)*
- **Stars**: ~67,300 (April 2026)
- **License**: MIT
- **Paper**: Wang et al. (2024). arXiv:2407.16741 → [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Wang-2024-OpenHands]]
- **PUMA use**: Development phase (F2–F4) — agentic code assistance. Stage 5 architecture reference.

### MetaGPT
- **GitHub**: https://github.com/geekan/MetaGPT
- **Stars**: ~50,000+ (April 2026)
- **License**: MIT
- **Paper**: Hong et al. (2023). arXiv:2308.00352 → [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Hong-2023-MetaGPT]]
- **PUMA use**: BMAD methodology inspiration. Multi-role agent pattern.

### AutoGen (Microsoft Research)
- **GitHub**: https://github.com/microsoft/autogen
- **Stars**: ~40,000+ (April 2026)
- **License**: MIT
- **Paper**: Wu et al. (2023). arXiv:2308.08155 → [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Wu-2023-AutoGen]]
- **PUMA use**: Stage 5 alternative framework to LangGraph. Explicit HITL support.

### AIOpsLab (Microsoft Research)
- **GitHub**: https://github.com/microsoft/AIOpsLab
- **License**: MIT
- **Paper**: Chen et al. (2025). arXiv:2501.06706 → [[20 - Literature/20.1 Papers/AIOps-DevOps/LN-Chen-2025-AIOpsLab]]
- **PUMA use**: Benchmark design reference. AIOps counterpart to PUMA's PM benchmark.

---

## Agent Framework Ecosystem

### LangGraph (LangChain)
- **GitHub**: https://github.com/langchain-ai/langgraph
- **Stars**: ~10,000+ (April 2026)
- **License**: MIT
- **PUMA use**: Stage 4 RAG agent orchestration. Stage 5 cyclic state graphs.

### Model Context Protocol (MCP)
- **Website**: https://modelcontextprotocol.io/
- **GitHub**: https://github.com/modelcontextprotocol
- **License**: MIT
- **Creator**: Anthropic (donated to Agentic AI Foundation / Linux Foundation, Dec 2025)
- **Paper**: Hou et al. (2025). arXiv:2503.23278 → [[20 - Literature/20.1 Papers/AIOps-DevOps/LN-Hou-2025-MCP-Security]]
- **PUMA use**: Stage 5 tool integration protocol for Jira/GitHub API connections.

### AgentScope (Alibaba)
- **GitHub**: https://github.com/modelscope/agentscope
- **Stars**: ~6,000+ (April 2026)
- **License**: Apache 2.0
- **Paper**: Gao et al. (2024). arXiv:2402.14034 → [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Gao-2024-AgentScope]]
- **PUMA use**: Stage 5 alternative to LangGraph. Native Ollama support.

---

## Datasets and Code Repositories

### Jira Social Repository (Ortu et al., 2015)
- **Zenodo**: https://zenodo.org/record/5901893
- **DOI**: 10.5281/zenodo.5901893
- **License**: CC BY 4.0
- **PUMA use**: Stage 1 triage benchmark dataset → [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]

### TAWOS Dataset (Tawosi et al., 2022)
- **GitHub**: https://github.com/SOLAR-group/TAWOS
- **License**: Apache 2.0
- **DOI**: 10.1145/3524842.3528029
- **PUMA use**: Stage 2 estimation benchmark dataset → [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]

### CodeCarbon
- **GitHub**: https://github.com/mlco2/codecarbon
- **Stars**: ~1,000+ (April 2026)
- **License**: MIT
- **PUMA use**: Carbon measurement in all experiments → [[50 - Areas/54 Sustainability/Carbon-Tracking-Log]]

---

## ⚠️ Repositories NOT Verified / Excluded

The following repos from the bibliography could not be verified as real, active repositories and are **not included**:
- `crewship/fastapi-langgraph-template` — no active repository found
- `vency-ai/agentic-scrum` — no active repository found  
- `yangxingguang/satd_sentiment_GPT` — very small/inactive, no clear academic backing
- `sdi2200262/agentic-project-management` — ~1.3k stars but no associated academic paper
- `friendliai/aipm` — ~20 stars, not academically backed

---

## Related Notes

- [[20 - Literature/20.5 Repos-Code/LN-Repos-ReferenceCode]] — complementary: code patterns
- [[40 - Projects/PUMA/41.6 Specs/SP-Architecture]] — how these tools integrate into PUMA
- [[50 - Areas/53 Code-Dev/Code-Review-Log]] — code review log
- [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]] — datasets (Jira SR, TAWOS)
- [[50 - Areas/54 Sustainability/Carbon-Tracking-Log]] — CodeCarbon tracking
- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — Stage 5 patterns
- [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]] — Stage 5 Smart PMO vision

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
