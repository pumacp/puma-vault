---
id: VID-OBS-003
title: "AI Testing Series Day 2 — Variable Injection & Assertions in #promptfoo"
type: video-note
channel: "AB Automation Hub"
url: "https://www.youtube.com/watch?v=9S9UbvxO60c"
year: 2025
status: to-watch
tags: [video, promptfoo, testing, assertions, variables]
phase: ['F3', 'F4']
rating: 4
created: 2026-04-06
updated: 2026-04-06
---

# 🎬 AI Testing Series Day 2 — Variable Injection & Assertions in #promptfoo

**Channel**: AB Automation Hub  
**URL**: https://www.youtube.com/watch?v=9S9UbvxO60c  
**Relevance**: ⭐⭐⭐⭐

---

## Summary

Day 2 of the Promptfoo testing series: using variable injection to parameterise test cases (one YAML → 200 issue variants), custom assertion functions for domain-specific validation (e.g., 'priority label must be one of Blocker/Critical/Major/Minor/Trivial'), and threshold-based pass/fail criteria.

---

## PUMA Relevance

Variable injection is key for PUMA's experiment automation: define one test case template with {{issue_title}} and {{issue_description}} variables, inject all 200 Jira SR issues from a CSV, and run the full evaluation automatically. The custom assertion for valid priority labels prevents counting 'Important' as correct when 'Critical' was expected — critical for accurate F1-macro calculation.

---

## Related Notes

- [[40 - Projects/PUMA/41.7 Experiments/EX-Hypotheses-H1-H2]]
- [[20 - Literature/20.3 Datasets/LN-Datasets-JiraSR-TAWOS]]

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-Methods-Frameworks]]
