---
type: Policy
title: Writing rules
description: Prose rules for every page. Literal, specific sentences with checkable facts; no stock AI phrasing, no aphorisms, no metaphor headings; plus a self-check run before the file is written.
tags: [core, writing, style]
status: draft
stale_after: 2027-04-08T00:00:00Z
---

# Why this file exists

A study page teaches through mechanisms, numbers, and traces the reader can check. A sentence that survives swapping the topic for another one teaches nothing, and readers recognize it as filler within a paragraph. Write like lecture notes by a careful researcher: literal, specific, sourced.

Adapted from the no-ai-slop skill and its AI writing detection reference (realrossmanngroup/no_ai_slop_writing_rules). The longer word and pattern lists are in [writing detection](/core/writing-detection.md).

# Five tests for every sentence

1. **Portability.** If the sentence still reads correctly after you replace the topic with a different one, delete it or replace it with a fact, mechanism, number, or example that only this topic has.
2. **Literal.** Say what the thing is and does in plain words. No "X is not Y, it is Z". No metaphor and no personification: structures do not "buy", "pay", "forbid", "own", or "forget". An analogy is allowed only at `school` level, labelled "Analogy:", with one clause saying where it stops working.
3. **Evidence.** Replace every claim about importance, difficulty, or surprise ("crucial", "the classic mistake", "the point of") with the fact that makes it so: a cost, a failure case, a date, a number.
4. **Kicker.** End each section on a concrete fact, a limit, or a cost. Delete closing aphorisms, "in other words" recaps, and any last line that restates the section.
5. **Trace.** Give every concept one worked trace with real values (a named input, each step, a named output) before generalizing from it.

# Required content per concept

Each named concept gets all five parts: a one-sentence literal definition; its operations or parts with exact costs (units, big-O, versions, dates); one worked trace; one failure case with the condition that triggers it; a source tag.

If the word budget cannot cover all five for every concept, cover fewer concepts. Never cover more concepts more thinly. List the dropped concepts under "What this does not show".

# Headings, deck, marks, captions

* **Headings** name the content or state a checkable fact: "Binary heap: O(1) minimum, O(log n) insert and extract". Not a metaphor, a dramatic noun pair, or a tease ("The Hidden Trap", "A heap pays by forgetting order"). If it could be a thriller chapter title, rewrite it.
* **Deck** (subtitle): two or three literal sentences. The first says what the topic is and gives its main numbers. Do not invent a thesis to unify the page ("choose by access rule"). Organize by the structure the sources themselves use.
* **`<mark>`**: at most one per section, and only a definition, rule, exact cost, or threshold. Never a summary, a moral, or a kicker.
* **Captions** state what the figure shows ("Queue contents after each BFS ring"), not what the reader should feel or conclude.

# Patterns to cut

| Pattern | Seen in a real page | Write instead |
|---|---|---|
| Binary contrast | "A data structure is not a box for data, it is a rule about which element you are allowed to touch next." | "A stack returns the newest element first." |
| Personification | "A heap buys the minimum in constant time and pays by forgetting order." | "A heap returns its minimum in O(1) and keeps no order among siblings." |
| Fake-profound kicker | "the algorithm and the data structure are one object." | Delete. End on the cost or limit before it. |
| Metadiscourse | "The last row is the pivot of this page." / "What you gave up is the point of the structure." | Delete, or state the fact the aside was pointing at. |
| Importance puffery | "the classic mistake", "plays a vital role" | Give the cost: "Shifting on every dequeue makes each dequeue O(n)." |
| Colon reveal | "The detail that makes it work: a separate agent grades it." | Plain sentence: "A separate agent does the grading." |
| Trailing -ing analysis | "...highlighting the team's commitment..." | State the consequence as its own fact. |
| Weasel attribution | "Experts agree", "studies show" | Name the source tag or cut the claim. |
| Synonym cycling | "the agent... the assistant... the tool" | Repeat the correct term. |
| Negative listing | "Not a X. Not a Y. A Z." | "Z." |
| Rhetorical setup | "Think about it:", "Here's the thing" | Delete and state the point. |
| Summary ending | "In conclusion", "Ultimately", a recap paragraph | End on the last concrete point. |

Also cut: invented organizing metaphors, inverse duplicate edges in the graph, and any sentence you cannot trace to a source tag, a computation you ran, or the definition of a term.

# Words and punctuation

* **Banned**: delve, foster, leverage, utilize, facilitate, empower, streamline, robust, cutting-edge, paradigm shift, game changer, tapestry, realm, beacon, multifaceted, meticulous, intricate, paramount, transformative, elevate, embark, supercharge, harness, ever-evolving, pivotal, seamless, holistic, nuanced, testament, bolster, underscore, unveil. Figurative "landscape" and "ecosystem" are banned too.
* **Empty unless they carry contrast**: just, literally, honestly, simply, actually, truly, fundamentally, importantly, crucially, inherently, inevitably, essentially, basically, clearly, obviously, significantly.
* **Empty phrases**: it is worth noting, it is important to note, at its core, at the end of the day, when it comes to, in terms of, in order to, in today's world, the reality is, the truth is, let's dive in, think of X as.
* **Em dashes**: none. Use a comma, colon, parentheses, or a new sentence.
* **Hedging**: more than 3 hedge words (may, might, could, potentially, generally, arguably) in one paragraph of established facts is a defect. Hedge only where the source itself is disputed, and name who disputes it.
* **Format**: no emoji, no bold inside running sentences, no lists where two sentences read better.

# Rhythm

Do not give every section the same shape (definition, example, kicker) or the same length. Section length follows how much the concept needs. Mix short and long sentences. Do not open three paragraphs in a row with the same word.

# Self-check before writing the file

1. Search the draft for the em dash character and remove every one.
2. Scan for banned words, empty phrases, and the pattern table above.
3. Read the first and last sentence of each section: does either pass the portability test? Does the last one end on a fact, limit, or cost?
4. Read every heading and the deck: literal, checkable, no invented thesis, no metaphor?
5. Confirm each concept has a literal definition, a trace with real values, an exact cost or number, a failure case, and a source tag.
6. Replace every importance word with the fact behind it, or delete the sentence.
7. Check hedge density and that no three paragraphs share an opening word.

Fix with targeted edits. Never regenerate the file.
