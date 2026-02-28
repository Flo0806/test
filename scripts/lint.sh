#!/bin/bash
# Fake lint check — always passes, runs ~30s
echo "Running lint checks..."
for i in $(seq 1 6); do
  echo "  Checking module $i/6..."
  sleep 5
done
echo "Lint passed."
