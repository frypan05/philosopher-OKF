---
type: Study Domain
title: Mathematics, statistics and logic
description: Proof, calculus, algebra, discrete maths, probability, statistics and formal logic.
tags: [domain, math, statistics, logic, probability]
status: draft
stale_after: 2027-04-08T00:00:00Z
---

# Scope

Arithmetic to analysis, linear algebra, discrete mathematics, number theory, geometry, probability, statistics and data analysis, formal logic and set theory.

# How to explain it here

* Order: **motivation** (what problem forced this idea), **definition**, **example**, **non-example**, **result**, **proof sketch**, **use**.
* Work **one small number case** before any general symbol.
* Say what every symbol means the first time it appears; keep notation constant.
* Put long proofs and derivations in `<details>` and keep the claim and intuition in the open.
* For statistics: state the **question**, the **model**, the **assumptions**, the **result with uncertainty**, and the **plain-language reading**.

# Visuals that work in HTML and CSS

| Need | Component |
|---|---|
| Distribution or histogram | a row of `div`s with `height` set by `--v` (flex, align-items:end) |
| Step-by-step algebra | table with Step / Work / Reason columns |
| Number line, intervals | flex row with positioned ticks |
| Proof structure | `.flow` from hypotheses to conclusion |
| Formulae | MathML `<math>` or `.eq` with Unicode, `<sub>`, `<sup>` |

# Preferred sources

| Host | URL | Best for |
|---|---|---|
| NIST Digital Library of Mathematical Functions | https://dlmf.nist.gov/ | Special functions, formulas |
| NIST/SEMATECH e-Handbook of Statistical Methods | https://www.itl.nist.gov/div898/handbook/ | Applied statistics |
| MIT OpenCourseWare | https://ocw.mit.edu/ | Lecture notes and problem sets |
| Stanford Encyclopedia of Philosophy | https://plato.stanford.edu/ | Logic and foundations |
| OEIS | https://oeis.org/ | Integer sequences |
| Wolfram MathWorld | https://mathworld.wolfram.com/ | Definitions and results (check against a second source) |
| nLab | https://ncatlab.org/ | Category theory and higher maths |
| arXiv (math, stat) | https://arxiv.org/ | Research papers |
| Khan Academy | https://www.khanacademy.org/ | School and early undergraduate |

# Pitfalls and safety

* A p-value is not the probability the hypothesis is true. A confidence interval is not a 95% chance the parameter lies in this one interval.
* Correlation is not causation; say what design would support a causal claim.
* Notation differs between textbooks (for example the meaning of ⊂); state which convention you use.
* Numerical examples must be recomputed, not guessed. If you cannot execute code, do the arithmetic step by step and show it.

# Graph seeds

| Concept | Needs first | Leads to |
|---|---|---|
| Derivative | function, limit | optimization, differential equations |
| Matrix | vectors, linear maps | eigenvalues, PCA, neural networks |
| Conditional probability | sample space, events | Bayes' rule, inference |
| Hypothesis test | sampling distribution | effect size, power, multiple testing |
| Proof by induction | natural numbers | recursion, algorithm correctness |

# Related domains

[Technology and engineering](/domains/technology-engineering.md) · [Natural sciences](/domains/natural-sciences.md) · [Economics](/domains/economics.md)
