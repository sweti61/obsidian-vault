# Implementierungsdokument sweti.de

**Stand:** 19.08.2026  
**Projekt:** sweti.de  
**Technologie:** Hugo  
**Konfigurationsdatei:** `config.toml`  
**Ziel:** Technische Umsetzung einer kleinen, content-getriebenen Marketing-Website mit eigenem Hugo-Layout.

---

## 1. Grundsatz

`sweti.de` wird als vollständig eigenes Hugo-Projekt umgesetzt.

Ananke dient ausschließlich als architektonische Referenz. Das Theme selbst wird nicht eingebunden.

Es gibt insbesondere keinen Eintrag wie:

```toml
theme = "ananke"
```

Die Website erhält ein eigenes Layout-System unter `layouts/`.

Die zentrale technische Leitlinie lautet:

> Frontmatter beschreibt die Seite. Markdown enthält den Inhalt. Shortcodes strukturieren besondere Content-Bausteine. Partials strukturieren das Template.

Die Website ist damit ausdrücklich **nicht konfigurationsgetrieben**, sondern **content-getrieben**.

**Mobile First:** Die mobile Darstellung ist die primäre Design- und Implementierungsbasis von `sweti.de`. Desktop-Layouts sind Erweiterungen der mobilen Grundstruktur, nicht umgekehrt.

---

## 2. Projektstatus

Das Hugo-Projekt wird neu angelegt.

Aktuell existieren:

- noch kein Hugo-Projekt für `sweti.de`
- noch kein Git-Repository
- noch kein GitHub-Repository

Der Aufbau beginnt daher mit einer leeren Hugo-Struktur.

---

## 3. Hugo-Konfiguration

Als Konfigurationsdatei wird verbindlich verwendet:

```text
config.toml
```

`hugo.toml` wird für dieses Projekt nicht verwendet.

Grund: In bisherigen Projekten traten bei einzelnen Einstellungen mit `hugo.toml` Probleme auf. Die Ursache ist nicht abschließend geklärt. Für `sweti.de` wird deshalb bewusst `config.toml` verwendet.

---

## 4. Technischer Stack

Die Website basiert auf:

- Hugo
- Tachyons
- eigenem CSS
- Hugo Pipes
- Feather Icons als lokale SVGs
- wenigen Partials
- wenigen Shortcodes
- sehr wenig JavaScript
- Hugo Image Processing
- Page Bundles für Landingpages

Nicht vorgesehen sind:

- npm
- pnpm
- Bootstrap
- Sass als Voraussetzung
- JavaScript-Frameworks
- ein externes Hugo-Theme
- komplexe Build-Pipelines

Lokale Entwicklung:

```powershell
hugo server
```

Produktions-Build:

```powershell
hugo
```

---

## 5. CSS-Architektur

### 5.1 Grundprinzip

Die Aufgaben werden klar getrennt:

```text
Tachyons = Layout und Utilities
sweti.css = CI, Komponenten und projektspezifische Gestaltung
```

Tachyons wird lokal im Projekt gespeichert und nicht über ein CDN geladen.

Vorgesehene Struktur:

```text
assets/
└── css/
    ├── tachyons.min.css
    └── sweti.css
```

Zu Beginn werden bewusst nur diese beiden CSS-Dateien verwendet.

Eine weitere Aufteilung von `sweti.css` in Komponenten-Dateien erfolgt erst, wenn die Datei so groß wird, dass die Wartbarkeit darunter leidet.

---

## 6. Hugo Pipes für CSS

CSS wird über Hugo Pipes eingebunden.

Ziele:

- automatische Minifizierung
- Fingerprinting
- Cache-Busting
- keine zusätzliche Build-Kette

Beispiel:

```go-html-template
{{ $tachyons := resources.Get "css/tachyons.min.css" | minify | fingerprint }}
{{ $sweti := resources.Get "css/sweti.css" | minify | fingerprint }}

<link rel="stylesheet"
      href="{{ $tachyons.RelPermalink }}"
      integrity="{{ $tachyons.Data.Integrity }}">

<link rel="stylesheet"
      href="{{ $sweti.RelPermalink }}"
      integrity="{{ $sweti.Data.Integrity }}">
```

Tachyons und das eigene CSS werden zunächst als getrennte Ressourcen ausgeliefert.

Eine spätere Zusammenführung ist möglich, aber für Version 1 nicht notwendig.

---

## 7. Typografie

Vorgesehen sind:

### Überschriften

Montserrat

### Fließtext

Open Sans

Die Schriften werden über Google Fonts geladen.

Orientierungswerte:

```css
body {
  font-size: 1.125rem;
  line-height: 1.65;
}

h1 {
  font-size: clamp(2rem, 5vw, 3.5rem);
}

h2 {
  font-size: clamp(1.6rem, 3.5vw, 2.5rem);
}
```

Die endgültigen Größen werden beim visuellen Aufbau geprüft und angepasst.

---

## 8. Layoutbreiten

Es werden zwei unterschiedliche Inhaltsbreiten verwendet.

### Seitenbreite

Für:

- Header
- Cards
- Hero
- Bild/Text-Bereiche
- Footer
- mehrspaltige Bereiche

Beispiel:

```css
:root {
  --content-width: 72rem;
}
```

### Lesebreite

Für längere Fließtexte:

```css
:root {
  --text-width: 46rem;
}
```

Beispiel:

```css
.container {
  max-width: var(--content-width);
  margin-inline: auto;
}

.prose {
  max-width: var(--text-width);
}
```

Tachyons übernimmt weiterhin Abstände, Flexbox, Breiten und responsive Layout-Hilfen.

---

## 9. Drei-Ebenen-Architektur

Das Template-System wird in drei Ebenen gegliedert.

### 9.1 Templates

Templates definieren die Struktur ganzer Seiten oder Seitentypen.

Beispiele:

```text
layouts/_default/baseof.html
layouts/_default/single.html
layouts/home.html
layouts/404.html
```

Beispiel:

```go-html-template
{{ define "main" }}

  {{ partial "hero.html" . }}

  <main id="main">
    {{ .Content }}
  </main>

{{ end }}
```

---

### 9.2 Partials

Partials sind wiederverwendbare Bestandteile des Template-Systems.

Vorgesehen:

```text
layouts/partials/
├── head.html
├── header.html
├── hero.html
├── footer.html
└── seo.html
```

Beispiele für ihre Aufgaben:

- `head.html`: technische Head-Struktur
- `header.html`: Name, Navigation, Burger-Menü
- `hero.html`: zentrale H1-Ausgabe und optionales Hero-Bild
- `footer.html`: Impressum, Datenschutz, Kontakt, Social Links
- `seo.html`: Meta-Tags, Canonical, OpenGraph und weitere SEO-Basis

Partials werden nicht aus Markdown heraus aufgerufen.

---

### 9.3 Shortcodes

Shortcodes werden im Markdown verwendet.

Sie bilden redaktionelle oder marketingbezogene Komponenten.

Geplant sind zunächst:

```text
layouts/shortcodes/
├── image.html
└── icon.html
```

Später nach Bedarf:

```text
card.html
card-grid.html
cta.html
video.html
image-text.html
```

Die späteren Shortcodes werden nicht vorab als leere Dateien angelegt.

Grundsatz:

> Shortcodes erhalten möglichst wenige Parameter. Inhalt wird bevorzugt als Inner Content übergeben.

Beispiel:

```go-html-template
{{</* card title="Pflege und Verantwortung" icon="users" */>}}

Wenn Geschwister unterschiedliche Vorstellungen davon haben,
wer welche Verantwortung übernehmen soll.

{{</* /card */>}}
```

---

## 10. Content-Modell

Die Inhalte werden überwiegend in normalem Markdown geschrieben.

Frontmatter bleibt bewusst klein.

Typischer Aufbau:

```yaml
---
title: "Mediation bei Pflegekonflikten"
description: "Konfliktklärung für Familien bei Pflege und Verantwortung."
tags:
  - Pflege
  - Familie
---
```

Nicht vorgesehen ist eine umfangreiche Frontmatter-Steuerung von:

- Sections
- Cards
- Content-Blöcken
- Seitenaufbau
- komplexen Hero-Strukturen
- CTA-Blöcken

Der eigentliche Seiteninhalt befindet sich im Markdown.

---

## 11. Homepage

Die Homepage verwendet:

```text
content/_index.md
```

Auch die Homepage enthält normalen Markdown und Shortcodes.

`layouts/home.html` stellt nur die strukturelle Seite bereit.

Der Inhalt soll nicht fest im Template verdrahtet werden.

---

## 12. Page Bundles

Landingpages werden verbindlich als Hugo Page Bundles angelegt.

Beispiel:

```text
content/
└── angebote/
    └── pflegekonflikte/
        ├── index.md
        ├── hero.png
        ├── portrait.png
        └── konflikt.png
```

Alternativ dürfen Bilder auch als JPG vorliegen:

```text
hero.jpg
portrait.jpg
```

Die Bilddateien bleiben zusammen mit dem jeweiligen Inhalt im Page Bundle.

---

## 13. Bildformat und Quelldateien

Viele vorhandene Bilder und Grafiken liegen als PNG vor.

Diese PNG-Dateien werden als Quelldateien im Page Bundle beibehalten.

Es ist nicht vorgesehen, sie vorab manuell in JPG oder WebP umzuwandeln.

Hugo übernimmt die Verarbeitung für die Frontend-Ausgabe.

Grundprinzip:

```text
Originaldatei im Page Bundle
        ↓
Hugo Image Processing
        ↓
optimierte Ausgabe
```

---

## 14. Hero-System

Der Hero wird als Partial implementiert:

```text
layouts/partials/hero.html
```

Der Hero soll möglichst wenig Frontmatter benötigen.

Der Seitentitel kommt automatisch aus:

```go-html-template
.Title
```

Beispiel-Frontmatter:

```yaml
---
title: "Mediation bei Pflegekonflikten"
description: "Konfliktklärung für Familien bei Pflege und Verantwortung."
---
```

Ein Hero-Bild wird über eine Dateinamenskonvention erkannt.

Beispiele:

```text
hero.png
hero.jpg
hero.jpeg
```

Der Partial sucht unabhängig von der Dateiendung:

```go-html-template
{{ with .Resources.GetMatch "hero.*" }}
```

Damit ist kein zusätzliches Frontmatter wie

```yaml
hero:
  image: ...
```

notwendig.

---

## 15. Bild-Shortcode

Ein zentraler Bild-Shortcode wird frühzeitig implementiert.

Geplanter Aufruf:

```go-html-template
{{</* image
    src="portrait.png"
    alt="Swetoslaw Beltschew"
*/>}}
```

Optional mit Bildunterschrift:

```go-html-template
{{</* image
    src="portrait.png"
    alt="Swetoslaw Beltschew"
*/>}}

Swetoslaw Beltschew

{{</* /image */>}}
```

Der Shortcode soll:

- Bilder als Page Resources finden
- PNG und JPG als Quellen akzeptieren
- Hugo Image Processing nutzen
- responsive Varianten erzeugen
- `srcset` erzeugen
- sinnvolle Größen bereitstellen
- Breite und Höhe setzen
- Layout Shift reduzieren
- Lazy Loading verwenden
- Alt-Text ausgeben
- optional Bildunterschriften unterstützen

Der Bild-Shortcode wird als zentrale Basis verwendet.

Spätere Komponenten wie `image-text` sollen nicht unabhängig davon eigene Bildlogik entwickeln.

---

## 16. Feather Icons

Feather Icons werden lokal gespeichert.

Pfad:

```text
assets/icons/feather/
```

Ein Shortcode wird bereitgestellt:

```go-html-template
{{</* icon name="calendar" */>}}
```

Die SVGs sollen über CSS steuerbar sein.

Die bestehende, bereits erprobte Vorgehensweise aus den anderen Hugo-Projekten dient als Grundlage.

---

## 17. Navigation

Es wird nur eine Navigation implementiert.

Auch auf Desktop-Geräten wird ein Burger-Menü verwendet.

Grundzustand:

```text
Swetoslaw Beltschew                         ☰
```

Nach dem Öffnen erscheinen die Navigationspunkte.

Beispielsweise:

```text
Angebote
Über mich
Kontakt
```

Zusätzlich können im geöffneten Menü Social-Media-Links erscheinen.

Beispiele:

- LinkedIn
- YouTube

Die Social-Media-Links werden zentral in `config.toml` gepflegt.

Die Darstellung erfolgt mit lokalen SVG-Icons.

---

## 18. Burger-Menü

Das Burger-Menü soll technisch so einfach wie möglich bleiben.

Es gibt:

- nur eine Navigation
- keine getrennte Desktop- und Mobile-Navigation
- keine verschachtelten Menüs
- kein Overlay-System, wenn es nicht notwendig ist

Das JavaScript liegt in:

```text
assets/js/menu.js
```

Anforderungen:

- tastaturbedienbar
- `aria-expanded`
- klare Fokuszustände
- große Touch-Flächen
- keine unnötigen Animationen

---

## 19. Social Media

Social-Media-Links werden zentral über `config.toml` definiert.

Beispiel:

```toml
[[params.social]]
name = "linkedin"
url = "https://www.linkedin.com/..."

[[params.social]]
name = "youtube"
url = "https://www.youtube.com/..."
```

Sie können insbesondere im geöffneten Burger-Menü und optional im Footer erscheinen.

---

## 20. Ordnerstruktur

Vorgesehene Startstruktur:

```text
sweti.de/
├── assets/
│   ├── css/
│   │   ├── tachyons.min.css
│   │   └── sweti.css
│   │
│   ├── icons/
│   │   └── feather/
│   │
│   └── js/
│       └── menu.js
│
├── content/
│   ├── _index.md
│   ├── angebote/
│   ├── ueber-mich/
│   └── kontakt/
│
├── layouts/
│   ├── _default/
│   │   ├── baseof.html
│   │   └── single.html
│   │
│   ├── partials/
│   │   ├── head.html
│   │   ├── header.html
│   │   ├── hero.html
│   │   ├── footer.html
│   │   └── seo.html
│   │
│   ├── shortcodes/
│   │   ├── image.html
│   │   └── icon.html
│   │
│   ├── home.html
│   └── 404.html
│
├── static/
├── archetypes/
└── config.toml
```

Noch nicht benötigte Shortcodes werden erst angelegt, wenn sie tatsächlich implementiert werden.

---

## 21. Reihenfolge der Implementierung

Die Umsetzung erfolgt schrittweise.

### Phase 1: Projektbasis

1. Neues Hugo-Projekt erzeugen
2. Grundlegende Verzeichnisstruktur anlegen
3. `config.toml` erstellen
4. Tachyons lokal integrieren
5. `sweti.css` mit Variablen und Grundtypografie anlegen

### Phase 2: Template-Grundstruktur

6. `baseof.html`
7. `head.html`
8. `header.html`
9. Burger-Menü
10. `hero.html`
11. `footer.html`
12. `menu.js`

### Phase 3: Erste Testseite

13. `content/_index.md`
14. erste minimale Homepage erzeugen
15. responsive Verhalten prüfen
16. Typografie und Breiten prüfen
17. Navigation und Accessibility prüfen

### Phase 4: Bilder

18. `image.html`
19. Hugo Image Processing
20. responsive Bildgrößen
21. `srcset`
22. PNG- und JPG-Verarbeitung
23. Hero-Bildverarbeitung
24. Alt-Text und Bildunterschriften

### Phase 5: Weitere Content-Komponenten

Erst danach:

25. `icon.html`
26. `card.html`
27. `card-grid.html`
28. `cta.html`
29. `video.html`
30. `image-text.html`

---

## 22. Entwicklungsprinzipien

Für die gesamte Implementierung gelten folgende Regeln:

### Einfachheit

Keine technische Abstraktion ohne konkreten Nutzen.

### Keine Vorab-Komplexität

Komponenten werden erst implementiert, wenn sie tatsächlich gebraucht werden.

### Wiederverwendung

Gemeinsame Template-Strukturen gehören in Partials.

Gemeinsame Content-Komponenten gehören in Shortcodes.

### Kein HTML im Frontmatter

Frontmatter enthält Metadaten, nicht den Seitenaufbau.

### Markdown bleibt der Hauptinhalt

Texte und redaktionelle Inhalte bleiben im Markdown sichtbar und leicht bearbeitbar.

### Hugo-Funktionen bevorzugen

Wo Hugo bereits Funktionen bereitstellt, werden diese genutzt.

Insbesondere:

- Page Resources
- Hugo Pipes
- Image Processing
- Menüs
- Taxonomien
- Canonical URLs
- Sitemap
- robots.txt

### Minimales JavaScript

JavaScript wird nur verwendet, wenn HTML und CSS allein die Funktion nicht sinnvoll bereitstellen können.

---

## 23. Noch nicht festgelegt

Folgende Punkte werden bewusst erst beim visuellen Aufbau entschieden:

- genaue Verwendung der Grautöne
- finale Schriftgrößen
- exakte Abstände
- genaue Containerbreite
- Button-Design
- Card-Radius
- Schatten
- konkrete Hero-Höhen
- genaue Menüanimation
- Detailgestaltung der Social Icons
- finale Bildgrößen für `srcset`

Diese Entscheidungen verändern die grundlegende Architektur nicht.

---

## 24. Verbindliche Architekturentscheidung

Für die weitere Umsetzung gilt:

> **Hugo + eigenes Layout + lokales Tachyons + Hugo Pipes + sweti.css + lokale Feather-SVGs + Page Bundles + Hugo Image Processing + wenige Partials + wenige Shortcodes + Markdown als Hauptinhalt.**

Ananke wird nicht eingebunden.

`config.toml` ist die zentrale Hugo-Konfiguration.

Die Website wird bewusst klein, nachvollziehbar und wartbar gehalten.
