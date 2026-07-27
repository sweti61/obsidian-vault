
Links

Midjourney - https://www.midjourney.com/imagine

Befehle
hugo new content [path] [flags] 

set HUGO_ENV='production'
set HUGO_ENVIRONMENT = 'production'
set HUGO_ENVIRONMENT = 'development'

set HUGO_ENV=development&& hugo server

hugo server -D
hugo server -D --cleanDestinationDir --disableFastRender

hugo -D--gc --cleanDestinationDir  --environment="production"

**PowerShell**
$Env:HUGO_ENV = "development"
Get-ChildItem Env:

hugo new content post/change.md


hugo server -D --cleanDestinationDir --disableFastRender --noHTTPCache --ignoreCache

hugo server --baseURL "https://mediator.sweti.de" --appendPort=false

hugo server -D --cleanDestinationDir --disableFastRender --noHTTPCache --bind=0.0.0.0 --baseURL=http://192.168.2.121:1313

$Env:HUGO_ENV = "production"
Get-ChildItem Env:
hugo -D --gc --environment production --minify --cleanDestinationDir

hugo --environment production --minify --baseURL "https://mediator.sweti.de"

hugo -D --gc --environment production --cleanDestinationDir

hugo --templateMetrics --templateMetricsHints

hugo -D -- gc --environment production  --minify --cleanDestinationDir --disableFastRender --noHTTPCache --ignoreCache --baseURL "https://mediator.sweti.de"


C:\Users\Sweti\AppData\Local\Microsoft\WinGet\Packages\Hugo.Hugo.Extended_Microsoft.Winget.Source_8wekyb3d8bbwe

# Suchbefehle:

Get-ChildItem -Recurse -Filter *.md -File |  
Select-String "Pflege" |  
ForEach-Object { "$($_.Path):$($_.LineNumber): $($_.Line)" }

Select-String -Pattern "Pflege" -CaseSensitive:$false

rg -l -i -g "*.md" "pflege|pflegende angehörige|pflegebedürftig|pflegeheim|häusliche pflege" .\content\post > .\cluster-pflege.txt


## Debug-Infos

<pre style="background:#eee; padding:1em;">
Kind: {{ .Kind }}
Layout: {{ .Layout }}
Type: {{ .Type }}
Section: {{ .Section }}
</pre>


<div style="background: #ffefc4; padding: 1rem;">⚠️ Layout: _default/angebote-seite.html</div>



<p><strong>Layout:</strong> {{ .Layout }}</p>
<p><strong>Kind:</strong> {{ .Kind }}</p>
<p><strong>Type:</strong> {{ .Type }}</p>
<p><strong>Section:</strong> {{ .Section }}</p>



--gc	"Garbage Collection" – bereinigt ungenutzte Ressourcen z. B. Bilddaten
--minify	minimiert HTML, CSS, JS (wenn möglich)
--cleanDestinationDir	Löscht den gesamten Inhalt im public/ vor dem Bauen


### Scripte
 powershell.exe -ExecutionPolicy Bypass -File .\hugo-deploy-sftp-log.ps1



# 🧩 Git-Befehl-Set für den täglichen Workflow (Hugo-Projekt)

## 📍 **1️⃣ Ins Projektverzeichnis wechseln**

_(immer der erste Schritt, wenn du ein neues PowerShell-Fenster öffnest)_

```powershell
Set-Location "C:\Users\Sweti\Documents\HUGO\mediator-sweti"
```

---

## ✍️ **2️⃣ Änderungen prüfen**

Zeigt dir, was seit dem letzten Commit verändert wurde:

```powershell
git status
```

---

## 🧾 **3️⃣ Neue oder geänderte Dateien zum Commit vormerken**

Alle neuen / bearbeiteten / gelöschten Dateien aufnehmen:

```powershell
git add .
```

> 💡 Punkt (`.`) bedeutet „alle Dateien im Projekt“.  
> Wenn du nur eine bestimmte Datei sichern willst:  
> `git add content/post/dein-artikel.md`

---

## 💬 **4️⃣ Änderungen committen (lokal speichern)**

```powershell
git commit -m "Blogartikel aktualisiert / Inhalte ergänzt"
```

> Nutze kurze, klare Nachrichten — z. B.  
> `"Layout-Fehler behoben"` oder `"Neue Landingpage hinzugefügt"`

---

## ☁️ **5️⃣ Änderungen auf GitHub hochladen**

```powershell
git push
```

> ✅ Alle lokalen Commits werden auf GitHub synchronisiert.  
> GitHub dient damit als **Backup und zentrale Versionshistorie**.

---

## 🔁 **6️⃣ Änderungen von GitHub herunterladen**

Falls du an mehreren Geräten arbeitest oder online etwas geändert hast:

```powershell
git pull
```

> Holt alle neuen Versionen und synchronisiert sie mit deinem lokalen Stand.

---

## 🧹 **7️⃣ Nicht benötigte oder temporäre Dateien ignorieren**

Wird durch deine zentrale `.gitignore` automatisch gesteuert.  
Zum Aktualisieren (wenn du neue Regeln ergänzt hast):

```powershell
git add .gitignore
git commit -m "Aktualisierte .gitignore"
git push
```

---

## 🧭 **8️⃣ Projektstatus und Verlauf anzeigen**

Änderungsverlauf:

```powershell
git log --oneline --graph --decorate
```

Letzte Änderungen im Detail:

```powershell
git diff
```

---

## ⚙️ **9️⃣ Optional: Zeilenenden & Performance (nur einmalig nötig)**

Falls du neue Rechner nutzt oder Git neu installierst:

```powershell
git config --global core.autocrlf true
git config --global core.fscache true
git config --global core.preloadindex true
```

---

## 🧩 **10️⃣ Beispiel: typischer Tagesablauf**

```powershell
# 1. Projekt öffnen
Set-Location "C:\Users\Sweti\Documents\HUGO\mediator-sweti"

# 2. Letzten Stand von GitHub holen
git pull

# 3. Hugo- oder Markdown-Dateien bearbeiten (Notepad++)

# 4. Änderungen prüfen
git status

# 5. Alles vormerken
git add .

# 6. Commit schreiben
git commit -m "Neue Blogbeiträge ergänzt"

# 7. Auf GitHub sichern
git push
```