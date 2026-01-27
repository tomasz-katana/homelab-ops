# 🚀 HomeLab Infrastructure as Code (IaC) & Observability

This repository contains the configuration files for my home laboratory environment based on a Dell OptiPlex server. The project focuses on automation, network security, and centralized observability.

## 📊 Infrastructure Architecture
```mermaid
graph TD
    User([User/Client]) -->|Tailscale VPN| AdGuard[AdGuard Home: DNS]
    AdGuard --> NPM[Nginx Proxy Manager: Reverse Proxy]
    NPM --> Services{Docker Containers}
    
    subgraph "Observability Stack"
        Services -->|Metrics| Prom[Prometheus]
        Services -->|Logs| Loki[Grafana Loki]
        Host[Ubuntu Host] -->|API| Glances[Glances API]
        Prom --> Grafana[Grafana]
        Loki --> Grafana
    end
    
    subgraph "Management & UI"
        Homepage[Homepage Dashboard]
        Homepage -->|Live Stats| Services
        Homepage -->|System Metrics| Glances
    end
```
## 🌟 Key Features
Unified Dashboard: Centralized access via GetHomepage with real-time API integration (CPU/RAM/Disk metrics).
Full Observability Stack: Implementation of Prometheus, Grafana, and Loki for centralized metrics and log management.
Service Monitoring: 24/7 availability checks with Uptime Kuma providing historical status bars.
Local DNS Management: Network-wide ad-blocking and .lab domain resolution via AdGuard Home.
Reverse Proxy: SSL management and internal routing using Nginx Proxy Manager.
Password Management: Vaultwarden self-hosted for maximum privacy and security.�

## ���️ Security Hardening
Zero-Exposure: No ports are forwarded on the router. Access is restricted to the internal network.
Firewall (UFW): Strict "Allow" policy only for the local subnet. All other incoming traffic is denied.
Remote Access: Secure access via Tailscale VPN (Zero-Trust Remote Access architecture).
Secret Management: Sensitive data is managed via environment variables to prevent accidental exposure.�

## ���️ Traffic Flow
User -> Tailscale -> AdGuard Home (DNS) -> NPM (Reverse Proxy) -> Docker Container

##💻 Hardware Specification
Model: Dell OptiPlex 7040
OS: Ubuntu Server 24.04 LTS
Management: Docker Compose & Git-based configuration.

## 📦 Deployed Services
Service Domain Description Status 
Homepagehttp://homepage.labMain entry point & dashboard✅Vaultwardenhttps://vault.labSecure Password Manager✅AdGuard Homehttp://adguard.labDNS Filtering & Rewrites✅Nginx Proxyhttp://nginx.labReverse Proxy Management✅Log Managementhttp://grafana.labCentralized Logs (Loki)✅Uptime Kumahttp://kuma.labUptime Monitoring✅FileBrowserhttp://files.labWeb-based File Manager✅Prometheushttp://prometheus.labMetrics Database✅Grafanahttp://grafana.labData Visualization✅GlancesInternalHost hardware metrics API✅🛠️ Maintenance & GitOps WorkflowTo sync changes and maintain the infrastructure:Bash# 1. Sync current server config to repository
./backup-configs.sh

# 2. Update and restart containers
docker compose up -d --remove-orphans

# 3. Verify firewall status
sudo ufw status numbered
## 💾 Backups & PersistenceConfigurations: All YAML and configuration files are versioned in this repository.Automation: The backup-configs.sh script automates the collection of active configurations.Secrets: Excluded from Git history; managed via .env files and Homepage internal secret engine.Data Volumes: Critical data (like Vaultwarden database) is stored in persistent Docker volumes for easy backup and recovery.# 🚀 HomeLab Infrastructure as Code (IaC) & Observability

This repository contains the configuration files for my home laboratory environment based on a Dell OptiPlex server. The project focuses on automation, network security, and centralized observability.

## 📊 Infrastructure Architecture
```mermaid
graph TD
    User([User/Client]) -->|Tailscale VPN| AdGuard[AdGuard Home: DNS]
    AdGuard --> NPM[Nginx Proxy Manager: Reverse Proxy]
    NPM --> Services{Docker Containers}
    
    subgraph "Observability Stack"
        Services -->|Metrics| Prom[Prometheus]
        Services -->|Logs| Loki[Grafana Loki]
        Host[Ubuntu Host] -->|API| Glances[Glances API]
        Prom --> Grafana[Grafana]
        Loki --> Grafana
    end
    
    subgraph "Management & UI"
        Homepage[Homepage Dashboard]
        Homepage -->|Live Stats| Services
        Homepage -->|System Metrics| Glances
    end
``
## 🌟 Key FeaturesUnified Dashboard: Centralized access via GetHomepage with real-time API integration (CPU/RAM/Disk metrics).Full Observability Stack: Implementation of Prometheus, Grafana, and Loki for centralized metrics and log management.Service Monitoring: 24/7 availability checks with Uptime Kuma providing historical status bars.Local DNS Management: Network-wide ad-blocking and .lab domain resolution via AdGuard Home.Reverse Proxy: SSL management and internal routing using Nginx Proxy Manager.Password Management: Vaultwarden self-hosted for maximum privacy and security.🛡️ Security HardeningZero-Exposure: No ports are forwarded on the router. Access is restricted to the internal network.Firewall (UFW): Strict "Allow" policy only for the local subnet. All other incoming traffic is denied.Remote Access: Secure access via Tailscale VPN (Zero-Trust Remote Access architecture).Secret Management: Sensitive data is managed via environment variables to prevent accidental exposure.🏗️ Traffic FlowUser -> Tailscale -> AdGuard Home (DNS) -> NPM (Reverse Proxy) -> Docker Container💻 Hardware SpecificationModel: Dell OptiPlex SFFOS: Ubuntu Server 24.04 LTSManagement: Docker Compose & Git-based configuration.📦 Deployed ServicesServiceDomainDescriptionStatusHomepagehttp://homepage.labMain entry point & dashboard✅Vaultwardenhttps://vault.labSecure Password Manager✅AdGuard Homehttp://adguard.labDNS Filtering & Rewrites✅Nginx Proxyhttp://nginx.labReverse Proxy Management✅Log Managementhttp://grafana.labCentralized Logs (Loki)✅Uptime Kumahttp://kuma.labUptime Monitoring✅FileBrowserhttp://files.labWeb-based File Manager✅Prometheushttp://prometheus.labMetrics Database✅Grafanahttp://grafana.labData Visualization✅GlancesInternalHost hardware metrics API✅🛠️ Maintenance & GitOps WorkflowTo sync changes and maintain the infrastructure:Bash# 1. Sync current server config to repository
./backup-configs.sh

# 2. Update and restart containers
docker compose up -d --remove-orphans

# 3. Verify firewall status
sudo ufw status numbered
💾 Backups & PersistenceConfigurations: All YAML and configuration files are versioned in this repository.Automation: The backup-configs.sh script automates the collection of active configurations.Secrets: Excluded from Git history; managed via .env files and Homepage internal secret engine.Data Volumes: Critical data (like Vaultwarden database) is stored in persistent Docker volumes for easy backup and recovery.
