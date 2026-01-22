# 🚀 HomeLab Infrastructure as Code (IaC)

![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Ubuntu](https://img.shields.io/badge/ubuntu-%23E95420.svg?style=for-the-badge&logo=ubuntu&logoColor=white)
![Tailscale](https://img.shields.io/badge/tailscale-%23ff5f5f.svg?style=for-the-badge&logo=tailscale&logoColor=white)
![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?style=for-the-badge&logo=Prometheus&logoColor=white)

This repository contains the configuration files for my home laboratory environment based on a **Dell OptiPlex** server. The project focuses on automation, network security, and centralized management.

## 🌟 Key Features
- **Unified Dashboard:** Centralized access via **Homepage** with live Docker metrics (CPU/RAM).
- **Local DNS Management:** Network-wide ad-blocking and `.lab` domain resolution via **AdGuard Home**.
- **Reverse Proxy:** SSL management and internal routing using **Nginx Proxy Manager**.
- **Proactive Monitoring:** 24/7 service availability checks with **Uptime Kuma**.
- **Metrics & Visualization:** Full monitoring stack with **Prometheus**, **Node-Exporter**, and **Grafana**.

## 🏗️ Architecture & Traffic Flow
Traffic is routed internally through the following path:
`User -> AdGuard Home (DNS) -> Nginx Proxy Manager (Reverse Proxy) -> Docker Container`

## 💻 Hardware Specification
- **Model:** Dell OptiPlex SFF
- **OS:** Ubuntu Server 24.04 LTS
- **VPN:** Tailscale (Zero-Trust Remote Access)

## 🛡️ Deployed Services
| Service | Domain | Description | Status |
| :--- | :--- | :--- | :---: |
| **Homepage** | `http://homepage.lab` | Main entry point & dashboard | ✅ |
| **AdGuard Home**| `http://adguard.lab` | DNS Filtering & Rewrites | ✅ |
| **Nginx Proxy** | `http://nginx.lab` | Reverse Proxy UI (Port 81) | ✅ |
| **Portainer** | `http://portainer.lab` | Docker Management (Port 9443)| ✅ |
| **Uptime Kuma** | `http://kuma.lab` | Uptime Monitoring | ✅ |
| **FileBrowser** | `http://files.lab` | Web File Manager (Tailscale) | ✅ |
| **Prometheus** | `http://prometheus.lab`| Metrics Database (Port 9090) | ✅ |
| **Grafana** | `http://grafana.lab` | Data Visualization (Port 3002)| ✅ |

## 🛠️ Usage & Maintenance
To update the infrastructure:
```bash
# Sync changes from GitHub
git pull origin main

# Update and restart containers
docker compose up -d --remove-orphans
```
##🔒 Security Hardening
Zero-Exposure: No ports are forwarded on the router. Access is only possible via local network or Tailscale Funnel/VPN.

Privacy: AdGuard Home acts as a recursive DNS with encryption.

Backups: Configurations are tracked here, sensitive secrets are managed via .env files (excluded from Git). EOF
