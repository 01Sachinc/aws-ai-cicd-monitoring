#!/bin/bash
# -------------------------------------------------------------------
# Project: AI-Driven CI/CD Monitoring Pipeline (Simulated)
# Author: Sachin C S
# Component: Pipeline Orchestrator
# -------------------------------------------------------------------
echo "========================================"
echo "PIPELINE: AI-DRIVEN CI/CD START"
echo "========================================"
echo "Date: $(date)"
echo "----------------------------------------"

# 1. BUILD
bash scripts/build.sh
if [ $? -ne 0 ]; then
    echo "[ABORT] Pipeline stopped at Build Stage."
    exit 1
fi

# 2. TEST
bash scripts/test.sh
if [ $? -ne 0 ]; then
    echo "[ABORT] Pipeline stopped at Test Stage."
    exit 1
fi

# 3. DEPLOY
bash scripts/deploy.sh
if [ $? -ne 0 ]; then
    echo "[ABORT] Pipeline stopped at Deployment Stage."
    exit 1
fi

# 4. MONITORING
bash scripts/monitor.sh

# 5. AI LOG ANALYSIS
bash scripts/ai_log_analyzer.sh

echo "========================================"
echo "PIPELINE: AI-DRIVEN CI/CD COMPLETED"
echo "========================================"
exit 0
