# Bildverarbeitung in sweti.de – Kurzguide

## 1. Zentrale Bildlogik: `responsive-image.html`

Die Datei

```text
layouts/partials/responsive-image.html
```

enthält die zentrale technische Logik für responsive Bilder.

Sie übernimmt:

- Verarbeitung von Bildern aus Hugo Page Bundles
- Unterstützung von PNG und JPG als Quelldateien
- Erzeugung von WebP-Varianten
- responsive Größen bis maximal 1200 px
- Vermeidung von Upscaling
- Erzeugung von `srcset` und `sizes`
- Ausgabe von `width` und `height`
- `loading="lazy"` für normale Bilder
- `loading="eager"` und `fetchpriority="high"` für Hero-Bilder
- Alt-Text-Prüfung
- Unterstützung dekorativer Bilder mit `alt=""`

Typische Bildgrößen sind:

```text
480 px
768 px
1200 px
```

Ist das Original kleiner, werden nur sinnvolle Größen erzeugt.

Beispiel:

```text
Original 600 px
→ 480 px
→ 600 px
```

Ein Bild wird niemals künstlich auf 1200 px vergrößert.

Die eigentlichen Shortcodes enthalten deshalb keine eigene Bildverarbeitungslogik mehr, sondern rufen dieses Partial auf.

---

## 2. Shortcode `image.html`

Der Shortcode

```text
layouts/shortcodes/image.html
```

wird für normale Bilder innerhalb eines Inhalts verwendet.

Er sucht das Bild im Page Bundle und übergibt es anschließend an:

```text
responsive-image.html
```

Aufruf:

```go-html-template
{{< image
  src="portrait.png"
  alt="Dr. Swetoslaw Beltschew"
>}}
```

Optional kann eine Bildunterschrift angegeben werden:

```go-html-template
{{< image
  src="portrait.png"
  alt="Dr. Swetoslaw Beltschew"
  caption="Dr. Swetoslaw Beltschew"
>}}
```

Normale Content-Bilder werden mit

```html
loading="lazy"
```

geladen.

---

## 3. Shortcode `image-text.html`

`image-text.html` kombiniert ein Bild mit einem Textblock.

Auch hier wird das Bild aus dem Page Bundle geladen und über `responsive-image.html` verarbeitet.

Beispiel:

```go-html-template
{{< image-text
  src="portrait.png"
  alt="Dr. Swetoslaw Beltschew"
  position="left"
>}}

## Persönlich und strukturiert

Konflikte brauchen manchmal einen neutralen Blick von außen.

{{< /image-text >}}
```

Mögliche Positionen sind:

```text
position="left"
position="right"
```

Mobile First gilt auch hier: Auf kleinen Displays stehen Bild und Text untereinander. Erst auf größeren Displays entsteht ein zweispaltiges Layout.

---

## 4. Shortcode `video.html`

Der Video-Shortcode bindet keinen YouTube-Player ein.

Stattdessen wird ein lokales Vorschaubild angezeigt, das auf das Video bei YouTube verlinkt.

Das Vorschaubild läuft ebenfalls über `responsive-image.html`.

Beispiel:

```go-html-template
{{< video
  url="https://www.youtube.com/watch?v=..."
  src="video-mediation.png"
  title="Was geschieht in einer Mediation?"
>}}

Eine kurze Einführung in den Ablauf und die Arbeitsweise.

{{< /video >}}
```

Das Vorschaubild gilt als dekorativ, weil der Videotitel bereits den zugänglichen Linktext liefert.

Der aktuelle Video-Shortcode soll später noch gestalterisch bzw. funktional überarbeitet werden.

---

## 5. Hugo-Shortcode `figure`

Der Hugo-interne Shortcode `figure` wird durch

```text
layouts/_shortcodes/figure.html
```

überschrieben.

Auch dieser Override verwendet intern `responsive-image.html`.

Beispiel:

```go-html-template
{{< figure
  src="testbild.png"
  alt="Beispiel für Konfliktklärung"
  caption="Eine kurze Bildunterschrift"
>}}
```

Damit laufen auch mit `figure` eingebundene Bilder durch dieselbe zentrale Bildpipeline.

Normale Markdown-Bilder mit

```markdown
![](bild.png)
```

werden auf `sweti.de` nicht verwendet.

---

## 6. Hero-Bilder

Hero-Bilder benötigen keinen eigenen Shortcode und keine zusätzliche Angabe im Frontmatter.

Sie liegen einfach im jeweiligen Page Bundle und heißen:

```text
hero.png
```

oder beispielsweise:

```text
hero.jpg
hero.jpeg
```

Beispiel:

```text
content/
└── angebote/
    └── pflegekonflikte/
        ├── index.md
        ├── hero.png
        └── portrait.png
```

`hero.html` sucht automatisch nach:

```go-html-template
.Resources.GetMatch "hero.*"
```

und übergibt das gefundene Bild an `responsive-image.html`.

Hero-Bilder werden bevorzugt geladen:

```html
loading="eager"
fetchpriority="high"
```

Da der Seitentitel bereits den Inhalt beschreibt, wird das Hero-Bild derzeit als dekorativ behandelt und erhält:

```html
alt=""
```

---

# Anleitung für Texter und Content-Ersteller

## Page Bundle verwenden

Landingpages werden grundsätzlich als Page Bundles angelegt:

```text
content/
└── angebote/
    └── pflegekonflikte/
        ├── index.md
        ├── hero.png
        ├── portrait.png
        └── konflikt.png
```

Die Bilder einer Seite liegen also direkt neben der zugehörigen `index.md`.

## Hero-Bild verwenden

Ein Hero-Bild einfach als

```text
hero.png
```

oder

```text
hero.jpg
```

im Page Bundle ablegen.

Im Markdown ist kein weiterer Aufruf erforderlich.

## Normales Bild einfügen

```go-html-template
{{< image
  src="portrait.png"
  alt="Dr. Swetoslaw Beltschew"
>}}
```

Mit Bildunterschrift:

```go-html-template
{{< image
  src="portrait.png"
  alt="Dr. Swetoslaw Beltschew"
  caption="Dr. Swetoslaw Beltschew"
>}}
```

## Bild und Text kombinieren

```go-html-template
{{< image-text
  src="portrait.png"
  alt="Dr. Swetoslaw Beltschew"
  position="left"
>}}

## Überschrift

Der zugehörige Text steht hier als normales Markdown.

{{< /image-text >}}
```

## Video verlinken

```go-html-template
{{< video
  url="https://www.youtube.com/watch?v=..."
  src="video-mediation.png"
  title="Was geschieht in einer Mediation?"
>}}

Kurze Beschreibung des Videos.

{{< /video >}}
```

## Figure verwenden

```go-html-template
{{< figure
  src="konflikt.png"
  alt="Illustration einer Konfliktsituation"
  caption="Optionale Bildunterschrift"
>}}
```

## Grundregel

Für Bilder im Content möglichst immer die vorgesehenen Shortcodes verwenden.

```text
Hero-Bild       → hero.png / hero.jpg
Normales Bild   → image
Bild + Text     → image-text
Video           → video
Figure           → figure
```

Dadurch werden alle Bilder automatisch über dieselbe responsive Hugo-Bildverarbeitung optimiert.