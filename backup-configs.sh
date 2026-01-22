#!/bin/bash

# Przejdź do folderu projektu
cd ~/homelab-ops

# Pobierz najnowsze zmiany z GitHub (na wszelki wypadek)
git pull origin main

# Dodaj wszystkie zmiany (pamiętaj, że .gitignore chroni Twoje hasła)
git add .

# Zrób commit z datą i czasem
git commit -m "Automated backup: $(date +'%Y-%m-%d %H:%M')"

# Wyślij na GitHub
git push origin main

echo "Backup completed successfully!"
