#!/bin/bash
# Fake integration tests — ~2 min, 33% chance of failure
echo "Running integration tests..."
echo "  Starting test database..."
sleep 10

for i in $(seq 1 10); do
  echo "  Integration suite $i/10..."
  sleep 10
done

ROLL=$((RANDOM % 3))
if [ "$ROLL" -eq 0 ]; then
  echo "FAIL: API /users endpoint returned 500"
  exit 1
fi

echo "All 23 integration tests passed."
