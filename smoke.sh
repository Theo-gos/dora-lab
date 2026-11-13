set -euo pipefail
# production smoke test: the running version must be a plain MAJOR.MINOR.PATCH
if grep -Eq '^[0-9]+\.[0-9]+\.[0-9]+$' VERSION; then
  echo "smoke test passed: $(cat VERSION)"
else
  echo "smoke test FAILED: bad version '$(cat VERSION)'"; exit 1
fi