---
type: literature
title: "The Coming Wave: Technology, Power, and the Twenty-first Century's Greatest Dilemma"
authors: ["Suleyman, Mustafa", "Bhaskar, Michael"]
first-author: "Suleyman"
year: 2023
status: reviewed
topic: ai-policy
relevance: 3
citekey: "@Suleyman2023ComingWave"
venue: "Crown"
arxiv: ""
doi: ""
url: "https://the-coming-wave.com"
tags: [literature, ai-policy, ai-safety, power-concentration, containment, ethics, societal-impact, synthetic-biology, proliferation, governance, puma-core, book, ethics, research, literature-note, keshav, moc, social-impact]
created: 2026-04-13
updated: 2026-04-14
keshav-pass: 2
---

# LN: Suleyman & Bhaskar (2023) — The Coming Wave

> [!cite] Bibliographic Reference
> **Citation**: Suleyman, M., & Bhaskar, M. (2023). *The coming wave: Technology, power, and the twenty-first century's greatest dilemma*. Crown.
> **URL**: https://the-coming-wave.com

> [!warning] Pass Status
> Pass 1 — Bird's Eye only. This is a contextual reference for PUMA's ethics/policy framing rather than a core technical source.

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Policy argument + technology forecast |
| **Context** | Written by Mustafa Suleyman (co-founder of DeepMind, co-founder of Inflection AI, Microsoft AI CEO) with Michael Bhaskar (writer and AI researcher); bridges insider AI knowledge with policy prescription |
| **Correctness** | Analytical argument rather than empirical; draws on Suleyman's direct industry experience across two decades at the frontier of AI development |
| **Contributions** | (1) "The containment problem": how to prevent AI/biotech from becoming uncontrollable; (2) Proliferation project: AI capabilities spread faster than governance can adapt; (3) Proposal for "wide safety" — technical + political + cultural containment; (4) The "coming wave" concept: simultaneous convergence of AI and synthetic biology |
| **Clarity** | Excellent. Accessible, urgent tone. |

> [!success] Relevance: ⭐⭐⭐
> Provides macro-level context for PUMA's ethics chapter: AI in PM tools is one instantiation of a broader proliferation pattern that Suleyman describes. HITL and bounded autonomy are PUMA-level implementations of his "containment" philosophy.

---

## Pass 2 — Content

### The Coming Wave

Suleyman identifies a convergence of two transformative technologies forming a "wave" that will define the 21st century:

1. **Artificial Intelligence**: From narrow tools to general-purpose reasoning systems capable of autonomous action across domains
2. **Synthetic Biology**: From reading genomes to writing them; from treating disease to designing life

The convergence amplifies the risk of each: AI accelerates biological design; biological data trains AI systems. Together, they represent the most powerful and most dangerous general-purpose technologies in human history.

### The Dilemma

The book's central dilemma is structurally unavoidable:

- **Incentives to proliferate**: Commercial pressure (the market rewards deployment), national competition (geopolitical arms race), democratization arguments (access should not be restricted to elites), and scientific openness (knowledge wants to be free)
- **Reasons to contain**: Safety failures (AI systems acting in unintended ways), power concentration (unprecedented leverage in few hands), displacement risks (labour market disruption at scale), malicious use (bioweapons, autonomous weapons, mass surveillance)

Suleyman argues that neither pure proliferation nor pure containment is viable. Proliferation leads to catastrophic risk; containment leads to monopolistic control by states or corporations. The dilemma has no clean solution — it must be managed.

### Why Containment Is Unprecedented Hard

Previous powerful technologies — nuclear, chemical, biological weapons — were contained through:
- High barriers to entry (capital, expertise, infrastructure)
- Physical detectability (radiation, signatures, precursor chemicals)
- Treaty frameworks and international monitoring

AI and synthetic biology break both containment mechanisms:
- **Barriers to entry are collapsing**: A 2024 LLM can be run on consumer hardware; a 2024 DNA synthesis machine is smaller than a refrigerator
- **Invisibility**: AI models are trained on data; synthetic biology modifications are molecular-scale. Both are invisible without deliberate inspection.
- **Dual-use by design**: The same model that writes code also jailbreaks systems. The same CRISPR tool that cures disease also modifies pathogens.

### Wide Safety: A Framework for Containment

Suleyman proposes "wide safety" — a multi-layered containment approach:

| Layer | Mechanism |
|-------|----------|
| **Technical safety** | Built-in limitations, interpretability, alignment research, red-teaming |
| **Commercial safety** | Business incentives aligned with safety (liability, insurance, certification) |
| **Governmental safety** | Regulation, standards bodies, international treaties |
| **Cultural safety** | Norms, professional ethics, public understanding |

No single layer is sufficient. Wide safety requires all four simultaneously — the same logic as defence-in-depth in cybersecurity.

### The Power Concentration Threat

The book dedicates substantial attention to the risk that AI and synthetic biology will concentrate unprecedented power in the hands of:
- **Nation-states**: Surveillance, autonomous weapons, economic dominance
- **Corporations**: Control of foundational infrastructure (compute, data, models)
- **Individuals**: Superhuman capabilities through AI augmentation

The scenario Suleyman fears most is not a dramatic AI takeover — it is a gradual shift in which democratic institutions are undermined by the information asymmetries that AI creates.

### The Author's Honest Reckoning

The book's most compelling aspect is its intellectual honesty: Suleyman spent 20 years building the technology he now argues is dangerous. He does not advocate for stopping development. His argument is more nuanced:

> "We are all caught in a dilemma not of our choosing. We must make this technology — the pressures are too great. But we must also contain it — the risks are too severe. There is no clean exit."

---

## PUMA Integration

- **Ch.5 / Ethics Chapter**: Reference Suleyman for macro-level context on AI deployment responsibility
- **Framing note**: PUMA is a *research benchmark*, not a deployed product — the ethics chapter should be proportionate to this scope (avoid overclaiming societal risk from a research prototype)
- **HITL as containment**: PUMA's human-in-the-loop design is a micro-scale implementation of Suleyman's "wide safety" at the technical layer

## Related Notes

- [[30 - Permanent/31 Concepts/PN-HITL-BoundedAutonomy]] — bounded autonomy as containment
- [[30 - Permanent/31 Concepts/PN-AlgorithmicBias]] — power concentration in PM tools
- [[50 - Areas/55 Ethics/Ethics-Review-Log]] — PUMA ethics documentation
- [[20 - Literature/20.2 Books/LN-Lawrence-2024-AtomicHuman]] — complementary: Lawrence on epistemology; Suleyman on governance and power
- [[30 - Permanent/31 Concepts/PN-Agentic-Science-Paradigm]] — AI as active agent in knowledge and power systems

## MOCs

- [[20 - Literature/20.2 Books/MOC Books]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
