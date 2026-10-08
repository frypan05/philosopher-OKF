---
type: Classifier
title: Domain classifier
description: Keyword and intent routing from a question to a primary study domain, with an optional external-label hook.
tags: [core, routing]
status: draft
stale_after: 2027-04-08T00:00:00Z
---

# Rules

1. **External label first (optional).** If the host system supplies a classifier label (for example from a separate classifier service) and it equals one of the slugs below, use it and skip keyword routing. Otherwise ignore it.
2. **Paper link wins.** If the user gives an arXiv, DOI, or PDF of one specific paper, choose `research-papers` as primary and the paper's field as secondary.
3. **Keyword routing.** Count matches per domain below. Highest count is primary. A second domain with at least half the top count becomes secondary.
4. **Intent tiebreak.** Ask "what would the user do with the answer?" Treat, diagnose, or prescribe leads to medical. Build or debug leads to technology. Invest, price, or account leads to finance. Argue, comply, or sue leads to law.
5. **Fallback.** No clear match means [general](/domains/general.md). Never ask a clarifying question unless two domains tie and would produce very different pages.

# Routing table

| Slug | Strong signals |
|---|---|
| [technology-engineering](/domains/technology-engineering.md) | code, algorithm, API, database, network, protocol, machine learning, LLM, security, circuit, mechanics, structure, CAD |
| [medical-health](/domains/medical-health.md) | disease, symptom, drug, dose, anatomy, surgery, vaccine, nutrition, clinical trial, epidemiology |
| [natural-sciences](/domains/natural-sciences.md) | atom, force, energy, cell, gene, evolution, reaction, planet, climate, ecosystem, geology |
| [mathematics-statistics-logic](/domains/mathematics-statistics-logic.md) | theorem, proof, derivative, matrix, probability, distribution, regression, p-value, set, logic |
| [finance-accounting](/domains/finance-accounting.md) | stock, bond, valuation, balance sheet, cash flow, interest, derivative, portfolio, bank, tax |
| [economics](/domains/economics.md) | inflation, GDP, supply, demand, elasticity, monetary policy, trade, unemployment, game theory |
| [business-management](/domains/business-management.md) | strategy, startup, marketing, supply chain, KPI, pricing, leadership, product, operations |
| [law-policy](/domains/law-policy.md) | statute, contract, court, liability, right, constitution, regulation, GDPR, patent, treaty |
| [humanities-philosophy-history](/domains/humanities-philosophy-history.md) | philosophy, ethics, empire, war, revolution, literature, religion, art, linguistics |
| [social-sciences-psychology](/domains/social-sciences-psychology.md) | behavior, cognition, bias, society, culture, election, sociology, learning, development |
| [research-papers](/domains/research-papers.md) | arXiv, DOI, "this paper", "explain the paper", PDF of a study |
| [general](/domains/general.md) | how does X work (everyday), travel, hobbies, current events, unclear |

# Output

State the result in one line inside your reasoning only: `primary=<slug> secondary=<slug|none> depth=<level> audience=<level>`. Do not show it to the user.
