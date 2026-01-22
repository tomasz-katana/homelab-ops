#!/bin/bash
cd ~/homelab-ops
git pull origin main
git add .
git commit -m "Automated backup: $(date +'%Y-%m-%d %H:%M')"
git push origin main
echo "Backup completed successfully!"
