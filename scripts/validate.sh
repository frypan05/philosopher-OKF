#!/usr/bin/env bash
# Validates an OKF bundle: 3 conformance rules plus link and structure checks.
# Usage: scripts/validate.sh [bundle_dir]   (default: okf)
set -uo pipefail
B="${1:-okf}"; fail=0
[ -d "$B" ] || { echo "No such directory: $B"; exit 2; }

# Rules 1 and 2: parseable frontmatter with non-empty type, for every non-reserved .md
while IFS= read -r f; do
  first=$(head -1 "$f")
  if [ "$first" != "---" ]; then echo "FAIL: $f has no frontmatter"; fail=1; continue; fi
  fm=$(awk 'NR==1{next} /^---$/{exit} {print}' "$f")
  if [ -z "$fm" ]; then echo "FAIL: $f has empty or unterminated frontmatter"; fail=1; continue; fi
  t=$(printf '%s\n' "$fm" | sed -n 's/^type:[[:space:]]*//p' | head -1)
  [ -n "$t" ] || { echo "FAIL: $f missing non-empty 'type'"; fail=1; }
done < <(find "$B" -name '*.md' ! -name index.md ! -name log.md | sort)

# Rule 3: reserved files. index.md has no frontmatter except okf_version at the root; log.md has ISO date headings.
while IFS= read -r f; do
  if [ "$(head -1 "$f")" = "---" ]; then
    if [ "$f" != "$B/index.md" ]; then echo "FAIL: $f is an index with frontmatter"; fail=1
    else grep -q '^okf_version:' "$f" || { echo "FAIL: root index frontmatter must only declare okf_version"; fail=1; }; fi
  fi
  grep -q '^\* \[' "$f" || { echo "FAIL: $f has no '* [Title](path) - description' entries"; fail=1; }
done < <(find "$B" -name index.md | sort)
while IFS= read -r f; do
  grep -q '^# Update Log' "$f" || { echo "FAIL: $f missing '# Update Log'"; fail=1; }
  bad=$(grep '^## ' "$f" | grep -vE '^## [0-9]{4}-[0-9]{2}-[0-9]{2}$' || true)
  [ -z "$bad" ] || { echo "FAIL: $f has non-ISO date headings: $bad"; fail=1; }
done < <(find "$B" -name log.md | sort)

# Soft check: broken bundle links (warn only, the spec tolerates them)
while IFS= read -r f; do
  dir=$(dirname "$f")
  grep -oE '\]\((/|\./|\.\./)?[A-Za-z0-9_./-]+\.md\)' "$f" | sed -E 's/^\]\(//; s/\)$//' | while read -r l; do
    case "$l" in /*) t="$B$l";; *) t="$dir/$l";; esac
    [ -f "$t" ] || echo "WARN: $f links to missing $l"
  done
done < <(find "$B" -name '*.md' | sort)

[ $fail -eq 0 ] && echo "OK: $B is a conformant OKF bundle" || { echo "Bundle failed validation"; exit 1; }
