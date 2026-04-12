---
id: PT-Perplexity-State-of-Art
title: "Prompt: Perplexity AI — State of the Art Discovery"
type: prompt-template
tags: [prompt, perplexity, research, slr, state-of-art]
tool: perplexity
methodology: rcoif
use_case: research
phase: F0
version: 1.1
tested: true
effectiveness: high
created: 2026-03-01
---

# Prompt: Perplexity AI — State of the Art Discovery

> **Purpose:** Map the current state of the art for LLM agents in project management quickly, with cited sources.
> **⚠️ Critical rule:** Every paper Perplexity cites MUST be verified in primary source before adding to Zotero. Perplexity has ~5% hallucination rate on specific paper details.

---

## 📋 Prompt A — Panoramic Landscape

```
What is the current state of the art (2022–2026) for applying 
large language models to software project management tasks, 
specifically:
1. Issue/bug triage and priority classification
2. Story point / effort estimation
3. Backlog prioritisation

For each area provide:
- The 3-5 most cited recent papers with authors, year, venue, and key metric
- Whether open datasets were used (name them)
- Whether the code/artefacts are publicly available
- The best reported metric value

Focus on reproducible, empirically evaluated work. Exclude position papers 
and surveys. Include arXiv preprints if significant.
```

**Expected output:** Structured list of papers with citations. Then verify each in Google Scholar or arXiv.

---

## 📋 Prompt B — Gap Analysis Query

```
In the research area of "LLMs for software project management benchmarks", 
what are the most commonly identified research gaps or limitations 
cited in papers from 2023–2026?

Specifically, which papers discuss:
1. Lack of reproducibility in experiments
2. Missing comparison of prompting strategies (zero-shot vs few-shot vs CoT)
3. Absence of local/open-source model evaluation (vs API-only models)
4. Environmental cost measurement (CO2 / energy)

Provide paper titles, authors, and the specific passage or finding 
that establishes each gap.
```

---

## 📋 Prompt C — Dataset Discovery

```
What are the most widely used public datasets for evaluating LLM-based 
tools on software engineering tasks, specifically:
- Issue tracking / bug priority classification
- Story point / effort estimation
- Backlog management

For each dataset: name, size, source, license, download URL, and 
which papers have used it. Focus on datasets available since 2015.
```

---

## Validation Workflow After Using Perplexity

```
1. For each paper cited by Perplexity:
   a. Search exact title in Google Scholar / arXiv / IEEE
   b. Verify: authors, year, venue, DOI ← do NOT trust Perplexity's DOI
   c. Check: is the paper actually about what Perplexity claimed?
   d. If verified → add to Zotero with tag #perplexity-verified
   e. If not found → flag as #perplexity-hallucination, discard
2. Log verification results in [[50 - Areas/51 Research/AI-Use-Log]]
```

---
---
id: PT-Elicit-SLR-Screening
title: "Prompt: Elicit — SLR Abstract Screening"
type: prompt-template
tags: [prompt, elicit, slr, screening, prisma]
tool: elicit
methodology: prisma
use_case: research
phase: F0
version: 1.0
tested: true
effectiveness: medium
created: 2026-03-01
---

# Prompt: Elicit — SLR Abstract Screening

> **Purpose:** Use Elicit to automate the title/abstract screening phase of the PUMA SLR, reducing manual work while documenting AI-assisted decisions (PRISMA-trAIce compliance).

---

## Setup in Elicit

1. Create new research question: *"Which papers benchmark LLM agents on software project management tasks with reproducible evaluation on public datasets?"*
2. Upload abstract corpus (export from Semantic Scholar / arXiv search as BibTeX, then import)
3. Configure extraction columns:

| Column | Instruction to Elicit |
|--------|----------------------|
| Has empirical evaluation? | "Does this paper include quantitative evaluation on real data?" |
| Public dataset used? | "Which datasets are used? Are they publicly available?" |
| Code available? | "Is the code or implementation publicly released?" |
| Metric reported? | "What is the main evaluation metric and its value?" |
| LLM involved? | "Does this paper use a large language model?" |
| PM task? | "Is the task related to project management, issue tracking, or effort estimation?" |

---

## Post-Elicit Validation (PRISMA-trAIce)

```
For each AI-assisted screening decision:
- Decision: Include / Exclude / Uncertain
- AI confidence: High / Medium / Low (from Elicit display)
- Human verification: Did I check the abstract myself?
- Final decision: Include / Exclude (ALWAYS human-final)
- Reason for exclusion: [specific criterion from PRISMA protocol]
```

Log all decisions in [[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-PRISMA-Log]]

---
---
id: PT-AcademicDB-Search-Strings
title: "Boolean Search Strings for Academic Databases"
type: prompt-template
tags: [prompt, search-strings, boolean, slr, google-scholar, arxiv, ieee, acm]
tool: multiple
methodology: slr
use_case: research
phase: F0
version: 1.0
created: 2026-03-01
---

# Boolean Search Strings for Academic Databases

> **Purpose:** Reproducible search strings for the PUMA SLR. These strings define the identification phase of PRISMA.

---

## Primary Search String (IEEE Xplore, ACM DL)

```
("large language model" OR "LLM" OR "generative AI" OR "GPT" OR "language model agent")
AND
("project management" OR "issue triage" OR "story point" OR "effort estimation" OR "backlog" OR "sprint planning")
AND
("benchmark" OR "evaluation" OR "empirical" OR "experiment")
```

**Filters:** Published 2022–2026 | Conference or journal papers only

---

## arXiv Search String

```
ti:LLM AND ti:(benchmark OR evaluation) AND ti:(project OR "software engineering" OR estimation)
```

Or via API:
```python
import arxiv
search = arxiv.Search(
    query='LLM benchmark "project management" OR "issue triage" OR "story point"',
    max_results=100,
    sort_by=arxiv.SortCriterion.Relevance,
    sort_order=arxiv.SortOrder.Descending
)
```

---

## Google Scholar Queries (Run Separately)

```
Query 1: "LLM" "issue triage" "benchmark" software after:2022
Query 2: "large language model" "story point estimation" empirical after:2022  
Query 3: "LLM agent" "project management" "reproducible" after:2023
Query 4: "local LLM" "software engineering" benchmark after:2023
Query 5: "Jira" "priority classification" "language model" after:2022
```

---

## Semantic Scholar API Query

```python
import requests

def search_semantic_scholar(query: str, limit: int = 50) -> list:
    url = "https://api.semanticscholar.org/graph/v1/paper/search"
    params = {
        "query": query,
        "limit": limit,
        "fields": "title,authors,year,venue,externalIds,openAccessPdf,citationCount",
        "sort": "citationCount"
    }
    response = requests.get(url, params=params)
    return response.json()["data"]

# PUMA queries
results_1 = search_semantic_scholar("LLM issue triage benchmark software engineering")
results_2 = search_semantic_scholar("language model story point estimation Agile")
results_3 = search_semantic_scholar("AI agent project management reproducible evaluation")
```

---

## PRISMA Search Log Template

```
Search session: [DATE]
Database: [IEEE/ACM/arXiv/Scholar]
String used: [PASTE EXACT STRING]
Results returned: [N]
After duplicate removal: [N]
After date filter: [N]
Forwarded to screening: [N]
```

Record all sessions in [[40 - Projects/PUMA/41.2 Literature-Review/PR-PUMA-PRISMA-Log]]
