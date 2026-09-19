#!/usr/bin/env bash
set -euo pipefail

required_files=(
  profile/README.md
  SECURITY.md
  CONTRIBUTING.md
  CODE_OF_CONDUCT.md
  SUPPORT.md
  .github/pull_request_template.md
  .github/ISSUE_TEMPLATE/bug_report.md
  .github/ISSUE_TEMPLATE/feature_request.md
  .github/workflows/secure-ci.yml
  .github/workflows/release.yml
)

for file in "${required_files[@]}"; do
  test -f "$file" || { echo "Missing required foundation file: $file" >&2; exit 1; }
done

bash -n ci/verify.sh
if grep -RIn --exclude-dir=.git -E 'AKIA[0-9A-Z]{16}|gh[pousr]_[A-Za-z0-9_]{20,}' .; then
  echo "Potential credential pattern found" >&2
  exit 1
fi

printf '%s\n' 'NOERITH Foundation v1 checks passed.'
