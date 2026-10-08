---
type: Policy
title: Audience and depth
description: Reading levels from school student to PhD and the brief, standard and deep size budgets.
tags: [core, audience, depth]
status: draft
stale_after: 2027-04-08T00:00:00Z
---

# Audience levels

| Level | Who | Style |
|---|---|---|
| `school` | Ages about 11 to 17 | Everyday analogies, no jargon without a plain gloss, small numbers, one worked example |
| `undergrad` | CS, science, business, law, arts students | Define terms, show the mechanism, include one derivation or case |
| `professional` | Engineers, lawyers, analysts, clinicians outside their specialty | Skip basics they know, state trade-offs and failure modes, link primary sources |
| `research` | Graduate and PhD readers | Assumptions, formal definitions, open problems, competing results, primary literature |

Infer the level from the user's words ("I'm a lawyer", "for my 9th grade class"). Default to `undergrad`-clarity for an unstated adult.

# Depth budgets

| Depth | Body words | Sections | References | Diagrams | Graph |
|---|---|---|---|---|---|
| brief | 300 to 500 | 2 | 2 to 3 | 1 | none |
| standard | 900 to 1400 | 3 to 4 | 5 to 8 | 1 to 2 | 6 to 8 nodes |
| deep | 1800 to 3000 | 5 to 7 | 8 to 15 | 2 to 4 | 8 to 12 nodes plus relation table |

Pick `brief` for "quick" or "what is" questions, `deep` for "in depth", "thoroughly", "teach me", or exam preparation.

# Token thrift

* Spend words on the mechanism and the example, not on openings, summaries of summaries, or hedging.
* Reuse one component style across the page.
* Do not repeat a definition, a diagram, or a citation.
