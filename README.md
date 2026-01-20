
## HomeLab Infrastructure as Code (IaC)

This repository contains the configuration files for my home laboratory environment. The project focuses on automation, network se>

##  Key Features
- **Centralized Ad-Blocking:** Network-wide protection using AdGuard Home.
- **Proactive Monitoring:** 24/7 service availability checks with Discord alerts.
- **Secure Remote Access:** Zero-trust architecture using Tailscale VPN.
- **Infrastructure as Code:** All services managed via Docker Compose for easy deployment and scalability.

##  Architecture & Stack
- **Hardware:** Dell OptiPlex (Proxmox Hypervisor)
- **Operating System:** Ubuntu Server 24.04 LTS
- **Containerization:** Docker & Docker Compose
- **Networking:** Zero-Trust VPN via Tailscale

##  Deployed Services
- **AdGuard Home:** DNS filtering & network-wide ad-blocking.
- **Uptime Kuma:** Uptime monitoring with Discord integration.
- **Portainer:** Container management & orchestration UI.
- **Nginx Proxy Manager:** Advanced reverse proxy used for SSL management and routing local domains (e.g., *local) to internal ser>
- **Portainer (portainer.lab):** Container management & orchestration UI.

##  Security Hardening
- **Hardened SSH:** Password authentication disabled; RSA-4096 key-pair authentication enforced.
- **Zero-Exposure Policy:** No public ports opened on the router; management via encrypted tunnel.
- **Host Security:** Automated security updates and firewall (UFW) management.

##  Usage
To deploy any service, navigate to its directory and run:
```bash
docker compose up -d

