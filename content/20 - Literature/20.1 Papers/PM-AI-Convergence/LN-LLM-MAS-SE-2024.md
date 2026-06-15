---
type: literature
title: "LLM-based Multi-Agent Systems for Software Engineering: Vision and Challenges"
authors: ["Unknown"]
first-author: "Unknown"
year: 2024
status: reviewed
topic: llm-agents
relevance: 5
citekey: "@LLMMAS-SE2024"
venue: "ACM Transactions on Software Engineering and Methodology"
arxiv: ""
doi: "10.1145/3712003"
url: "https://dl.acm.org/doi/epdf/10.1145/3712003"
tags: [literature, llm-agents, multi-agent, software-engineering, mas, vision, puma-core, agents, architecture, benchmark, coding, critical-thinking, effort-estimation, ict, keshav, literature-note, llm, moc, project-management, research, sdd, spec-driven-development, story-points, triage]
created: 2026-04-13
updated: 2026-06-15
keshav-pass: 2
---

# LN: (2024) — LLM-based Multi-Agent Systems for Software Engineering: Vision and Challenges

> [!cite] Bibliographic Reference
> **Citation**: (2024). *LLM-based multi-agent systems for software engineering: Vision and challenges*. ACM TOSEM. https://doi.org/10.1145/3712003

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Vision/position paper + structured analysis |
| **Context** | SE community responds to the proliferation of LLM agent frameworks (MetaGPT, ChatDev, SWE-bench) with a principled analysis |
| **Correctness** | Structured literature analysis; challenges grounded in published empirical results |
| **Contributions** | (1) Taxonomy of LLM-based MAS roles for SE (Developer, Tester, Reviewer, PM); (2) Challenge inventory: hallucination, coordination overhead, evaluation; (3) Research agenda for SE-specific MAS design |
| **Clarity** | Good. Vision papers are inherently less technically precise but conceptually clear. |

> [!success] Relevance: ⭐⭐⭐⭐⭐
> This paper frames PUMA's research contribution within the SE community agenda. PUMA addresses one specific MAS task (PM triage + estimation) from the broader landscape described here.

---

## Pass 2 — Content

### MAS Roles in SE

| Agent Role | Primary Tasks | PUMA Mapping |
|------------|---------------|--------------|
| **Requirements Agent** | Extract, clarify, validate requirements | Upstream of PUMA scope |
| **Design Agent** | Architecture decisions, API design | BMAD Architect agent |
| **Developer Agent** | Code generation, refactoring | Outside PUMA scope |
| **Tester Agent** | Test case generation, bug finding | QA agent in BMAD |
| **PM Agent** | Issue triage, sprint planning, estimation | **PUMA's core contribution** |
| **Reviewer Agent** | Code review, documentation | Adjacent to PUMA |

### Key Challenges Identified

> [!warning] Challenges for PUMA
> 1. **Hallucination in structured outputs**: Agents frequently produce syntactically invalid JSON or misformat classification labels — directly addressed by PUMA's "Successful Parsing Rate" metric
> 2. **Coordination overhead**: Agent-to-agent communication adds latency — PUMA's single-agent design in Stages 1-2 avoids this
> 3. **Evaluation gap**: No standard benchmark for PM-specific MAS tasks — **PUMA fills this gap for triage + estimation**
> 4. **Reproducibility**: MAS experiments are harder to reproduce due to non-determinism — PUMA's constitution (temp=0, seed=42) directly addresses this

### Research Agenda (relevant to PUMA)
- Domain-specific agent specialization (PUMA: PM domain)
- Hybrid architectures (PUMA: LLM + retrieval)
- Human-in-the-loop integration (PUMA Ch.5 discussion)
- Standardized evaluation protocols (PUMA contributes one for PM)

---

## PUMA Integration

- **Ch.2 Literature Review**: This paper provides the direct SE community framing for PUMA's contribution — cite as the primary motivation for an SE-specific PM agent
- **Research gap**: The "evaluation gap" finding justifies PUMA's experiment design
- **Architecture**: MAS role taxonomy maps to PUMA's BMAD agent roster → [[40 - Projects/PUMA/41.9 BMAD-Agents/BMAD-Agent-Roster]]
- **Challenges → PUMA solutions**: Create a table in Ch.5 mapping each challenge to PUMA's mitigation strategy

## Related Notes

- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Hong-2023-MetaGPT]] — MetaGPT SE-specific MAS
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Qian-2023-ChatDev]] — ChatDev SE MAS
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Jimenez-2023-SWEbench]] — SE benchmark
- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — MAS architecture synthesis
- [[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-Ch2-Ch3-Ch4-Ch5]] — Ch.2 SoA section

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
