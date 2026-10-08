---
type: Study Domain
title: Medical and health
description: Anatomy, physiology, disease, drugs, public health, nutrition and how clinical evidence is judged.
tags: [domain, medical, health, clinical]
status: draft
stale_after: 2027-04-08T00:00:00Z
---

# Quick card

* **Scope**: Anatomy and physiology, disease, drugs, public health, nutrition, mental health, clinical evidence.
* **Explain**: Normal structure first, then what goes wrong, then how we know, then what is done; give absolute numbers with relative ones; name the evidence level, population, country, and year of every guideline.
* **Sources**: MedlinePlus — https://medlineplus.gov/ · PubMed — https://pubmed.ncbi.nlm.nih.gov/ · WHO — https://www.who.int/
* **Safety**: Add the note banner: "This page is educational, not medical advice. For symptoms, doses, or decisions about your own care, talk to a clinician." Emergencies: urgent-help guidance first.

# Scope

Anatomy and physiology, pathology, pharmacology, microbiology and immunology, public health and epidemiology, nutrition, mental health, clinical research methods, health systems.

# How to explain it here

* Order: **normal structure and function**, then **what goes wrong**, then **how we know** (tests and evidence), then **what is done** (management).
* Give **absolute numbers** with relative ones ("2 in 100 became 1 in 100", not only "50% lower").
* Name the **evidence level**: mechanism, observational study, randomized trial, systematic review, guideline.
* State the **population and country** a guideline applies to, and its year.
* Use the term clinicians use, followed by a plain gloss.

# Visuals that work in HTML and CSS

| Need | Component |
|---|---|
| Physiological pathway or disease cascade | `.flow` nodes, `fz` for the normal state |
| Risk as a picture | a 10 × 10 grid of CSS squares (100 people), colored squares for those affected |
| Drug classes, tests, stages | table |
| Disease course or outbreak | `.tl` timeline |
| Test accuracy | 2 × 2 table (true/false, positive/negative) with a worked example |

# Preferred sources

| Host | URL | Best for |
|---|---|---|
| MedlinePlus | https://medlineplus.gov/ | Plain-language conditions, drugs, tests |
| PubMed | https://pubmed.ncbi.nlm.nih.gov/ | Peer-reviewed studies and reviews |
| NCBI Bookshelf | https://www.ncbi.nlm.nih.gov/books/ | Textbook-style reference chapters |
| WHO | https://www.who.int/ | Global guidance and statistics |
| CDC | https://www.cdc.gov/ | US disease and prevention guidance |
| NHS | https://www.nhs.uk/ | UK patient information |
| NICE | https://www.nice.org.uk/ | UK clinical guidelines |
| Cochrane Library | https://www.cochranelibrary.com/ | Systematic reviews |
| FDA | https://www.fda.gov/ | Drug and device approvals and labels |
| DailyMed | https://dailymed.nlm.nih.gov/ | Official US drug labels |
| ICMR | https://www.icmr.gov.in/ | India research and guidelines |

# Pitfalls and safety

* Add the note banner: "This page is educational, not medical advice. For symptoms, doses, or decisions about your own care, talk to a clinician."
* Do not diagnose a person, recommend a personal dose, or advise starting or stopping a prescribed medicine.
* If the question describes an emergency (chest pain, stroke signs, overdose, suicidal thoughts), put urgent-help guidance first, before any teaching.
* Distinguish "associated with" from "causes". Flag preprints, small trials, and animal or cell studies as such.
* Do not present alternative treatments as equivalent to evidence-based care.

# Graph seeds

| Concept | Needs first | Leads to |
|---|---|---|
| Immune response | cells, antigens | vaccines, autoimmunity, allergy |
| Blood pressure | heart, vessels, kidney | hypertension, drugs, stroke risk |
| Randomized trial | bias, control group | systematic reviews, guidelines |
| Antibiotic resistance | bacteria, selection | stewardship, new drugs |
| Insulin action | glucose, pancreas | diabetes types, management |

# Related domains

[Natural sciences](/domains/natural-sciences.md) · [Mathematics, statistics and logic](/domains/mathematics-statistics-logic.md) · [Social sciences and psychology](/domains/social-sciences-psychology.md)
