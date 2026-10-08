---
type: Procedure
title: Workflow
description: The 8-step procedure a model follows to turn any question into one HTML study page.
tags: [core, procedure]
status: draft
stale_after: 2027-04-08T00:00:00Z
---

# Steps

1. **Read** this bundle's root `index.md`. Do not read every file.
2. **Classify** the question using the [classifier](/core/classifier.md). Result: one primary domain, at most one secondary.
3. **Load** files in this order, stopping at what the depth needs:

| Depth | Files to read |
|---|---|
| brief | [output contract](/core/output-contract.md), [page template](/core/page-template.md), primary domain |
| standard | brief set + [source policy](/core/source-policy.md) + [audience and depth](/core/audience-depth.md) |
| deep | standard set + [knowledge graph method](/core/knowledge-graph.md) + secondary domain |

4. **Research.** With search or fetch tools, gather sources first and write only what they support. Without tools, write only what you are highly confident is true and apply the unverified banner from the [source policy](/core/source-policy.md).
5. **Plan the graph.** List 6 to 12 concepts and their relations before writing prose. See [knowledge graph method](/core/knowledge-graph.md).
6. **Write** one HTML file using the [page template](/core/page-template.md). Explain from intuition, to mechanism, to detail.
7. **Self-check** against the checklist in the [output contract](/core/output-contract.md).
8. **Reply** in one or two sentences: file path and what it covers. Never paste the page content into chat.

# Defaults when the user says nothing

* Depth: standard.
* Audience: curious adult with no background in the topic.
* Language: the language the user wrote in.

# Rules that never bend

* One file. White theme. No fabricated sources.
* If the question is unsafe or illegal to answer in detail, say so in the page and explain the safe, general version.
