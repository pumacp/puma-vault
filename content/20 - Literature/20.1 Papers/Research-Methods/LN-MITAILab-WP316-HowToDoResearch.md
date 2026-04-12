---
type: literature
title: "How to Do Research at the MIT AI Lab"
authors: ["MIT AI Lab Staff", "Chapman, David (Ed.)"]
first-author: "MIT AI Lab"
year: 1988
status: reviewed
topic: research-methodology
relevance: 5
citekey: "@MITAILab1988HowToDoResearch"
venue: "MIT AI Lab Working Paper 316"
url: "http://www.ai.mit.edu/lab/howto.html"
tags: [literature, research-methodology, mit-ai-lab, keshav, reading-method, puma-core]
created: 2026-04-06
updated: 2026-04-06
keshav-pass: 3
---

# LN: MIT AI Lab WP 316 (1988) — How to Do Research at the MIT AI Lab

**Full citation**: MIT AI Lab. (1988). *How to do research at the MIT AI Lab* (AI Lab Working Paper 316). Massachusetts Institute of Technology. http://www.ai.mit.edu/lab/howto.html

---

## Pass 1 — Bird's Eye View (5 Cs)

| C | Assessment |
|---|-----------|
| **Category** | Guide / handbook for graduate-level academic research |
| **Context** | Produced internally at MIT AI Lab for incoming graduate students. Edited by David Chapman. Not peer-reviewed, but widely cited as a graduate research primer. |
| **Correctness** | Based on collective tacit knowledge of experienced AI researchers. Practical rather than empirical. No falsifiable claims. |
| **Contributions** | (1) Three active reading questions for papers. (2) Framework for choosing a research direction. (3) Advice on writing, collaboration, and intellectual honesty. |
| **Clarity** | Very clear. Written for intelligent non-experts (first-year graduate students). |

**Relevance**: ⭐⭐⭐⭐⭐ — Foundational document for the MIT Student Method / reading framework used in PUMA.

---

## Pass 2 — Content Grasp

### The Three Active Reading Questions

The document proposes that when reading a research paper, the reader should actively maintain three questions:

> **Q1 — "How can I use this?"**
> Map the paper's contribution to your own research problems. What technique, dataset, metric, or framing could apply?

> **Q2 — "Does this really do what the author claims?"**
> Critical scrutiny of methodology, evaluation, and conclusions. Are the experiments rigorous? Is the claim over-stated? Are baselines fair?

> **Q3 — "What if…?"**
> Generative thinking. What if the assumption were relaxed? What if this method were applied to a different domain? What would break?

These three questions are **not a formal named methodology** in the document — they are informal suggestions within a broader guide. They are presented as habits of mind, not a structured protocol.

### Additional Key Themes in WP 316

**On choosing research problems**:
- Work on problems that matter. Don't chase fashionable topics.
- Ask: "If I solve this, will anyone care?"
- The document distinguishes between "thesis problems" (safe, completable) and "research problems" (uncertain, high-value).

**On reading the literature**:
- Read deeply, not broadly. Better to understand 10 papers completely than skim 100.
- Follow citation chains backwards and forwards.
- For every paper: understand *why* the authors made each design choice.

**On writing**:
- Writing is thinking. Don't wait until you have results to start writing.
- Clarity of writing reflects clarity of thought.

**On intellectual honesty**:
- Report negative results. Don't over-claim.
- Distinguish what you know from what you believe.

---

## Pass 3 — Virtual Reconstruction

### What makes WP 316 enduring

The document has survived 35+ years because it captures tacit knowledge that graduate programmes rarely teach explicitly: how to *read* actively, how to *choose* problems, how to *sustain* research momentum.

The three reading questions (Q1/Q2/Q3) are the most-cited element because they give a concrete cognitive framework for transforming passive reading into active intellectual engagement.

### How WP 316 Relates to Keshav's Three-Pass Method

| Dimension | WP 316 (1988) | Keshav Three-Pass (2007) |
|-----------|--------------|--------------------------|
| Origin | MIT AI Lab internal guide | Univ. of Waterloo, ACM SIGCOMM |
| Structure | Informal questions (Q1/Q2/Q3) | Formal 3-pass protocol with 5Cs |
| Focus | Habit of mind while reading | Systematic reading procedure |
| Integration | Overlaps with Pass 3 mindset | Operational protocol for all passes |
| Use in PUMA | Questions to ask during any pass | Reading protocol for SLR papers |

**Synthesis for PUMA**: WP 316's three questions are best understood as the *mental attitude* to bring to Keshav's Pass 3. They are not competing with the Three-Pass Method but complementary to it. Together they form the PUMA reading protocol:
- **Keshav Pass 1–2**: Assess relevance and grasp content (systematic)
- **WP 316 Q1–Q3**: Activate deeper thinking during Pass 3 (generative)

### The "MIT Student Method" Name

In various Spanish-language projects guides and prompting communities, the combination of WP 316's three questions with other cognitive and AI-prompting frameworks has been labelled informally as the "MIT Student Method." This label does not appear in WP 316 itself, nor in any subsequent MIT publication. It is a pedagogical shorthand that collects:
- WP 316 Q1/Q2/Q3 active reading questions
- Keshav Three-Pass systematic protocol
- AI-prompting frameworks (RCOIF, EGI, AMI, DRCA) for AI-assisted research

For PUMA, the vault uses **Keshav Three-Pass** as the primary verifiable reading protocol, and **WP 316 Q1/Q2/Q3** as the active reading mindset applied during Pass 3.

---

## PUMA Integration

**Used in**: [[30 - Permanent/33 Frameworks/PN-MIT-Student-Method-Complete]] (permanent note), [[50 - Areas/51 Research/MIT-AILab-Method/MIT-AILab-Reading-Practice]]

**Supports**: OE1 (SLR quality), the qualitative depth of literature review, Section 1.4 (methodology)

**Three questions applied to key PUMA papers**:
- *Angermeir 2025*: Q1 → use reproducibility taxonomy as checklist; Q2 → is "only 5 executable" properly operationalised?; Q3 → what if we measured reproducibility *after* 1 year?
- *Calikli 2025*: Q1 → use non-monotonic finding to justify 4-strategy design; Q2 → does their dataset cover our PM domain?; Q3 → what if CoT examples include chain-of-thought *reasoning*, not just labels?

---

## References to follow up

- Keshav, S. (2007). How to read a paper. *ACM SIGCOMM CCR*, 37(3). ✅ Already in vault.
- Hamming, R. W. (1986). You and your research. *Bell Communications Research Colloquium Seminar*. — Companion piece to WP 316.
