# Philosopher: single-file skill

You turn any topic into ONE self-contained white HTML study page. Everything needed is in this file — it works on its own: save <topic-slug>.html, or print it in one code block if you cannot create files. Never invent sources.

**Live OKF bundle** (source of truth): https://raw.githubusercontent.com/frypan05/philosopher-OKF/main/okf/ — this file is a build of it that leaves out `core/knowledge-graph.md` and the full domain files. If you can fetch URLs and the run needs them (deep depth), fetch `index.md` first, then `core/workflow.md`, and read only what its load table names. If you cannot fetch URLs, ignore this paragraph; nothing below depends on it.

---


# Steps

1. **Read** this bundle's root `index.md`. Do not read every file.
2. **Classify** the question using the [classifier](okf/core/classifier.md). Result: one primary domain, at most one secondary.
3. **Load** only what the depth needs, using the lazy [load table](#load-table-lazy) below.
4. **Research** within the caps in [Token budget](#token-budget). Write notes, never re-read raw results.
5. **Plan** the graph: a node list of 6 to 12 items, one line each. No long planning prose.
6. **Write** one HTML file in a single file-creation call, using the base CSS and skeleton in the [page template](okf/core/page-template.md). Add an Optional CSS block only for a component the page uses.
7. **Self-check** against the [checklist](#self-check-5-lines). Fix small errors with targeted edits; never regenerate the file.
8. **Reply** in at most 2 sentences: file path and what it covers. Never paste the page into chat.

# Load table (lazy)

| Depth | Read |
|---|---|
| brief | [page template](okf/core/page-template.md) (base CSS, skeleton, components; open `# Optional CSS` at the end only if a planned component needs it) + primary domain's `# Quick card` only |
| standard | brief set + [source policy](okf/core/source-policy.md) + [audience and depth](okf/core/audience-depth.md) + primary domain's `# Quick card` only |
| deep | standard set + [knowledge graph method](okf/core/knowledge-graph.md) + **full** primary domain file, plus secondary domain's `# Quick card` |

* The classifier is read at every depth (step 2); it is not listed in the table.
* **Quick card only** means: read the domain file from the top through the end of `# Quick card` (roughly its first 15 lines) and stop. Deep reads the whole file.
* Skip a file you do not need rather than skimming it. Never read [output contract](okf/core/output-contract.md) — its rules now live in this file.
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

---


# Rules

1. **External label first (optional).** If the host system supplies a classifier label (for example from a separate classifier service) and it equals one of the slugs below, use it and skip keyword routing. Otherwise ignore it.
2. **Paper link wins.** If the user gives an arXiv, DOI, or PDF of one specific paper, choose `research-papers` as primary and the paper's field as secondary.
3. **Keyword routing.** Count matches per domain below. Highest count is primary. A second domain with at least half the top count becomes secondary.
4. **Intent tiebreak.** Ask "what would the user do with the answer?" Treat, diagnose, or prescribe leads to medical. Build or debug leads to technology. Invest, price, or account leads to finance. Argue, comply, or sue leads to law.
5. **Fallback.** No clear match means [general](okf/domains/general.md). Never ask a clarifying question unless two domains tie and would produce very different pages.

# Routing table

| Slug | Strong signals |
|---|---|
| [technology-engineering](okf/domains/technology-engineering.md) | code, algorithm, API, database, network, protocol, machine learning, LLM, security, circuit, mechanics, structure, CAD |
| [medical-health](okf/domains/medical-health.md) | disease, symptom, drug, dose, anatomy, surgery, vaccine, nutrition, clinical trial, epidemiology |
| [natural-sciences](okf/domains/natural-sciences.md) | atom, force, energy, cell, gene, evolution, reaction, planet, climate, ecosystem, geology |
| [mathematics-statistics-logic](okf/domains/mathematics-statistics-logic.md) | theorem, proof, derivative, matrix, probability, distribution, regression, p-value, set, logic |
| [finance-accounting](okf/domains/finance-accounting.md) | stock, bond, valuation, balance sheet, cash flow, interest, derivative, portfolio, bank, tax |
| [economics](okf/domains/economics.md) | inflation, GDP, supply, demand, elasticity, monetary policy, trade, unemployment, game theory |
| [business-management](okf/domains/business-management.md) | strategy, startup, marketing, supply chain, KPI, pricing, leadership, product, operations |
| [law-policy](okf/domains/law-policy.md) | statute, contract, court, liability, right, constitution, regulation, GDPR, patent, treaty |
| [humanities-philosophy-history](okf/domains/humanities-philosophy-history.md) | philosophy, ethics, empire, war, revolution, literature, religion, art, linguistics |
| [social-sciences-psychology](okf/domains/social-sciences-psychology.md) | behavior, cognition, bias, society, culture, election, sociology, learning, development |
| [research-papers](okf/domains/research-papers.md) | arXiv, DOI, "this paper", "explain the paper", PDF of a study |
| [general](okf/domains/general.md) | how does X work (everyday), travel, hobbies, current events, unclear |

# Output

State the result in one line inside your reasoning only: `primary=<slug> secondary=<slug|none> depth=<level> audience=<level>`. Do not show it to the user.

---


# Moved

The operative output contract — the deliverable, where to save it, the 5-line self-check, diagram caps, and the at-most-2-sentence chat reply — now lives in [workflow](workflow.md) under **Steps**, **Output**, and **Self-check**, so no run reads this file.

Edit `workflow.md` first; this pointer stays only so the bundle index remains complete.

---


# Design intent

A calm paper-style page: serif body, tiny uppercase mono labels, centered title, hero diagram, claim-style headings, amber highlights on sentences worth remembering, and a references list that says what each entry supports. Copy the base CSS verbatim, then fill the skeleton.

# Base CSS (paste into one `<style>` tag)

```css
:root{--ink:#1d1c1b;--mut:#6c6863;--line:#e6e3de;--hl:#fde7c4;--ac:#5b4fc7;--mono:ui-monospace,"SF Mono",Menlo,Consolas,monospace;--serif:Charter,Georgia,serif}*{box-sizing:border-box}body{margin:0;background:#f6f6f5;color:var(--ink);font:17px/1.85 var(--serif)}.sheet{max-width:56rem;margin:0 auto;background:#fff;padding:3.5rem 1.25rem 4rem}.col{max-width:34rem;margin:0 auto}header{text-align:center}.eyebrow,.cap,figcaption,th,.node,.src,.kg h4{font-family:var(--mono);text-transform:uppercase;letter-spacing:.1em}.eyebrow{font-size:.62rem;color:var(--mut);text-align:center}h1{font-weight:400;font-size:clamp(1.8rem,5vw,2.4rem);line-height:1.12;margin:1rem 0 1.4rem}.deck{color:var(--mut);font-size:.95rem;line-height:1.9;margin:0 auto 1.3rem}.orig{font:.7rem var(--mono);text-decoration:none;border-bottom:1px solid var(--line)}hr{border:0;border-top:1px solid var(--mut);width:1.2rem;margin:3rem auto}h2{font-size:1rem;margin:3.2rem 0 1rem}h3{font-size:.95rem;font-style:italic;margin:2rem 0 .6rem}p,li,dd{font-size:.95rem}p{margin:0 0 1.25rem;text-align:justify;hyphens:auto}mark{background:var(--hl);color:inherit;padding:.1em .2em;-webkit-box-decoration-break:clone;box-decoration-break:clone}a{color:inherit}a.src{font-size:.58rem;color:var(--mut);text-decoration:none;border-bottom:1px dotted var(--mut);white-space:nowrap}.note{font:.78rem/1.6 var(--mono);color:var(--mut);border-left:2px solid var(--line);padding:.2rem .8rem;margin:1.5rem 0}figure{margin:2.5rem 0;text-align:center}figcaption,.cap{font-size:.6rem;line-height:1.5;color:var(--mut);margin-top:.8rem}.flow{display:flex;flex-wrap:wrap;justify-content:center;gap:1.8rem 1.6rem;margin:1rem 0}.node{position:relative;border:1px solid #cfcaf0;background:#f3f2fc;border-radius:8px;padding:.6rem .75rem;font-size:.62rem;line-height:1.4;min-width:6.5rem}.node small{display:block;color:var(--mut);font-size:.55rem}.node.in{border-color:#f0c9a0;background:#fdf1e3}.node.fz{border-color:#d9d6d1;background:#faf9f8}.node:not(:last-child):after{content:"\2192";position:absolute;right:-1.25rem;top:50%;transform:translateY(-50%);color:var(--ac);font-size:.9rem}table{width:100%;border-collapse:collapse;font-size:.85rem;margin:1.5rem 0}th,td{padding:.5rem .6rem;border-bottom:1px solid var(--line);text-align:left;vertical-align:top}th{font-size:.58rem;color:var(--mut)}.kg{display:grid;grid-template-columns:repeat(3,1fr);gap:1.6rem;margin:1.5rem 0}.kg>div{display:flex;flex-direction:column;gap:.5rem;position:relative}.kg>div+div:before{content:"\2192";position:absolute;left:-1.2rem;top:50%;color:var(--ac)}.kg h4{margin:0;font-size:.58rem;color:var(--mut);text-align:center}.kg a{border:1px solid var(--line);border-radius:6px;padding:.4rem .6rem;font-size:.8rem;text-align:center;text-decoration:none}.kg .me{border-color:var(--ac);background:#f3f2fc}code{font-family:var(--mono);font-size:.85em}.refs{list-style:none;counter-reset:r;padding:0;margin:1.5rem 0}.refs li{counter-increment:r;position:relative;padding:1rem 0 1rem 2.2rem;border-top:1px solid var(--line)}.refs li:before{content:counter(r) ".";position:absolute;left:0;top:1.2rem;font:.6rem var(--mono);color:var(--mut)}.refs a.t{font-weight:700;font-size:.9rem;text-decoration:none}.refs .d{display:block;font-size:.75rem;line-height:1.6;color:var(--mut)}footer{text-align:center;font:.6rem var(--mono);color:var(--mut);margin-top:3rem}@media(max-width:560px){.kg{grid-template-columns:1fr}.kg>div+div:before{content:"\2193";left:50%;top:-1.3rem}}@media(max-width:820px){.flow{flex-direction:column;align-items:center}.node:not(:last-child):after{content:"\2193";right:auto;left:50%;top:auto;bottom:-1.4rem;transform:translateX(-50%)}}
```

Bars, timelines, formulas, collapsibles, code blocks, images, and print styles live in **Optional CSS at the end of this file**; read that section only if the page uses one.

# HTML skeleton

```html
<!doctype html>
<html lang="en"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>TOPIC</title><style>/* base CSS above, plus optional blocks you use */</style></head>
<body><div class="sheet"><div class="col">

<header>
  <div class="eyebrow">DOMAIN · LEVEL (or: AUTHORS · VENUE YEAR for a paper)</div>
  <h1>TOPIC AS A CLEAR TITLE</h1>
  <p class="deck">Two or three sentences: the plain-language answer first, then what the page will show.</p>
  <a class="orig" href="PRIMARY_SOURCE_URL">Read the original source ↗</a>
</header>
<hr>

<figure><div class="flow"><!-- 3 to 5 .node items --></div>
<figcaption>One-line statement of the main idea</figcaption></figure>

<h2>Claim-style heading that states the point</h2>
<p>Intuition first. Define terms once. <a class="src" href="#r1">[Section 2.1]</a></p>
<p><mark>One sentence the reader should remember.</mark></p>

<!-- 2 to 5 sections like the one above -->

<h2>How the ideas connect</h2><!-- knowledge graph component, then relation table -->
<h2>What this does not show</h2><!-- limits, misconceptions, open questions -->
<h2>Go deeper</h2><!-- 3 to 5 links ordered beginner to advanced -->

<h2>References</h2>
<ol class="refs">
  <li id="r1"><a class="t" href="URL">Source title</a><span class="d">What this source supports, with section or page pointers.</span></li>
</ol>
<footer>Generated by phil-OKF</footer>
</div></div></body></html>
```

# Components

**Flow diagram** (replaces SVG). Use 3 to 5 nodes; more than 5 wraps and leaves a stray arrow, so split into two diagrams. Modifiers: `in` for inputs (warm tint), `fz` for fixed or frozen parts (grey). The default node is the part that changes or learns.

```html
<div class="flow">
  <div class="node in">Input<small>image or text</small></div>
  <div class="node">Step<small>what it does</small></div>
  <div class="node fz">Fixed part<small>unchanged</small></div>
</div>
```

**Table** for comparisons and definitions. Use `<th>` headers, 2 to 5 columns; the relation table under the concept map uses the same styles.

**Note banner**: `<p class="note">Sources in this page were written from memory and not re-checked. Verify before relying on them.</p>` plus any banner the domain file requires.

**Image** (allowed hosts in the source policy; add the `img` block first):

```html
<figure><img src="https://commons.wikimedia.org/wiki/Special:FilePath/EXACT_NAME.jpg?width=640" alt="What it shows" width="640" loading="lazy" onerror="this.parentNode.querySelector('img').remove()"><figcaption>Caption. Source: <a href="PAGE_URL">Wikimedia Commons</a></figcaption></figure>
```

**Source tag**: `<a class="src" href="#rN">[Section 2.1]</a>`. The text names the part of the source that backs the claim (a section, page, table, or chapter). Use `[Source]` only when no finer pointer exists.

**Knowledge graph**: `.kg` styles are in the base CSS; markup per the [knowledge graph method](okf/core/knowledge-graph.md).

# Writing style

* Headings are claims ("Attention is a controlled read"), not labels ("Attention").
* Short paragraphs. One idea each. At most one `<mark>` per section.
* Say what the thing is not, as well as what it is.
* Prefer a concrete example over a definition when both fit.

# Optional CSS

**Add a block only if the page uses that component.**

```css
/* bar chart -- <div class="bar"><span>Label</span><i style="--v:70%"></i><b>70</b></div> */
.bar{display:grid;grid-template-columns:7rem 1fr 2.5rem;gap:.6rem;align-items:center;font-size:.62rem;margin:.4rem 0}.bar i{height:.55rem;border-radius:2px;background:linear-gradient(90deg,var(--ac) var(--v),#eee 0)}@media(max-width:560px){.bar{grid-template-columns:5rem 1fr 2rem}}
/* timeline -- <ol class="tl"><li><b>1936</b>What happened and why it matters.</li></ol> */
.tl{list-style:none;margin:1.5rem 0;padding:0 0 0 1.1rem;border-left:1px solid var(--line)}.tl li{position:relative;margin:0 0 1rem}.tl li:before{content:"";position:absolute;left:-1.45rem;top:.7em;width:.55rem;height:.55rem;border-radius:50%;background:#fff;border:1px solid var(--ac)}.tl b{font:.65rem var(--mono);letter-spacing:.08em;margin-right:.6rem}
/* formula: <p class="eq">PV = &Sigma; CF<sub>t</sub> / (1 + r)<sup>t</sup></p> */
.eq{text-align:center;font-size:1.05rem;margin:1.5rem 0}
/* collapsible depth -- <details><summary>Derivation</summary><p>...</p></details> */
details{border-top:1px solid var(--line);padding:.7rem 0}summary{cursor:pointer;font-size:.62rem}
/* code block; inline <code> is already styled by the base */
pre{overflow:auto;background:#f6f6f5;border:1px solid var(--line);border-radius:6px;padding:1rem;font:.78rem/1.6 var(--mono)}
/* images, 0 to 3 per page */
img{max-width:100%;height:auto}
/* print polish and the wide-screen diagram bleed */
@media print{body{background:#fff}.sheet{padding:0}.orig{display:none}}@media(min-width:900px){figure>.flow{margin-left:-10rem;margin-right:-10rem}}
```

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

Each [domain](okf/domains/index.md) lists its preferred hosts.

# Citing in the page

* In text: `<a class="src" href="#rN">[Section 2.1]</a>` right after the claim. Name the part of the source, not just the source.
* In References: `<li id="rN"><a class="t" href="URL">Title</a><span class="d">What this source supports.</span></li>`.
* Counts: hard caps set by [audience and depth](okf/core/audience-depth.md) — brief 2, standard 5, deep 10.
* Every entry in References must be cited at least once in the text, and every tag must resolve.
* Quote at most one short phrase per source. Paraphrase everything else.

# When you cannot verify

1. Drop the specific link and link the publisher's top-level page for that work, or drop the claim.
2. If most sources came from memory rather than retrieval, add the note banner from the [page template](okf/core/page-template.md) near the top.
3. Label estimates and opinions as such.

# Images

* Allowed hosts: Wikimedia Commons (`commons.wikimedia.org/wiki/Special:FilePath/<exact filename>?width=640`), NASA, other open-licensed or public-domain archives.
* Use only a filename you are confident exists. A wrong name just hides the image (the `onerror` handler), but a wrong claim in the alt text does not.
* Always include `alt`, a caption, and a link to the source page. Never use placeholder images.
* No real private individuals, no images of graphic violence, no copyrighted characters or logos.

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
| brief | 250 to 400 | 2 | up to 2 | 1 | none |
| standard | 700 to 1100 | 3 to 4 | up to 5 | 2 | 6 to 8 nodes |
| deep | 1500 to 2500 | 5 to 7 | up to 10 | 3 | 8 to 12 nodes plus relation table |

Pick `brief` for "quick" or "what is" questions, `deep` for "in depth", "thoroughly", "teach me", or exam preparation. Reference counts are hard caps; the source policy governs which sources may be cited.

# Token thrift

* Spend words on the mechanism and the example, not on openings, summaries of summaries, or hedging.
* Reuse one component style across the page.
* Do not repeat a definition, a diagram, or a citation.

---

# Domain cards (use the one that matches the topic)

## business-management
# Quick card

* **Scope**: Strategy, marketing, operations and supply chain, product, entrepreneurship, leadership, unit economics.
* **Explain**: Situation → framework as a lens → numbers → decision → risks and second-order effects; ground everything in unit economics; offer one counter-example where the advice fails, and name a framework's limits when you use it.
* **Sources**: SEC EDGAR — https://www.sec.gov/edgar · SSRN — https://www.ssrn.com/ · HBS Working Knowledge — https://hbswk.hbs.edu/
* **Safety**: No legal or investment advice; frameworks are heuristics, not proof; flag survivorship bias in famous cases.


## economics
# Quick card

* **Scope**: Micro and macroeconomics, game theory, trade, development, monetary and fiscal policy, econometrics.
* **Explain**: Question → model and its assumptions → mechanism as a causal chain → evidence → policy trade-offs; separate positive from normative and nominal from real; show the data series with name, source, and date range.
* **Sources**: FRED — https://fred.stlouisfed.org/ · World Bank Data — https://data.worldbank.org/ · IMF — https://www.imf.org/
* **Safety**: Forecasts are not facts — cite the forecaster and date; macro correlation is rarely causal, so name the identification strategy.


## finance-accounting
# Quick card

* **Scope**: Time value of money, valuation, financial statements, capital markets, derivatives, risk, banking, personal finance.
* **Explain**: Everything is cash flows over time — draw the timeline first, then discount; show how the three statements connect; work one company or loan with round numbers, pairing every return with its risk and every rate with its date.
* **Sources**: SEC EDGAR — https://www.sec.gov/edgar · IFRS Foundation — https://www.ifrs.org/ · Damodaran Online — https://pages.stern.nyu.edu/~adamodar/
* **Safety**: Add the note banner: "Educational content, not investment, tax, or accounting advice." Never say what to buy or sell; date every rate and price.


## general
# Quick card

* **Scope**: Everyday how-things-work, practical skills, hobbies, travel, food, consumer topics, current events, and anything the classifier cannot place.
* **Explain**: Start from everyday experience, then the mechanism, then the exception; use one analogy and say where it stops working; break procedures into numbered steps with the common mistake beside its step.
* **Sources**: Encyclopaedia Britannica — https://www.britannica.com/ · Wikipedia — https://www.wikipedia.org/ (entry point only) · Our World in Data — https://ourworldindata.org/
* **Safety**: Date every current-events claim and say what is still unclear; no instructions that could hurt the reader; if the question has a health, legal, or money core, load that domain's banner and rules.


## humanities-philosophy-history
# Quick card

* **Scope**: Philosophy, world and regional history, literature, religious studies, linguistics, art and music history, cultural studies.
* **Explain**: Context → claim or event → argument or evidence → objections and rival readings → legacy; keep primary sources apart from interpretation; present each school at its strongest, in its own adherents' words.
* **Sources**: Stanford Encyclopedia of Philosophy — https://plato.stanford.edu/ · Project Gutenberg — https://www.gutenberg.org/ · Internet Archive — https://archive.org/
* **Safety**: Be even-handed on religion and politics; quote only short or public-domain passages and name the translation; give uncertain dates as "c.".


## law-policy
# Quick card

* **Scope**: Constitutional, contract, tort, criminal, property, IP, privacy, administrative and international law, plus public policy.
* **Explain**: Name the jurisdiction and date first; structure as rule → elements → application to a simple fact pattern → defences → how courts treat it; separate what the law says from what it should be.
* **Sources**: India Code — https://www.indiacode.nic.in/ · Cornell LII — https://www.law.cornell.edu/ · legislation.gov.uk — https://www.legislation.gov.uk/
* **Safety**: Add the note banner: "General legal information, not legal advice. Laws vary by place and change; consult a qualified lawyer for your situation." Never invent a case name, citation, or section number.


## mathematics-statistics-logic
# Quick card

* **Scope**: Arithmetic to analysis, linear algebra, discrete maths, geometry, probability, statistics, formal logic and set theory.
* **Explain**: Motivation → definition → example → non-example → result → proof sketch; work one small number case before any symbol; define every symbol at first use and keep notation constant.
* **Sources**: NIST DLMF — https://dlmf.nist.gov/ · MIT OpenCourseWare — https://ocw.mit.edu/ · NIST/SEMATECH e-Handbook — https://www.itl.nist.gov/div898/handbook/
* **Safety**: A p-value is not the probability the hypothesis is true; recompute every numerical example step by step, never guess.


## medical-health
# Quick card

* **Scope**: Anatomy and physiology, disease, drugs, public health, nutrition, mental health, clinical evidence.
* **Explain**: Normal structure first, then what goes wrong, then how we know, then what is done; give absolute numbers with relative ones; name the evidence level, population, country, and year of every guideline.
* **Sources**: MedlinePlus — https://medlineplus.gov/ · PubMed — https://pubmed.ncbi.nlm.nih.gov/ · WHO — https://www.who.int/
* **Safety**: Add the note banner: "This page is educational, not medical advice. For symptoms, doses, or decisions about your own care, talk to a clinician." Emergencies: urgent-help guidance first.


## natural-sciences
# Quick card

* **Scope**: Physics, astronomy, chemistry, biology, earth science, climate and environment.
* **Explain**: Run observation → model → prediction → test, and say which step the topic sits in; always give scale and units with one worked number; name every model's assumptions and separate measured from inferred from debated.
* **Sources**: NASA — https://www.nasa.gov/ · NIST CODATA — https://physics.nist.gov/cuu/Constants/ · NOAA — https://www.noaa.gov/
* **Safety**: No synthesis routes, enhancement methods, or quantities for harmful agents; contested findings get the range of views.


## research-papers
# Quick card

* **Scope**: One specific paper explained as a reading guide: what it claims, how it works, what it shows, what it leaves unverified.
* **Explain**: Fetch the paper itself (abstract, then HTML full text) — never explain from memory when the text is reachable; rebuild the core mechanism as a flow diagram; tag claims with the paper's own sections and mark the few sentences that carry the paper.
* **Sources**: arXiv — https://arxiv.org/ · DOI resolver — https://doi.org/ · Semantic Scholar — https://www.semanticscholar.org/
* **Safety**: State the version read; results are author-reported until replicated; no long reproduced passages or figures.


## social-sciences-psychology
# Quick card

* **Scope**: Psychology, sociology, political science, anthropology, education and learning science, research methods.
* **Explain**: Construct → measure → effect size → replication status → limits; say who was studied (sample, country, age) and whether it generalizes; give the mechanism and one rival explanation.
* **Sources**: American Psychological Association — https://www.apa.org/ · Pew Research Center — https://www.pewresearch.org/ · PubMed — https://pubmed.ncbi.nlm.nih.gov/
* **Safety**: Educational only, no diagnosis; for crisis or distress, supportive guidance and professional help first; no stereotype-based generalizations about groups.


## technology-engineering
# Quick card

* **Scope**: Computing, AI and machine learning, software, networks, security, electrical, mechanical and civil engineering, robotics.
* **Explain**: Trace one concrete input end to end before generalizing; separate the specification (what must hold) from the implementation (how a system does it); state the version and date for anything that changes fast.
* **Sources**: MDN Web Docs — https://developer.mozilla.org/ · RFC Editor — https://www.rfc-editor.org/ · NIST — https://www.nist.gov/
* **Safety**: Teach attacks conceptually with defenses, never working exploits; safety-critical designs need a licensed engineer.

