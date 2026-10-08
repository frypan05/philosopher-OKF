---
type: UI Template
title: Page template
description: Research-paper UI: minified base CSS, HTML skeleton, CSS-only diagram components, and an Optional CSS section at the end for lazy reads.
tags: [core, ui, html, css]
status: draft
stale_after: 2027-04-08T00:00:00Z
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
<footer>Generated by Philosopher</footer>
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

**Knowledge graph**: `.kg` styles are in the base CSS; markup per the [knowledge graph method](/core/knowledge-graph.md).

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
