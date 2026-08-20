# Redaktionsleitfaden für Content auf `sweti.de`

Dieser Leitfaden richtet sich an Texter und Content-Creator, die Inhalte für `sweti.de` erstellen oder bearbeiten. Ziel ist, dass neue Seiten ohne Änderungen an Templates, CSS oder Hugo-Code erstellt werden können.

Die Grundregel lautet:

> **Frontmatter beschreibt die Seite. Markdown enthält den Text. Shortcodes strukturieren besondere Inhaltsbausteine. Das Layout wird nicht im Content programmiert.**

Normale Texte werden deshalb als Markdown geschrieben. Bilder, Bild-Text-Kombinationen, Videos, CTAs, Karten und andere besondere Elemente werden ausschließlich über die dafür vorgesehenen Shortcodes eingebunden.

---

## 1. Aufbau einer Content-Datei

Eine typische Seite beginnt mit einem Frontmatter-Block:

```yaml
---
title: "Pflege und Verantwortung"
description: "Konfliktklärung für Familien bei Pflege und Verantwortung."
summary: "Wenn Geschwister unterschiedliche Vorstellungen darüber haben, wer Verantwortung übernehmen soll."
tags:
  - angebote
weight: 10
---
```

Danach beginnt unmittelbar der eigentliche Markdown-Inhalt:

```markdown
Wenn ein Elternteil Unterstützung benötigt, entstehen häufig nicht nur organisatorische Fragen.

## Wenn Verantwortung zum Konflikt wird

Hier beginnt der eigentliche Seiteninhalt.
```

### `title`

`title` ist der sichtbare Seitentitel und wird automatisch als **H1** ausgegeben.

```yaml
title: "Pflege und Verantwortung"
```

Im Markdown darf deshalb **keine weitere H1 mit `#`** angelegt werden. Die erste Überschrift im Content beginnt normalerweise mit:

```markdown
## Überschrift
```

### `description`

`description` beschreibt die Seite für Suchmaschinen und andere Metadaten.

```yaml
description: "Konfliktklärung für Familien bei Pflege und Verantwortung."
```

Sie ist **kein sichtbarer Einleitungstext** der Seite. Die Description sollte die konkrete Seite knapp und verständlich beschreiben.

### `summary`

`summary` ist eine kurze redaktionelle Zusammenfassung:

```yaml
summary: "Wenn Geschwister unterschiedliche Vorstellungen darüber haben, wer Verantwortung übernehmen soll."
```

Sie wird insbesondere für Übersichtsseiten verwendet. Bei Angebotsseiten erscheint sie als Beschreibung in der Angebotskarte. `summary` sollte deshalb auch ohne weiteren Kontext verständlich sein.

### `tags`

Tags ordnen Seiten über die Hugo-Taxonomie thematisch ein.

```yaml
tags:
  - angebote
```

Eine Seite mit dem Tag `angebote` wird automatisch als Angebot behandelt, unabhängig davon, in welchem Content-Verzeichnis sie gespeichert ist.

Mehrere Tags sind möglich:

```yaml
tags:
  - angebote
  - familie
  - pflege
```

### `weight`

`weight` bestimmt die Reihenfolge von Seiten in automatisch erzeugten Listen.

```yaml
weight: 10
```

Kleinere Werte erscheinen vor größeren. Es empfiehlt sich, zunächst in Zehnerschritten zu arbeiten: `10`, `20`, `30`. Dadurch können später problemlos Seiten dazwischen eingefügt werden.

---

## 2. Taxonomie und Angebotsübersicht

Die Angebotsübersicht befindet sich unter:

```text
/angebote/
```

Die zugehörige Content-Datei ist:

```text
content/angebote/_index.md
```

Beispiel:

```markdown
---
title: "Angebote"
description: "Angebote für Mediation und Konfliktklärung."
---

Hier finden Sie meine Angebote für unterschiedliche Konfliktsituationen.
```

Wichtig:

> Die Angebotskarten werden **nicht manuell in `_index.md` geschrieben**.

Hugo sucht automatisch alle Seiten mit:

```yaml
tags:
  - angebote
```

und erzeugt daraus das Grid.

Eine Seite kann beispielsweise unter `content/angebote/pflege/index.md`, aber genauso unter `content/familie/pflegekonflikte/index.md` oder `content/beratung/geschwister/index.md` liegen. Entscheidend ist ausschließlich der Tag `angebote`.

### Aufbau einer Angebotskarte

Aus:

```yaml
---
title: "Pflege und Verantwortung"
summary: "Wenn Geschwister unterschiedliche Vorstellungen darüber haben, wer Verantwortung übernehmen soll."
tags:
  - angebote
weight: 10
---
```

erzeugt Hugo automatisch eine Karte mit:

```text
Pflege und Verantwortung          ← H2 / title

Wenn Geschwister unterschiedliche
Vorstellungen darüber haben ...  ← summary

Mehr erfahren                     ← Link zur Seite
```

Der Titel der Card ist eine **H2**. Die Reihenfolge der Cards wird über `weight` gesteuert. Texter bearbeiten niemals das HTML der Angebotsübersicht.

---

## 3. Page Bundles

Landingpages werden grundsätzlich als **Hugo Page Bundles** angelegt.

```text
content/
└── angebote/
    └── pflege/
        ├── index.md
        ├── hero.png
        ├── geschwister.png
        └── video-pflege.png
```

`index.md` enthält den Text der Seite. Alle Bilder, die ausschließlich zu dieser Seite gehören, liegen im selben Verzeichnis. Dadurch können Shortcodes die Bilder als Hugo Page Resources finden und automatisch optimieren.

### Richtig

```text
pflege/
├── index.md
├── hero.png
└── familie.png
```

### Nicht für eine normale Landingpage verwenden

```text
pflege/
├── _index.md
├── hero.png
└── familie.png
```

Eine normale Landingpage verwendet `index.md`. `_index.md` wird für übergeordnete Listen- beziehungsweise Section-Seiten verwendet, beispielsweise `content/angebote/_index.md`.

---

## 4. Hero-Bild

Das Hero-Bild einer Landingpage liegt direkt im Page Bundle und heißt:

```text
hero.png
```

Beispiel:

```text
content/angebote/pflege/
├── index.md
└── hero.png
```

Es muss **nicht in der Frontmatter eingetragen** werden. Hugo erkennt automatisch Dateien mit `hero.*`.

Für die Redaktion verwenden wir vorzugsweise `hero.png`.

### Format und Größe

Redaktionsstandard:

```text
1200 × 675 px
```

Seitenverhältnis:

```text
16:9
```

Das Bild sollte normalerweise mindestens **1200 Pixel breit** sein. Hugo erzeugt automatisch kleinere Varianten, unter anderem mit 480, 768 und 1200 Pixel Breite, sowie WebP-Versionen.

Wichtige Personen, Gesichter oder Gestaltungselemente sollten nicht unmittelbar am Bildrand positioniert werden. Das Hauptmotiv braucht genügend Raum für unterschiedliche Bildschirmgrößen.

---

## 5. Normaler Fließtext

Normaler Text wird direkt als Markdown geschrieben.

```markdown
Wenn ein Elternteil Unterstützung benötigt, entstehen häufig nicht nur organisatorische Fragen. Unterschiedliche Erwartungen und alte Rollen können dazu führen, dass Entscheidungen zunehmend schwieriger werden.

## Wenn Verantwortung zum Konflikt wird

Ein Geschwisterteil übernimmt viele Aufgaben. Ein anderes lebt weiter entfernt. Beide können dieselbe Situation völlig unterschiedlich erleben.
```

Normaler Seiteninhalt läuft automatisch innerhalb des CSS-Bereichs:

```css
.prose
```

`.prose` regelt insbesondere lesbare Textbreite, Abstände, Typografie, Zeilenlänge, Überschriften, Absätze, Listen und Links.

Texter müssen dafür **keine HTML-Klassen eingeben**.

---

## 6. Überschriften

Die H1 wird automatisch aus dem Frontmatter erzeugt:

```yaml
title: "Pflege und Verantwortung"
```

Im Markdown beginnt die Struktur deshalb mit H2:

```markdown
## Wenn Verantwortung zum Konflikt wird
```

Unterpunkte erhalten H3:

```markdown
### Unterschiedliche Erwartungen
```

Typischer Aufbau:

```text
H1  Pflege und Verantwortung
 │
 ├─ H2 Wenn Verantwortung zum Konflikt wird
 │   ├─ H3 Unterschiedliche Erwartungen
 │   └─ H3 Alte Rollen
 │
 └─ H2 Wie Konfliktklärung helfen kann
```

Nicht verwenden:

```markdown
# Pflege und Verantwortung
```

Dadurch würde eine zweite H1 entstehen.

---

## 7. Bilder im Fließtext

Markdown-Bilder werden auf `sweti.de` **nicht verwendet**.

Also nicht:

```markdown
![Familie im Gespräch](familie.png)
```

Stattdessen wird immer der `image`-Shortcode eingesetzt.

### Shortcode `image`

```go-html-template
{{< image
  src="familie.png"
  alt="Familie im Gespräch"
>}}
```

Parameter:

| Parameter | Bedeutung |
|---|---|
| `src` | Dateiname im Page Bundle, Pflicht |
| `alt` | Alternativtext für das Bild, Pflicht bei inhaltlichen Bildern |
| `caption` | optionale Bildunterschrift |

Mit Bildunterschrift:

```go-html-template
{{< image
  src="familie.png"
  alt="Familie im Gespräch"
  caption="Gespräche über Verantwortung können unterschiedliche Erwartungen sichtbar machen."
>}}
```

Das Bild wird automatisch responsive verarbeitet und in mehreren Größen sowie als WebP ausgeliefert.

---

## 8. Bild und Text nebeneinander

Wenn Bild und zugehöriger Text einen gemeinsamen Inhaltsbaustein bilden sollen, wird `image-text` verwendet.

```go-html-template
{{< image-text
  src="familie.png"
  alt="Familie bei einem gemeinsamen Gespräch"
  position="right"
>}}

### Unterschiedliche Sichtweisen verstehen

In der Konfliktklärung geht es zunächst darum, sichtbar zu machen, wie die Beteiligten die Situation jeweils erleben.

Nicht jede unterschiedliche Sichtweise muss aufgelöst werden.

{{< /image-text >}}
```

Parameter:

| Parameter | Bedeutung |
|---|---|
| `src` | Bild im Page Bundle, Pflicht |
| `alt` | Alternativtext |
| `position` | `left` oder `right` |

Der Text steht zwischen öffnendem und schließendem Shortcode und wird als Markdown verarbeitet. Auf Smartphones wird der Inhalt automatisch untereinander dargestellt.

---

## 9. `figure`

Für Bilder mit klassischer Bildunterschrift kann auch der überschriebene Hugo-Shortcode `figure` verwendet werden:

```go-html-template
{{< figure
  src="familie.png"
  alt="Familie im Gespräch"
  caption="Ein Gespräch kann unterschiedliche Perspektiven sichtbar machen."
>}}
```

Parameter:

| Parameter | Bedeutung |
|---|---|
| `src` | Bilddatei |
| `alt` | Alternativtext |
| `caption` | Bildunterschrift |
| `class` | optionale zusätzliche CSS-Klasse |
| `decorative` | optional `true`, wenn das Bild ausschließlich der Gestaltung dient und keine zusätzliche Information vermittelt; dann wird `alt=""` verwendet |

Mit **dekorativen Bildern** sind Bilder gemeint, die keine zusätzliche inhaltliche Information transportieren und für das Verständnis des Textes nicht erforderlich sind. Beispiele sind abstrakte Hintergrundgrafiken, reine Schmuckillustrationen, Trenngrafiken oder ein Hero-Bild, wenn dessen Aussage vollständig durch Überschrift und Text abgedeckt ist.

Beispiel:

```go-html-template
{{< figure
  src="deko.png"
  decorative=true
>}}
```

Für redaktionelle Bilder, Fotos, Diagramme oder Illustrationen mit inhaltlicher Aussage gilt dagegen: **immer einen sinnvollen `alt`-Text angeben**.

---

## 10. Video-Shortcode

YouTube-Videos werden nicht direkt als Player eingebettet. Stattdessen wird eine klickbare Video-Card erzeugt.

Titel, Thumbnail und Beschreibung werden **bewusst manuell gepflegt**.

```go-html-template
{{< video
  url="https://www.youtube.com/watch?v=QMuHwelVo9Q"
  src="video-pflege.png"
  title="Wenn Geschwister nicht mehr miteinander reden"
>}}

Warum familiäre Konflikte häufig weit über die aktuelle Sachfrage hinausgehen.

{{< /video >}}
```

Parameter:

| Parameter | Bedeutung |
|---|---|
| `url` | URL des YouTube-Videos, Pflicht |
| `src` | lokales Thumbnail im Page Bundle, Pflicht |
| `title` | Titel der Video-Card, Pflicht |
| Inner Content | optionale Beschreibung |

Das Thumbnail liegt als lokale Bilddatei im Page Bundle:

```text
pflege/
├── index.md
└── video-pflege.png
```

Die Video-Card enthält **kein zusätzliches Play-Icon**. Die komplette Card ist klickbar und öffnet YouTube in einem neuen Tab.

---

## 11. CTA

Für einen hervorgehobenen Handlungsaufruf wird der `cta`-Shortcode verwendet.

```go-html-template
{{< cta
  url="https://calendly.com/..."
  text="Orientierungsgespräch vereinbaren"
  accent="blue"
>}}

In einem ersten Gespräch klären wir, worum es geht und ob mein Angebot zu Ihrer Situation passt.

{{< /cta >}}
```

Parameter:

| Parameter | Bedeutung |
|---|---|
| `url` | Ziel des Buttons |
| `text` | Text des Buttons |
| `accent` | Akzentfarbe |
| Inner Content | erläuternder Text |

Mögliche CI-Akzentfarben:

```text
blue
green
orange
```

Innerhalb eines einzelnen Elements sollte nur **eine Akzentfarbe** verwendet werden.

---

## 12. Cards

Einzelne Cards können über den `card`-Shortcode erzeugt werden:

```go-html-template
{{< card
  title="Pflege und Verantwortung"
  url="/angebote/pflege/"
  icon="users"
  accent="blue"
>}}

Konfliktklärung für Familien, wenn Pflege und Verantwortung zu Spannungen führen.

{{< /card >}}
```

Parameter:

| Parameter | Bedeutung |
|---|---|
| `title` | Titel der Card |
| `url` | Zielseite |
| `icon` | Name eines lokalen Feather-Icons |
| `accent` | `blue`, `green` oder `orange` |
| Inner Content | Card-Text |

Mehrere Cards können mit `card-grid` gruppiert werden:

```go-html-template
{{< card-grid >}}

{{< card title="Angebot 1" url="/angebot1/" accent="blue" >}}
Beschreibung des ersten Angebots.
{{< /card >}}

{{< card title="Angebot 2" url="/angebot2/" accent="green" >}}
Beschreibung des zweiten Angebots.
{{< /card >}}

{{< /card-grid >}}
```

Die Angebotsübersicht unter `/angebote/` wird **nicht manuell mit diesen Shortcodes gebaut**. Dort entstehen die Cards automatisch aus der Taxonomie.

---

## 13. Icons

Feather-Icons können über den `icon`-Shortcode eingebunden werden:

```go-html-template
{{< icon name="users" >}}
```

Der Name entspricht der SVG-Datei unter:

```text
assets/icons/feather/
```

Beispielsweise:

```text
users.svg
calendar.svg
mail.svg
```

Aufruf:

```go-html-template
{{< icon name="calendar" >}}
```

---

## 14. Google Maps

Für die Kontaktseite steht der Maps-Shortcode zur Verfügung.

```go-html-template
{{< map q="Straße Hausnummer, 01067 Dresden" >}}
```

Die Adresse wird über `q` angegeben.

Optional kann die Kartenhöhe angepasst werden, sofern dies im aktuellen Shortcode vorgesehen ist:

```go-html-template
{{< map
  q="Straße Hausnummer, 01067 Dresden"
  height="500"
>}}
```

Der Google-Maps-API-Key wird zentral in `config.toml` verwaltet und darf **nicht in Markdown-Dateien eingetragen werden**.

---

## 15. Was Texter nicht tun sollen

Keine Markdown-Bilder:

```markdown
![Bild](bild.png)
```

Keine HTML-Layoutkonstruktionen:

```html
<div style="width:50%; float:left">
```

Keine CSS-Klassen zur manuellen Positionierung.

Keine umfangreichen Layoutdefinitionen in der Frontmatter:

```yaml
hero:
  image: ...
  position: ...
  columns: ...
  background: ...
```

Keine zweite H1 im Markdown:

```markdown
# Weitere Überschrift
```

Keine manuell geschriebenen Angebotskarten in:

```text
content/angebote/_index.md
```

---

## 16. Empfohlener Aufbau einer Angebots-Landingpage

Typisches Page Bundle:

```text
content/
└── angebote/
    └── pflege/
        ├── index.md
        ├── hero.png
        ├── familie.png
        └── video-pflege.png
```

`index.md`:

```markdown
---
title: "Pflege und Verantwortung"
description: "Konfliktklärung für Familien, wenn Pflege, Verantwortung und unterschiedliche Erwartungen zum Konflikt werden."
summary: "Wenn Geschwister unterschiedliche Vorstellungen darüber haben, wer Verantwortung für einen älteren Angehörigen übernehmen soll."
tags:
  - angebote
weight: 10
---

Wenn ein Elternteil Unterstützung benötigt, entstehen häufig nicht nur organisatorische Fragen.

## Wenn Verantwortung zum Konflikt wird

Ein Geschwisterteil übernimmt viele Aufgaben. Ein anderes lebt weiter entfernt. Unterschiedliche Erwartungen können zunehmend zu Spannungen führen.

{{< image-text
  src="familie.png"
  alt="Familie bei einem gemeinsamen Gespräch"
  position="right"
>}}

### Unterschiedliche Sichtweisen verstehen

In der Konfliktklärung werden die unterschiedlichen Sichtweisen zunächst sichtbar und verständlich gemacht.

{{< /image-text >}}

## Wie eine Klärung helfen kann

Eine Mediation kann sinnvoll sein, wenn Gespräche immer wieder an denselben Punkten festhängen.

{{< cta
  url="https://calendly.com/..."
  text="Orientierungsgespräch vereinbaren"
  accent="blue"
>}}

In einem ersten Gespräch klären wir gemeinsam, welche Form der Unterstützung für Ihre Situation sinnvoll sein kann.

{{< /cta >}}
```

Damit bleibt die redaktionelle Arbeit klar getrennt von der technischen Umsetzung:

> **Text schreiben, Metadaten pflegen, passende Bilder in das Page Bundle legen und für besondere Content-Bausteine die vorhandenen Shortcodes verwenden. HTML, Responsive Design, Bildoptimierung und Layout übernimmt Hugo.**


**Tachyons-Klassen in Markdown**

Ja, das muss im Leitfaden korrigiert werden. Die bisherige Aussage „keine CSS-Klassen zur manuellen Positionierung“ war zu pauschal.

In eurem Hugo-Setup können Markdown-Elemente mit Attributen bzw. Tachyons-Klassen versehen werden, zum Beispiel:

### 1. KLÄREN – Mediation {.f4 .fw5 .lh-title .mt3 .mb2}
### 2. ENTWICKELN – Coaching {.f4 .fw5 .lh-title .mt3 .mb2}
### 3. STRUKTURIEREN – Systemische Beratung {.f4 .fw5 .lh-title .mt3 .mb2}
## Meine Arbeit ruht auf drei Säulen: {.f3 .fw4 .lh-title .mt4 .mb3}


> **Tachyons-Klassen dürfen gezielt direkt in Markdown verwendet werden**, wenn eine redaktionelle Feinsteuerung von Typografie oder Abständen nötig ist. Beispiele sind Schriftgröße, Schriftgewicht, Zeilenhöhe und Margins. Komplexe Layouts sollen weiterhin nicht über frei geschriebenes HTML oder umfangreiche Klassenketten im Content gebaut werden.

Also:

## Überschrift {.f3 .fw4 .lh-title .mt4 .mb3}

ist erlaubt.

Dagegen sollte so etwas weiterhin vermieden werden:

<div style="width:50%; float:left">

oder umfangreiche manuelle Layoutkonstruktionen im Markdown.

Die Regel wäre damit:

> **Tachyons für begrenzte typografische und spacing-basierte Feinsteuerung: ja. Eigene Layoutprogrammierung im Content: nein.**
