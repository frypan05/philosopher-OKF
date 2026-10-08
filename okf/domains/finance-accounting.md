---
type: Study Domain
title: Finance and accounting
description: Markets, valuation, financial statements, risk, banking and personal finance.
tags: [domain, finance, accounting, markets]
status: draft
stale_after: 2027-04-08T00:00:00Z
---

# Quick card

* **Scope**: Time value of money, valuation, financial statements, capital markets, derivatives, risk, banking, personal finance.
* **Explain**: Everything is cash flows over time — draw the timeline first, then discount; show how the three statements connect; work one company or loan with round numbers, pairing every return with its risk and every rate with its date.
* **Sources**: SEC EDGAR — https://www.sec.gov/edgar · IFRS Foundation — https://www.ifrs.org/ · Damodaran Online — https://pages.stern.nyu.edu/~adamodar/
* **Safety**: Add the note banner: "Educational content, not investment, tax, or accounting advice." Never say what to buy or sell; date every rate and price.

# Scope

Time value of money, valuation, financial statements and accounting standards, capital markets, derivatives, portfolio theory, corporate finance, banking and credit, personal finance, taxation basics.

# How to explain it here

* Everything is **cash flows over time**. Draw the timeline first, then discount.
* Show how the **three statements connect**: income statement into retained earnings, balance sheet at a date, cash flow explaining the change in cash.
* Work **one company or one loan** with round numbers end to end.
* Pair every return with its **risk**; pair every rate with its **date**.
* Say which **standard and jurisdiction** applies (IFRS, US GAAP, Ind AS; SEC, SEBI, RBI).

# Visuals that work in HTML and CSS

| Need | Component |
|---|---|
| Cash-flow timeline | `.tl` with amounts in `<b>` |
| Statement structure | table with subtotal rows |
| Waterfall (revenue to net profit) | `.bar` rows, one per step |
| Money flow between parties | `.flow` nodes |
| Present value | `.eq`: PV = Σ CF<sub>t</sub> / (1 + r)<sup>t</sup>, then a numeric example |

# Preferred sources

| Host | URL | Best for |
|---|---|---|
| Investor.gov (SEC) | https://www.investor.gov/ | Investor education |
| SEC EDGAR | https://www.sec.gov/edgar | Company filings (primary) |
| IFRS Foundation | https://www.ifrs.org/ | International accounting standards |
| FASB | https://www.fasb.org/ | US GAAP |
| Bank for International Settlements | https://www.bis.org/ | Banking and market structure |
| IMF | https://www.imf.org/ | Global financial stability |
| Federal Reserve | https://www.federalreserve.gov/ | US monetary and banking data |
| Reserve Bank of India | https://www.rbi.org.in/ | Indian banking and rates |
| SEBI | https://www.sebi.gov.in/ | Indian securities regulation |
| Damodaran Online | https://pages.stern.nyu.edu/~adamodar/ | Valuation data and notes |
| CFA Institute | https://www.cfainstitute.org/ | Professional curriculum material |

# Pitfalls and safety

* Add the note banner: "Educational content, not investment, tax, or accounting advice."
* Do not tell the reader what to buy or sell, or predict prices. Explain how to evaluate, and what the risks are.
* Rates, prices, and tax rules go stale: state the date or say "check the current figure at <source>".
* Past returns do not predict future returns; say so when returns appear.

# Graph seeds

| Concept | Needs first | Leads to |
|---|---|---|
| Present value | interest, time | bond pricing, DCF valuation |
| Balance sheet | assets, liabilities, equity | ratios, leverage, solvency |
| Diversification | variance, correlation | portfolio theory, CAPM |
| Option | payoff, underlying asset | Black-Scholes, hedging |
| Bank run | fractional reserve, liquidity | deposit insurance, central banks |

# Related domains

[Economics](/domains/economics.md) · [Business and management](/domains/business-management.md) · [Mathematics, statistics and logic](/domains/mathematics-statistics-logic.md)
