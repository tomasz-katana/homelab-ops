# 🚀 HomeLab Infrastructure as Code (IaC)

This repository contains the configuration files for my home laboratory environment. The project focuses on automation, network security, and centralized management.

## 🌟 Key Features
- **Unified Dashboard:** Centralized access via **Homepage** with live Docker metrics.
- **Local DNS Management:** Network-wide ad-blocking and `.lab` domain resolution via **AdGuard Home**.
- **Reverse Proxy:** SSL management and internal routing using **Nginx Proxy Manager**.
- **Proactive Monitoring:** 24/7 service availability checks with **Uptime Kuma**.
- **Infrastructure as Code:** Fully containerized setup managed via Docker Compose.

## 🏗️ Architecture & Stack
- **Hardware:** Dell OptiPlex (Proxmox Hypervisor)
- **Operating System:** Ubuntu Server 24.04 LTS
- **Network Routing:** Nginx Proxy Manager (Ports 80/443)
- **Security:** Hardened SSH, UFW Firewall, and Tailscale Zero-Trust VPN.

## 🛡️ Deployed Services & Access
| Service | Domain | Description |
| :--- | :--- | :--- |
| **Homepage** | `http://homepage.lab` | Main entry point & system dashboard |
| **AdGuard Home** | `http://adguard.lab` | DNS Filtering & Local DNS Rewrites |
| **Nginx Proxy** | `http://nginx.lab` | Reverse Proxy Management UI |
| **Portainer** | `http://portainer.lab` | Docker Container Management |
| **Uptime Kuma** | `http://kuma.lab` | Service Uptime & Notifications |
| **FileBrowser** | `http://files.lab` | Personal cloud & web file manager |
| **Prometheus** | `http://prometeus.lab` | Time-series database for metrics |
| **Grafana**    | `http://grafana.lab`       | Monitoring dashboards (Port 3002) |


## 🛠️ Usage & Maintenance
To deploy or update services:
```bash
git pull origin main
docker compose up -d
```

## 🔒 Security Hardening
Zero-Exposure: No ports are forwarded on the router. Access is only possible via local network or Tailscale VPN.

Version Control: All configuration changes are tracked in this repository, excluding sensitive data via .gitignore.
