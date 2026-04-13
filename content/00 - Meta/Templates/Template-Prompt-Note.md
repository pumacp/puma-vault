---
id: "PT-{{Tool}}-{{UseCase}}"
title: "Prompt: {{Tool}} — {{Use Case}}"
type: prompt-template
tags: [prompt, tool, methodology, use-case, ai-tools, ami, anthropic, chain-of-thought, checklist, claude, cot, dev-tools, drca, egi, few-shot, gemini, google, gpt, ide, iipr, local-llm, metrics, ollama, openai, perplexity, precision-recall, prompt-engineering, prompt-template, prompting, rcoif, template, zero-shot]
tool: "{{claude | chatgpt | perplexity | deepseek | gemini | ollama | cursor | copilot}}"
methodology: "{{rcoif | cot | few-shot | egi | ami | drca | iipr | zero-shot}}"
use_case: "{{research | coding | analysis | writing | experiment}}"
phase: "{{F0 | F1 | F2 | F3 | F4 | F5}}"
version: 1.0
tested: false
effectiveness: null
created: "{{date}}"
updated: "{{date}}"
---

# Prompt: "{{Tool}}" — "{{Use Case}}"

> **Purpose:** "{{One sentence describing what this prompt achieves}}"
> **Methodology:** [[30 - Permanent/33 Frameworks/PN-"{{Methodology-Name}}"]]

---

## 🎯 When to Use This Prompt

**Situation:** "{{Describe the exact situation when this prompt is appropriate}}"

**Input required:** "{{What you need to have ready before using this prompt}}"

**Expected output:** "{{What the AI should produce}}"

---

## 📋 The Prompt (RCOIF Structure)

```
ROLE:
"{{Define the AI's role/persona clearly}}"

CONTEXT:
"{{Provide background information the AI needs to perform well}}"

OBJECTIVE:
"{{State precisely what you want the AI to accomplish}}"

INSTRUCTIONS:
"{{Step-by-step instructions for what the AI should do}}"
1. "{{Step 1}}"
2. "{{Step 2}}"
3. "{{Step 3}}"

FORMAT:
"{{Specify the exact output format you want}}"
- Structure: "{{e.g., numbered list, table, markdown sections}}"
- Length: "{{e.g., 500 words, 3-5 bullet points}}"
- Language: English
- Include: "{{what must be present}}"
- Exclude: "{{what must not appear}}"
```

---

## 🔄 Variants

### Variant A — "{{More detailed / longer context}}"

```
"{{Modified prompt for when you have more context available}}"
```

### Variant B — "{{Lighter / faster version}}"

```
"{{Simplified version for quick use}}"
```

---

## 📊 Example Interaction

**Input given:**
```
"{{Paste the actual input you gave (anonymised if needed)}}"
```

**AI Output received:**
```
"{{Paste the actual output received (truncated if long)}}"
```

**Quality assessment:** "{{Was it useful? What would you change?}}"

---

## 🔧 Refinement History (IIPR — Inverse Prompt Engineering)

| Version | Change made | Reason | Result |
|---------|------------|--------|--------|
| 1.0 | Initial version | — | "{{outcome}}" |
| 1.1 | "{{What changed}}" | "{{Why}}" | "{{Better/worse}}" |

---

## ⚠️ Limitations & Failure Modes

- "{{Known situation where this prompt fails or gives poor results}}"
- "{{Edge case to watch out for}}"

---

## 🔗 Related Prompts

- **Similar purpose:** [[PT-"{{Tool2}}"-"{{UseCase}}"]]
- **Complementary:** [[PT-"{{Tool}}"-"{{UseCase2}}"]]
- **Next step after this:** [[PT-"{{Tool}}"-"{{NextStep}}"]]

---

## ✅ Quality Checklist

- [ ] Role is specific (not generic "helpful assistant")
- [ ] Context is complete (AI has all it needs)
- [ ] Objective is unambiguous
- [ ] Instructions are ordered and actionable
- [ ] Format is explicit
- [ ] Tested at least once with real input
- [ ] Failure modes documented
- [ ] Linked to methodology note
