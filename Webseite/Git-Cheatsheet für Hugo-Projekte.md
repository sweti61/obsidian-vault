---
title: Git-Cheatsheet für Hugo-Projekte
author: Swetoslaw Beltschew
project: firma-mediator-sweti
---

# 🧩 Zielsetzung

Dieses Cheatsheet unterstützt dich bei der täglichen Arbeit mit deinem Hugo-Blogprojekt in Verbindung mit Git (lokal) und GitHub (Cloud).

---

# ⚙️ Projekt-Setup (einmalig)

```powershell
# In das Projektverzeichnis wechseln
Set-Location "C:\Pfad\zu\HugoProjekt"

# Neues Git-Repository initialisieren
git init

# Lokale Dateien zum Tracking hinzufügen
git add .

# Initialen Commit erstellen
git commit -m "Initialer Commit – bestehendes Hugo-Projekt"

# Branch korrekt benennen
git branch -M main

# GitHub-Remote hinzufügen
git remote add origin https://github.com/<user>/<repo>.git

# Erstes Push auf GitHub
git push -u origin main
```

# Tägliche Workflow

```powershell
# In das Projektverzeichnis wechseln
Set-Location "C:\Pfad\zu\HugoProjekt"

# Änderungen anzeigen
git status

# Änderungen zum Commit vormerken
git add .

# Commit mit Nachricht erstellen
git commit -m "Beitrag vom 2025-10-22 ergänzt"

# Änderungen zu GitHub hochladen
git push
```


🔁 Änderungen vom GitHub-Repo holen

```powershell
git pull
```

🌱 Branch erstellen (z. B. für Testbeitrag)

```powershell
# Branch erstellen und wechseln
git checkout -b testbeitrag

# Änderungen machen...

# Branch zurück auf main
git checkout main

# Änderungen zusammenführen
git merge testbeitrag
```

🧹 Theme-Probleme lösen (Submodul entfernen)

```powershell
# Theme-Verzeichnis aus dem Index entfernen
git rm --cached -r themes\hugo-serif-theme

# .git-Verzeichnis im Theme löschen (wenn vorhanden)
Remove-Item -Recurse -Force themes\hugo-serif-theme\.git

# Theme neu hinzufügen
git add themes\hugo-serif-theme
git commit -m "Theme vollständig integriert – kein Submodul mehr"
```

📦 Nützliche Git-Konfigurationen

```powershell
# Schnellere Statusanzeige auf Windows
git config core.preloadindex true
git config core.fscache true
```

