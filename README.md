# 🚀 HomeLab Infrastructure as Code (IaC)

This repository contains the configuration files for my home laboratory environment. The project focuses on automation, network security, and self-hosted service monitoring.

## 🏗️ Architecture & Stack
- **Hardware:** Dell OptiPlex (Proxmox Hypervisor)
- **Operating System:** Ubuntu Server 24.04 LTS
- **Containerization:** Docker & Docker Compose
- **Networking:** Zero-Trust VPN via Tailscale

## 🛡️ Deployed Services
- **AdGuard Home:** Network-wide DNS filtering and ad-blocking.
- **Uptime Kuma:** Real-time service monitoring with Discord notification hooks.
- **Portainer:** Container management and visualization.

## 🔒 Security Hardening
- **SSH Security:** Password authentication disabled; RSA-4096 key-pair authentication enforced.
- **Access Control:** No public ports exposed; all remote management performed over an encrypted Tailscale tunnel.
- **Proximity:** Implementation of Fail2Ban for automated brute-force protection (planned).

## 🛠️ Usage
Each service is organized into its own directory containing a `docker-compose.yml` file. 
To deploy a service, navigate to the directory and run:
`docker compose up -d`
