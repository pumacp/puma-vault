---
id: SOMEDAY-Ideas
title: "🌱 Someday / Maybe — PUMA & Beyond"
type: gtd-someday
tags: [gtd, someday, ideas, future, academic-writing, aiops, api, architecture, backlog, benchmark, bias, chain-of-thought, code-review, cot, crewai, dataset, dev-tools, devops, effort-estimation, ethics, fairness, fine-tuning, github, issue-triage, jira, langgraph, literature-review, llama, llm, local-llm, mas, meta, mistral, multi-agent, obsidian, ollama, opencode, project-management, projects, pydantic, python, rag, research, research-tools, retrieval, sdd, slr, smart-pmo, spec-driven-development, story-points, tawos, triage, vault, zero-shot, zotero]
created: 2026-03-01
---

# 🌱 Someday / Maybe

> **Ideas that are NOT active commitments but worth keeping.** Review monthly during Weekly Review.
> If an idea becomes actionable → move to [[90 - GTD/91 Tasks/TASKS-Active]].

---

## 📚 Research Extensions (Post-PUMA Project)

- [ ] Add Stage 3: Backlog prioritisation (Spearman correlation ≥ 0.50)
- [ ] Add Stage 4: RAG-enhanced triage (retriever + classifier)
- [ ] Add Stage 5: Full Smart PMO multi-agent system (CrewAI or LangGraph)
- [ ] Extend to 5-class priority schema (Critical/High/Medium/Low/Trivial)
- [ ] Fine-tune Llama 3.2 on Jira SR for comparison with zero-shot
- [ ] Add fairness metrics (measure bias across project types)
- [ ] Test on non-English issue trackers (GitLab, Azure DevOps)
- [ ] Publish PUMA results as academic paper (target: MSR 2027 or EASE 2027)
- [ ] Create a live PUMA leaderboard (Hugging Face Spaces)

## 🛠️ Tooling Ideas

- [ ] Build Streamlit UI for interactive PUMA triage demo
- [ ] Create GitHub Action for auto-running benchmark on new model releases
- [ ] Add model-as-a-judge evaluation (use LLM to score LLM output quality)
- [ ] Integrate Arize Phoenix for full LLM observability in Stage 4+
- [ ] Try Pydantic AI for enforced structured output (replace regex parsing)

## 📖 Learning Topics (Post-PUMA Project)

- [ ] Deep dive: Fine-tuning LLMs (LoRA, QLoRA) — is it worth it for PM tasks?
- [ ] Learn LangGraph deeply (multi-agent coordination patterns)
- [ ] Study: AI fairness and bias measurement (Barocas, Hardt, Narayanan book)
- [ ] Explore: Program synthesis for automated spec generation (SDD extension)

## 💡 Open Questions Worth Investigating

- [ ] Does model size (3B vs 7B vs 13B) matter more than prompting strategy for triage?
- [ ] Can PUMA be adapted for non-Jira issue trackers (GitHub Issues, Linear)?
- [ ] What is the minimum training data needed to fine-tune a model to match CoGEE?
- [ ] Does chain-of-thought improve or degrade estimation for Fibonacci-scale outputs?

---
---
id: WAITING-Log
title: "⏳ Waiting For — PUMA"
type: gtd-waiting
tags: [gtd, waiting, blocked]
created: 2026-03-01
---

# ⏳ Waiting For

> Items where progress depends on someone/something else. Review weekly.

| Item | Waiting for | Since | Follow-up date |
|------|------------|-------|---------------|
| Tutor feedback on Ch.1 | Dr. [Tutor name] | 2026-03-08 | 2026-03-15 |
| Jira SR full dataset download confirmation | Zenodo (zenodo.org) | 2026-03-04 | Verify SHA256 |
| TAWOS dataset download | GitHub SOLAR-group | 2026-03-04 | ✅ Done |
| Ollama v0.5+ release (seed API fix) | Ollama project | TBD | Check monthly |

---
---
id: PROJECTS-Master
title: "📋 Projects Master List — GTD"
type: gtd-projects
tags: [gtd, projects, master]
created: 2026-03-01
---

# 📋 Projects Master List

> All active multi-step projects. Each must have a clear next action.

| Project | Next Action | Deadline | Note |
|---------|-----------|---------|------|
| PUMA Project — Ch.2 Literature | Run SLR search on arXiv | 2026-04-08 | [[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-Ch2-Ch3-Ch4-Ch5]] |
| PUMA Project — Triage Module | Write SP-Triage-Agent-v1 spec | 2026-04-08 | [[SP-Architecture]] |
| PUMA Vault — GitHub | Set up git remote | 2026-03-06 | [[README]] |
| Zotero Library | Import 6 verified papers | 2026-03-08 | 20 - Literature |
| Ollama Environment | Pull Mistral 7B + verify | 2026-03-05 | [[20 - Literature/20.6 Tools/LN-Tools-Ollama-ClaudeCode-OpenCode-BrowserOS]] |
