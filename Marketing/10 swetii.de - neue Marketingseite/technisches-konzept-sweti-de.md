# Technisches Konzept für sweti.de

**Stand:** 19.08.2026  
**Projekt:** Neue leichte Marketing-Website für Swetoslaw Beltschew  
**Domain:** `sweti.de`  
**Technologie:** Hugo  
**Zweck:** Schlanke, marketingorientierte Website für Privatpersonen 50+ mit kurzen Landingpages für unterschiedliche Zielgruppen und Angebote.

---

## 1. Zielsetzung

`sweti.de` wird als eigenständige, neue Marketing-Website entwickelt. Sie ist keine Migration und keine vereinfachte Kopie von `mediator.sweti.de`.

Die Website soll:

- leichtgewichtig und schnell sein
- mobil sehr gut funktionieren
- modern, ruhig und vertrauenswürdig wirken
- kurze Landingpages für Zielgruppen und Angebote bereitstellen
- persönliche Fotos von Swetoslaw Beltschew zurückhaltend einsetzen
- die vorhandene CI aufnehmen
- bestehende YouTube-Videos über Vorschaubilder verlinken
- ohne Blog, Pillarseiten und Lead Magnets auskommen
- mit möglichst wenig technischen Abhängigkeiten betrieben werden
- später schrittweise erweiterbar bleiben

Die technische Infrastruktur und die Erfahrungen aus `mediator.sweti.de` können genutzt werden, ohne dessen Theme oder Inhaltsstruktur zu übernehmen.

---

## 2. Zielgruppe

Primäre Zielgruppe sind **Privatpersonen 50+**.

Daraus ergeben sich besondere Anforderungen:

- große und gut lesbare Schrift
- hoher Kontrast
- ruhige Gestaltung
- klare Navigation
- große Klickflächen
- wenig visuelle Ablenkung
- kurze Wege zu Angebot, Person und Kontakt
- verständliche, eindeutige CTAs
- keine unnötigen Animationen
- keine überladenen Menüs oder verschachtelten Navigationsstrukturen

---

## 3. Grundarchitektur

Die Website basiert auf:

- Hugo
- Tachyons als CSS-Utility-Bibliothek
- eigenem CI-CSS
- Feather Icons als SVG-Icons
- wenigen Partials für die globale Seitenstruktur
- Shortcodes für wiederverwendbare Marketing-Komponenten
- Hugo-internen Templates bzw. eigenen Ergänzungen für SEO

Es wird **kein Bootstrap** verwendet.

Es wird **keine npm-/pnpm-basierte Build-Kette** vorausgesetzt.

Die Website soll mit einem möglichst einfachen Workflow betrieben werden können:

```powershell
hugo server
```

für die lokale Entwicklung und

```powershell
hugo
```

für den produktiven Build.

---

## 4. Gestaltungsprinzip

Die visuelle Grundhaltung orientiert sich an der bestehenden CI:

- ruhig
- klar
- verbindlich
- menschlich
- analytisch
- viel Weißraum
- zurückhaltende Farbigkeit
- wenig dekorative Effekte

Die Website übernimmt die bestehende Farbwelt, Typografie und Illustrationssprache, wird aber für den neuen Zweck angepasst.

---

## 5. Farbpalette

### Basisfarben

```css
--color-bg: #F9F7F4;
--color-gray-light: #E6E3DF;
--color-gray-mid: #6F6F6F;
--color-gray-dark: #5A5856;
--color-black-soft: #1A1A1A;
```

Die genaue Verwendung der Grautöne wird beim visuellen Entwurf festgelegt.

### Akzentfarben

```css
--color-blue: #9FBFE9;
--color-green: #AAC8A7;
--color-orange: #EBC49F;
```

Regel:

> Alle drei Akzentfarben gehören zur Gesamtpalette. Innerhalb eines einzelnen visuellen Elements oder einer einzelnen Card soll möglichst nur eine Akzentfarbe verwendet werden.

---

## 6. Typografie

### Überschriften

**Montserrat Bold / SemiBold**

Einsatz:

- H1
- H2
- Card-Titel
- Buttons bei Bedarf

### Fließtext

**Open Sans Regular / Semibold**

Alternative:

- Source Sans 3, falls später aus technischen oder gestalterischen Gründen sinnvoll

### Zielgrößen

Für die Zielgruppe 50+ sollte die Typografie großzügiger als bei vielen Standard-Themes dimensioniert werden.

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

Die endgültigen Werte werden im Design abgestimmt.

---

## 7. Bildsprache

Auf `sweti.de` sind **persönliche Fotos von Swetoslaw Beltschew ausdrücklich vorgesehen**.

Die bisherige CI-Regel „keine realistischen Fotos“ wird für diese Website nicht übernommen.

Verwendet werden:

- persönliche Fotos in unterschiedlichen Umgebungen
- CI-Strichmännchen
- Wasserfarben-Elemente
- zurückhaltende grafische Akzente

Nicht verwendet werden:

- typische Stockfotos
- überladene Symbolbilder
- aggressive Marketingmotive
- starke 3D-Effekte
- grelle Farben

Fotos sollen vor allem innerhalb von Cards, Sections oder kompakten Bild/Text-Blöcken eingesetzt werden und nicht die gesamte Website dominieren.

---

## 8. Markenauftritt

`sweti.de` erhält einen **reduzierten Auftritt unter dem Namen Swetoslaw Beltschew**.

Die Website muss nicht mit der Marke „mediator sweti“ auftreten.

Der Header soll deshalb eher enthalten:

```text
Swetoslaw Beltschew
```

oder eine ähnlich reduzierte Namensdarstellung.

Ein vorhandenes Logo kann optional verwendet werden, ist aber nicht zwingende Voraussetzung der Grundarchitektur.

---

## 9. Seitenstruktur

Die Website wird bewusst klein gehalten.

Geplante Seitentypen:

```text
/
├── angebote/
│   ├── ...
│   ├── ...
│   └── ...
├── ueber-mich/
├── kontakt/
└── tags/
```

Die konkrete Zahl und Benennung der Landingpages wird in der Inhaltskonzeption festgelegt.

Es gibt:

- keine Blogsektion
- keine Pillarseiten
- keine Lead Magnets
- keine komplexe Wissensdatenbank
- keine mehrsprachige Struktur

---

## 10. Homepage

Die Homepage soll kurz bleiben.

Sie dient vor allem als:

- Einstieg
- Vertrauensaufbau
- Orientierung
- Verteiler zu Landingpages
- Einstieg zum Kontakt

Mögliche Struktur:

1. Hero
2. kurze Positionierung
3. 2 bis 4 Zielgruppen- oder Angebotskarten
4. persönliche Sektion mit Foto
5. ausgewählte Video-Karten
6. CTA zu Calendly
7. minimaler Footer

Die Homepage soll nicht versuchen, alle Inhalte vollständig abzubilden.

---

## 11. Landingpages

Landingpages bilden das zentrale Marketing-Instrument.

Sie sollen:

- auf eine Zielgruppe oder ein konkretes Angebot fokussieren
- kurz bleiben
- ein klares Problem oder Anliegen adressieren
- eine verständliche Beschreibung des Angebots geben
- mit wenigen visuellen Bausteinen arbeiten
- mit einem klaren CTA enden

Mögliche Bausteine:

- Hero
- kurzer Intro-Text
- Problem-/Situationskarten
- Bild/Text-Sektion
- Ablauf oder Vorgehen
- Video-Card
- CTA

---

## 12. Templates

Es werden eigene Templates vorgesehen für:

```text
Home
Landingpage / Angebot
About
Kontakt
Tags
404
```

Empfohlene Hugo-Struktur:

```text
layouts/
├── _default/
│   ├── baseof.html
│   └── single.html
├── home.html
├── landing/
│   └── single.html
├── about/
│   └── single.html
├── kontakt/
│   └── single.html
├── taxonomy.html
├── term.html
├── 404.html
└── partials/
    ├── head.html
    ├── header.html
    ├── footer.html
    └── seo.html
```

Die konkrete Hugo-Verzeichnisstruktur kann an die verwendete Hugo-Version angepasst werden.

---

## 13. Partials und Shortcodes

Grundregel:

> Partials für globale Seitenstruktur, Shortcodes für redaktionelle und marketingorientierte Bausteine.

### Partials

Nur wenige globale Partials:

```text
head.html
header.html
footer.html
seo.html
```

Optional später:

```text
analytics.html
social-icons.html
```

### Shortcodes

Vorgesehene Shortcodes:

```text
card
card-grid
cta
video
image-text
icon
```

Optional später:

```text
quote
steps
faq
```

Shortcodes sollen so einfach wie möglich bleiben und keine unnötige Logik enthalten.

---

## 14. Card-System

Cards sind ein zentrales Gestaltungselement.

Sie können verwendet werden für:

- Angebote
- Zielgruppen
- Themen
- Videos
- Inhalte aus Tags
- kurze Hinweise

Eine Standard-Card kann enthalten:

- optionales Bild oder Icon
- Titel
- kurzer Text
- Link
- optionale Akzentfarbe

Beispiel:

```html
<article class="card">
  <img src="..." alt="...">
  <h3>Pflege und Verantwortung</h3>
  <p>Wenn Geschwister unterschiedliche Vorstellungen davon haben, wer was übernehmen soll.</p>
  <a href="/angebote/pflege/">Mehr erfahren</a>
</article>
```

Die responsive Anordnung erfolgt mit Tachyons-Klassen.

---

## 15. Tachyons

Tachyons übernimmt vor allem:

- Layout
- Flexbox
- Breiten
- Abstände
- responsive Breakpoints
- Display Utilities
- Typografie-Hilfen
- Sichtbarkeit

Beispiel:

```html
<section class="mw8 center ph3 pv5">
  <div class="flex flex-wrap">
    <div class="w-100 w-50-m w-third-l pa3">
      ...
    </div>
  </div>
</section>
```

Das eigene CSS übernimmt dagegen:

- CI-Farben
- Cards
- Hero
- Buttons
- Header
- Burger-Menü
- Video-Cards
- spezielle Typografie
- Fokuszustände
- Feinabstimmungen

Grundprinzip:

```text
Tachyons = Layout und Utilities
sweti.css = CI und Komponenten
```

---

## 16. CSS-Struktur

Empfohlene Struktur:

```text
assets/
└── css/
    ├── main.css
    ├── variables.css
    ├── typography.css
    ├── components/
    │   ├── header.css
    │   ├── hero.css
    │   ├── cards.css
    │   ├── buttons.css
    │   ├── video.css
    │   └── footer.css
    └── accessibility.css
```

Alternativ kann Version 1 auch mit deutlich weniger Dateien beginnen.

Entscheidend ist eine klare Trennung von:

- Variablen
- globaler Typografie
- Komponenten
- Accessibility

---

## 17. Navigation

### Desktop

Klassische Navigation:

```text
Swetoslaw Beltschew    Angebote    Über mich    Kontakt
```

Optional kann später ein Menüpunkt für weitere Inhalte ergänzt werden.

### Mobil

Animiertes Burger-Menü.

Anforderungen:

- tastaturbedienbar
- `aria-expanded`
- klarer Fokuszustand
- ausreichend große Touch-Flächen
- keine verschachtelten mobilen Menüs, wenn nicht zwingend erforderlich

Die Menüpunkte werden zentral in `config.toml` bzw. `hugo.toml` definiert.

---

## 18. Hero-Bereich

Der Hero ist pro Seite konfigurierbar.

Mögliche Varianten:

```text
image
compact
none
```

Ein Hero kann enthalten:

- H1
- kurze Einleitung
- optionales Bild
- optionalen CTA

Beispiel Frontmatter:

```yaml
hero:
  type: image
  image: "pflege.jpg"
  text: "Wenn Verantwortung in der Familie zum Konflikt wird."
  cta:
    text: "Kennenlerngespräch vereinbaren"
    url: "https://calendly.com/sweti-mediator"
```

---

## 19. Automatische Title-Verarbeitung

Der Wert aus:

```yaml
title: "Mediation bei Pflegekonflikten"
```

soll automatisch verwendet werden für:

- HTML `<title>`
- H1 im Hero
- OpenGraph Title
- gegebenenfalls strukturierte Daten

Damit wird doppelte Pflege vermieden.

Eine separate SEO-Title-Angabe kann später optional ergänzt werden, falls einzelne Seiten einen abweichenden Suchmaschinentitel brauchen.

---

## 20. Frontmatter-Schema

Basis für Landingpages:

```yaml
---
title: "Mediation bei Pflegekonflikten"
description: "Konfliktklärung für Familien bei Pflege und Verantwortung."
type: "landing"
tags:
  - Pflege
  - Familie

hero:
  type: "image"
  image: "pflege.jpg"
  text: "Wenn Verantwortung zum Konflikt wird."

cta:
  text: "Kennenlerngespräch vereinbaren"
  url: "https://calendly.com/sweti-mediator"
---
```

Optionale spätere Felder:

```yaml
social_image:
noindex:
draft:
accent:
```

Das Frontmatter soll bewusst klein bleiben.

---

## 21. Taxonomie

Es wird nur eine Taxonomie vorgesehen:

```text
tags
```

Keine Kategorien und keine Serien.

Tags dienen dazu, thematisch verwandte Landingpages oder Inhalte zusammenzuführen.

Beispiel:

```yaml
tags:
  - Familie
  - Pflege
  - Konfliktklärung
```

Tag-Seiten zeigen Inhalte als **Card-Grid**, nicht als klassische Blogliste.

---

## 22. Feather Icons

Feather Icons werden als lokale SVGs eingebunden.

Empfohlener Pfad:

```text
assets/icons/feather/
```

Ein eigener Hugo-Shortcode:

```text
{{< icon name="calendar" >}}
```

soll das entsprechende SVG laden.

Icons können verwendet werden für:

- CTA
- Kontakt
- Social Media
- Cards
- Navigation bei Bedarf

Die Farbe soll über CSS steuerbar sein.

---

## 23. Social Media

Social-Media-Links werden zentral über `config.toml` oder `hugo.toml` konfiguriert.

Beispiel:

```toml
[[params.social]]
name = "linkedin"
url = "https://www.linkedin.com/..."

[[params.social]]
name = "youtube"
url = "https://www.youtube.com/..."
```

Die Ausgabe erfolgt über Feather Icons oder passende lokale SVGs.

Social Sharing ist nicht erforderlich.

---

## 24. Videos

Die vorhandenen YouTube-Videos werden **nicht direkt eingebettet**.

Stattdessen wird eine Video-Card genutzt:

- Vorschaubild
- Titel
- kurzer Beschreibungstext
- optionales YouTube-Symbol
- Klick öffnet das Video auf YouTube

Vorteile:

- bessere Performance
- weniger externe Skripte
- weniger Datenschutzprobleme
- ruhigeres Seitenbild

Beispiel:

```text
{{< video
  youtube="https://youtube.com/..."
  image="mediation-video.jpg"
  title="Was geschieht in einer Mediation?"
>}}
```

---

## 25. Kontakt und CTA

Es wird kein eigenes Kontaktformular benötigt.

Primärer CTA:

```text
Calendly
```

Zentrale URL:

```text
https://calendly.com/sweti-mediator
```

Zusätzlich können verwendet werden:

- E-Mail
- Telefon, falls gewünscht

Der CTA soll ruhig und nicht drängend formuliert werden.

Beispiele:

```text
Kennenlerngespräch vereinbaren
Termin auswählen
Unverbindlich kennenlernen
```

---

## 26. Footer

Der Footer bleibt minimal.

Geplante Inhalte:

```text
Kontakt
Impressum
Datenschutz
```

Optional:

- LinkedIn
- YouTube

Keine umfangreiche Sitemap im Footer.

---

## 27. SEO

Die Website erhält eine einfache, robuste SEO-Basis.

### Automatisch oder zentral erzeugt

- `<title>`
- Meta Description
- Canonical URL
- OpenGraph
- Twitter/X Cards nur falls sinnvoll
- Sitemap
- robots.txt
- strukturierte Daten in einfacher Form

### Frontmatter

Mindestens:

```yaml
title:
description:
```

Optional:

```yaml
social_image:
noindex:
```

### H1-Regel

Jede Seite erhält genau eine H1.

Standardmäßig wird der `title` aus dem Frontmatter als H1 im Hero ausgegeben.

---

## 28. Google Analytics

Google Analytics wird zentral in der Hugo-Konfiguration eingerichtet.

Beispiel:

```toml
[services.googleAnalytics]
ID = "G-XXXXXXXXXX"
```

Analytics soll nur in der Produktionsumgebung geladen werden.

Für lokale Entwicklung und Preview soll kein Tracking erfolgen.

Die datenschutzrechtliche konkrete Umsetzung wird separat entschieden.

---

## 29. Google Search Console

Google Search Console selbst benötigt keine Laufzeitintegration.

Die Site Verification soll zentral konfigurierbar sein.

Beispiel:

```toml
[params]
googleSiteVerification = "xxxxxxxxxxxxxxxx"
```

Ausgabe:

```html
<meta name="google-site-verification"
      content="xxxxxxxxxxxxxxxx">
```

---

## 30. robots.txt und Umgebungen

`robots.txt` soll abhängig von der Umgebung erzeugt werden.

### Produktion

Indexierung erlaubt.

### Entwicklung / Preview

Indexierung verhindern.

Beispielprinzip:

```text
production:
  index

development:
  noindex
```

Analytics soll ebenfalls nur in Produktion aktiviert werden.

---

## 31. Bilder und Hugo Image Processing

Bilder sollen möglichst über Hugo Resources verarbeitet werden.

Ziele:

- responsive Größen
- kleinere Dateigrößen
- WebP/JPEG
- saubere Alt-Texte
- möglichst keine unnötig großen Originaldateien im Frontend

Für Landingpages sind Page Bundles sinnvoll.

Beispiel:

```text
content/
└── angebote/
    └── pflegekonflikte/
        ├── index.md
        ├── hero.jpg
        ├── portrait.jpg
        └── illustration.png
```

Damit bleiben Inhalt und zugehörige Bilder zusammen.

---

## 32. Accessibility

Accessibility wird als Grundanforderung behandelt.

Mindestens:

- semantisches HTML
- sinnvolle Heading-Hierarchie
- genau eine H1 pro Seite
- Alt-Texte
- sichtbare Fokuszustände
- Tastaturbedienbarkeit
- ausreichend große Touchflächen
- ausreichende Kontraste
- `aria-expanded` im Burger-Menü
- Skip-Link zum Hauptinhalt

Beispiel:

```html
<a class="skip-link" href="#main">
  Zum Inhalt springen
</a>
```

---

## 33. Performance

Grundprinzip:

> So wenig JavaScript wie möglich.

Vorgesehenes JavaScript:

- Burger-Menü
- gegebenenfalls sehr kleine UI-Ergänzungen

Nicht vorgesehen:

- große JavaScript-Frameworks
- Slider als Standard
- Animation Libraries
- eingebettete YouTube-Player
- unnötige Tracking-Skripte

Animationen können später dezent ergänzt werden, sind für Version 1 aber nicht erforderlich.

---

## 34. Dateistruktur

Mögliche Gesamtstruktur:

```text
sweti.de/
├── assets/
│   ├── css/
│   │   ├── main.css
│   │   ├── variables.css
│   │   ├── typography.css
│   │   └── components/
│   ├── icons/
│   │   └── feather/
│   └── js/
│       └── menu.js
│
├── content/
│   ├── _index.md
│   ├── angebote/
│   │   └── ...
│   ├── ueber-mich/
│   │   └── index.md
│   └── kontakt/
│       └── index.md
│
├── layouts/
│   ├── _default/
│   │   ├── baseof.html
│   │   └── single.html
│   ├── partials/
│   │   ├── head.html
│   │   ├── header.html
│   │   ├── footer.html
│   │   └── seo.html
│   ├── shortcodes/
│   │   ├── card.html
│   │   ├── card-grid.html
│   │   ├── cta.html
│   │   ├── video.html
│   │   ├── image-text.html
│   │   └── icon.html
│   └── 404.html
│
├── static/
│   └── ...
│
└── hugo.toml
```

Die endgültige Struktur kann beim Aufbau vereinfacht werden.

---

## 35. Beispielkonfiguration

```toml
baseURL = "https://sweti.de/"
languageCode = "de-de"
title = "Swetoslaw Beltschew"

enableRobotsTXT = true

[taxonomies]
tag = "tags"

[params]
description = "Mediation und Konfliktklärung für Privatpersonen."
googleSiteVerification = ""

[services.googleAnalytics]
ID = ""

[[menu.main]]
name = "Angebote"
url = "/angebote/"
weight = 10

[[menu.main]]
name = "Über mich"
url = "/ueber-mich/"
weight = 20

[[menu.main]]
name = "Kontakt"
url = "/kontakt/"
weight = 30

[[params.social]]
name = "linkedin"
url = ""

[[params.social]]
name = "youtube"
url = ""
```

Die exakten Parameter werden während der Implementierung festgelegt.

---

## 36. Nicht Bestandteil von Version 1

Bewusst nicht vorgesehen:

- Blog
- Pillarseiten
- Lead Magnets
- Newsletter
- eigenes Kontaktformular
- Suche
- Mehrsprachigkeit
- komplexe Taxonomien
- Shop
- Login
- Kundenbereich
- npm/pnpm
- Bootstrap
- große JS-Frameworks
- komplexe Animationen
- eingebettete YouTube-Player

---

## 37. Erweiterbarkeit

Die Website soll später ohne grundlegenden Umbau ergänzt werden können.

Mögliche Erweiterungen:

- zusätzliche Landingpages
- FAQ-Komponente
- Testimonials
- weitere Video-Karten
- strukturierte Daten
- kleine Animationen
- weitere Social-Media-Kanäle
- zusätzliche Card-Varianten
- neue CTA-Varianten

Dabei soll die technische Basis unverändert bleiben.

---

## 38. Technische Leitentscheidung

Die zentrale Architektur lautet:

> **Hugo + Tachyons + eigenes CI-CSS + Feather-SVGs + wenige Partials + wiederverwendbare Shortcodes.**

Das Ziel ist kein universelles Theme, sondern ein kleiner, gezielt auf `sweti.de` zugeschnittener Hugo-Starter.

Er übernimmt bewusst nur die für das Projekt relevanten Prinzipien aus Ananke:

- responsive Layouts
- accessible markup
- Menü aus der Hugo-Konfiguration
- Burger-Menü auf Mobilgeräten
- konfigurierbarer Hero
- Social Icons aus der Konfiguration
- SEO-Grundfunktionen
- robots.txt je Umgebung

Nicht übernommen werden Funktionen wie:

- Reading Time
- Word Count
- Blog-spezifische Strukturen
- umfangreiche Internationalisierung
- Social Sharing
- komplexe Content-Logik

---

## 39. Status

Das technische Grundkonzept ist damit weitgehend abgeschlossen.

Offen bleiben vor allem gestalterische Detailentscheidungen, die erst beim visuellen Entwurf sinnvoll getroffen werden:

- genaue Zuordnung der Grautöne
- exakte Schriftgrößen
- Card-Radius
- Schattenstärke
- Button-Stil
- konkrete Hero-Varianten
- Abstände und Containerbreiten
- Detailgestaltung des Headers

Diese Punkte ändern die technische Architektur nicht.
