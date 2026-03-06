#!/bin/bash
# Run esphome config validation on all example YAML files (skipping secrets.yaml)

PASS=0
FAIL=0
FAILURES=()

for f in examples/*.yaml; do
  [[ "$(basename "$f")" == "secrets.yaml" ]] && continue
  echo "--- $f"
  if ./esphome.sh config "$f"; then
    PASS=$((PASS + 1))
  else
    FAIL=$((FAIL + 1))
    FAILURES+=("$f")
  fi
done

echo ""
echo "Config Check Results: $PASS passed, $FAIL failed"
if [ ${#FAILURES[@]} -gt 0 ]; then
  echo "Failed:"
  for f in "${FAILURES[@]}"; do echo "  $f"; done
  exit 1
fi


for f in examples/*.yaml; do
  [[ "$(basename "$f")" == "secrets.yaml" ]] && continue
  echo "--- $f"
  if ./esphome.sh compile "$f"; then
    PASS=$((PASS + 1))
  else
    FAIL=$((FAIL + 1))
    FAILURES+=("$f")
  fi
done

echo ""
echo "Full Results: $PASS passed, $FAIL failed"
if [ ${#FAILURES[@]} -gt 0 ]; then
  echo "Failed:"
  for f in "${FAILURES[@]}"; do echo "  $f"; done
  exit 1
fi
