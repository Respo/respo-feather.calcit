set -euo pipefail
test ! -e compact.cirru
test ! -e package.cirru
calcit calcit.cirru --check-only --all-defs
report="$(calcit calcit.cirru fix --workflow strict --verify --format json)"
printf '%s\n' "$report"
jq -e '.data.workflow.status? == "passed" and .diagnostics? == []' <<< "$report"
calcit calcit.cirru analyze weak-types --only coverage --summary-only --format json
calcit calcit.cirru analyze weak-types --only schema-dynamic,code-dynamic --intent unresolved --summary-only --format json
calcit calcit.cirru analyze weak-types --only deprecated-call --summary-only --format json | jq -e '.data.summary.calls == 0'
calcit calcit.cirru test --require-match
calcit calcit.cirru js
VITE_BASE_URL=./ yarn vite build --base=./
node --test scripts/feather-render.test.mjs
