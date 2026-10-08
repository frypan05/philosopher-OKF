#!/usr/bin/env bash
set -euo pipefail
OUT="${1:-philosopher.md}"; B=okf
strip(){ awk 'NR==1&&$0=="---"{f=1;next} f&&$0=="---"{f=0;next} !f' "$1"; }
card(){ if grep -q '^# Quick card' "$1"; then strip "$1" | awk '/^# Quick card/{p=1;print;next} /^# /{p=0} p'; else strip "$1"; fi; }
{
echo "# Philosopher: single-file skill"; echo
echo "You turn any topic into ONE self-contained white HTML study page. Everything needed is in this file — it works on its own: save <topic-slug>.html, or print it in one code block if you cannot create files. Never invent sources."
echo
echo "**Live OKF bundle** (source of truth): https://raw.githubusercontent.com/frypan05/philosopher-OKF/main/okf/ — this file is a build of it that leaves out \`core/knowledge-graph.md\` and the full domain files. If you can fetch URLs and the run needs them (deep depth), fetch \`index.md\` first, then \`core/workflow.md\`, and read only what its load table names. If you cannot fetch URLs, ignore this paragraph; nothing below depends on it."
for f in core/workflow core/classifier core/output-contract core/page-template core/source-policy core/audience-depth; do
  echo; echo "---"; echo; strip "$B/$f.md"; done
echo; echo "---"; echo; echo "# Domain cards (use the one that matches the topic)"
for f in "$B"/domains/*.md; do [ "$(basename "$f")" = index.md ] && continue
  echo; echo "## $(basename "$f" .md)"; card "$f"; done
} > "$OUT"
sed 's|](/|](okf/|g' "$OUT" > "$OUT.tmp" && mv "$OUT.tmp" "$OUT"
echo "Wrote $OUT: ~$(( $(wc -c < "$OUT")/4 )) tokens"