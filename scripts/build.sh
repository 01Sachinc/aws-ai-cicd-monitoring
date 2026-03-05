#!/bin/bash

# --- BUILD STAGE SIMULATION ---
echo "========================================"
echo "STAGE 2: BUILD"
echo "========================================"
echo "[INFO] Initializing build environment..."
sleep 1
echo "[INFO] Fetching dependencies (npm install, pip install, etc.)..."
sleep 2
echo "[INFO] Compiling source code..."
sleep 2
echo "[INFO] Creating build artifacts (JAR/Binary/Container image)..."
sleep 1

# Simulate a random success/fail (90% success)
if (( RANDOM % 10 != 0 )); then
    echo "[SUCCESS] Build completed successfully."
    echo "[INFO] Artifact: build/app-release-v1.0.tar.gz"
    exit 0
else
    echo "[ERROR] Build failed due to dependency conflict."
    exit 1
fi
