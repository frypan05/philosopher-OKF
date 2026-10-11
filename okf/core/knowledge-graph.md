---
type: Method
title: Knowledge graph method
description: How to plan a topic as a small typed concept graph and render it as a three-column HTML/CSS map plus a relation table.
tags: [core, graph, concept-map]
status: draft
stale_after: 2027-04-08T00:00:00Z
---

# Why

A reader who sees how a topic connects to what they already know learns faster than one who reads a list. The graph is the page's spine: plan it first, then write sections that walk through it.

# Plan

1. Pick the **center** concept (the user's topic).
2. Add 2 to 4 **prerequisites**: what a newcomer must already know.
3. Add 2 to 5 **parts or mechanisms**: what the topic is made of or how it works.
4. Add 2 to 4 **leads to**: applications, consequences, or the next topics to study.
5. Add at most 2 **contrasts**: look-alike ideas people confuse with it.
6. Label every edge with one relation from the vocabulary below.

# Relation vocabulary

`is-a` · `part-of` · `requires` · `causes` · `enables` · `contrasts-with` · `formalized-by` · `applied-in` · `measured-by` · `example-of`

# Render

Three columns inside `.kg`: prerequisites, the topic with its parts, and what it leads to. Each box is a link to the section or reference that explains it (`#id`). Mark the center with class `me`.

```html
<div class="kg">
  <div><h4>Needs first</h4><a href="#s1">Prerequisite A</a><a href="#s1">Prerequisite B</a></div>
  <div><h4>This topic</h4><a class="me" href="#top">Topic</a><a href="#s2">Part 1</a><a href="#s3">Part 2</a></div>
  <div><h4>Leads to</h4><a href="#r4">Application</a><a href="#r5">Next topic</a></div>
</div>
```

Then a relation table so each edge is explicit and checkable:

```html
<table><tr><th>From</th><th>Relation</th><th>To</th></tr>
<tr><td>Part 1</td><td>part-of</td><td>Topic</td></tr></table>
```

# Quality bar

* Every node appears in the text at least once.
* No node without an edge. No edge without a relation label.
* Edges are claims: they need the same sources as any other claim.
* Nodes are named concepts that exist in the sources (Heap, Breadth-first search, Big-O cost model), never a thesis the page invented ("Access rule decides the structure"). The center node is the user's topic.
* One edge per pair. Do not add the inverse ("Heap requires Array index arithmetic" and "Array index arithmetic enables Heap" is one edge).
* Check each edge against the page's own text. If a section says Dijkstra's algorithm orders its frontier with a heap, the edge is "Heap applied-in Dijkstra's algorithm", not "Queue applied-in Dijkstra's algorithm".
* Use each domain file's "Graph seeds" section as a starting vocabulary, not a limit. Example: [technology and engineering](/domains/technology-engineering.md).
