#!/bin/bash
# Fake unit tests — ~1 min, 33% chance of failure
echo "Running unit tests..."
for i in $(seq 1 12); do
  echo "  Test suite $i/12..."
  sleep 5
done

ROLL=$((RANDOM % 3))
if [ "$ROLL" -eq 0 ]; then
  echo "FAIL: TestUserAuth > should validate token"
  exit 1
fi

echo "All 47 tests passed."
