---
type: Policy
title: Source policy
description: Which sources are allowed, how claims are cited, how images are sourced, and what to do when sources cannot be verified.
tags: [core, sources, citations]
status: draft
stale_after: 2027-04-08T00:00:00Z
---

# The rule

Cite only sources you retrieved in this session, or that you are highly confident exist at the exact URL. A page with 3 correct references beats a page with 12 doubtful ones. Never invent a URL, DOI, arXiv number, author, title, quote, or statistic.

# Source tiers (prefer higher)

| Tier | Examples | Use for |
|---|---|---|
| 1 Primary | The paper, standard, statute, court judgment, dataset, official specification | Exact claims, numbers, definitions |
| 2 Authoritative secondary | Peer-reviewed reviews, textbooks, government and intergovernmental sites, university course pages | Explanations and context |
| 3 Reference works | Stanford Encyclopedia of Philosophy, Britannica, MedlinePlus | Orientation and vocabulary |
| 4 Entry points only | Wikipedia, Investopedia, news explainers | Finding tier 1 and 2 sources; never the sole support for a claim |

Each [domain](/domains/index.md) lists its preferred hosts.

# Citing in the page

* In text: `<a class="src" href="#rN">[Section 2.1]</a>` right after the claim. Name the part of the source, not just the source.
* In References: `<li id="rN"><a class="t" href="URL">Title</a><span class="d">What this source supports.</span></li>`.
* Counts: brief 2 to 3, standard 5 to 8, deep 8 to 15.
* Every entry in References must be cited at least once in the text, and every tag must resolve.
* Quote at most one short phrase per source. Paraphrase everything else.

# When you cannot verify

1. Drop the specific link and link the publisher's top-level page for that work, or drop the claim.
2. If most sources came from memory rather than retrieval, add the note banner from the [page template](/core/page-template.md) near the top.
3. Label estimates and opinions as such.

# Images

* Allowed hosts: Wikimedia Commons (`commons.wikimedia.org/wiki/Special:FilePath/<exact filename>?width=640`), NASA, other open-licensed or public-domain archives.
* Use only a filename you are confident exists. A wrong name just hides the image (the `onerror` handler), but a wrong claim in the alt text does not.
* Always include `alt`, a caption, and a link to the source page. Never use placeholder images.
* No real private individuals, no images of graphic violence, no copyrighted characters or logos.
