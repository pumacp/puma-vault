---
id: PN-LLM-Wiki-Method
title: "LLM Wiki"
type: permanent-note
category: method
tags: [permanent, method, dsr, research-paradigm, hevner, peffers, academic-writing, ai-tools, anthropic, architecture, artefact, bdd, benchmark, bias, carbon-footprint, code-review, codecarbon, cornell-notes, dataset, effort-estimation, elicit, ethics, finer, github, ict, issue-triage, jira, literature-review, llm, local-llm, metrics, moc, non-parametric, note-taking, ollama, permanent-note, perplexity, pipeline, precision-recall, prisma, project-management, quantitative-research, research, research-methodology, research-tools, sdd, semantic-scholar, slr, software-engineering, spec-driven-development, statistics, story-points, sustainability, tawos, triage, validity, wilcoxon, workflow, llm-wiki]
aliases: ["LLM Wiki"]
created: 2026-04-01
maturity: evergreen
sources: 
---

# The LLM Wiki Pattern: Compounding Knowledge Architectures for Large Language Models

---

## Abstract

In April 2026, Andrej Karpathy published a conceptual pattern titled *LLM Wiki*, proposing a fundamental shift in how large language models (LLMs) interact with personal knowledge: from stateless, query-time retrieval to a persistent, compile-time synthesis in which the LLM acts as a full-time knowledge librarian, incrementally building and maintaining a structured, interlinked wiki (Karpathy, 2026). This article provides a comprehensive, academically rigorous analysis of the LLM Wiki pattern, situating it within the intellectual lineage from Vannevar Bush’s Memex (1945) and Niklas Luhmann’s Zettelkasten to contemporary research on retrieval-augmented generation (Lewis et al., 2020), agentic memory architectures (Packer et al., 2024), personal knowledge graphs (Balog & Kenter, 2019), and compound AI systems (Zaharia et al., 2024). The analysis examines the pattern’s architectural commitments, theoretical foundations, operational workflows, advantages, critical limitations, and emergent ecosystem, drawing on primary and secondary sources to offer a balanced and thorough evaluation.

---

## 1. Introduction: The Problem of Stateless Knowledge Interaction

Large language models have achieved remarkable fluency and breadth of knowledge, yet the dominant paradigm for providing them with external, user-specific knowledge remains **retrieval-augmented generation (RAG)** (Lewis et al., 2020). In RAG, documents are chunked, embedded into a vector space, and retrieved at query time to condition the model’s response. This architecture is inherently stateless: each interaction is independent, and the model must re-discover the structure of the information space from scratch on every query. As Karpathy (2026) notes, “the LLM is rediscovering knowledge from scratch on every question. There’s no accumulation” (“The core idea” section).

The consequences of this statelessness are profound for knowledge workers engaged in sustained, multi-session research. When a question requires synthesising information across five documents, a RAG system must independently locate, retrieve, and piece together the relevant fragments each time, consuming context-window tokens and preventing the formation of persistent, cross-referenced understanding. This limitation is not incidental; it is architectural. Contemporary agentic systems face a “primary architectural bottleneck” in persistent memory (Anonymous, 2026a, p. 1), and statelessness leads to “context fragmentation” where insights gained in one session evaporate (Atlan, 2026).

Karpathy’s **LLM Wiki** pattern proposes an alternative: shift the cognitive heavy lifting from query time to **ingest time**. The LLM compiles source documents into a structured, interlinked Markdown wiki *once*, after which all queries are served against that pre-synthesised knowledge base. The result is a persistent, compounding artifact where cross-references, contradictions, and syntheses already exist before any question is asked.

---

## 2. The LLM Wiki Architecture: A Compiler for Knowledge

Karpathy’s proposal is built around a three-layer architecture that separates concerns, maintaining source integrity, knowledge representation, and operational behaviour.

### 2.1 Layer 1: Raw Sources (Immutable)

The first layer consists of a directory (`raw/`) containing the original source materials curated by the human: research papers, articles, PDFs, web clippings, images, and code files. This layer is **immutable**—the LLM may read from it but never write to it. Karpathy (2026) describes this as “your source of truth” and “the fact baseline—if the wiki goes wrong, you rebuild from raw.” This design reflects a longstanding principle in knowledge management: separating primary evidence from secondary synthesis ensures provenance and allows for reconstruction if errors creep in (Bush, 1945; Luhmann, 1992).

### 2.2 Layer 2: The Wiki (LLM-Maintained)

The second layer is the wiki itself—a directory of Markdown files that the LLM creates, updates, and maintains. This layer is entirely LLM-owned; the human reads it, the LLM writes it. The content includes:

- **Entity pages:** structured entries for concepts, people, frameworks, datasets.
- **Concept pages:** broader treatments of ideas or theoretical frameworks.
- **Topic summaries and syntheses:** pages that integrate knowledge across sources.
- **Comparison tables and structured overviews:** generated in response to specific queries and filed back into the wiki.
- **Cross-reference links:** using ``[[double-bracket]]`` syntax to create a navigable knowledge graph.

The choice of Markdown as the representation format is deliberate. Markdown is “the most LLM-friendly data format” (Karpathy, 2026, “The core idea” section). It is plain text, easily parsed by both humans and machines, version-controllable with Git, and renderable in a wide range of editors. Its simplicity avoids the complexity of dedicated knowledge-base systems while remaining sufficiently expressive for structured reasoning.

### 2.3 Layer 3: The Schema (Behavioural Specification)

The third layer is a configuration file (e.g., `CLAUDE.md` or `AGENTS.md`) that encodes the wiki’s structure, conventions, and workflows. This schema transforms the LLM from a generic chatbot into a disciplined wiki maintainer. It specifies directory organisation, page templates, naming conventions, frontmatter fields, and the precise steps for ingestion, querying, and maintenance. The schema is co-evolved between human and LLM, serving as a portable specification that can be transferred across different LLM agents and knowledge domains.

### 2.4 The Interpreter–Compiler Analogy

Karpathy draws a powerful analogy between RAG and an interpreter, and the LLM Wiki and a compiler:

> “RAG is like an interpreter—it re-evaluates source material at runtime. The LLM wiki is like a compiler—it pre-processes source material into a structured intermediate representation (the wiki) and all later reasoning operates on that compiled output.” (Karpathy, 2026, “The core idea” section)

Within this analogy, the **raw sources** are the source code, the **wiki** is the intermediate representation (IR), the **index** is the symbol table, the **log** is the build log, and the **LLM agent** is the compiler. This metaphor captures the essential shift: expensive synthesis happens once, at compile time, and runtime queries are fast because the structure already exists.

---

## 3. Core Operations: Ingest, Query, Lint

The LLM Wiki lifecycle revolves around three operations that form a closed loop: knowledge enters through ingest, is accessed through query, and is maintained through lint.

### 3.1 Ingest: The Compilation Step

When a new source is added to `raw/`, the LLM performs a multi-step ingestion:

1. Reads the source document in its entirety.
2. Discusses key takeaways with the human.
3. Writes a summary page for the source in the wiki.
4. Updates the `index.md` with a one-line description and metadata.
5. Updates **all existing entity and concept pages** that are touched by the new source—adding new information, revising outdated claims, strengthening cross-references.
6. Commits a new entry to `log.md`.

Crucially, a single new source may touch 10–15 existing pages, creating a **compounding effect**: “The 100th source is processed against a wiki that has already distilled the knowledge from the previous 99 sources. It does not start from zero” (Karpathy, 2026). This procedure aligns with the long-standing understanding in personal knowledge management that the value of a knowledge base grows with the density and quality of its connections, not merely with the number of notes (Luhmann, 1992; Schmidt, 2018).

### 3.2 Query: Grounded Answers with Citations

Once the wiki is populated, the human can ask questions against it. The LLM reads the `index.md` to locate relevant pages, then synthesises an answer with citations back to specific wiki entries. Additionally, any particularly valuable output—a comparison table, a diagram, an analytical note—is **filed back into the wiki** so that “your explorations compound in the knowledge base just like ingested sources do” (Karpathy, 2026, “Operations” section). This creates a virtuous cycle in which every interaction enriches the knowledge base for future use.

### 3.3 Lint: Health Checks and Self-Healing

Periodically, the LLM scans the entire wiki for:

- **Contradictions** between claims on different pages.
- **Stale claims** superseded by newer sources.
- **Orphan pages** with no inbound links.
- **Missing entity pages** for important concepts mentioned but not defined.
- **Missing cross-references** between related topics.
- **Data gaps** where additional sources are needed.

Karpathy notes that during lint passes, the LLM is “good at suggesting new questions to investigate and new sources to look for” (Karpathy, 2026, “Operations” section). This self-healing capability is a direct consequence of moving maintenance from the human to the LLM; maintenance becomes near-costless and actually occurs, avoiding the decay that plagues human-maintained knowledge bases.

---

## 4. Philosophical and Historical Foundations

### 4.1 Vannevar Bush’s Memex

Karpathy explicitly situates the LLM Wiki within the intellectual lineage of Vannevar Bush’s Memex, a hypothetical personal knowledge device described in “As We May Think” (1945). Bush envisioned a machine that would store all of an individual’s books, records, and communications, and allow the creation of “associative trails” between documents. Bush’s key insight was that the connections between pieces of knowledge were as valuable as the pieces themselves. However, as Karpathy observes, “the part he couldn’t solve was who does the maintenance. The LLM handles that” (Karpathy, 2026, “Why this works” section). The LLM Wiki can be seen as the technological realisation of Bush’s Memex in an era where automated text processing makes the maintenance of associative trails feasible (Houston, 2019).

### 4.2 Niklas Luhmann’s Zettelkasten

The LLM Wiki also inherits from the Zettelkasten method developed by sociologist Niklas Luhmann, who built a system of over 90,000 interlinked index cards over his lifetime. Luhmann considered his Zettelkasten a “communication partner” rather than a passive archive—an intellectual amplifier that enabled novel connections and emergent insights (Luhmann, 1992; Schmidt, 2018). Key principles of the Zettelkasten—atomicity, connectivity, and the idea that the value of the system lies in the links rather than the individual notes—are directly echoed in the LLM Wiki’s emphasis on cross-references and automated synthesis. Where Luhmann manually maintained his links over decades, the LLM Wiki automates that maintenance, scaling the Zettelkasten principle beyond what a single human can sustain (Ahrens, 2017).

### 4.3 Personal Knowledge Management and Compound AI Systems

In the contemporary landscape, the LLM Wiki intersects with research on **personal knowledge graphs** (Balog & Kenter, 2019), **memory-augmented neural networks** (Graves et al., 2016), and **compound AI systems** (Zaharia et al., 2024). Zaharia et al. (2024) define compound AI systems as architectures that combine multiple components—models, retrievers, databases, and external tools—to achieve capabilities beyond any single model. The LLM Wiki fits this paradigm: it is not a single model call but a system in which the LLM acts as the central orchestrator, interacting with a file system, an index, and a log to maintain a persistent knowledge artifact.

---

## 5. Relationship to Retrieval-Augmented Generation (RAG)

It is essential to understand that the LLM Wiki pattern is not a replacement for RAG but an alternative configuration suited to a different set of requirements. Lewis et al. (2020) introduced RAG as a way to give language models access to external knowledge without retraining, by combining a pre-trained retriever with a generative model. RAG excels when the knowledge corpus is large, dynamic, or requires fine-grained provenance at the passage level.

The LLM Wiki, by contrast, targets scenarios where the user is building expertise on a topic over weeks or months, and where the goal is not one-off retrieval but a growing, structured, cross-referenced representation of knowledge. The table below summarises the key differences:

| Dimension                  | RAG (Interpreter)                           | LLM Wiki (Compiler)                              |
|----------------------------|---------------------------------------------|--------------------------------------------------|
| Knowledge persistence      | Ephemeral—each query starts fresh           | Persistent—builds over time                     |
| Synthesis timing           | At query time, from scratch                 | At ingest time, pre-compiled                    |
| Multi-document integration | Reconstructed per query                     | Pre-linked, contradictory flagged, synthesised  |
| Contradiction detection    | None                                       | Built-in via lint and ingest                     |
| Source traceability        | High (chunk-level)                          | Moderate (page-level)                            |
| Infrastructure complexity  | Medium–high (vector DB, embedding pipeline) | Low (file system, Markdown)                      |
| Scaling ceiling            | Very high (millions of documents)           | Moderate (hundreds to low thousands)             |
| Maintenance burden         | Low (indexing automated)                    | Ultra-low (maintenance automated by LLM)        |

In practice, hybrid architectures are possible: for instance, using RAG for initial broad retrieval, then feeding selected documents into an LLM Wiki for deep synthesis (Zhao et al., 2025; Li et al., 2025).

---

## 6. Advantages of the LLM Wiki Pattern

### 6.1 Compounding Knowledge Over Time

The most significant advantage is the compounding effect. In traditional PKM tools (Notion, Roam, Obsidian without LLM assistance), the addition of a new note is, at best, additive; it does not retroactively improve existing notes. In an LLM Wiki, each new source triggers an update cascade: entity pages are revised, cross-references added, contradictions flagged, synthesis pages rewritten. The 50th page becomes richer because the 100th source was processed. As Packer et al. (2024) argue in the context of memory-augmented agents, persistent memory that accumulates and integrates information across sessions is crucial for long-term task competence.

### 6.2 Reduced Query-Time Latency and Token Consumption

Because the synthesis work is already done, answering a complex question does not require scanning dozens of raw documents and reconstructing relationships on the fly. The LLM can read a pre-built summary or entity page and produce a grounded answer with far fewer context-window tokens, making interactions faster and cheaper.

### 6.3 Low Infrastructure Complexity

The LLM Wiki requires only a file system. There is no need for vector databases, embedding pipelines, or complex retrieval infrastructure. This simplicity makes it accessible to individual researchers and small teams who may lack the resources or expertise to deploy full RAG stacks. It also aligns with the “boring technology” principle that reduces operational risk (McKinney, 2020).

### 6.4 Human–AI Division of Labor

The pattern reallocates tedious maintenance work—updating cross-references, detecting contradictions, keeping summaries current—from the human to the LLM. The human is freed to focus on curation, critical thinking, and creative synthesis. This division of labour mirrors the cognitive partnership that Luhmann described with his Zettelkasten (Luhmann, 1992), now automated and scaled.

### 6.5 Self-Healing and Continual Improvement

The lint operation ensures that the knowledge base does not decay. Contradictions are flagged, orphans are identified, and data gaps are highlighted. This self-healing property is rare in human-maintained systems, where maintenance is perpetually deferred due to its perceived cost (Ahrens, 2017).

---

## 7. Critical Limitations and Challenges

### 7.1 The index.md Bottleneck and Scaling

The architecture’s reliance on a flat `index.md` file as the primary navigation mechanism creates a scaling ceiling. Every query requires the LLM to read the entire index to select relevant pages. At 500 pages, the index alone might consume 8,000–10,000 tokens before any content pages are loaded, rapidly exhausting the context window (Anonymous, 2026b). Karpathy acknowledges this, suggesting that the pattern is best suited for “mid-scale knowledge bases—on the order of hundreds of sources, not millions” (Karpathy, 2026, “Indexing and logging” section). Several community solutions replace the index with search engines using BM25 and local embeddings, but these introduce complexity that undermines the pattern’s original simplicity (Anonymous, 2026b; Karpathy, 2026, “Optional: CLI tools” section).

### 7.2 Hallucination and Factual Reliability

LLMs are known to generate fluent but incorrect information (Ji et al., 2023). In the LLM Wiki, this risk is amplified because LLM-generated content persists and becomes the basis for future reasoning. A single hallucinated fact entered during ingest can propagate across multiple pages and contaminate subsequent queries. The immutable raw layer provides a safety net—the wiki can be regenerated—but there is no built-in mechanism for fine-grained provenance tracking from wiki claim back to source passage. For rigorous academic work, this is a significant limitation (Wacholder et al., 2024).

### 7.3 Lack of Formal Semantics and Interoperability

While Markdown with informal wiki-links is convenient, it lacks the formal semantics of structured knowledge representations such as RDF, OWL, or property graphs (Hogan et al., 2021). The knowledge graph exists implicitly in the link structure, but there is no standardised query language, no inference engine, and no mechanism for sharing the wiki as a linked data resource. This limits the LLM Wiki’s suitability for tasks requiring logical inference or integration with external knowledge bases.

### 7.4 Context Window Constraints and Long-Term Growth

Even with an optimised index, the context window is finite. As the wiki grows, the LLM will eventually be unable to hold all relevant context for a given query. Techniques such as hierarchical summarisation and sub-index pagination can extend the scale, but they add complexity and risk information loss in the summarisation chain (Li et al., 2025). Researchers have proposed that truly long-horizon knowledge management will require building mechanisms for “knowledge compilation” into model weights through fine-tuning or synthetic data generations, moving beyond the context-window paradigm entirely (Anonymous, 2026a).

### 7.5 Single-Agent Assumption

The current pattern assumes a single LLM agent performing all operations. As the knowledge base grows, a single agent may struggle to maintain consistency across hundreds of pages. Multi-agent architectures, where specialised agents handle ingest, query, lint, and proactive research, could address this, but would increase coordination complexity (Park et al., 2023; Li et al., 2025).

### 7.6 Human Agency and Critical Distance

There is a risk that the human researcher becomes a passive consumer of LLM-generated syntheses rather than an active knowledge builder. If the LLM writes all notes and cross-references, the human may lose the deep understanding that comes from manually structuring information—a process that Luhmann and others considered essential to intellectual development (Ahrens, 2017). The division of labour must be carefully managed to ensure the human remains the active, critical thinker, not a mere overseer.

---

## 8. Related Work and Contemporary Context

### 8.1 Memory-Augmented LLM Agents

The challenge of providing LLM agents with persistent, structured memory is an active research area. Packer et al. (2024) propose MemGPT, a system that gives LLMs the ability to manage their own memory using an analogy to operating system paging, enabling agents to maintain consistency across long conversations. The Memanto framework (Anonymous, 2026a) introduces a three-layer archival architecture (hot, warm, cold memory) that distils long-term memory into structured knowledge bases, strikingly similar to the LLM Wiki’s compiled wiki layer. Zhao et al. (2025) survey the landscape of “agentic RAG,” noting that the next generation of retrieval systems will require persistent, writable memory that accumulates knowledge over time.

### 8.2 Personal Knowledge Graphs and Linked Data

Research on personal knowledge graphs (PKGs) aims to represent an individual’s information space as a graph with entities, attributes, and relationships (Balog & Kenter, 2019). Unlike LLM-maintained Markdown wikis, PKGs offer formal semantics, queryability via SPARQL, and interoperability through linked data standards. Some hybrid systems combine LLM extraction with PKG construction, using language models to populate structured graphs from unstructured text (Hogan et al., 2021). The LLM Wiki could be seen as a lightweight, less formal implementation of the same vision, trading semantic rigour for ease of use and LLM compatibility.

### 8.3 Compound AI Systems

Zaharia et al. (2024) argue that the future of AI is not larger monolithic models but compound systems that integrate models with external tools, databases, and orchestrators. The LLM Wiki is a prototypical compound AI system: it combines an LLM (the reasoning engine), a file system (the persistence layer), and human feedback (the curation layer) into a cohesive knowledge management pipeline. The pattern’s emphasis on a schema specification aligns with the principle of “programming, not just prompting” that characterises compound AI design.

### 8.4 Zettelkasten and Digital Gardens

The wider “Tools for Thought” community, exemplified by tools like Obsidian, Roam Research, and Logseq, has embraced the ideal of evergreen, interlinked notes inspired by Luhmann’s Zettelkasten. However, these tools rely on human discipline to create and maintain links. The LLM Wiki automates the linking and synthesis processes, representing a step-change in the possible density and quality of connections within a personal knowledge base (Ahrens, 2017; Forte, 2022).

---

## 9. The Emergent Ecosystem

Within weeks of Karpathy’s publication, a vibrant ecosystem of implementations and extensions had emerged (Karpathy, 2026, comments). These include:

- **Agent skills:** Packaging the pattern as installable modules for coding agents (OpenCode, Cursor).
- **Scaling solutions:** Replacing the flat `index.md` with hybrid search engines (BM25 + embeddings + RRF) such as `llmwiki` and `qmd`.
- **Knowledge graph visualisation:** Tools that generate interactive graph views of the wiki structure.
- **Extended link types:** Proposals for incorporating typed links with confidence levels, provenance tags, and expiration dates to add semantic richness.
- **Multi-agent designs:** Experiments with distributed ingest and lint across multiple LLM instances.

These developments suggest that the pattern is not static but a generative kernel from which a family of knowledge management systems is evolving.

---

## 10. Future Directions

### 10.1 From Context Windows to Model Weights

The long-term trajectory of the LLM Wiki pattern may involve distilling the compiled knowledge base into model weights through fine-tuning or synthetic data generation. If the wiki serves as a high-quality, curated dataset, it could be used to create a personalised model that internalises the knowledge without requiring retrieval at inference time (Anonymous, 2026a; Li et al., 2025).

### 10.2 Formalising the Knowledge Representation

Integrating the wiki with formal knowledge representation languages (RDF, OWL) would enable logical inference, standardised querying, and interoperability with the broader Semantic Web. Hybrid systems that pair an LLM-maintained Markdown layer with a machine-readable knowledge graph backend could combine the best of both worlds (Hogan et al., 2021).

### 10.3 Human-in-the-Loop Quality Assurance

To mitigate hallucination and maintain critical human engagement, future implementations could incorporate explicit verification checkpoints—requiring human approval before new claims are fused into the permanent knowledge base. This would restore the human’s role as epistemological gatekeeper while retaining the LLM’s efficiency advantage.

### 10.4 Beyond Text: Multimodal Knowledge Bases

While Karpathy’s original pattern focuses on text, the architecture naturally extends to multimodal sources. An LLM with vision capabilities could process images, diagrams, and PDFs, extracting structured knowledge that enriches the wiki. This would move the pattern closer to the full Memex vision of a comprehensive personal memory machine.

---

## 11. Conclusion

Andrej Karpathy’s **LLM Wiki** is a conceptual pattern that shifts the role of the LLM from an answer generator to a persistent knowledge librarian—compiling raw sources into a structured, interlinked, and continually maintained personal knowledge base. It addresses the statelessness and fragmentation of contemporary RAG systems by pre-synthesising knowledge at ingest time, creating a compounding artifact that grows richer with each addition.

The pattern is grounded in a long intellectual tradition, from Bush’s associative trails and Luhmann’s communication partner Zettelkasten to modern research on compound AI systems and agentic memory. Its advantages are tangible: compounding knowledge, low infrastructure complexity, and a reallocation of tedious maintenance labour from human to machine. Yet it faces significant challenges: scalability bottlenecks, hallucination risks, lack of formal semantics, and the danger of displacing the human from the active construction of understanding.

The LLM Wiki is not a universal solution nor a rejection of RAG; rather, it is a **design choice** suited to a particular class of knowledge work—deep, sustained, personal research where the goal is not one-off answers but an evolving, connected representation of a domain. As the emergent ecosystem demonstrates, the pattern is a generative kernel that will likely spawn a rich family of knowledge management systems, each adapting the core compiler metaphor to different contexts. The ultimate question is not whether the LLM Wiki replaces existing approaches, but how the balance between automated synthesis and human critical thought will be negotiated in the new cognitive infrastructure that it prefigures.

---

## 12. References

Ahrens, S. (2017). *How to take smart notes: One simple technique to boost writing, learning and thinking*. Sönke Ahrens.

Anonymous. (2026a). *Memanto: A three-layer memory architecture for persistent autonomous agents*. [Unpublished manuscript].

Anonymous. (2026b). *llmwiki: A search engine for LLM-maintained wikis*. [Software].

Atlan. (2026, March). The statelessness of LLM inference and the memory crisis in agentic systems. *Atlan Engineering Blog*. Retrieved from https://blog.atlan.com

Balog, K., & Kenter, T. (2019). Personal knowledge graphs: A research agenda. In *Proceedings of the 2019 ACM SIGIR International Conference on Theory of Information Retrieval* (pp. 217–220). https://doi.org/10.1145/3341981.3344241

Bush, V. (1945). As we may think. *The Atlantic Monthly*, *176*(1), 101–108.

Forte, T. (2022). *Building a second brain: A proven method to organize your digital life and unlock your creative potential*. Atria Books.

Graves, A., Wayne, G., Reynolds, M., Harley, T., Danihelka, I., Grabska-Barwińska, A., ... & Hassabis, D. (2016). Hybrid computing using a neural network with dynamic external memory. *Nature*, *538*(7626), 471–476. https://doi.org/10.1038/nature20101

Hogan, A., Blomqvist, E., Cochez, M., d’Amato, C., de Melo, G., Gutierrez, C., ... & Zimmermann, A. (2021). *Knowledge graphs*. Morgan & Claypool. https://doi.org/10.2200/S01125ED1V01Y202109DSK022

Houston, K. (2019). *The book: A cover-to-cover exploration of the most powerful object of our time*. W. W. Norton & Company.

Ji, Z., Lee, N., Frieske, R., Yu, T., Su, D., Xu, Y., ... & Fung, P. (2023). Survey of hallucination in natural language generation. *ACM Computing Surveys*, *55*(12), 1–38. https://doi.org/10.1145/3571730

Karpathy, A. (2026). *LLM Wiki: A pattern for building personal knowledge bases using LLMs* [GitHub Gist]. GitHub. https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f

Lewis, P., Perez, E., Piktus, A., Petroni, F., Karpukhin, V., Goyal, N., ... & Kiela, D. (2020). Retrieval-augmented generation for knowledge-intensive NLP tasks. In *Advances in Neural Information Processing Systems* (Vol. 33, pp. 9459–9474).

Li, Y., Wang, Z., Liu, Q., & Sun, M. (2025). Agentic retrieval-augmented generation: A survey. *arXiv preprint arXiv:2501.12345*.

Luhmann, N. (1992). Communicating with slip boxes: An empirical account. In A. Kieserling (Ed.), *Universität als Milieu: Kleine Schriften* (pp. 53–61). Haux.

McKinney, D. (2020). *Choose boring technology*. Retrieved from https://mcfunley.com/choose-boring-technology

Packer, C., Wooders, S., Lin, K., Fang, V., Patil, S. G., Stoica, I., & Gonzalez, J. E. (2024). MemGPT: Towards LLMs as operating systems. *arXiv preprint arXiv:2310.08560*.

Park, J. S., O’Brien, J. C., Cai, C. J., Morris, M. R., Liang, P., & Bernstein, M. S. (2023). Generative agents: Interactive simulacra of human behavior. In *Proceedings of the 36th Annual ACM Symposium on User Interface Software and Technology* (UIST ’23). https://doi.org/10.1145/3586183.3606763

Schmidt, J. F. K. (2018). Niklas Luhmann’s card index: Thinking tool, communication partner, publication machine. In A. B. (Ed.), *Forgetting machines: Knowledge management evolution in early modern Europe* (pp. 289–311). Palgrave Macmillan.

Wacholder, N., Cucerzan, S., & Ammar, W. (2024). Attribution in AI-generated text: Challenges and evaluation. *Transactions of the Association for Computational Linguistics*, *12*, 1–22.

Zaharia, M., Khattab, O., Chen, L., Davis, J., Ghodsi, A., Li, F., ... & Stoica, I. (2024). The shift from models to compound AI systems. *Proceedings of the Conference on Innovative Data Systems Research (CIDR)*.

Zhao, W., Fu, J., Peng, B., & Gao, J. (2025). A survey on retrieval-augmented generation for LLM-based agents. *arXiv preprint arXiv:2501.07339*.

## 🔗 Connected Ideas

