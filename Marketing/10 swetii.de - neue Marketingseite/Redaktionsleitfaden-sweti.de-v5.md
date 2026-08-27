# Redaktionsleitfaden für Content auf `sweti.de`

**Version 5 · Stand: 27.08.2026**

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
date: 2026-08-21
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
| `size` | optionale Darstellungsgröße: `small`, `medium`, `large` oder `full`; Standard ist `large` |

Mit Bildunterschrift:

```go-html-template
{{< image
  src="familie.png"
  alt="Familie im Gespräch"
  caption="Gespräche über Verantwortung können unterschiedliche Erwartungen sichtbar machen."
>}}
```

Mit Größenangabe:

```go-html-template
{{< image
  src="familie.png"
  alt="Familie im Gespräch"
  size="medium"
>}}
```

Die vorgesehenen Größen sind:

| `size` | maximale Darstellungsbreite |
|---|---:|
| `small` | ca. 20 rem / 320 px |
| `medium` | ca. 32 rem / 512 px |
| `large` | ca. 46 rem / 736 px |
| `full` | volle verfügbare Breite |

Ohne `size` wird automatisch `large` verwendet.

Das Bild wird unabhängig von der Darstellungsgröße responsive verarbeitet und in passenden Bildvarianten sowie als WebP ausgeliefert. `size` steuert die Darstellung im Layout; die eigentliche Bildoptimierung übernimmt Hugo.

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

Der CTA unterstützt zwei Darstellungsvarianten:

- `solid` – stärkere, primäre Variante
- `outline` – zurückhaltendere Variante, insbesondere für den Einsatz innerhalb eines `panel`

Ohne Angabe von `style` gilt automatisch `solid`.

### Zentrale Calendly-URL

Die Calendly-URL wird zentral in `config.toml` gepflegt:

```toml
[params]
calendlyURL = "https://calendly.com/mediator-sweti"
```

Der `cta`-Shortcode verwendet diese URL automatisch als Standardziel. Deshalb muss für normale Termin-CTAs kein `url`-Parameter mehr angegeben werden.

Beispiel:

```go-html-template
{{< cta
  text="Orientierungsgespräch vereinbaren"
  accent="blue"
>}}

In einem ersten Gespräch klären wir, worum es geht und ob mein Angebot zu Ihrer Situation passt.

{{< /cta >}}
```

Ein abweichendes Ziel kann weiterhin ausdrücklich mit `url` gesetzt werden:

```go-html-template
{{< cta
  url="https://example.org/"
  text="Weitere Informationen"
  accent="green"
  style="outline"
>}}

Kurzer erläuternder Text.

{{< /cta >}}
```

### Solid-CTA

```go-html-template
{{< cta
  text="Orientierungsgespräch vereinbaren"
  accent="blue"
>}}

In einem ersten Gespräch klären wir, worum es geht und ob mein Angebot zu Ihrer Situation passt.

{{< /cta >}}
```

### Outline-CTA

```go-html-template
{{< cta
  text="Jetzt kostenloses Erstgespräch buchen"
  accent="orange"
  style="outline"
>}}

Kurzer erläuternder Text.

{{< /cta >}}
```

Parameter:

| Parameter | Bedeutung |
|---|---|
| `url` | optionales Ziel des Buttons; Standard ist `params.calendlyURL` aus `config.toml` |
| `text` | Text des Buttons; Standard: `Termin vereinbaren` |
| `accent` | `blue`, `green` oder `orange`; Standard: `blue` |
| `style` | `solid` oder `outline`; Standard: `solid` |
| Inner Content | erläuternder Text |

Mögliche CI-Akzentfarben:

```text
blue
green
orange
```

Innerhalb eines einzelnen Elements sollte nur **eine Akzentfarbe** verwendet werden.

### Gestalterische Rollen

`solid` ist die stärkere CTA-Variante. Der Button erhält eine Fläche in der gewählten CI-Akzentfarbe.

`outline` ist bewusst zurückhaltender. Der Button hat einen transparenten Hintergrund und eine Kontur in der gewählten Akzentfarbe. Diese Variante eignet sich besonders innerhalb eines `panel`, damit nicht zwei visuell starke Container miteinander konkurrieren.

Der CTA öffnet externe Ziele automatisch in einem neuen Browser-Tab beziehungsweise Fenster. Texter müssen dafür kein `target` oder `rel` angeben.

Ungültige Werte für `accent` oder `style` werden nicht als eigene Gestaltung interpretiert. Der Shortcode verwendet definierte Fallback-Werte.

### Automatischer Abschluss-CTA auf Angebotsseiten

Alle regulären Seiten unter `/angebote/` verwenden ein eigenes Template:

```text
layouts/angebote/single.html
```

Dieses Template ergänzt nach dem eigentlichen Seiteninhalt automatisch einen einheitlichen Abschluss-CTA.

Der zentrale Text lautet:

> In einem ersten, unverbindlichen Gespräch klären wir gemeinsam, welche Form der Unterstützung für Ihre Situation sinnvoll ist.

Der Button lautet:

> Kostenfreies Orientierungsgespräch vereinbaren

Das Ziel kommt aus `params.calendlyURL` in `config.toml`.

Redaktionelle Konsequenz:

> **Auf Angebotsseiten keinen zusätzlichen Abschluss-CTA manuell in `index.md` einfügen.**

Ein zusätzlicher CTA innerhalb des Seiteninhalts ist nur dann sinnvoll, wenn er an einer inhaltlich begründeten Zwischenposition steht.


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

### Interne und externe Card-Links

Bei internen Zielen wird die Seite im selben Tab geöffnet:

```go-html-template
url="/angebote/pflege/"
```

Externe Ziele mit `http://` oder `https://` werden automatisch in einem neuen Tab geöffnet und erhalten technisch `rel="noopener noreferrer"`:

```go-html-template
url="https://mediator.sweti.de/..."
```

Texter müssen dafür keinen zusätzlichen Parameter setzen.

### Redaktionelle Hinweise zu Card-Titeln

Die Darstellung der Cards ist zentral im CSS festgelegt. Der Card-Titel wird bewusst kompakt dargestellt, der Fließtext etwas kleiner als normaler Seiteninhalt.

Lange Titel werden vom Browser automatisch umgebrochen. Für deutsche Wörter ist die automatische Silbentrennung aktiviert.

Deshalb **keine HTML-Entities wie `&shy;` in `title` eintragen**:

```go-html-template
{{< card
  title="Nachbarschaftskonflikt in Dresden – Mediation statt Gericht"
  icon="home"
  accent="orange"
>}}
```

Nicht verwenden:

```go-html-template
title="Nachbar&shy;schafts&shy;konflikt ..."
```

Shortcode-Parameter werden escaped; `&shy;` würde deshalb als sichtbarer Text erscheinen. Zeilenumbrüche und Silbentrennung bleiben Aufgabe des CSS beziehungsweise des Browsers.

---

## 13. Panel

Der `panel`-Shortcode ist ein generischer, **nicht klickbarer** Container für hervorgehobene Informationen. Er dient beispielsweise für Ablaufbeschreibungen, Hinweise oder besondere Angebote.

Ein `panel` ist visuell zurückhaltender als ein CTA und besitzt selbst kein Linkziel.

### Grundform

```go-html-template
{{< panel
  title="Dein Weg mit mir"
  icon="calendar"
  accent="orange"
>}}

Hier steht der Inhalt des Panels.

{{< /panel >}}
```

Parameter:

| Parameter | Bedeutung |
|---|---|
| `title` | optionaler Titel; wird immer als H3 ausgegeben |
| `icon` | optionales Feather-Icon neben dem Titel |
| `accent` | `blue`, `green` oder `orange`; Standard: `blue` |
| Inner Content | Markdown-Inhalt des Panels |

Der Titel ist grundsätzlich eine **H3**. Panels sollen deshalb redaktionell innerhalb eines Seitenabschnitts mit einer vorausgehenden H2 eingesetzt werden.

Titel-Icon und Titel stehen nebeneinander. Das Titel-Icon ist dekorativ und wird für Screenreader ausgeblendet.

### Gestaltung

Die Panel-Gestaltung ist zentral festgelegt:

- weißer Hintergrund
- feine graue Kontur
- schmale Akzentkante oben
- 12 px Radius
- weicher, dezenter Schatten
- Akzentfarbe `blue`, `green` oder `orange`

Ein Panel ist kein Navigationselement und selbst nicht klickbar. Normale Links im Inner Content bleiben normale Inhaltslinks.

### Nummerierte Abläufe

Nummerierte Listen können direkt als Markdown geschrieben werden:

```go-html-template
{{< panel title="Dein Weg mit mir" icon="calendar" accent="orange" >}}

1. Anruf oder E-Mail, ich melde mich zeitnah zurück
2. Kostenloses Vorgespräch mit erster Einschätzung
3. Mediation, Konflikt-Coaching oder systemische Beratung, je nach Situation
4. Nachgespräch bei Bedarf

{{< /panel >}}
```

Die Liste bleibt semantisch ein echtes `<ol>` mit `<li>`-Elementen. Die normalen Browserziffern werden nur visuell durch runde Nummern-Badges ersetzt. Die Badge-Farbe folgt der Akzentfarbe des Panels.

### Keine Icons innerhalb der nummerierten Schritte

Für **Panel-Version 1** werden innerhalb nummerierter Listen keine zusätzlichen `icon`-Shortcodes verwendet.

Also nicht:

```go-html-template
1. {{< icon name="phone-call" >}} Anruf oder E-Mail
```

Der Grund ist technisch: Der Panel-Inhalt wird als Markdown gerendert. Verschachtelte Icon-Shortcodes innerhalb der Markdown-Liste erzeugen bereits HTML und sind mit diesem Rendering nicht robust kombinierbar.

Die festgelegte Version 1 verwendet deshalb:

```text
Titel-Icon + H3
nummerierte Schritte mit Accent-Badges
keine zusätzlichen Icons je Schritt
```

### CTA innerhalb eines Panels

Ein CTA darf innerhalb eines Panels verwendet werden. Dafür ist in der Regel die zurückhaltendere Variante `style="outline"` vorgesehen:

```go-html-template
{{< panel title="Dein Weg mit mir" icon="calendar" accent="orange" >}}

1. Anruf oder E-Mail
2. Kostenloses Vorgespräch
3. Gemeinsame Konfliktklärung

{{< cta
  url="https://calendly.com/..."
  text="Jetzt kostenloses Erstgespräch buchen"
  accent="orange"
  style="outline"
>}}

{{< /cta >}}

{{< /panel >}}
```

Der umgekehrte Aufbau – ein `panel` innerhalb eines `cta` – ist nicht vorgesehen.


---

## 14. Icons

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

## 15. Google Maps

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

## 16. Aktuelles und `news-card`

Die Seite `/aktuelles/` besteht aus einer kurzen Einleitung und mehreren Meldungskarten untereinander. Die Meldungen werden direkt in der Markdown-Datei der Seite gepflegt.

Für jede Meldung wird der Shortcode `news-card` verwendet.

Beispiel:

```go-html-template
{{< news-card
  category="blog"
  date="2026-08-21"
  title="Neuer Beitrag veröffentlicht"
>}}

Kurzer Fließtext zur Meldung. Hier kann beschrieben werden, was neu ist und warum der Hinweis für Besucher relevant ist.

{{< /news-card >}}
```

Parameter:

| Parameter | Bedeutung |
|---|---|
| `category` | Art der Meldung |
| `date` | Datum der Meldung im Format `YYYY-MM-DD` |
| `title` | Überschrift der Meldung; wird als H2 ausgegeben |
| Inner Content | Fließtext der Meldung |

Aktuell stehen drei Kategorien zur Verfügung:

| `category` | sichtbare Bezeichnung | Feather-Icon |
|---|---|---|
| `blog` | Neuer Blog | `file-text` |
| `event` | Event | `calendar` |
| `info` | Information | `info` |

Links in der Karte steht ein großes Feather-Icon mit der kleinen Kategorienbezeichnung darunter. Rechts folgen Datum, Überschrift und Meldungstext.

Die Meldungsüberschrift wird als **H2** ausgegeben. Die H1 der Seite ist bereits der Seitentitel `Aktuelles`.

Die Meldungskarten stehen bewusst untereinander und werden nicht in ein `card-grid` gesetzt. Das visuelle Feintuning des `news-card` erfolgt später anhand echter Inhalte; die redaktionelle Verwendung der Parameter bleibt davon unberührt.

### Markdown innerhalb einer `news-card`

Der Inner Content einer `news-card` wird als normales Markdown gerendert.

Damit funktionieren insbesondere:

- Absätze
- Hervorhebungen wie `**fett**`
- normale Markdown-Links
- Listen
- einfache Markdown-Bilder

Beispiel mit Link:

```go-html-template
{{< news-card
  category="blog"
  date="2026-08-21"
  title="Neuer Beitrag über Konflikte in Familien"
>}}

Ein neuer Beitrag beschäftigt sich mit der Frage, warum unterschiedliche Vorstellungen über Verantwortung in Familien so schnell zu grundsätzlichen Konflikten werden können.

[Zum Beitrag](https://mediator.sweti.de/...)

{{< /news-card >}}
```

Auch ein einfaches Markdown-Bild ist möglich:

```markdown
![Testbild](testbild.png)
```

Wichtig:

> **Verschachtelte Shortcodes innerhalb einer `news-card` werden nicht unterstützt.**

Der frühere Ansatz mit verschachtelten Shortcodes wurde verworfen, weil dabei normales Markdown – insbesondere Links – nicht zuverlässig gerendert wurde. Für `news-card` hat korrektes Markdown Vorrang.

Markdown-Bilder innerhalb einer `news-card` verwenden derzeit **nicht** die spezielle Hugo-Image-Processing-Logik des `image`-Shortcodes. Sie werden als normale Markdown-Bilder ausgegeben. Ein eigener Render Hook kann später ergänzt werden, falls dafür ein konkreter Bedarf entsteht.


---

## 17. Was Texter nicht tun sollen

Keine Markdown-Bilder:

```markdown
![Bild](bild.png)
```

Keine HTML-Layoutkonstruktionen:

```html
<div style="width:50%; float:left">
```

Tachyons-Klassen dürfen gezielt direkt in Markdown verwendet werden, wenn eine redaktionelle Feinsteuerung von Typografie oder Abständen nötig ist.

Beispiele:

```markdown
### 1. KLÄREN – Mediation {.f4 .fw5 .lh-title .mt3 .mb2}

### 2. ENTWICKELN – Coaching {.f4 .fw5 .lh-title .mt3 .mb2}

### 3. STRUKTURIEREN – Systemische Beratung {.f4 .fw5 .lh-title .mt3 .mb2}

## Meine Arbeit ruht auf drei Säulen: {.f3 .fw4 .lh-title .mt4 .mb3}
```

Dabei gilt:

> **Tachyons für begrenzte typografische und spacing-basierte Feinsteuerung: ja. Eigene Layoutprogrammierung im Content: nein.**

Komplexe Layouts sollen weiterhin nicht mit frei geschriebenem HTML, Inline-Styles oder umfangreichen Layout-Klassenketten im Content gebaut werden.

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

Keine zusätzlichen `icon`-Shortcodes innerhalb nummerierter Listen eines `panel`:

```go-html-template
1. {{< icon name="phone-call" >}} Anruf oder E-Mail
```

Für nummerierte Panel-Abläufe werden ausschließlich die automatisch gestalteten Nummern-Badges verwendet.

Keine verschachtelten Shortcodes innerhalb einer `news-card`. Dort wird normaler Markdown-Inhalt verwendet.

Auf regulären Angebotsseiten keinen manuellen Abschluss-CTA einfügen. Der einheitliche Abschluss-CTA wird automatisch durch `layouts/angebote/single.html` ergänzt.

---


## 18. Empfohlener Aufbau einer Angebots-Landingpage

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
date: 2026-08-21
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

Der abschließende CTA wird auf Angebotsseiten automatisch durch das Template ergänzt und steht deshalb **nicht** im Markdown der Seite.
```

## 19. Kurze Checkliste vor dem Speichern

Vor dem Abschluss einer neuen oder geänderten Seite prüfen:

- `title` vorhanden und keine zusätzliche H1 (`#`) im Markdown
- `description` passend zur konkreten Seite
- bei Angebotsseiten `summary`, `tags: angebote` und `weight` gepflegt
- bei neuen Inhaltsseiten `date` gesetzt
- `lastmod` nur bei einer späteren wesentlichen inhaltlichen Überarbeitung aktualisiert
- Bilder liegen im Page Bundle
- Hero-Bild heißt `hero.png` und ist vorzugsweise 1200 × 675 px
- keine Markdown-Bilder mit `![]()`
- für inhaltliche Bilder sinnvoller `alt`-Text vorhanden
- besondere Inhaltsbausteine über die vorgesehenen Shortcodes eingebunden
- bei `image` nur die vorgesehenen Größen `small`, `medium`, `large` oder `full` verwenden; ohne Angabe gilt `large`
- keine `&shy;`- oder anderen HTML-Entities in Card-Titeln zur manuellen Silbentrennung verwenden
- bei verschachtelten Shortcodes den äußeren Shortcode korrekt schließen, beispielsweise `{{< /news-card >}}`
- bei `panel` den Titel als H3 im Seitenkontext berücksichtigen; Panel möglichst unter einer H2 einsetzen
- in nummerierten Panel-Listen keine zusätzlichen `icon`-Shortcodes verwenden
- für einen zurückhaltenden CTA innerhalb eines Panels bevorzugt `style="outline"` verwenden
- bei normalen Termin-CTAs keine Calendly-URL wiederholen; ohne `url` wird automatisch `params.calendlyURL` verwendet
- auf regulären Angebotsseiten keinen manuellen Abschluss-CTA einfügen
- innerhalb einer `news-card` normales Markdown verwenden und keine Shortcodes verschachteln
- externe `card`-Links benötigen keinen Zusatzparameter; sie öffnen automatisch in einem neuen Tab
- `private: true` und `sitemap.disable: true` nur für Seiten verwenden, die bewusst nicht indexiert werden sollen

---

Damit bleibt die redaktionelle Arbeit klar getrennt von der technischen Umsetzung:

> **Text schreiben, Metadaten pflegen, passende Bilder in das Page Bundle legen und für besondere Content-Bausteine die vorhandenen Shortcodes verwenden. HTML, Responsive Design, Bildoptimierung und Layout übernimmt Hugo.**
