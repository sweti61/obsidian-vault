---
title: "Tachyons-Klassen für Markdown in Hugo"
date: 2026-05-21
type: "note"
tags:
  - hugo
  - markdown
  - tachyons
  - ananke
  - css
status: "Entwurf"
---

# Tachyons-Klassen für Markdown in Hugo

## 1. Schriftgröße: `f1` bis `f7`

Bei Tachyons gilt:

| Klasse | Bedeutung |
|---|---|
| `f1` | sehr groß |
| `f2` | groß |
| `f3` | mittelgroß / große Überschrift |
| `f4` | normale größere Überschrift |
| `f5` | normaler Text / kleinere Überschrift |
| `f6` | kleiner Text |
| `f7` | sehr kleiner Text |

Beispiele:

```markdown
## Große H2, nicht fett {.f3 .fw4}

### Größere H3 {.f4 .fw5}
```

Etwas dezenter:

```markdown
## H2 etwas größer, nicht fett {.f4 .fw4}

### H3 etwas größer {.f5 .fw5}
```

---

## 2. Schriftstärke: `fw1` bis `fw9`

| Klasse | Bedeutung |
|---|---|
| `fw1` | sehr dünn |
| `fw2` | dünn |
| `fw3` | leicht |
| `fw4` | normal, nicht fett |
| `fw5` | mittel |
| `fw6` | halbfett |
| `fw7` | fett |
| `fw8` | sehr fett |
| `fw9` | extrem fett |

Für die praktische Arbeit sind besonders wichtig:

```markdown
{.fw4}  normale Schrift, nicht fett
{.fw5}  leicht betont
{.fw6}  halbfett
{.fw7}  fett
```

Merksatz:

> Je größer die Schrift, desto weniger Schriftgewicht ist oft nötig.

Deshalb wirkt eine H2 mit `.f3 .fw4` häufig ruhiger und professioneller als eine sehr fette Überschrift.

---

## 3. Zeilenhöhe: `lh-*`

Für Überschriften ist die Zeilenhöhe wichtig.

| Klasse | Bedeutung |
|---|---|
| `lh-solid` | sehr eng |
| `lh-title` | gut für Überschriften |
| `lh-copy` | gut für Fließtext |

Beispiel:

```markdown
## Überschrift {.f3 .fw4 .lh-title}
```

Empfehlung:

```markdown
## H2 Überschrift {.f3 .fw4 .lh-title}

### H3 Überschrift {.f4 .fw5 .lh-title}
```

---

## 4. Abstände: `mt`, `mb`, `mv`, `pa`

Tachyons verwendet Kurzformen für Außen- und Innenabstände.

### Margin / Außenabstand

| Klasse | Bedeutung |
|---|---|
| `mt` | margin-top, Abstand nach oben |
| `mb` | margin-bottom, Abstand nach unten |
| `ml` | margin-left, Abstand links |
| `mr` | margin-right, Abstand rechts |
| `mv` | margin vertical, Abstand oben und unten |
| `mh` | margin horizontal, Abstand links und rechts |

### Padding / Innenabstand

| Klasse | Bedeutung |
|---|---|
| `pt` | padding-top, Innenabstand oben |
| `pb` | padding-bottom, Innenabstand unten |
| `pl` | padding-left, Innenabstand links |
| `pr` | padding-right, Innenabstand rechts |
| `pv` | padding vertical, Innenabstand oben und unten |
| `ph` | padding horizontal, Innenabstand links und rechts |
| `pa` | padding all, Innenabstand auf allen Seiten |

Die Zahlen bestimmen die Größe des Abstandes:

| Klasse | Wirkung |
|---|---|
| `0` | kein Abstand |
| `1` | sehr kleiner Abstand |
| `2` | kleiner Abstand |
| `3` | mittlerer Abstand |
| `4` | größerer Abstand |
| `5` | großer Abstand |
| `6` | sehr großer Abstand |

Beispiele:

```markdown
## H2 Überschrift {.f3 .fw4 .lh-title .mt4 .mb3}

### H3 Überschrift {.f4 .fw5 .lh-title .mt3 .mb2}
```

Bedeutung:

| Klasse | Bedeutung |
|---|---|
| `.mt4` | mehr Abstand nach oben |
| `.mb3` | mittlerer Abstand nach unten |
| `.mt3` | mittlerer Abstand nach oben |
| `.mb2` | kleinerer Abstand nach unten |

---

## 5. Farben

Typische Tachyons-Farbklassen:

| Klasse | Wirkung |
|---|---|
| `black` | schwarz |
| `near-black` | fast schwarz |
| `dark-gray` | dunkles Grau |
| `mid-gray` | mittleres Grau |
| `gray` | Grau |
| `light-silver` | helles Silber/Grau |
| `white` | weiß |

Für ruhige Webseiten-Typografie sind meist diese Klassen geeignet:

```markdown
## Ruhige H2 {.f3 .fw4 .lh-title .dark-gray}

### Ruhige H3 {.f4 .fw5 .lh-title .mid-gray}
```

---

## 6. Praktische Mini-Merkliste für Markdown

### H2 groß und nicht fett

```markdown
## H2 Überschrift {.f3 .fw4 .lh-title .mt4 .mb3}
```

### H3 größer, aber ruhig

```markdown
### H3 Überschrift {.f4 .fw5 .lh-title .mt3 .mb2}
```

### Hinweistext als Blockquote

```markdown
> Hinweistext
{.bl .bw2 .b--light-silver .pl3 .gray .i}
```

Bedeutung:

| Klasse | Bedeutung |
|---|---|
| `.bl` | border-left, Rahmen links |
| `.bw2` | border-width 2 |
| `.b--light-silver` | Rahmenfarbe hellgrau |
| `.pl3` | Innenabstand links |
| `.gray` | graue Schrift |
| `.i` | kursiv |

### Hervorgehobener Absatz

```markdown
Ein hervorgehobener Absatz.
{.f5 .lh-copy .dark-gray}
```

### Einfache Tabelle

```markdown
| Thema | Beschreibung |
|---|---|
| A | Text |
| B | Text |
{.collapse .ba .b--light-silver}
```

Bedeutung:

| Klasse | Bedeutung |
|---|---|
| `.collapse` | Tabellenrahmen zusammenführen |
| `.ba` | Rahmen auf allen Seiten |
| `.b--light-silver` | Rahmenfarbe hellgrau |

---

## 7. Meine Standardkombination für Überschriften

Für ruhige, gut lesbare Überschriften auf meiner Hugo/Ananke-Webseite:

```markdown
## Überschrift H2 {.f3 .fw4 .lh-title .mt4 .mb3}

### Überschrift H3 {.f4 .fw5 .lh-title .mt3 .mb2}
```

Diese Kombination erzeugt größere Überschriften, aber ohne eine harte, dominante Fettwirkung.
