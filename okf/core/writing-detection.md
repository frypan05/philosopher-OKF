---
type: Reference
title: Writing detection
description: Word lists, phrase lists, heading anti-patterns, and structural thresholds that mark generic AI prose, with exclusion zones so technical terms and code are not flagged. Read at deep depth for the final self-check.
tags: [core, writing, detection]
status: draft
stale_after: 2027-04-08T00:00:00Z
---

Condensed from the AI writing detection reference in realrossmanngroup/no_ai_slop_writing_rules, which compiles published detector research. The thresholds are heuristics for your own self-check, not scores. Use them to find sentences to fix, then fix them with facts from [writing rules](/core/writing-rules.md).

# Overused verbs

| Avoid | Use |
|---|---|
| delve into | examine, look at |
| leverage, utilize | use |
| facilitate | help, enable |
| foster | encourage, develop |
| bolster | strengthen |
| underscore | stress, show |
| unveil | show, introduce |
| navigate (figurative) | handle, work through |
| streamline | simplify |
| optimise, enhance | improve |
| endeavour | try |
| ascertain | find out |
| elucidate | explain |

# Overused adjectives and metaphorical nouns

| Avoid | Use |
|---|---|
| robust | strong, reliable, or the measured property |
| comprehensive | complete, full, or list what it covers |
| pivotal, crucial, vital | key, or state the consequence |
| transformative, groundbreaking, innovative | new, or say what changed |
| cutting-edge | recent, with the year |
| seamless | smooth, or state what is automatic |
| intricate, nuanced, multifaceted | complex, or name the parts |
| holistic | whole, complete |

Metaphorical nouns used for false weight: tapestry, symphony, beacon, realm, testament, landscape, ecosystem. Literal uses (a woven tapestry, a Beethoven symphony, "Apple's software ecosystem" as a named product family) are fine.

# Transitions and connectors

| Avoid | Use |
|---|---|
| furthermore, moreover | also, and |
| notwithstanding | despite, even so |
| that being said | but, still |
| at its core | state the core fact directly |
| to put it simply | delete, then say it simply |
| it is worth noting that | delete |
| in the realm of, in the landscape of | in |
| in today's [anything] | now, today, or give the year |

# Phrases that signal stock prose

* **Openers**: "In today's fast-paced world", "In an era of", "In the ever-evolving landscape of", "Let's delve into", "Imagine a world where".
* **Transitions**: "With that in mind", "It's worth mentioning that", "In essence", "This begs the question".
* **Closers**: "In conclusion", "To sum up", "In the final analysis", "All things considered", "At the end of the day".
* **Structures**: "Whether you're a X, Y, or Z"; "It's not just X, it's also Y"; "Think of X as [elaborate metaphor]"; sentences opening with "By" plus a gerund ("By understanding X, you can Y").
* **Inflated symbolism**: "provide a valuable insight", "left an indelible mark", "play a significant role in shaping", "an unwavering commitment", "open a new avenue", "a stark reminder", "gain a comprehensive understanding", "serves as a testament", "watershed moment", "deeply rooted".
* **Academic filler**: shed light on, pave the way for, a myriad of, a plethora of, pertaining to, in light of, with respect to, in terms of, the fact that.

# Empty intensifiers

absolutely, actually, basically, certainly, clearly, definitely, essentially, extremely, fundamentally, incredibly, interestingly, naturally, obviously, quite, really, significantly, simply, surely, truly, ultimately, undoubtedly, very. Cut each one, or replace it with the number it stood in for.

# Heading anti-patterns

Headings describe the section. They do not tease it.

| Pattern | Bad | Better |
|---|---|---|
| The [Concept] Trap | "The Initialization Trap" | "Import versus initialize: what each does to RAID metadata" |
| The [Adjective] [Noun] | "The Hidden Danger" | "Firmware corruption after sudden power loss" |
| Why [Action] [Dramatic Verb] [Object] | "Why Rebuilding Destroys Everything" | "How a forced rebuild overwrites parity on a degraded array" |
| [Noun]: The [Adjective] [Noun] | "Encryption: The Hidden Trap" | "Hardware AES-256 on WD Passport bridge boards" |
| Personified verb | "A heap pays by forgetting order" | "Binary heap: O(1) minimum, no order among siblings" |

Check: remove a leading "The" and see whether a dramatic noun pair remains. Ask whether the heading could be a clickbait thumbnail. A good heading reads like an entry in a technical manual index.

# Hedging

Models hedge several times more than human experts, including on established facts. Markers: may, might, could, potentially; I think, it seems; probably, generally, usually, arguably; "further research is needed".

* More than 3 hedges in one paragraph needs scrutiny.
* More than 8 per 1,000 words in sections that state settled facts (definitions, costs, history) is a defect.
* Hedge where the source is disputed or the matter is pending, and ground it: "A 2024 survey of 12 systems found..." not "it is widely acknowledged that X may potentially...".

# Structural patterns

| Signal | Threshold |
|---|---|
| Uniform paragraph length | All paragraphs in a section within 15% of each other in word count |
| Uniform sentence length | A 500-word block with no sentence under 8 words or over 30 |
| Transition density | More than 30% of paragraphs open with a transition word or adverbial |
| Opening-word repetition | 3 or more consecutive paragraphs starting with the same word or pattern |
| Flat pacing | Introduction, body, and conclusion with near-identical sentence-length variance |
| Contrasting parallelism | More than 2 "It's not X, it's Y" shapes in 500 words |
| Fixed section order | Every section follows the same definition, example, kicker shape |
| Excess bold | Bold on concepts or product names throughout running text |

Exempt by design: tables, code blocks, reference descriptions, and the relation table.

# Artifacts that prove unedited model output

If any of these strings appears in the page, remove it: `oaicite`, `contentReference`, `grok_card`, `attributableIndex`, `turn0search0`, and any leftover citation placeholder or tool markup.

# False-positive prevention

* **Exclusion zones.** Do not flag direct quotes from cited sources, titles, names, verbatim values from a source, or code shown as an example.
* **Technical meaning.** A banned word next to a named entity, a date, or a number is probably technical ("a comprehensive audit by the FTC in 2024"). Flag it less. A banned word beside abstract nouns is filler ("a comprehensive examination of the issues").
* **Literal versus figurative.** "Navigate the website" and "an Arizona landscape" are literal. "Navigate the regulatory process" and "the regulatory landscape" are figurative. Flag only the figurative use.
* **Domain terms.** Words such as tree, heap, stack, queue, kernel, and bridge are the subject matter, not metaphors.

# Self-check

1. Read the page aloud. Rewrite phrases nobody would say to a colleague.
2. Look for clusters of the listed words, not single hits.
3. Vary sentence and paragraph length where the thresholds above are tripped.
4. Verify each intensifier adds meaning, or cut it.
5. Count hedges per paragraph.
6. Search for the artifact strings.
7. Confirm the introduction, body, and closing differ in pacing.
