# Update Log

## 2026-10-11
* **Writing rules**: Added [writing rules](/core/writing-rules.md), read at every depth: five per-sentence tests (portability, literal, evidence, kicker, trace), required content per concept, banned words and patterns, and a prose self-check. Adapted from the no-ai-slop skill.
* **Writing detection**: Added [writing detection](/core/writing-detection.md), read at deep depth: word and phrase lists, heading anti-patterns, hedging and structure thresholds, exclusion zones.
* **Template**: Removed "headings are claims" and "say what the thing is not" from the writing style, which produced aphorism headings and "X is not Y" sentences. Marks now cover one definition, rule, exact cost, or threshold per section.
* **Workflow**: Load table, step 6, step 7, and the self-check (now 6 lines) reference the writing rules.
* **Technology domain**: Exact costs with assumptions, named failure inputs, and per-concept traces before comparison.
* **Graph**: Nodes must be named concepts, one edge per pair, edges checked against the page text.

## 2026-10-08
* **Init**: Created the bundle with 7 core concepts and 12 study domains.
* **Create**: Added the [page template](/core/page-template.md) modelled on a research-paper reading guide.
* **Create**: Added the [domain classifier](/core/classifier.md) with an optional external-label hook.
* **Token budget**: [Workflow](/core/workflow.md) gains research caps (brief 2 searches / 0 fetches, standard 4 / 2, deep 8 / 4), a notes-not-re-reads rule, a single-call HTML write, and a no-stats context-report rule; targets 12k brief / 25k standard / 45k deep.
* **Lazy load**: Brief reads template + domain `# Quick card` only; standard adds source policy and depth policy; deep adds the graph method and the full domain file. The output contract's checklist and save rules merged into the workflow, leaving [output contract](/core/output-contract.md) as a pointer.
* **Quick card**: Every domain file now opens with a 5-line card (scope, 3 explain rules, top 3 sources, safety line); brief and standard read only the card.
* **Template**: Base CSS minified and trimmed from 4,929 to 3,671 bytes (−26%); `.bar`, `.tl`, `.eq`, `details`, `pre`, `img`, print and bleed rules moved to an **Optional CSS** section at the end of the file (1,667 bytes, read only when needed) with the rule "add a block only if the page uses that component".
* **Budgets**: [Audience and depth](/core/audience-depth.md) word counts lowered (brief 250-400, standard 700-1100, deep 1500-2500) and references capped (2 / 5 / 10); [source policy](/core/source-policy.md) counts aligned.
