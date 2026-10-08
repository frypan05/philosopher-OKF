---
type: Study Domain
title: Research papers
description: Explain one specific paper as a reading guide: what it claims, how it works, what it shows and what it leaves unverified.
tags: [domain, papers, research, arxiv, reading-guide]
status: draft
stale_after: 2027-04-08T00:00:00Z
---

# When to use

The user gives an arXiv link, DOI, PDF, or paper title, or says "explain this paper". The page is a **reading guide**, not a summary: it lets the reader follow the paper's argument and check it.

# Procedure

1. **Fetch the paper itself** (arXiv abstract page, then the full text). Never explain from the abstract alone, and never from memory when the text is reachable.
2. Extract: problem, key idea, method, data, main results (with table or figure numbers), ablations, limitations the authors state.
3. Rebuild the paper's **core mechanism as a diagram** of `.flow` nodes, with `fz` for fixed parts and the default node for learned or novel parts.
4. Walk the reader along **one concrete example** through the mechanism (for a model paper, one input; for a theory paper, one instance).
5. Tag claims with the paper's own section, for example `<a class="src" href="#r2">[Section 2.1]</a>`.
6. Mark the **few sentences that carry the paper** with `<mark>`.
7. Write "What the paper shows / does not show": separate what is measured, what the authors infer, and what you infer.
8. Add "Go deeper": the papers it builds on, ordered easy to hard.

# Page conventions

| Element | Content |
|---|---|
| Eyebrow | `FIRST AUTHOR ET AL. · VENUE YEAR` |
| Title | The paper's title |
| Deck | What this guide explains and what it leaves unverified |
| Link under deck | "Read the original paper ↗" to the arXiv or DOI record |
| References | First entry is the paper record; next entries point to the specific sections, tables, or appendices that back each part of the guide, each with a one-line "what this supports" |

# Preferred sources

| Host | URL | Best for |
|---|---|---|
| arXiv | https://arxiv.org/ | Preprints and versions |
| DOI resolver | https://doi.org/ | Stable links to published papers |
| Semantic Scholar | https://www.semanticscholar.org/ | Citation graph |
| OpenReview | https://openreview.net/ | Reviews and discussion |
| ACL Anthology | https://aclanthology.org/ | NLP papers |
| NeurIPS proceedings | https://proceedings.neurips.cc/ | NeurIPS papers |
| PubMed Central | https://pmc.ncbi.nlm.nih.gov/ | Open biomedical papers |
| Crossref | https://www.crossref.org/ | Metadata lookup |

# Pitfalls and safety

* State the **version** you read (for example arXiv v2).
* Results are **author-reported** until independently replicated; say so.
* Do not reproduce long passages or figures from the paper; paraphrase and point to the section.
* If the full text is unreachable, say so on the page and limit the guide to what the accessible record supports.

# Graph seeds

| Concept | Needs first | Leads to |
|---|---|---|
| Method in the paper | the baseline it improves | follow-up work |
| Dataset | collection and labeling | benchmark results |
| Ablation | the full system | which parts matter |
| Limitation | claims and scope | open problems |

# Related domains

[Technology and engineering](/domains/technology-engineering.md) · [Mathematics, statistics and logic](/domains/mathematics-statistics-logic.md) · [Natural sciences](/domains/natural-sciences.md)
