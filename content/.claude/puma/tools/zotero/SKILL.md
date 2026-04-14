---
name: puma-zotero
description: Zotero integration conventions for PUMA — import workflow, tagging system, citekey conventions, Obsidian integration, and bibliography export. Use when importing new papers, managing the PUMA Zotero library, exporting bibliographies for TFG chapters, or troubleshooting Zotero-Obsidian integration. Essential for maintaining citation integrity in academic deliverables.
---

# PUMA Zotero — Bibliography Management

## Library Details

- **Platform**: Zotero 7
- **Public library**: https://www.zotero.org/pumacp/library
- **User ID**: 20166221
- **API endpoint**: `https://api.zotero.org/users/20166221/items`
- **RSS/Atom**: https://api.zotero.org/users/20166221/items/top?format=atom&sort=title

## PUMA Tagging System

Apply tags in Zotero systematically:

| Tag | Meaning | Stage |
|-----|---------|-------|
| `#puma-candidate` | Found in search, pending evaluation | Identification |
| `#puma-screening` | Being read (Keshav Pass-1) | Screening |
| `#puma-include` | Approved for PUMA vault | Inclusion |
| `#puma-exclude` | Screened out — add reason tag | Exclusion |
| `#puma-key` | High priority, Pass-3 candidate | Inclusion |
| `#puma-foundation` | Pre-2019 foundational work | Inclusion |
| `#triage` | Relevant to H₁ (triage) | Topic |
| `#estimation` | Relevant to H₂ (estimation) | Topic |
| `#agent-arch` | Agent architecture papers | Topic |
| `#methodology` | Research methodology | Topic |
| `#dataset` | Dataset/benchmark papers | Topic |

## Exclusion Reason Tags

When tagging `#puma-exclude`, always add a reason tag:

```
#excl-no-empirical     → no empirical evaluation
#excl-not-se           → not software engineering domain
#excl-duplicate        → duplicate publication
#excl-inaccessible     → full text not available
#excl-not-english      → not in English
#excl-pre-2019         → too old (unless foundational)
```

## Citekey Convention

Zotero auto-generates citekeys. PUMA uses **BetterBibTeX** format:

```
Format: [auth:lower][year]
Examples:
  keshav2007
  yao2022react
  tawosi2022tawos
```

In Obsidian, Zotero notes are named `@citekey.md` or `LN-Author-Year-Title.md`.

## Import Workflow

### Option A: Zotero Connector (recommended for web articles)
1. Browse paper on publisher website
2. Click Zotero Connector browser extension
3. Paper + PDF auto-imported
4. Add tags manually in Zotero
5. Sync Zotero library

### Option B: PDF Import
1. Drag PDF into Zotero library
2. Right-click → "Retrieve Metadata for PDF"
3. Verify metadata (title, authors, year, venue)
4. Add tags
5. Sync

### Option C: DOI/ArXiv Import
1. In Zotero: File → Import from Clipboard
2. Paste DOI (e.g., `10.1145/3236024.3264836`) or ArXiv URL
3. Zotero fetches metadata automatically
4. Add tags
5. Sync

## Obsidian Integration Protocol

### Setup (one-time)
1. Install "Zotero Integration" plugin in Obsidian
2. Configure:
   - Library type: User
   - User ID: 20166221
   - API Key: [your personal key from zotero.org/settings/keys]
   - Import format: Markdown
   - Import folder: `20 - Literature/20.1-Papers/`

### Importing a Paper (per paper)
1. `Ctrl+Shift+Z` in Obsidian → Zotero Integration panel opens
2. Search by title or citekey
3. Select paper → Insert
4. Note created in `20-Literature/20.1-Papers/` as `@citekey.md`
5. Rename to `LN-Author-Year-ShortTitle.md` and move to topic subfolder
6. Fill in Keshav Three-Pass template sections

### Literature Note Template (auto-fills from Zotero)

```markdown
---
title: "@{{citekey}}"
type: LN
author: "{{author}}"
year: {{year}}
venue: "{{publicationTitle}}"
doi: "{{DOI}}"
url: "{{url}}"
zotero_key: "@{{citekey}}"
abstract: "{{abstractNote}}"
status: to-read
keshav_pass: "1"
puma_relevance: ""
tags: [puma, literature-note]
created: {{date}}
jd: "20.1"
---

# {{title}}

## Bibliographic Info
**Authors**: {{author}}  
**Year**: {{year}}  
**Venue**: {{publicationTitle}}  
**DOI**: {{DOI}}

## Keshav Pass-1
[Fill after Pass-1]

## Keshav Pass-2
[Fill after Pass-2]

## Keshav Pass-3
[Fill after Pass-3 — most relevant papers only]

## PUMA Relevance
[How does this connect to H₁ or H₂?]

## Permanent Note Candidates
[List PN- notes to create from this paper]
```

## Bibliography Export for TFG

### APA 7th Edition Export (for Word documents)

1. In Zotero: select all `#puma-include` papers
2. Right-click → "Create Bibliography from Items"
3. Style: **APA 7th edition**
4. Output: **Copy to Clipboard**
5. Paste into chapter bibliography section

### BibTeX Export (for LaTeX)
1. File → Export Library
2. Format: **Better BibTeX**
3. Save as `puma-bibliography.bib`
4. Place in vault root for reference

### In-Text Citation Format (APA 7th)
```
One author: (Keshav, 2007)
Two authors: (Yao & Chen, 2022)
Three+ authors: (Tawosi et al., 2022)
Direct quote: (Keshav, 2007, p. 83)
```

## Quality Control

### Monthly Zotero Audit
- [ ] All items have complete metadata (no missing author/year/venue)
- [ ] All items tagged (at least one `#puma-*` tag)
- [ ] PDFs attached to all `#puma-include` items
- [ ] Citekeys clean (no duplicates, no special characters)
- [ ] Library synced to cloud

### Detecting Duplicate Citations
```
Zotero: Tools → Find Duplicate Items
Review duplicates → keep most complete entry → merge or delete
```

## API Access (for automation)

```python
import requests

ZOTERO_USER_ID = "20166221"
ZOTERO_API_KEY = "YOUR_KEY"  # from zotero.org/settings/keys

# Fetch all included papers
response = requests.get(
    f"https://api.zotero.org/users/{ZOTERO_USER_ID}/items",
    headers={"Zotero-API-Key": ZOTERO_API_KEY},
    params={
        "tag": "#puma-include",
        "format": "json",
        "limit": 100,
        "sort": "title"
    }
)
papers = response.json()
```
