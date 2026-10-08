---
type: Procedure
title: Workflow
description: The 8-step procedure a model follows to turn any question into one HTML study page, with the token budget that keeps each run small.
tags: [core, procedure]
status: draft
stale_after: 2027-04-08T00:00:00Z
---

# Steps

1. **Read** this bundle's root `index.md`. Do not read every file.
2. **Classify** the question using the [classifier](/core/classifier.md). Result: one primary domain, at most one secondary.
3. **Load** only what the depth needs, using the lazy [load table](#load-table-lazy) below.
4. **Research** within the caps in [Token budget](#token-budget). Write notes, never re-read raw results.
5. **Plan** the graph: a node list of 6 to 12 items, one line each. No long planning prose.
6. **Write** one HTML file in a single file-creation call, using the base CSS and skeleton in the [page template](/core/page-template.md). Add an Optional CSS block only for a component the page uses.
7. **Self-check** against the [checklist](#self-check-5-lines). Fix small errors with targeted edits; never regenerate the file.
8. **Reply** in at most 2 sentences: file path and what it covers. Never paste the page into chat.

# Load table (lazy)

| Depth | Read |
|---|---|
| brief | [page template](/core/page-template.md) (base CSS, skeleton, components; open `# Optional CSS` at the end only if a planned component needs it) + primary domain's `# Quick card` only |
| standard | brief set + [source policy](/core/source-policy.md) + [audience and depth](/core/audience-depth.md) + primary domain's `# Quick card` only |
| deep | standard set + [knowledge graph method](/core/knowledge-graph.md) + **full** primary domain file, plus secondary domain's `# Quick card` |

* The classifier is read at every depth (step 2); it is not listed in the table.
* **Quick card only** means: read the domain file from the top through the end of `# Quick card` (roughly its first 15 lines) and stop. Deep reads the whole file.
* Skip a file you do not need rather than skimming it. Never read [output contract](/core/output-contract.md) — its rules now live in this file.
* Budgets on one line (full table in audience and depth): brief 250-400 words, 2 references, 1 diagram, no graph; standard 700-1100 words, 5 references, 2 diagrams, 6-8 graph nodes; deep 1500-2500 words, 10 references, 3 diagrams, 8-12 nodes plus a relation table.

# Token budget

**Research caps by depth**

| Depth | Searches | Fetches |
|---|---|---|
| brief | 2 | 0 |
| standard | 4 | at most 2 |
| deep | 8 | at most 4 |

**Fetching**

* Never fetch a full paper or page when an abstract, an HTML summary, or one section answers the need. Fetch with a token limit where the tool allows (about 4,000 tokens per fetch).
* Exception: an "explain this paper" page must use the paper's own text. Fetch its HTML full text once, with the token limit, then work from notes.
* After each search or fetch, write 3 to 5 bullet notes (claim, source URL, section pointer) and do not re-read the raw result.

**Writing**

* No long planning prose. The plan is the node list of step 5, one line per item.
* Write the HTML in a single file-creation call. Fix small errors with targeted edits; never regenerate the whole file.
* Do not render screenshots or re-read the output file unless the user asks.

# Output

* **Save**: `/mnt/user-data/outputs/<slug>.html` if that directory exists, otherwise `./philosopher-output/<slug>.html` (slug: lowercase, hyphens, under 50 characters). If the model cannot write files, print the whole HTML in one code block and say so in one line.
* **Diagram caps**: at most 1 for brief, 2 for standard, 3 for deep. Graph: none for brief, 6-8 nodes for standard, 8-12 plus relation table for deep. Edge labels from the vocabulary: is-a, part-of, requires, causes, enables, contrasts-with, formalized-by, applied-in, measured-by, example-of.
* **No filler**: do not repeat a definition, a diagram, or a citation, and do not add a summary section that restates the page.
* **Chat reply**: at most 2 sentences, plus one more sentence only if sources could not be verified.

# Self-check (5 lines)

- Valid HTML5, `lang`, meta viewport, `<title>`; white background with high contrast; reads correctly at 375 px and prints cleanly.
- Every non-obvious claim has a `[Section]` source tag that resolves to a References entry; every entry is cited once; no invented URL, DOI, author, or quote.
- Each term defined at first use; at least one visual or worked example.
- Standard and deep pages carry a "What this does not show" section; domain note banners present where the domain file requires one.
- File opens with no network except optional images, and a broken image hides itself.

# Context report

After finishing, do **not** print token statistics or a run report. Stay inside budget by following the caps above: about 12k total tokens for a brief run, 25k for standard, 45k for deep.

# Defaults when the user says nothing

* Depth: standard.
* Audience: curious adult with no background in the topic.
* Language: the language the user wrote in.

# Rules that never bend

* One file. White theme. No fabricated sources.
* If the question is unsafe or illegal to answer in detail, say so in the page and explain the safe, general version.
