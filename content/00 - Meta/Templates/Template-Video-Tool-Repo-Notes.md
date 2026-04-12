---
id: "LN-Video-{{Channel}}-{{Keyword}}"
title: "Video: {{Title}}"
type: literature-note
subtype: video
tags: [literature, video, youtube, "{{topic}}"]
author: "{{Creator name}}"
channel: "{{Channel name}}"
url: "{{YouTube/Vimeo URL}}"
year: "{{YYYY}}"
duration: "{{Hh Mm}}"
playlist: "{{Playlist name if applicable}}"
puma_relevance: "{{Why relevant to PUMA}}"
watched_status: unwatched
created: "{{date}}"
---

# Video: "{{Title}}"

> **One-sentence summary:** "{{What this video teaches in one sentence.}}"
> **Why watch:** "{{Specific reason this is relevant to PUMA.}}"

---

## 📋 Reference

**Creator:** "{{Author}}" · **Channel:** "{{Channel}}" · **Year:** "{{Year}}"
**URL:** [Watch]("{{URL}}") · **Duration:** "{{Duration}}"

---

## 🎯 Key Takeaways for PUMA

1. **"{{Takeaway 1}}"** — "{{Why it matters for PUMA}}"
2. **"{{Takeaway 2}}"** — "{{Why it matters for PUMA}}"
3. **"{{Takeaway 3}}"** — "{{Why it matters for PUMA}}"

---

## 📝 Timestamped Notes

| Time | Topic | Note |
|------|-------|------|
| "{{00:00}}" | "{{Topic}}" | "{{Note in your words}}" |
| "{{mm:ss}}" | "{{Topic}}" | "{{Note}}" |

---

## 🔗 Connections

### Permanent notes created
[[PN-{{concept}}]]

### Applied in
[[40 - Projects/PUMA/{{relevant section}}]]

### Related resources
[[LN-{{related}}]]

---
---
id: "LN-Tool-"{{ToolName}}"
title: "Tool: "{{Tool Name}}"
type: literature-note
subtype: tool
tags: [tool, "{{category}}, {{topic}}"]
tool_name: "{{Tool Name}}"
url: "{{Official URL}}"
github: "{{GitHub URL}}"
docs: "{{Documentation URL}}"
license: "{{MIT | Apache | Proprietary}}"
version_tested: "{{version}}"
puma_role: "{{Role in PUMA project}}"
puma_phase: "{{F0 | F1 | F2 | F3 | F4 | F5}}"
category: "{{inference | research | coding | monitoring | storage | orchestration}}"
created: "{{date}}"
---

# Tool: "{{Tool Name}}"

> **Purpose in PUMA:** "{{One sentence describing exactly what this tool does in PUMA.}}"

---

## 📋 Quick Reference

| Property | Value |
|----------|-------|
| **URL** | ["{{URL}}"]("{{URL}}") |
| **GitHub** | ["{{Repo}}"]("{{GitHub}}") |
| **License** | "{{License}}" |
| **Version** | "{{version}}" |
| **Install** | `"{{install command}}"` |

---

## ⚙️ Setup for PUMA

```bash
# Installation
"{{install command}}"

# Configuration
"{{config steps}}"

# Verification
"{{verify command}}"
```

---

## 🔧 Key Usage Patterns

### Pattern 1 — "{{Use case name}}"

```"{{language}}"
"{{Code example}}"
```

### Pattern 2 — "{{Use case name}}"

```"{{language}}"
"{{Code example}}"
```

---

## ⚠️ Known Issues & Limitations

- "{{Issue 1}}"
- "{{Limitation 1}}"

---

## 🔗 Connections

[[|**Used in:** [[SP-Architecture]]
[[|**Pairs with:** [[LN-Tool-"{{related tool}}"]]
[[|**Prompts:** [[PT-"{{Tool}}"-"{{UseCase}}"]]

---
---
id: "LN-Repo-"{{OrgName}}"-"{{RepoKeyword}}"
title: "Repo: "{{Org/RepoName}}"
type: literature-note
subtype: repo
tags: [literature, repo, code, "{{topic}}"]
author: "{{GitHub username or org}}"
github: "https://github.com/"{{org/repo}}"
stars: "{{N}}"
language: "{{Python | TypeScript | etc}}"
license: "{{MIT | Apache | etc}}"
last_active: "{{year}}"
puma_relevance: "{{Why relevant}}"
relevance: medium  # high | medium | low
created: "{{date}}"
---

# Repo: "{{Org/RepoName}}"

> **What it does:** "{{One sentence description.}}"
> **PUMA use:** "{{How this repo informs or is used in PUMA.}}"

---

## 📋 Reference

**GitHub:** ["{{org/repo}}"](https://github.com/"{{org/repo}}")
**Stars:** "{{N}}" · **Language:** "{{Language}}" · **License:** "{{License}}"

---

## 🏗️ Architecture Overview

"{{Describe the repo's structure and key design patterns in your own words.}}"

```
"{{repo-name}/
├── "{{dir1}}"/    # "{{purpose}}"
├── "{{dir2}}"/    # "{{purpose}}"
└── "{{file}}"     # "{{purpose}}"
```

---

## 💡 Key Patterns to Adopt in PUMA

| Pattern | File in repo | How to adapt |
|---------|-------------|-------------|
| "{{Pattern 1}}" | `"{{path/to/file}}"` | "{{How PUMA uses it}}" |

---

## ⚠️ Differences from PUMA Needs

- "{{What this repo does that PUMA doesn't need}}"
- "{{What PUMA needs that this repo doesn't provide}}"

---

## 🔗 Connections

[[|**Referenced in:** [[SP-Architecture]]
[[|**Similar repos:** [[LN-Repo-"{{related}}"]]
