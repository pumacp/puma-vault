---
type: permanent
title: "MCP — Model Context Protocol: Architecture, Security, and PUMA Integration"
topic: agent-infrastructure
tags: [permanent, mcp, model-context-protocol, anthropic, tool-use, agent-infrastructure, jira, github, smart-pmo, security, puma-core, research, api, architecture, agentic-ai, protocol, standards, ethics, governance]
created: 2026-05-01
updated: 2026-05-01
aliases: ["MCP", "Model Context Protocol", "MCP Server"]
---

# PN: MCP — Model Context Protocol: Architecture, Security, and PUMA Integration

> [!abstract] Core Idea
> The **Model Context Protocol (MCP)** is an open standard (Anthropic, Nov 2024) that defines how LLM agents connect to external tools, data sources, and services through a unified client–server interface. MCP replaces ad-hoc API integrations with a structured protocol, enabling any MCP-compatible agent to use any MCP server without custom connectors.

---

## What MCP Solves

Before MCP, each tool integration required custom code: a Jira agent needed a Jira client, a GitHub agent needed a GitHub client, and combining them required manual orchestration. This produced:
- Fragmented, non-interoperable tool stacks
- Inconsistent error handling and authentication
- Repeated plumbing code across agent frameworks

MCP provides: **one protocol, any tool**.

---

## Architecture

### Three-Layer Model

```
┌──────────────────────────────────────────────────────────┐
│                    MCP HOST                               │
│   (LLM application — Claude Desktop, Claude Code, PUMA)  │
│                                                           │
│   ┌─────────────┐     ┌─────────────┐                   │
│   │ MCP Client  │     │ MCP Client  │                   │
│   │  (Jira)     │     │  (GitHub)   │                   │
│   └──────┬──────┘     └──────┬──────┘                   │
└──────────┼───────────────────┼──────────────────────────┘
           │  JSON-RPC 2.0     │  JSON-RPC 2.0
           │  (stdio / SSE)    │
   ┌───────▼──────┐    ┌───────▼──────┐
   │  MCP Server  │    │  MCP Server  │
   │  jira-server │    │ github-server│
   └──────────────┘    └──────────────┘
```

- **MCP Host**: the AI application that orchestrates agent behaviour
- **MCP Client**: one client instance per server, lives inside the host
- **MCP Server**: lightweight process exposing tools, resources, or prompts

### Transport Protocols

| Transport | Use Case | Notes |
|-----------|----------|-------|
| **stdio** | Local servers (same machine) | Default for local tools |
| **SSE (Server-Sent Events)** | Remote / cloud servers | HTTP-based, stateful |
| **Streamable HTTP** | Stateless remote servers | 2025 spec addition |

### Core Primitives

| Primitive | Description | Example |
|-----------|-------------|---------|
| **Tools** | Callable functions (agent-invoked) | `create_jira_issue`, `get_pr_diff` |
| **Resources** | Data sources (context-window read) | `file://project-docs`, `db://tawos` |
| **Prompts** | Reusable prompt templates | `triage-issue-template` |
| **Sampling** | Server-initiated LLM requests | Model-controlled chaining |

---

## Security Threat Taxonomy (Hou et al., 2025)

> [!warning] MCP Security Risks
> The open nature of MCP creates a new attack surface. Any MCP server can request tool calls or inject content into the agent's context.

### Threat Categories

| Threat | Description | PUMA Mitigation |
|--------|-------------|----------------|
| **Prompt Injection** | Malicious tool output overwrites system instructions | Sanitise tool outputs before context injection |
| **Tool Poisoning** | Malicious MCP server registers harmful tools | Tool allowlist in OPA policy |
| **Rug Pull** | Server behaviour changes after approval | Pin server versions; audit on update |
| **Data Exfiltration** | Tool silently sends data to external endpoints | Network egress rules; airgap local servers |
| **Privilege Escalation** | Tool requests more permissions than declared | Explicit capability manifests; minimal grant |
| **TOCTOU** | Tool output changes between observation and execution | Atomic tool-use sequences |

### Defence Layers

```
Layer 1: Tool Allowlist     → only declared tools can be called
Layer 2: Capability Manifest → tools declare max permissions at registration
Layer 3: OPA Policy Engine  → per-call authorisation (bounded autonomy)
Layer 4: Output Sanitisation → tool outputs scanned before context injection
Layer 5: Audit Log          → all tool calls logged for post-hoc review
```

---

## MCP in PUMA Stage 5 (Smart PMO)

PUMA's Stage 5 agent uses MCP to connect to:

| MCP Server | Tools | Purpose |
|------------|-------|---------|
| `jira-mcp-server` | `get_issue`, `create_issue`, `update_priority`, `add_comment` | Jira triage + prioritisation execution |
| `github-mcp-server` | `get_pr`, `list_issues`, `get_repo_stats` | Codebase context for issue enrichment |
| `tawos-mcp-server` | `query_historical`, `get_similar_issues` | In-context few-shot retrieval from TAWOS |

### PUMA Governance Layer (Constitution Article 4)

```python
# OPA policy: bounded autonomy gate for Jira write operations
allow if {
    input.tool == "update_priority"
    input.confidence >= 0.85      # agent certainty threshold
    input.change.priority_delta <= 1  # max 1 level change per call
    input.hitl_approved == true   # human confirmed if confidence < 0.95
}

deny if {
    input.tool in {"delete_issue", "close_sprint"}  # destructive ops blocked
}
```

### Context Window Impact

MCP tool definitions consume token budget. PUMA profile:

| Component | Tokens (approx.) |
|-----------|-----------------|
| Tool schemas (3 servers × 4 tools) | ~1,200 |
| Tool result per call | 500–3,000 |
| Active tool call overhead | 200 |

For PUMA's 32k local model context: tool schemas ~4% overhead, manageable.

---

## MCP vs. Alternative Integration Approaches

| Approach | Pros | Cons |
|----------|------|------|
| **MCP** | Standard protocol; interoperable; security primitives built-in | Requires MCP server for each tool |
| **REST API direct** | Full control; no extra layer | Custom code per integration; no standard security model |
| **LangChain Tools** | Rich ecosystem; Python native | Framework lock-in; not interoperable outside Python |
| **Function Calling (OpenAI style)** | Widely supported | Stateless; no resource or prompt primitives |

MCP is the most future-proof choice for PUMA's multi-tool Stage 5 architecture.

---

## Implementation Notes for PUMA

```python
from mcp import ClientSession, StdioServerParameters
from mcp.client.stdio import stdio_client

async def create_puma_mcp_session():
    server_params = StdioServerParameters(
        command="python",
        args=["-m", "jira_mcp_server"],
        env={"JIRA_URL": os.getenv("JIRA_URL"),
             "JIRA_TOKEN": os.getenv("JIRA_TOKEN")}
    )
    async with stdio_client(server_params) as (read, write):
        async with ClientSession(read, write) as session:
            await session.initialize()
            tools = await session.list_tools()  # discovery
            return session, tools
```

Key considerations:
- MCP sessions are stateful; maintain one session per server across agent lifetime
- Use `list_tools()` at startup for dynamic tool discovery
- Handle `McpError` responses from tool calls — surface as Reflexion critique material

---

## Related Notes

- [[20 - Literature/20.1 Papers/AIOps-DevOps/LN-Hou-2025-MCP-Security]] — source literature note
- [[20 - Literature/20.4 Videos-Podcasts/YouTube/MCP-Protocols/LN-Videos-MCP-Protocols]] — video references
- [[30 - Permanent/31 Concepts/PN-HITL-BoundedAutonomy]] — Constitution Article 4: bounded autonomy over MCP
- [[30 - Permanent/31 Concepts/PN-ContextEngineering]] — how MCP tool slots fit in CE pipeline
- [[30 - Permanent/31 Concepts/PN-MultiAgent-ArchitecturePatterns]] — MCP in multi-agent orchestration

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Tools-Stack]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
