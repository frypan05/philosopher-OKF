---
type: Study Domain
title: Technology and engineering
description: Computing, AI and machine learning, software, networks, security, and electrical, mechanical and civil engineering.
tags: [domain, technology, engineering, cs, ai]
status: draft
stale_after: 2027-04-08T00:00:00Z
---

# Scope

Computer science (algorithms, data structures, operating systems, databases, networks, distributed systems), software engineering, AI and machine learning including LLMs, cybersecurity, electronics and electrical engineering, mechanical, civil and materials engineering, robotics.

# How to explain it here

* Trace **one concrete input end to end** (a request, a packet, a training example, a load on a beam) before generalizing.
* Separate the **specification** (what must hold) from the **implementation** (how a given system does it).
* Give every design a **trade-off table**: what it gains, what it costs, when it fails.
* State **version and date** for anything that changes fast (frameworks, models, standards).
* Show code only when it teaches: at most 15 lines in `<pre><code>`, runnable, commented sparingly.
* Engineering topics: units on every number, a worked calculation, and the safety factor or margin.

# Visuals that work in HTML and CSS

| Need | Component |
|---|---|
| Pipeline, request path, architecture | `.flow` nodes |
| Layers (OSI, OS stack, ML stack) | stacked table rows |
| Complexity or latency comparison | `.bar` rows (use a log note if values span orders of magnitude) |
| Version history, protocol evolution | `.tl` timeline |
| Trade-offs | table with Pros / Cons / Use when |

# Preferred sources

| Host | URL | Best for |
|---|---|---|
| MDN Web Docs | https://developer.mozilla.org/ | Web platform, HTML, CSS, JS |
| RFC Editor | https://www.rfc-editor.org/ | Internet protocol standards |
| W3C | https://www.w3.org/ | Web standards |
| NIST | https://www.nist.gov/ | Security, cryptography, measurement standards |
| arXiv | https://arxiv.org/ | AI, systems, and CS papers |
| ACM Digital Library | https://dl.acm.org/ | Peer-reviewed computing research |
| IEEE Xplore | https://ieeexplore.ieee.org/ | Electrical, electronics, and computing standards and papers |
| OWASP | https://owasp.org/ | Application security guidance |
| MIT OpenCourseWare | https://ocw.mit.edu/ | University course notes |
| Python documentation | https://docs.python.org/ | Language and library reference (any official language docs similarly) |
| Linux kernel documentation | https://docs.kernel.org/ | OS internals |

# Pitfalls and safety

* Benchmarks depend on hardware and setup; name the setup or say it is unknown.
* Explain attacks conceptually and give defenses. Do not write working exploits, malware, or step-by-step intrusion instructions.
* Safety-critical engineering (structures, medical devices, electrical mains, pressure vessels): teach principles, point to the governing code or standard, and say a licensed engineer must sign off real designs.

# Graph seeds

| Concept | Needs first | Leads to |
|---|---|---|
| Hash table | array, hash function | caches, databases, deduplication |
| TCP/IP stack | packets, addressing | HTTP, TLS, CDNs |
| Transformer | vectors, attention, gradient descent | LLMs, retrieval, agents |
| CPU | transistor, logic gate | pipelining, caches, parallelism |
| Beam bending | stress, strain, moment | structural design, bridges |

# Related domains

[Mathematics, statistics and logic](/domains/mathematics-statistics-logic.md) · [Natural sciences](/domains/natural-sciences.md) · [Research papers](/domains/research-papers.md)
