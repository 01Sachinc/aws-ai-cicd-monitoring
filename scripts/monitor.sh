#!/bin/bash

# --- MONITORING STAGE SIMULATION ---
echo "========================================"
echo "STAGE 5: MONITORING"
echo "========================================"
LOG_FILE="logs/system.log"

echo "[INFO] Initializing CloudWatch Monitoring simulation..."
sleep 1
echo "[INFO] Collecting system health metrics (CPU, Memory, Disk)..."
sleep 1

# Generate simulated logs
echo "$(date '+%Y-%m-%d %H:%M:%S') [INFO] CPU Usage: 45%" >> "$LOG_FILE"
echo "$(date '+%Y-%m-%d %H:%M:%S') [INFO] Memory Usage: 30%" >> "$LOG_FILE"
echo "$(date '+%Y-%m-%d %H:%M:%S') [INFO] Request handled successfully. 200 OK" >> "$LOG_FILE"

# Randomly inject an anomaly for detection (30% chance)
if (( RANDOM % 3 == 0 )); then
    echo "$(date '+%Y-%m-%d %H:%M:%S') [CRITICAL] CPU Spike Detected: 98% usage!" >> "$LOG_FILE"
    echo "$(date '+%Y-%m-%d %H:%M:%S') [ERROR] Repeated connection timeouts in production." >> "$LOG_FILE"
    echo "$(date '+%Y-%m-%d %H:%M:%S') [ERROR] 500 Internal Server Error spike." >> "$LOG_FILE"
fi

echo "[SUCCESS] Logs captured and stored in simulated CloudWatch/S3."
exit 0
