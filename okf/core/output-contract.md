---
type: Skill Contract
title: Output contract
description: What the model must produce, where it saves it, and the checklist run before finishing.
tags: [core, contract]
status: draft
stale_after: 2027-04-08T00:00:00Z
---

# The deliverable

* **One file**: `<topic-slug>.html`. Lowercase, hyphens, under 50 characters.
* **Self-contained**: HTML plus inline CSS. JavaScript only if the topic cannot be taught without it (default: none).
* **White mode only**: white sheet on a very light grey page. No dark mode, no `prefers-color-scheme`.
* **Minimal and centered**: one reading column about 34rem wide, inside a sheet about 56rem wide.
* **Token-lean**: no SVG, no canvas, no frameworks, no web fonts, no icon libraries. Draw with HTML and CSS using the components in the [page template](/core/page-template.md).
* **Images**: 0 to 3, only when seeing the thing teaches something text and CSS cannot (a person, place, specimen, device, map). Rules in [source policy](/core/source-policy.md).

# Where to save

1. `/mnt/user-data/outputs/<slug>.html` if that directory exists.
2. Otherwise `./philosopher-output/<slug>.html` in the working directory.
3. If the model cannot write files, print the whole HTML in one code block and say so in one line.

# Chat reply

Two sentences at most: the file path, and what the page covers. If sources could not be verified, add one sentence saying so.

# Checklist before finishing

- [ ] Valid HTML5, `lang`, `meta viewport`, `<title>`.
- [ ] White background; text contrast is high.
- [ ] Every non-obvious claim has a `[Section]`-style source tag that links to an entry in References.
- [ ] No invented URL, DOI, author, or quote. Doubtful links are removed.
- [ ] Each term is defined at first use.
- [ ] At least one visual or worked example, unless the topic is purely verbal.
- [ ] A "what this does not show" or limits section is present (standard and deep).
- [ ] File opens with no network except optional images, and a broken image hides itself.
- [ ] Reads correctly at 375 px wide and prints cleanly.
