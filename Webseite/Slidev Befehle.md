# Slidev – Befehle für Windows

Alle Projektbefehle in PowerShell im Ordner ausführen, in dem die `package.json` liegt.

## Neues Projekt erstellen

In den übergeordneten Präsentationsordner wechseln:

```powershell
cd "C:\Users\sbelt\Documents\Präsentationen"
```

Projektassistenten starten:

```powershell
npm.cmd init slidev@latest
```

Im Assistenten:
- Projektname eingeben, beispielsweise `familienkonflikte`.
- Installation der Pakete bestätigen.
- Paketmanager `npm` auswählen.
- Start der Vorschau bei Bedarf bestätigen.

Der Projektordner wird automatisch angelegt.

## Bestehendes Projekt öffnen

```powershell
cd "C:\Users\sbelt\Documents\Präsentationen\familienkonflikte"
```

## Server starten

```powershell
npm.cmd run dev
```

Das Terminal während der Nutzung geöffnet lassen.

## Server beenden

Im laufenden Terminal:

**Strg+C**

## Server neu starten

Zuerst **Strg+C**, danach:

```powershell
npm.cmd run dev
```

## Browser automatisch öffnen

```powershell
npm.cmd run dev -- --open
```

## Anderen Port verwenden

Beispielsweise Port 3031:

```powershell
npm.cmd run dev -- --port 3031
```

Die Vorschau ist dann unter http://localhost:3031/ erreichbar.

## Cache neu aufbauen

Zuerst den laufenden Server mit **Strg+C** beenden:

```powershell
npm.cmd run dev -- --force
```

## Pakete installieren

Bei einem kopierten oder heruntergeladenen Projekt ohne `node_modules`:

```powershell
npm.cmd install
```

## Theme installieren

Beispiel: Standard-Theme installieren:

```powershell
npm.cmd install @slidev/theme-default
```

Im ersten Konfigurationsblock der `slides.md` auswählen:

```yaml
---
theme: default
---
```

## Website erzeugen

```powershell
npm.cmd run build
```

Die fertigen Dateien liegen im Ordner `dist`.

## Website für einen Hugo-Unterpfad erzeugen

```powershell
npm.cmd run build -- --base /vortraege/konfliktklaerung/ --without-notes
```

- `--base` setzt den späteren URL-Pfad.
- Der Pfad muss mit `/` beginnen und enden.
- `--without-notes` entfernt die Sprechernotizen aus der veröffentlichten Website.

Den gesamten **Inhalt** von `dist` nach folgendem Hugo-Verzeichnis kopieren:

```text
DEIN-HUGO-PROJEKT/static/vortraege/konfliktklaerung/
```

Anschließend Hugo wie gewohnt bauen und veröffentlichen.

## PDF exportieren

```powershell
npm.cmd run export
```

## Bestimmte Folien als PDF exportieren

Beispiel: Folie 1 sowie Folien 3 bis 5:

```powershell
npm.cmd run export -- --range "1,3-5"
```

## Einblendungen einzeln exportieren

Jeder Einblendungsschritt erhält eine eigene PDF-Seite:

```powershell
npm.cmd run export -- --with-clicks
```

## PNG-Bilder exportieren

```powershell
npm.cmd run export -- --format png
```

## PowerPoint exportieren

Jede Folie wird als Bild in die PowerPoint-Datei übernommen:

```powershell
npm.cmd run export -- --format pptx
```

Der Export benötigt Playwright und einen passenden Browser. Falls Komponenten fehlen, die Installationshinweise im Terminal beachten.

## Befehlsübersicht anzeigen

```powershell
npx.cmd slidev --help
```

Für ein installiertes Slidev-Projekt verwenden.

## Browseradressen

Bei laufendem Server auf Port 3030:

| Ansicht | Adresse |
|---|---|
| Präsentation | http://localhost:3030/ |
| Moderatorenansicht mit Notizen | http://localhost:3030/presenter/ |
| Folienübersicht | http://localhost:3030/overview/ |
| Browser-Exportansicht | http://localhost:3030/export/ |
| MCP-Schnittstelle für KI-Programme | http://localhost:3030/__mcp |

Die MCP-Adresse wird im KI-Programm konfiguriert; sie ist keine normale Bedienoberfläche.

## Tastatursteuerung der Präsentation

| Taste | Funktion |
|---|---|
| Pfeil rechts oder Leertaste | Nächste Einblendung oder Folie |
| Pfeil links | Vorherige Einblendung oder Folie |
| Pfeil runter | Nächste Folie |
| Pfeil hoch | Vorherige Folie |
| O | Folienübersicht ein-/ausblenden |
| F | Vollbild ein-/ausschalten |
| G | Zu einer bestimmten Folie springen |

Die Navigationsleiste erscheint, wenn die Maus in die linke untere Ecke bewegt wird.

## Dateien für die eigene Vorlage

| Datei | Zweck |
|---|---|
| `slides.md` | Inhalte, Folienreihenfolge und Sprechernotizen |
| `style.css` | Globale Gestaltung aller Folien |
| `package.json` | Projektabhängigkeiten und npm-Befehle |
| `public/` | Bilder und andere statische Dateien |
| `dist/` | Erzeugte Website nach dem Build |

`style.css` liegt direkt neben `slides.md` und `package.json`.

Für den cremefarbenen Hintergrund unserer Vorlage:

```css
.slidev-layout {
  background: #f8f5f0 !important;
}
```

## Typische Fehler

### „Could not read package.json“ / ENOENT

Der Befehl wurde im falschen Ordner ausgeführt.

Mit `cd` in den eigentlichen Projektordner wechseln. Dort muss `package.json` liegen.

### Gestaltung erscheint nicht

1. Prüfen, ob `style.css` neben der verwendeten `slides.md` liegt.
2. Datei speichern.
3. Server mit **Strg+C** beenden und erneut starten.
4. Browser mit **Strg+F5** neu laden.

### Zusätzliche Optionen werden nicht übernommen

Bei npm-Skripten müssen Slidev-Optionen hinter `--` stehen:

```powershell
npm.cmd run dev -- --port 3031
```

## Voraussetzung für die npm-Befehle

Die `package.json` enthält diese Skripte:

```json
{
  "scripts": {
    "dev": "slidev --open",
    "build": "slidev build",
    "export": "slidev export"
  }
}
```

Bei einer bestehenden `package.json` nur den Abschnitt `scripts` prüfen oder ergänzen. Die übrigen Einträge beibehalten.

## Offizielle Dokumentation

- Befehle: https://sli.dev/builtin/cli
- Bedienung: https://sli.dev/guide/ui
- Veröffentlichen: https://sli.dev/guide/hosting
