---
id: VID-CE-002
title: "¡No construyas Agentes IA hasta que veas esto! [Secretos de Anthropic]"
type: video-note
channel: "Ro Analytics"
url: "https://www.youtube.com/watch?v=3kzen1qCMBY"
year: 2025
status: to-watch
tags: [video, agents, anthropic, context, best-practices]
phase: ['F1', 'F2']
rating: 5
created: 2026-04-06
updated: 2026-04-06
---

# 🎬 ¡No construyas Agentes IA hasta que veas esto! [Secretos de Anthropic]

**Channel**: Ro Analytics  
**URL**: https://www.youtube.com/watch?v=3kzen1qCMBY  
**Relevance**: ⭐⭐⭐⭐⭐

---

## Summary

Translation and expansion of Anthropic's internal guidance: 'Build what you need, not what you can'. Key insights: (1) The context window IS the agent's world — garbage in, garbage out; (2) System prompt quality matters more than model size for domain-specific tasks; (3) Structured output instructions in the prompt dramatically improve consistency; (4) Tool descriptions are part of the context — vague tools = wrong tool calls.

---

## PUMA Relevance

Directly informs PUMA's prompt engineering approach. Insight 2 (system prompt > model size) supports using 8B local models with excellent prompts rather than larger cloud models with generic prompts. Insight 3 (structured output instructions) is why PUMA's prompts explicitly request JSON output in the TriageResult format. Insight 4 motivates detailed Pydantic schema descriptions.

---

## Related Notes

- [[30 - Permanent/31 Concepts/PN-CoT-FewShot-Prompting]]
- 40 - Projects/PUMA/41.3 Methods/Prompting-Strategies
- [[SP-Triage-Agent]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
