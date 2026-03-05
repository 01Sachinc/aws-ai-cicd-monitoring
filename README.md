# AI-Driven CI/CD Monitoring Pipeline with AWS Architecture Simulation 🚀

Developed by **Sachin** | DevOps & Cloud Simulation Specialist

---

## 📌 Project Overview

Welcome to the **AI-Driven CI/CD Monitoring Pipeline**! This project is a production-simulated DevOps ecosystem that bridges the gap between automated software delivery and intelligent system monitoring.

It demonstrates a 7-stage pipeline—from the first line of code to real-time AI log analysis—modeled after enterprise AWS architecture.

---

## 🏗️ Architecture Visualization

### 🛠️ High-Level Infrastructure

![Architecture Diagram](architecture/architecture-diagram.png)

### 📈 Pipeline Flow

![Pipeline Flow](architecture/pipeline-flow.png)

### 🔄 Logic Flow (Mermaid)

```mermaid
graph TD
    A[Developers] -->|Git Push| B(GitHub Repo)
    B --> C{CI/CD Pipeline}
    C --> D[Stage 2: Build]
    D --> E[Stage 3: Test]
    E --> F[Stage 4: Deploy to EC2]
    F --> G[Stage 5: CloudWatch Monitoring]
    G --> H[Stage 6: AI Log Analysis]
    H --> I{Anomaly?}
    I -->|Yes| J[Stage 7: Alert SNS]
    I -->|No| K[System Stable]
```

---

## ☁️ AWS Architecture (Simulated)

This project leverages shell scripting to model a complete AWS environment:

- **Simulated EC2**: Deployment target for the web application artifacts.
- **Simulated S3**: Repository for build assets and persistent system logs.
- **Simulated CloudWatch**: Engine for health metric generation and log aggregation.
- **Simulated IAM**: Demonstrates role-based execution policies for secure phase transition.

---

## 🤖 AI Monitoring & Anomaly Detection

The core innovation is the `ai_log_analyzer.sh` script, which simulates an AI engine scanning for operational hazards:

- **Pattern Recognition**: Detects abnormal error spikes and critical resource exhaustion.
- **Real-time Analytics**: Correlates different log events to identify root causes.
- **Automated Response**: Triggers simulated SNS notifications for rapid DevOps intervention.

---

## 🚀 How to Execute the Simulation

### Pre-requisites

- **Environment**: A Bash-compatible terminal (Git Bash, WSL, or Linux).
- **Permissions**: Ensure scripts have execution rights.

### Commands

```bash
# 1. Clone the repository
git clone https://github.com/01Sachinc/aws-ai-cicd-monitoring.git
cd aws-ai-cicd-monitoring

# 2. Grant execution permissions
chmod +x scripts/*.sh

# 3. Launch the complete pipeline
bash scripts/pipeline.sh
```

---

## 📁 Repository Structure

```text
aws-ai-cicd-monitoring/
├── README.md               # Premium Documentation by Sachin
├── architecture/           # High-resolution diagrams
├── .github/workflows/      # GitHub Actions automation
├── scripts/                # Modular simulation engine
└── logs/                   # Simulated production logs
```
