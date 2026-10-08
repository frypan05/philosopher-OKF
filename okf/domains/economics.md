---
type: Study Domain
title: Economics
description: Microeconomics, macroeconomics, trade, development, public policy and econometrics.
tags: [domain, economics, policy, macro, micro]
status: draft
stale_after: 2027-04-08T00:00:00Z
---

# Scope

Consumer and firm choice, markets and market failure, game theory, national accounts, inflation, unemployment, growth, monetary and fiscal policy, international trade, development, labour, behavioral and institutional economics, econometrics.

# How to explain it here

* Order: **question**, **model and its assumptions**, **mechanism as a causal chain**, **evidence**, **policy trade-offs**.
* Mark **positive** claims (what is) separately from **normative** ones (what should be).
* Distinguish **nominal** from **real**, **level** from **rate of change**, **short run** from **long run**.
* On contested questions, give the **strongest version of each school** and the empirical disputes. Do not pick a side on live political questions.
* Show the **data series** (name, source, date range), not just the conclusion.

# Visuals that work in HTML and CSS

| Need | Component |
|---|---|
| Causal chain (rate rise to investment to output) | `.flow` with ↑ and ↓ in node text |
| Supply and demand shifts | table: shock / curve that shifts / direction / effect on price and quantity |
| Country or period comparison | `.bar` rows |
| Policy history | `.tl` timeline |
| Game theory | 2 × 2 payoff table with the equilibrium cell highlighted by `<mark>` |

# Preferred sources

| Host | URL | Best for |
|---|---|---|
| FRED (St. Louis Fed) | https://fred.stlouisfed.org/ | Time series, with series IDs |
| World Bank Data | https://data.worldbank.org/ | Country indicators |
| IMF | https://www.imf.org/ | Outlooks, country reports |
| OECD | https://www.oecd.org/ | Advanced-economy statistics and policy |
| NBER | https://www.nber.org/ | Working papers |
| RePEc / IDEAS | https://ideas.repec.org/ | Economics paper index |
| BLS | https://www.bls.gov/ | US labour and prices |
| BEA | https://www.bea.gov/ | US national accounts |
| Our World in Data | https://ourworldindata.org/ | Long-run charts with sources |
| Reserve Bank of India | https://www.rbi.org.in/ | Indian monetary data |
| MoSPI | https://mospi.gov.in/ | Indian official statistics |

# Pitfalls and safety

* Models are simplifications; list the assumption that, if dropped, changes the answer.
* Correlation in macro data is rarely causal; say which identification strategy (natural experiment, instrument, randomization) backs a causal claim.
* Statistics get revised; give the vintage or date.
* Do not give forecasts as facts. Cite the forecaster and the date.

# Graph seeds

| Concept | Needs first | Leads to |
|---|---|---|
| Elasticity | demand curve, percentage change | pricing, tax incidence |
| Inflation | price index, money | interest rates, real wages |
| GDP | national accounts | growth, comparison, limits of GDP |
| Comparative advantage | opportunity cost | trade policy, specialization |
| Nash equilibrium | payoffs, strategies | auctions, cartels, bargaining |

# Related domains

[Finance and accounting](/domains/finance-accounting.md) · [Social sciences and psychology](/domains/social-sciences-psychology.md) · [Law and policy](/domains/law-policy.md)
