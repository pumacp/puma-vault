---
type: literature
title: "AssistGUI: Task-Oriented Desktop Graphical User Interface Automation"
authors: ["Gao, Difei", "Ji, Lei", "Bai, Zechen", "Chen, Mingyu", "Li, Zhengyuan", "Zeng, Ke", "Ma, Lin"]
first-author: "Gao"
year: 2023
status: reviewed
topic: llm-agents
relevance: 3
citekey: "@Gao2023AssistGUI"
venue: "arXiv preprint"
arxiv: "2312.03723"
doi: "10.48550/arXiv.2312.03723"
url: "https://arxiv.org/abs/2312.03723"
tags: [literature, llm-agents, gui-automation, desktop, task-completion, multimodal, puma-core, agents, architecture, benchmark, coding, keshav, literature-note, llm, moc, project-management, research, tool-use]
created: 2026-04-13
updated: 2026-06-15
keshav-pass: 2
---

# LN: Gao et al. (2023) — AssistGUI: Task-Oriented Desktop GUI Automation

> [!cite] Bibliographic Reference
> **Citation**: Gao, D., Ji, L., Bai, Z., Chen, M., Li, Z., Zeng, K., & Ma, L. (2023). *AssistGUI: Task-oriented desktop graphical user interface automation*. arXiv:2312.03723. https://arxiv.org/abs/2312.03723

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | System proposal + empirical evaluation |
| **Context** | GUI automation using LLMs with visual understanding; addresses limitations of purely text-based agents for desktop applications |
| **Correctness** | Evaluated on a benchmark of desktop tasks; compared against GPT-4V and other baselines |
| **Contributions** | (1) Task-oriented GUI automation that understands natural language instructions and executes desktop actions; (2) A benchmark of office productivity tasks; (3) Memory and planning mechanisms for multi-step workflows |
| **Clarity** | Good. Task taxonomy and pipeline are clear. |

> [!success] Relevance: ⭐⭐⭐
> Relevant as a reference for PUMA Stage 5 SmartPMO — automating PM tool interactions (Jira, GitHub) via GUI agents when APIs are unavailable.

---

## Pass 2 — Content

### Architecture

AssistGUI operates through a pipeline:
1. **Task Understanding**: Parse natural language instruction into goal state
2. **Screen Perception**: Detect UI elements (buttons, inputs, menus) via visual understanding
3. **Action Planning**: Generate a plan of atomic UI actions (click, type, scroll)
4. **Execution**: Execute actions in the OS environment
5. **Verification**: Check if the goal state has been reached; retry on failure

### Action Space

| Action | Description |
|--------|-------------|
| `click(element)` | Click on detected UI element |
| `type(text)` | Type text into active field |
| `scroll(direction)` | Scroll in given direction |
| `key(shortcut)` | Press keyboard shortcut |
| `drag(src, dst)` | Drag from source to destination |

### Key Findings
- LLMs with visual understanding (GPT-4V) significantly outperform text-only approaches for GUI tasks
- Multi-step tasks requiring state tracking are the primary failure mode
- Office productivity tasks (Word, Excel, email) benefit from explicit planning

---

## PUMA Integration

- **SmartPMO automation**: A GUI agent could automate Jira ticket processing when the Jira REST API is unavailable or insufficient — reading, classifying, and updating tickets directly via the UI
- **Accessibility**: For legacy PM tools without APIs, GUI automation is the only integration path
- **Stage 5 extension**: [[50 - Areas/56 Smart-PMO/Smart-PMO-Vision]] — GUI automation as a SmartPMO capability tier

## Related Notes

- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — GUI agent as a specialized tool-use agent
- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Park-2023-GenerativeAgents]] — agent with memory and planning
- [[20 - Literature/20.1 Papers/LLM-Agents-General/LN-Xie-2023-OpenAgents]] — complementary web-based agent

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
