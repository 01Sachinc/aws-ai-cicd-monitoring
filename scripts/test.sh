#!/bin/bash

# --- TEST STAGE SIMULATION ---
echo "========================================"
echo "STAGE 3: TEST"
echo "========================================"
echo "[INFO] Running automated unit tests..."
sleep 1
echo "[PASS] Unit Test Phase 1: Authentication Logic"
sleep 1
echo "[PASS] Unit Test Phase 2: Database Connectivity"
sleep 1

echo "[INFO] Running Integration tests..."
sleep 2

# Simulate a random success/fail (80% success)
if (( RANDOM % 5 != 0 )); then
    echo "[SUCCESS] All 152 tests passed."
    exit 0
else
    echo "[ERROR] Integration Test Failed: Timed out waiting for downstream service."
    exit 1
fi
