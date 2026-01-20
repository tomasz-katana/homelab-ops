# 🌐 Nginx Proxy Manager (NPM)

## Purpose
Acts as the central "Entry Point" (Reverse Proxy) for all web services in the HomeLab. It handles SSL termination and simplifies access by using domain names instead of IP:Port combinations.

## Configuration
- **Admin Interface:** Port 81
- **HTTP Traffic:** Port 80
- **HTTPS Traffic:** Port 443

## Current Setup
- Moved from default ports to avoid conflicts with AdGuard Home (which was previously occupying port 80).
- Configured with a SQLite database for lightweight management.
