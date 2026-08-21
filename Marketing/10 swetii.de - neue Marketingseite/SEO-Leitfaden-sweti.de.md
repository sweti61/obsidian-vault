# SEO-Leitfaden für `sweti.de`

Dieser Leitfaden beschreibt die verbindlichen technischen und redaktionellen SEO-Regeln für `sweti.de`. Er ergänzt den Redaktionsleitfaden und dient sowohl bei der Erstellung neuer Seiten als auch bei späteren SEO-Prüfungen als Referenz.

Die Grundidee lautet:

> **SEO wird soweit wie möglich zentral durch Hugo und die Templates abgesichert. Die Redaktion verantwortet vor allem Titel, Description, Überschriften, Inhalte, URLs, Bilder sowie `date` und `lastmod`.**

---

## 1. Grundprinzip

Eine Seite soll für Nutzer und Suchmaschinen eindeutig beantworten können:

- Worum geht es auf dieser Seite?
- Für wen ist die Seite relevant?
- Welches Problem oder Anliegen behandelt sie?
- Welche Information oder Leistung wird angeboten?
- Was ist der nächste sinnvolle Schritt?

Technische SEO-Metadaten werden möglichst automatisch aus dem Content erzeugt. Layout- oder SEO-HTML soll nicht manuell in Markdown-Dateien geschrieben werden.

---

# 2. SEO-relevantes Frontmatter

Eine typische Content-Seite enthält:

```yaml
---
title: "Pflege und Verantwortung"
description: "Konfliktklärung für Familien, wenn Pflege und unterschiedliche Erwartungen zu Spannungen führen."
summary: "Wenn Geschwister unterschiedliche Vorstellungen darüber haben, wer Verantwortung übernehmen soll."
date: 2026-08-19
lastmod: 2026-08-21
tags:
  - angebote
weight: 10
---
```

Nicht jede Seite benötigt alle Felder.

## `title`

```yaml
title: "Pflege und Verantwortung"
```

Der `title` wird verwendet für:

- die H1 der Seite
- den HTML-`<title>`
- Open Graph
- Twitter/X-Metadaten
- Angebotskarten, wenn die Seite mit `tags: angebote` gekennzeichnet ist

### Vorgabe

**Seitentitel `<title>`: maximal 60 Zeichen bzw. ungefähr 561 Pixel.**

Da bei Hugo H1 und Seitentitel häufig aus demselben Frontmatter-Feld erzeugt werden, muss der Titel sowohl als Seitentitel als auch als sichtbare Überschrift funktionieren.

---

## `description`

```yaml
description: "Konfliktklärung für Familien bei Pflege und Verantwortung."
```

Die Description erscheint nicht automatisch als sichtbarer Text auf der Seite, sondern wird unter anderem verwendet für:

```html
<meta name="description" content="...">
```

sowie für Open Graph und Twitter/X.

### Vorgabe

**Description: maximal 155 Zeichen bzw. ungefähr 986 Pixel.**

Die Description sollte:

- den konkreten Inhalt der Seite beschreiben
- möglichst spezifisch sein
- keine bloße Wiederholung des Titels sein
- für Suchende verständlich formuliert sein

---

## `summary`

```yaml
summary: "Wenn Geschwister unterschiedliche Vorstellungen darüber haben, wer Verantwortung übernehmen soll."
```

`summary` dient vor allem internen Übersichten.

Bei Seiten mit:

```yaml
tags:
  - angebote
```

wird `summary` automatisch als Text der Angebotskarte auf `/angebote/` verwendet.

`summary` ist nicht identisch mit der Meta-Description.

---

## `date`

```yaml
date: 2026-08-19
```

`date` ist das ursprüngliche Veröffentlichungs- beziehungsweise redaktionelle Datum der Seite.

Wenn kein `lastmod` vorhanden ist, kann Hugo dieses Datum als Änderungsdatum in der Sitemap verwenden.

---

## `lastmod`

Bei einer späteren wesentlichen inhaltlichen Änderung:

```yaml
lastmod: 2026-08-21
```

Für `sweti.de` gilt:

| Frontmatter | Sitemap |
|---|---|
| nur `date` | `<lastmod>` entspricht `date` |
| `date` + `lastmod` | `<lastmod>` entspricht `lastmod` |
| nur `lastmod` | `<lastmod>` entspricht `lastmod` |
| weder `date` noch `lastmod` | normalerweise kein `<lastmod>` |

Bei Home- und Section-Seiten kann Hugo das Änderungsdatum auch aus geänderten untergeordneten Seiten ableiten.

### Wichtig

Ein Deployment allein ist **keine Inhaltsänderung**.

Bei jedem Deployment werden die HTML-Dateien neu erzeugt. Das Dateidatum im Verzeichnis `public/` ist deshalb für die redaktionelle Aktualität einer Seite bedeutungslos und darf nicht als `lastmod` übernommen werden.

`lastmod` wird nur bei einer **wesentlichen inhaltlichen Änderung** aktualisiert.

---

## `private`

Seiten, die erreichbar bleiben, aber nicht von Suchmaschinen indexiert werden sollen, erhalten:

```yaml
private: true
```

Beispiele:

- Datenschutz
- Impressum

Hugo erzeugt dafür:

```html
<meta name="robots" content="noindex, nofollow">
```

---

## `sitemap.disable`

Soll eine Seite zusätzlich nicht in der Sitemap erscheinen:

```yaml
sitemap:
  disable: true
```

Für Datenschutz und Impressum gilt daher:

```yaml
---
title: "Datenschutz"
description: "Datenschutzerklärung von sweti.de."
private: true
sitemap:
  disable: true
---
```

Dabei sind die beiden Einstellungen bewusst getrennt:

```text
private: true
→ noindex, nofollow

sitemap.disable: true
→ nicht in sitemap.xml
```

---

# 3. `<head>` und Meta-Daten

Die SEO-Metadaten werden zentral über:

```text
layouts/partials/seo.html
```

erzeugt.

Die Redaktion schreibt keine eigenen `<meta>`-Elemente in Markdown-Dateien.

Eine normale produktive Inhaltsseite enthält unter anderem:

```html
<title>Pflege und Verantwortung | Dr. Swetoslaw Beltschew</title>

<meta
  name="description"
  content="Konfliktklärung für Familien bei Pflege und Verantwortung.">

<link
  rel="canonical"
  href="https://sweti.de/angebote/angebot1/">

<meta
  name="robots"
  content="index, follow">
```

---

# 4. Canonical URL

Jede Seite erhält automatisch:

```html
<link rel="canonical" href="...">
```

Im Development beispielsweise:

```html
<link rel="canonical"
      href="http://localhost:1313/angebote/angebot1/">
```

in Production:

```html
<link rel="canonical"
      href="https://sweti.de/angebote/angebot1/">
```

Canonical-Tags werden nicht manuell im Content gepflegt.

---

# 5. Robots und Indexierung

## Development

Außerhalb der Produktionsumgebung wird ausgegeben:

```html
<meta name="robots" content="noindex, nofollow">
```

Die lokale `robots.txt` enthält zusätzlich:

```text
User-agent: *
Disallow: /
```

Damit soll eine Entwicklungsinstanz nicht indexiert werden.

---

## Production

Normale Seiten erhalten:

```html
<meta name="robots" content="index, follow">
```

Die produktive `robots.txt` enthält:

```text
User-agent: *
Allow: /

Sitemap: https://sweti.de/sitemap.xml
```

---

# 6. Taxonomien

`sweti.de` verwendet die Taxonomie:

```toml
[taxonomies]
  tag = "tags"
```

Beispielsweise:

```yaml
tags:
  - angebote
```

Die Taxonomie wird intern benötigt, insbesondere um die Angebotsübersicht unter:

```text
/angebote/
```

zu erzeugen.

Alle Seiten mit:

```yaml
tags:
  - angebote
```

werden dort automatisch als Angebotskarte gelistet, unabhängig davon, wo die Seite im Content-Baum liegt.

## Taxonomieseiten selbst

Automatisch erzeugte Seiten wie:

```text
/tags/
/tags/angebote/
```

sollen **nicht als SEO-Landingpages verwendet werden**.

Sie erhalten daher:

```html
<meta name="robots" content="noindex, nofollow">
```

und werden aus `sitemap.xml` ausgeschlossen.

Die Taxonomie selbst bleibt vollständig funktionsfähig.

---

# 7. Sitemap

Die Sitemap ist erreichbar unter:

```text
https://sweti.de/sitemap.xml
```

Sie enthält nur indexierbare Inhaltsseiten.

Nicht enthalten sind insbesondere:

- `/tags/`
- `/tags/angebote/`
- Datenschutz
- Impressum
- 404
- Testseiten
- Seiten mit `sitemap.disable: true`

Eine produktive Sitemap kann beispielsweise enthalten:

```xml
<loc>https://sweti.de/</loc>
<loc>https://sweti.de/angebote/</loc>
<loc>https://sweti.de/angebote/angebot1/</loc>
<loc>https://sweti.de/aktuelles/</loc>
<loc>https://sweti.de/kontakt/</loc>
<loc>https://sweti.de/ueber-mich/</loc>
```

---

# 8. Überschriftenstruktur

## H1

Jede Seite besitzt genau **eine H1**.

Sie wird automatisch aus:

```yaml
title: "..."
```

erzeugt.

### Vorgabe

**H1 maximal 70 Zeichen.**

Da H1 und `<title>` bei `sweti.de` häufig auf demselben Frontmatter-`title` beruhen, ist in der Praxis meistens die strengere `<title>`-Vorgabe von maximal 60 Zeichen maßgeblich.

Im Markdown wird deshalb keine zusätzliche H1 geschrieben.

Nicht:

```markdown
# Pflege und Verantwortung
```

sondern:

```markdown
## Wenn Verantwortung zum Konflikt wird
```

---

## Logische H1-H2-H3-Folge

Überschriften sollen eine nachvollziehbare Hierarchie bilden:

```text
H1 Pflege und Verantwortung
│
├── H2 Wenn Verantwortung zum Konflikt wird
│   │
│   ├── H3 Unterschiedliche Erwartungen
│   └── H3 Alte Rollen in der Familie
│
└── H2 Wie eine Konfliktklärung helfen kann
```

Überschriftsebenen sollen nicht allein aus optischen Gründen gewählt werden.

Wenn eine Überschrift optisch anders erscheinen soll, können Tachyons-Klassen verwendet werden:

```markdown
## Meine Arbeit ruht auf drei Säulen: {.f3 .fw4 .lh-title .mt4 .mb3}
```

Die semantische Ebene bleibt dabei H2.

---

# 9. Thin Content

Die reine Wortanzahl entscheidet nicht darüber, ob eine Seite Thin Content ist.

Entscheidend ist:

> **Kann Google anhand des Inhalts, der Überschriften H1/H2 und der Meta-Daten eindeutig erfassen, worum es auf der Seite geht und welchen eigenständigen Nutzen sie besitzt?**

Eine kurze Seite kann ausreichend sein, wenn sie eine klar begrenzte Aufgabe erfüllt.

Eine lange Seite kann trotzdem schwach sein, wenn sie:

- kaum konkrete Informationen enthält
- andere Seiten nur wiederholt
- keine eindeutige Suchintention bedient
- überwiegend allgemeine Aussagen enthält

### Orientierungswerte

| Seitentyp | Typische Textlänge | Fokus |
|---|---:|---|
| Kontakt- / Impressumsseite | 50–150 Wörter | Klare Kontaktdaten, Anfahrt, Öffnungszeiten |
| Spezifische Leistungs- / Angebotsseite | 300–600 Wörter | Nutzenversprechen, Zielgruppe, Ablauf, Call-to-Action |
| Fachartikel / Ratgeberseite | 800–1.500+ Wörter | Tiefgehende Beantwortung von Fragestellungen, Fallbeispiele |

Diese Werte sind **Orientierungsgrößen, keine Mindestwortzahlen**.

Für `sweti.de` ist die inhaltliche Eindeutigkeit wichtiger als das künstliche Erreichen einer bestimmten Wortanzahl.

---

# 10. URLs und Slugs

URLs sollen:

- kurz sein
- verständlich sein
- den Inhalt erkennen lassen
- ausschließlich ASCII-Zeichen verwenden
- keine Unterstriche enthalten

### Richtig

```text
/angebote/pflegekonflikte/
```

```text
/ueber-mich/
```

```text
/konflikte-zwischen-geschwistern/
```

### Nicht verwenden

```text
/angebote/Pflege_Konflikte/
```

```text
/angebote/pflege_und_verantwortung/
```

```text
/angebote/pflege-und-verantwortung-äöü/
```

Für Worttrennung wird verwendet:

```text
-
```

nicht:

```text
_
```

Umlaute werden für URLs umgeschrieben:

```text
ä → ae
ö → oe
ü → ue
ß → ss
```

---

# 11. Externe Links und `target="_blank"`

URLs, die mit:

```html
target="_blank"
```

auf externe Websites verlinken, müssen gleichzeitig mindestens:

```html
rel="noopener"
```

oder:

```html
rel="noreferrer"
```

verwenden.

Bevorzugt wird:

```html
target="_blank"
rel="noopener noreferrer"
```

Beispiel:

```html
<a
  href="https://example.org/"
  target="_blank"
  rel="noopener noreferrer">
  Externe Website
</a>
```

Diese Regel ist bereits bei entsprechenden Shortcodes berücksichtigt.

Der CTA zu Calendly verwendet beispielsweise automatisch:

```html
target="_blank"
rel="noopener noreferrer"
```

Der Content-Ersteller muss diese Attribute nicht selbst ergänzen.

---

# 12. Bilder

## Maximale Dateigröße

**Bilder dürfen maximal 100 MB groß sein.**

Für die tatsächliche Website-Auslieferung werden Bilder über Hugo Image Processing optimiert. Trotzdem sollten Quelldateien nicht unnötig groß sein.

---

## Page Bundles

Bilder einer Seite liegen zusammen mit `index.md` im Page Bundle:

```text
content/
└── angebote/
    └── pflege/
        ├── index.md
        ├── hero.png
        ├── familie.png
        └── video-pflege.png
```

---

## Keine Markdown-Bilder

Nicht verwenden:

```markdown
![Bild](familie.png)
```

Bilder werden über die dafür vorgesehenen Shortcodes eingebunden:

```go-html-template
{{< image
  src="familie.png"
  alt="Familie im Gespräch"
>}}
```

oder:

```go-html-template
{{< image-text
  src="familie.png"
  alt="Familie im Gespräch"
  position="right"
>}}
...
{{< /image-text >}}
```

---

# 13. Alt-Texte

Inhaltlich relevante Bilder benötigen einen sinnvollen Alt-Text.

Beispiel:

```go-html-template
{{< image
  src="familie.png"
  alt="Erwachsene Geschwister im Gespräch über die Pflege eines Elternteils"
>}}
```

Der Alt-Text beschreibt den relevanten Informationsgehalt des Bildes.

Nicht sinnvoll:

```text
Bild
```

oder:

```text
foto123.png
```

---

## Dekorative Bilder

Ein Bild ist dekorativ, wenn es **keine zusätzliche Information vermittelt** und für das Verständnis der Seite nicht erforderlich ist.

Beispiele:

- reine Schmuckgrafik
- abstraktes Hintergrundmotiv
- gestalterische Illustration ohne zusätzliche Aussage
- Hero-Bild, dessen inhaltliche Aussage vollständig durch Überschrift und Text abgedeckt ist

Dann darf:

```html
alt=""
```

verwendet werden.

Beim `figure`-Shortcode:

```go-html-template
{{< figure
  src="deko.png"
  decorative=true
>}}
```

---

# 14. Hero-Bilder

Das Hero-Bild befindet sich unmittelbar im Page Bundle:

```text
hero.png
```

Empfohlenes Format:

```text
1200 × 675 px
```

Seitenverhältnis:

```text
16:9
```

Hugo erkennt automatisch:

```text
hero.*
```

und erzeugt responsive Varianten, unter anderem:

```text
480 px
768 px
1200 px
```

sowie WebP-Versionen.

Das Hero-Bild wird außerdem automatisch als Social Preview verwendet.

---

# 15. Open Graph

Für Seiten mit einem `hero.*` wird das Hero-Bild automatisch als Open-Graph-Bild verwendet:

```html
<meta
  property="og:image"
  content="https://sweti.de/angebote/angebot1/hero.png">
```

Hugo erzeugt außerdem beispielsweise:

```html
<meta property="og:url" content="...">
<meta property="og:site_name" content="Dr. Swetoslaw Beltschew">
<meta property="og:title" content="...">
<meta property="og:description" content="...">
<meta property="og:locale" content="de_de">
```

Bei Artikelseiten können zusätzlich erscheinen:

```html
<meta property="article:published_time" content="...">
<meta property="article:modified_time" content="...">
<meta property="article:tag" content="...">
```

---

# 16. Default Social Image

Besitzt eine Seite kein `hero.*`, wird automatisch das zentrale Default-Bild verwendet.

In `config.toml`:

```toml
[params]
defaultSocialImage = "images/og-default.jpg"
```

Datei:

```text
static/images/og-default.jpg
```

Damit erhält auch beispielsweise eine Kontaktseite ohne Hero ein Social Preview.

---

# 17. Twitter/X Cards

Twitter/X-Metadaten werden explizit erzeugt.

Verwendet wird:

```html
<meta name="twitter:card" content="summary_large_image">
```

sowie:

```html
<meta name="twitter:title" content="...">
<meta name="twitter:description" content="...">
<meta name="twitter:image" content="...">
```

Wenn ein Hero vorhanden ist, wird dieses verwendet.

Ansonsten kommt `og-default.jpg` zum Einsatz.

---

# 18. Angebotsseiten

Jede Angebotsseite erhält:

```yaml
tags:
  - angebote
```

Dadurch erscheint sie automatisch unter:

```text
/angebote/
```

Die dortige Angebotskarte wird erzeugt aus:

```text
title
summary
weight
```

Aufbau:

```text
H2: title

summary

Mehr erfahren
```

`weight` bestimmt die Reihenfolge.

Die Seite muss nicht zwingend physisch unter:

```text
content/angebote/
```

liegen. Entscheidend ist die Taxonomie.

---

# 19. Seite „Aktuelles“

`/aktuelles/` enthält eine kurze Einleitung und anschließend einzelne `news-card`-Elemente.

Die Meldungen stehen untereinander und werden nicht als Grid dargestellt.

Beispiel:

```go-html-template
{{< news-card
  category="blog"
  date="2026-08-21"
  title="Neuer Beitrag veröffentlicht"
>}}

Kurze Beschreibung der Meldung.

{{< /news-card >}}
```

Die Überschrift einer Meldung wird als H2 ausgegeben. Die Seite selbst besitzt bereits die H1 `Aktuelles`.

Das visuelle Feintuning der `news-card` erfolgt anhand der späteren realen Inhalte.

---

# 20. Google Search Console

Die Website unterstützt die HTML-Meta-Verifikation.

In `config.toml`:

```toml
[params]
googleSiteVerification = "VERIFIKATIONSWERT"
```

Hugo erzeugt:

```html
<meta
  name="google-site-verification"
  content="VERIFIKATIONSWERT">
```

Der echte Verifikationswert wird vor beziehungsweise beim Deployment eingetragen.

Das Meta-Tag sollte nach erfolgreicher Verifizierung dauerhaft erhalten bleiben.

---

# 21. Google Analytics

Google Analytics ist **noch nicht Bestandteil der Entwicklungsphase**.

Die Integration wird erst zur Produktionsphase vorgenommen.

Wenn Google Analytics eingebaut wird, soll es ausschließlich in Production geladen werden, beispielsweise über:

```go-html-template
{{ if hugo.IsProduction }}
  ...
{{ end }}
```

Development und lokale Tests sollen keine Analytics-Daten erzeugen.

---

# 22. SEO-Prüfung vor Veröffentlichung

Vor Veröffentlichung einer Seite sollte mindestens geprüft werden:

- `<title>` vorhanden und maximal ca. 60 Zeichen / 561 Pixel
- Description vorhanden und maximal ca. 155 Zeichen / 986 Pixel
- genau eine H1
- H1 maximal ca. 70 Zeichen
- logische H1-H2-H3-Struktur
- eindeutiges Seitenthema
- ausreichender eigenständiger Inhalt
- korrekte ASCII-URL ohne Unterstriche
- Bilder mit sinnvollen Alt-Texten
- keine Markdown-Bilder
- externe `target="_blank"`-Links mit `noopener` bzw. `noreferrer`
- Canonical vorhanden
- normale Seiten `index, follow`
- private Seiten `noindex, nofollow`
- private Seiten gegebenenfalls aus Sitemap ausgeschlossen
- `date` gepflegt
- `lastmod` nur bei wesentlichen späteren Änderungen
- Social Image vorhanden, entweder Hero oder Default-Bild

---

# 23. Technischer Produktionscheck

Produktions-Build:

```powershell
hugo -D --gc --environment production --minify --cleanDestinationDir
```

## Robots prüfen

```powershell
Get-Content .\public\robots.txt
```

Erwartet:

```text
User-agent: *
Allow: /

Sitemap: https://sweti.de/sitemap.xml
```

## Sitemap prüfen

```powershell
Get-Content .\public\sitemap.xml |
    rg -o '<loc>[^<]+</loc>'
```

Taxonomie- und private Seiten dürfen dort nicht erscheinen.

## Normale Seite prüfen

```powershell
Get-Content .\public\angebote\angebot1\index.html |
    rg -i 'canonical|robots|og:image|twitter:card|twitter:image'
```

Erwartet unter anderem:

```text
canonical → https://sweti.de/...
robots → index, follow
og:image → Hero bzw. Default-Bild
twitter:card → summary_large_image
twitter:image → Hero bzw. Default-Bild
```

## Private Seite prüfen

```powershell
Get-Content .\public\datenschutz\index.html |
    rg -i 'canonical|robots'
```

Erwartet:

```text
canonical → https://sweti.de/datenschutz/
robots → noindex, nofollow
```

---

## Verbindliches Prinzip

> **SEO auf `sweti.de` entsteht nicht durch möglichst viele technische Meta-Angaben, sondern durch das Zusammenspiel aus eindeutigem Seitenthema, sauberer Überschriftenstruktur, aussagekräftigem Titel und Description, ausreichendem eigenständigem Inhalt, korrekter Indexierungssteuerung und technisch sauberem Hugo-Markup.**
