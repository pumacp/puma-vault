---
id: "LN-{{AuthorYear}}-{{Keyword}}"
title: "{{Full paper title}}"
type: literature-note
subtype: paper
tags: [literature, paper, {{topic-tags}}, academic-writing, baseline, checklist, cornell-notes, dataset, drca, effort-estimation, evaluation, falsifiability, few-shot, gpt, metrics, moc, note-taking, openai, permanent-note, popper, precision-recall, prisma, prompting, research, research-tools, slr, story-points, template, thesis, zettelkasten, zotero]
authors: ["{{Author1 LastName, FirstName}}", "{{Author2}}"]
year: "{{YYYY}}"
venue: "{{Conference/Journal name}}"
doi: "{{DOI or arXiv ID}}"
url: "{{URL}}"
zotero_key: "{{Zotero item key}}"
datasets_used: ["{{dataset1}}", "{{dataset2}}"]
models_used: ["{{model1}}"]
metrics: ["{{F1}}", "{{MAE}}"]
reproducible: false
open_access: true
relevance: high
puma_relevance: "{{Why this matters for PUMA}}"
read_status: unread
prisma_decision: include
exclusion_reason: ""
created: "{{date}}"
updated: "{{date}}"
---

# "{{Full Paper Title}}"

> **One-sentence summary:** "{{Write the core contribution in one sentence in your own words.}}"

---

## 📋 Bibliographic Reference

**Authors:** "{{Authors list}}"
**Year:** "{{Year}}"
**Venue:** "{{Conference or journal}}"
**DOI/URL:** ["{{DOI}}"]("{{URL}}")
**Zotero:** `"{{Zotero key}}"`

---

## 🎯 Core Contribution

<!--
DRCA Step 1: DECONSTRUCT — What is the paper actually claiming?
Answer in your own words, never copy-paste.
-->

**Problem addressed:** "{{What problem does this paper solve?}}"

**Main claim:** "{{What is the central thesis or finding?}}"

**Key insight:** "{{The single most important idea you take away}}"

---

## 🔬 Methods & Approach

<!--
MIT Student Method — Cornell left column: questions and key points
-->

| Aspect | Detail |
|--------|--------|
| **Research type** | "{{empirical / survey / theoretical / tool}}" |
| **Datasets** | "{{Datasets used}}" |
| **Models/Baselines** | "{{Models evaluated}}" |
| **Metrics** | "{{Evaluation metrics}}" |
| **Statistical analysis** | "{{Tests used}}" |
| **Reproducibility** | "{{Is code/data available?}}" |

---

## 📊 Key Results

<!--
Summarise results in your own words. Do NOT quote numbers without attribution context.
-->

| Metric | Value | Condition | Notes |
|--------|-------|-----------|-------|
| "{{F1-macro}}" | "{{0.72}}" | "{{GPT-4, few-shot-3}}" | "{{Best result}}" |
| "{{MAE}}" | "{{1.9 SP}}" | "{{CoGEE configuration}}" | "{{Reference baseline}}" |

---

## 🧠 Critical Analysis (MIT Student Method — Red Teaming)

**Strengths:**
- "{{Strength 1 in your own words}}"
- "{{Strength 2}}"

**Limitations (as stated by authors):**
- "{{Limitation 1}}"

**Limitations (identified by me — rival analysis):**
- "{{Your own critical observation}}"

**How this relates to PUMA research gaps:**
- "{{Specific gap this paper addresses or leaves open}}"

---

## 🔗 Connections (Zettelkasten Links)

[[|**Supports:** [[PN-"{{Concept this paper supports}}"]]
[[|**Contradicts:** [[PN-"{{Concept this paper challenges}}"]]
[[|**Extends:** [[LN-"{{Paper this extends}}"]]
**Extended by:** (to be filled when found)
[[|**Dataset shared:** [[LN-"{{Dataset note}}"]]
[[|**See also:** [[LN-"{{Related paper}}"]]

---

## 💬 Quotable Passages

<!--
Max 1-2 direct quotes, under 15 words each. All else paraphrased.
Format: "quote" (Author, year, p.X)
-->

> ""{{Short direct quote under 15 words}}" ("{{Author}}, {{year}}", p."{{page}}")

---

## 📝 Cornell Notes

| **Questions / Key Terms** | **Notes** |
|--------------------------|-----------|
| "{{Q: What is the main RQ?}}" | "{{Answer}}" |
| "{{Q: Why is this reproducible/not?}}" | "{{Answer}}" |
| "{{Q: What would falsify their claims?}}" | "{{Answer}}" |
| "{{Key term: story points}}" | "{{Definition as used here}}" |

**Summary (bottom of Cornell):**
"{{3-sentence synthesis of the paper's contribution and its relation to PUMA}}"

---

## 🔄 DRCA Analysis

**Deconstruct:** "{{Break down the paper's argument structure}}"

**Reconstruct:** "{{Rebuild the argument in your own conceptual framework}}"

**Critical question:** "{{What would you do differently?}}"

---

## ✅ Processing Checklist

- [ ] Abstract read
- [ ] Full paper read
- [ ] Cornell notes completed
- [ ] Permanent note(s) created from insights
- [ ] Linked to relevant MOC
- [ ] Zotero entry verified
- [ ] PRISMA decision recorded
- [ ] AI use logged (if AI assisted in processing)
