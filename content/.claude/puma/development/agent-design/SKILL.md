---
name: puma-agent-design
description: Guidelines for designing LLM agents in PUMA — agent roles, tool specifications, memory architecture, ReAct pattern, and agent evaluation. Use when designing new agent components for PUMA benchmark, writing agent specs (SP-Agent-), implementing ReAct loops, or evaluating agent behavior. Covers both PUMA's own benchmark agents (triage/estimation) and BMAD research team agents. Load when working on agent architecture or implementing autonomous agent behavior.
---

# PUMA Agent Design — Architecture & Guidelines

## Agent Design Principles

PUMA agents follow these core design principles:

1. **Single responsibility**: Each agent has exactly one primary task
2. **Explicit memory**: No implicit state — all memory in files
3. **Bounded autonomy**: Agents act within defined spec constraints
4. **Observable reasoning**: CoT traces make reasoning auditable
5. **Reproducible**: Deterministic config (temp=0.0, seed=42) for benchmark agents
6. **Human-in-the-loop**: Critical decisions require human confirmation

## PUMA Agent Taxonomy

### Type 1: Benchmark Agents (Research subjects)
The agents PUMA is evaluating:

| Agent | Task | Dataset | Hypothesis |
|-------|------|---------|------------|
| Triage-Agent | Issue type + priority classification | TAWOS | H₁ |
| Estimation-Agent | Story point estimation | Jira SR | H₂ |

### Type 2: Research Team Agents (BMAD)
Agents that assist PUMA research:

| Agent | Role | See |
|-------|------|-----|
| Research-Analyst | Literature review | puma-literature-review |
| System-Architect | Spec + architecture | puma-sdd |
| Pipeline-Dev | Experiment code | puma-experiment |
| Reproducibility-QA | Testing + validation | puma-experiment |
| Academic-Writer | Chapter drafting | puma-research |
| PUMA-PM | Orchestration | puma-orchestrator |

## Benchmark Agent Specification

### Triage-Agent (H₁)

```yaml
agent_id: "triage-agent-v1"
task: "Issue type and priority classification"
model: "qwen2.5:3b"
runtime: "Ollama local"
temperature: 0.0
seed: 42
strategy: "few-shot-3"  # optimal from MVP

input:
  issue_title: str
  issue_description: str

output:
  type: "Bug | Feature | Task | Improvement | Sub-task"
  priority: "Blocker | Critical | Major | Minor | Trivial"

prompt_spec: "PT-Triage-FewShot3-v2.md"
evaluation:
  metric: "F1-macro"
  dataset: "TAWOS"
  baseline: "TF-IDF + SVM"
  
memory: "none"  # stateless, no memory between issues
tools: ["ollama.generate"]
```

### Estimation-Agent (H₂)

```yaml
agent_id: "estimation-agent-v1"
task: "Story point estimation"
model: "qwen2.5:3b"
runtime: "Ollama local"
temperature: 0.0
seed: 42
strategy: "few-shot-3-cot"  # optimal from MVP

input:
  issue_title: str
  issue_description: str

output:
  story_points: int  # in [1, 2, 3, 5, 8, 13, 21]

prompt_spec: "PT-Estimation-FewShotCoT3-v1.md"
evaluation:
  metric: "MAE"
  dataset: "Jira SR"
  baseline: "median historical SP"

memory: "none"  # stateless
tools: ["ollama.generate"]
```

## ReAct Pattern (Reason + Act)

For more complex agent tasks, implement ReAct (Yao et al., 2022):

```python
def react_agent_loop(task, tools, max_steps=10):
    """
    ReAct: Reason → Act → Observe → Reason → ...
    """
    history = []
    
    for step in range(max_steps):
        # REASON: Generate thought + action plan
        thought_prompt = build_react_prompt(task, history)
        response = ollama.generate(model=MODEL, prompt=thought_prompt,
                                   options={"temperature": 0.0, "seed": SEED})
        
        thought, action, action_input = parse_react_output(response["response"])
        
        if action == "Final Answer":
            return action_input
        
        # ACT: Execute the selected tool
        tool_fn = tools.get(action)
        if not tool_fn:
            observation = f"Error: Tool '{action}' not found."
        else:
            observation = tool_fn(action_input)
        
        history.append({
            "thought": thought,
            "action": action,
            "action_input": action_input,
            "observation": observation
        })
    
    return "Max steps reached — no final answer."
```

**ReAct prompt template**:
```
[RCOIF system prompt]

Available tools:
- search_papers(query): Search Zotero library
- read_note(path): Read a vault note
- write_note(path, content): Create/update a note
- run_experiment(config): Execute PUMA pipeline

Format your responses as:
Thought: [your reasoning about the current situation]
Action: [tool name]
Action Input: [tool arguments]
Observation: [tool result — filled by system]
... (repeat as needed)
Thought: I now have enough information to answer.
Final Answer: [your response]
```

## Memory Architecture

### Stateless Agents (benchmark agents)
- No memory between invocations
- Each issue processed independently
- All context provided in prompt
- Ensures fairness + reproducibility

### File-Based Memory (BMAD agents)
- Memory = vault files (ZK-Hub, AI-Use-Log, sprint board)
- Persistent across sessions
- Human-readable and editable
- Versioned via git

### Session Memory Pattern
```python
class PUMAAgentSession:
    def __init__(self, agent_role: str, task_id: str):
        self.role = agent_role
        self.task_id = task_id
        self.context = self._load_context()  # from vault files
        self.log = []
    
    def _load_context(self) -> dict:
        """Load relevant vault files into session context."""
        return {
            "core": read_file("puma-core/SKILL.md"),
            "rules": read_file("puma-rules/SKILL.md"),
            "sprint": read_file(f"40-Projects/PUMA/41.8-Sprint-Boards/Sprint-02.md"),
            "recent_log": get_recent_log_entries(n=5)
        }
    
    def log_action(self, action: str, output: str):
        entry = f"## [{datetime.now().date()}] {self.role} | {action}\n{output}\n"
        append_to_file("50-Areas/51-Research/AI-Use-Log.md", entry)
```

## Agent Evaluation Framework

### Benchmark Agent Evaluation (H₁, H₂)
- Primary: F1-macro (triage), MAE (estimation)
- Secondary: F1-per-class, precision, recall
- Reliability: 100% reproducibility over 3 runs
- Efficiency: inference time, token usage
- Sustainability: gCO₂eq per 100 predictions

### BMAD Agent Evaluation (qualitative)
- Task completion rate (% tasks completed per sprint)
- Output quality (human rating 1–5)
- Context efficiency (tokens used / task quality)
- Handoff success rate (% handoffs requiring rework)

## Agent Failure Modes and Mitigations

| Failure Mode | Cause | Mitigation |
|-------------|-------|------------|
| Label hallucination | No anchor block | Add explicit label constraint |
| Context overflow | Prompt too long | Apply CDD budget (see puma-cdd) |
| Reasoning drift | Long CoT without grounding | Add contextual anchors |
| Role confusion | Vague system prompt | Use RCOIF + explicit role declaration |
| Inconsistent output | Temperature > 0 | Force temp=0.0 for benchmark agents |
| Missing handoff context | Poor state documentation | Use standardized handoff template |

## Tool Specification Format

```yaml
tool:
  name: "search_vault"
  description: "Search PUMA vault for notes matching a query"
  input:
    query: "string — search terms"
    section: "string — vault section (20, 30, 40...)"
  output:
    matches: "list of note paths and summaries"
  implementation: "grep + Dataview OR obsidian-cli search"
```
