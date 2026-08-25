# Dokumentation: Startseite sweti.de

**Projekt:** sweti.de
**Seite:** `content/_index.md`
**Stand:** 25.08.2026
**Status:** Inhaltlich final, ein Punkt zur Bestätigung offen (siehe Abschnitt 9)

---

## 1. Zweck und Grundprinzip

Die Startseite bildet keine Sitemap der Website ab, sondern eine kurze kommunikative Customer Journey für Privatpersonen 50+ in Dresden, die sich in einem familiären, pflegebedingten oder nachbarschaftlichen Konflikt befinden oder ein schwieriges Gespräch vor sich haben.

Leitprinzip (Redaktionsleitfaden Homepage):

> Die Startseite bildet nicht die Struktur der Website ab. Sie bildet den Weg des Besuchers ab.

Vokabular-Klammer der gesamten Seite: **„Gespräch" / „zurückfinden"**.

---

## 2. Seitenstruktur (finale Reihenfolge)

```text
HEADER
  Site-Brand + Home-Icon | Burger-Menü
        ↓
HERO
  H1 (echter HTML-Text) + Description + zwei Hero-Links
  Hero-Bild darunter, volle Breite, alle Breakpoints identisch
        ↓
SITUATION
  Card-Grid mit 3 Cards (Familie & Beziehung, Pflege & Erbe, Nachbarschaft)
        ↓
KOMPETENZ
  Freitext-Absatz inkl. Inline-Link zu einer Fallgeschichte
        ↓
ABLAUF
  steps-Shortcode "Dein Weg mit mir", 4 nummerierte Schritte
        ↓
PRO-BONO
  panel-Shortcode "Angebot 2026/2027"
        ↓
CTA
  Freitext + cta-Shortcode (style="solid")
        ↓
FOOTER
  unverändert: Kontakt, Impressum, Datenschutz, Adresse, Telefon, Social Icons
```

Diese Reihenfolge weicht bewusst leicht von der im Homepage-Leitfaden skizzierten Beispiel-Dramaturgie ab (Ablauf-Block wurde ergänzt, zwischen Kompetenz und Pro-bono platziert). Der Leitfaden selbst markiert seine Beispielstruktur als Orientierung, nicht als starre Vorgabe.

---

## 3. Header

| Element | Wert |
|---|---|
| Site-Brand-Text | „Dr. Beltschew" (verkürzt gegenüber „Dr. Swetoslaw Beltschew") |
| Icon | Feather `home`, links vom Text |
| Verhalten | gesamtes Element ist ein Link zur Startseite |
| Geltungsbereich | site-weit, nicht nur Startseite |

**Begründung der Kürzung:** Der volle Name bleibt auf „Über mich", Kontakt und im Impressum sichtbar. Der Header dient laut Homepage-Leitfaden nur der Identifikation und Navigation, nicht der vollständigen Namens-/Titelnennung, und muss auf schmalen Mobile-Breakpoints neben Home-Icon und Burger-Icon zuverlässig funktionieren.

---

## 4. Hero

### 4.1 SEO-Felder (Frontmatter)

```yaml
title: "Zurück ins Gespräch: Mediation in Dresden"
description: "Mediation und Konfliktklärung in Dresden: Ich begleite Sie, wenn Gespräche in Familie, Nachbarschaft oder Beziehung ins Stocken geraten."
```

- `title` = H1 = `<title>`-Tag, 42 Zeichen, Keyword „Mediation in Dresden" nah am Anfang
- `description` = sichtbarer Text unter der H1 **und** Meta-Description, 138 Zeichen

### 4.2 Hero-Links (unter der H1, vor dem Hero-Bild)

```markdown
[Gespräch vereinbaren](https://calendly.com/mediator-sweti) · [Wie das abläuft](#ablauf)
```

- Erster Link: direkter Sprung zu Calendly, für bereits entschlossene Besucher
- Zweiter Link: Anchor-Sprung zum Ablauf-Block (`steps`-Shortcode, Abschnitt 6), **nicht** zu den Situations-Cards
- Umgesetzt als zwei einfache Markdown-Links, kein `cta`-Shortcode im Hero (würde optisch mit dem stärkeren Schluss-CTA konkurrieren)

> **Zu bestätigen:** Diese Dokumentation geht davon aus, dass der Anchor final auf `#ablauf` zeigt (letzte inhaltliche Empfehlung in der Diskussion). Falls stattdessen bei `#situation` geblieben wurde, bitte diesen Abschnitt entsprechend korrigieren.

### 4.3 Hero-Bild und Layout

- Bestehendes Personenfoto (Querformat, Person rechts im Bild, Freiraum links) wird unverändert verwendet
- **Kein** Split- oder Overlay-Layout ab Tablet/Desktop (Entscheidung vom 24.08.2026, siehe Abschnitt 10)
- Site-weit einheitliches Muster: H1 oben als echter HTML-Text, Hero-Bild darunter in voller Breite, auf allen Breakpoints identisch, kein Sonderverhalten nur für die Startseite

---

## 5. Situation (Card-Grid)

```markdown
Manchmal ist ein Gespräch längst überfällig. Manchmal ist es gerade deshalb schwierig, weil es zu lange nicht stattgefunden hat.

{{< card-grid >}}

{{< card title="Familie & Beziehung" url="https://mediator.sweti.de/mediator-dresden/" icon="users" accent="blue" >}}
Wenn Gespräche zwischen Eltern und Kindern, unter Geschwistern oder in der Partnerschaft ins Stocken geraten.
{{< /card >}}

{{< card title="Pflege & Erbe" url="https://mediator.sweti.de/pflegende-angehoerige-dresden/" icon="heart" accent="green" >}}
Wenn Pflege, Verantwortung oder eine Erbschaft alte Rollen und neue Spannungen sichtbar machen.
{{< /card >}}

{{< card title="Nachbarschaft" url="https://mediator.sweti.de/nachbarschaftskonflikt-mediation-dresden/" icon="home" accent="orange" >}}
Wenn Streit mit Nachbarn den Alltag belastet und ein Gespräch allein nicht mehr weiterhilft.
{{< /card >}}

{{< /card-grid >}}
```

**Designentscheidungen:**
- Bewusst 3 Cards statt 4 (die vierte mediator.sweti.de-Konstellation „Gespräche nicht mehr möglich" ist als Übergangssatz vor dem Card-Grid eingebettet, keine eigene Card)
- Die fünfte Konstellation von mediator.sweti.de („Mediation für Organisationen") entfällt vollständig, klar B2B, nicht Teil von sweti.de
- Jede Card verlinkt genau **eine** passende mediator.sweti.de-Pillarseite (nicht mehrere Links wie im mediator.sweti.de-Vorbild), da der `card`-Shortcode nur ein `url`-Feld unterstützt und Mobile First kurze Cards verlangt
- CI-Akzentfarben: eine Farbe pro Card (blue/green/orange), keine Farbe doppelt

---

## 6. Kompetenz-Freitext

```markdown
Jede dieser Situationen braucht einen eigenen Zugang. Manchmal hilft ein moderiertes Gespräch mit allen Beteiligten, manchmal zunächst ein Gespräch nur für sich selbst. Ich arbeite dafür wahlweise als Mediator, Konflikt-Coach oder systemischer Berater, je nachdem, was Ihre Situation braucht. [Wie sich das in der Praxis anfühlen kann](https://mediator.sweti.de/post/fall-zaun/), zeigt eine Fallgeschichte aus einem Nachbarschaftskonflikt.
```

**Designentscheidungen:**
- Ein einzelner Absatz, keine Aufteilung, kein eigener Shortcode
- Enthält implizit den Rollen-Dreiklang (Mediator/Coach/systemischer Berater), ersetzt damit die von mediator.sweti.de bekannten „Drei-Säulen"-Karten (Klären/Entwickeln/Strukturieren), die bewusst **nicht** auf die Startseite übernommen wurden (siehe Abschnitt 10, Punkt „Drei-Säulen-Karten")
- Verlinkung zu Erfahrungsberichten: **nicht** auf Testimonial-Einzelseiten oder das komplette Tag-Archiv `/tags/fallgeschichten/` (beide enthalten B2B-Inhalte bzw. gelten als veraltet), sondern gezielt auf `https://mediator.sweti.de/post/fall-zaun/`, thematisch passend zur Nachbarschaft-Card, eindeutig privat
- Kein separater Qualifikationsblock auf der Startseite; stattdessen ist ein kurzer Verweis auf die Ausbildung vorgesehen, sobald „Über mich" fertig ist (siehe Abschnitt 9, ToDo 1)

---

## 7. Ablauf-Block

```markdown
{{< steps title="Dein Weg mit mir" icon="calendar" accent="orange" >}}
1. Anruf oder E-Mail, ich melde mich zeitnah zurück
2. Kostenloses Vorgespräch mit erster Einschätzung
3. Mediation, Konflikt-Coaching oder systemische Beratung, je nach Situation
4. Nachgespräch bei Bedarf
{{< /steps >}}
```

**Designentscheidungen:**
- Umgesetzt als eigener Shortcode `steps` (nicht `panel`, nicht `card`), technisch bereits realisiert
- Optik: weißer Hintergrund, feine graue Kontur, schmale Accent-Kante oben, Radius `0.75rem`, dezenter Schatten, Titel immer `H3`, Titel-Icon und Titeltext nebeneinander
- Nummerierte Liste als echte `<ol>/<li>`-Struktur mit runden Nummern-Badges in Accent-Farbe, **ohne** zusätzliche Feather-Icons pro Schritt (bewusste Vereinfachung gegenüber dem mediator.sweti.de-Vorbild)
- Inhaltliche Anpassung gegenüber mediator.sweti.de: Schritt 3 dort lautet „Mediation, Teammoderation oder Führungskräfte-Coaching" (B2B-Sprache), für sweti.de ersetzt durch „Mediation, Konflikt-Coaching oder systemische Beratung"
- Schritt 4 vereinfacht: „Dokumentation oder Nachgespräch" (Original) → „Nachgespräch bei Bedarf" (sweti.de), da „Dokumentation" im privaten Kontext eher formal/B2B wirkt

---

## 8. Pro-bono-Block

```markdown
{{< panel title="Angebot 2026/2027" accent="blue" >}}
Im Aufbau meiner Mediationspraxis biete ich 2026 und 2027 eine begrenzte Anzahl kostenfreier Mediationen und Konfliktberatungen für Familien und Nachbarschaften in Dresden an.

[Mehr zum Praxisaufbauprogramm 2026/2027 →](https://mediator.sweti.de/angebote/praxisaufbau-mediation-dresden/)
{{< /panel >}}
```

**Designentscheidung:** Text gegenüber mediator.sweti.de angepasst, „kommunale Adressaten" entfernt (klarer B2B-Bezug, widerspricht der strikten sweti.de-Abgrenzungsregel), keine Gedankenstriche verwendet (Redaktionsregel).

**Strukturelle Anforderung (Homepage-Leitfaden):** Die Homepage muss nach Entfernen dieser Card weiterhin vollständig funktionieren, das ist gegeben, der Block bildet keine notwendige Brücke zum nachfolgenden CTA-Abschnitt.

---

## 9. Abschließender CTA

```markdown
**Bereit für den nächsten Schritt?** Vereinbaren Sie ein erstes, unverbindliches Gespräch. Wir klären gemeinsam, ob und wie ich Sie unterstützen kann.

{{< cta
  url="https://calendly.com/mediator-sweti"
  text="Termin vereinbaren"
  accent="blue"
  style="solid"
>}}
Sie erreichen mich auch direkt per E-Mail: [mediator@sweti.de](mailto:mediator@sweti.de)
{{< /cta >}}
```

**Designentscheidung:** `style="solid"` als stärkste, primäre Handlungsaufforderung der gesamten Seite, bewusst der einzige Solid-CTA auf der Startseite (Hero-Links sind einfache Textlinks, Pro-bono- und Ablauf-Block nutzen `panel`/`steps`, keine CTA-Buttons).

---

## 10. Footer

Unverändert, bereits umgesetzt. Enthält sitewide: Kontakt, Impressum, Datenschutz, sichtbare Adresse (Bünaustraße 52, 01159 Dresden), Telefonnummer (+49 163 803 5634), E-Mail, Social-Icons (YouTube, LinkedIn).

---

## 11. Zurückgestellte / verworfene Ideen (mit Begründung)

| Idee | Status | Begründung |
|---|---|---|
| Split-Hero-Layout ab Tablet/Desktop (Text neben Bild) | verworfen | Kein gemeinsamer Wrapper von H1 und Bild im bestehenden Aufbau, Aufwand stand nicht im Verhältnis zur Seitengröße |
| Overlay-Hero (H1 auf dem Foto platziert) | verworfen | Gestalterisch stimmig zum Foto, aber ebenfalls unverhältnismäßiger Aufwand für diese Seite |
| Zwei Hero-Bilder mit eingebettetem Text (Canva, Mobile/Desktop getrennt) | verworfen | Verstößt gegen den Hero-Leitfaden („Text immer als HTML, nicht im Bild"), gefährdet SEO/Barrierefreiheit der bereits optimierten H1, doppelte Pflege bei jeder Textänderung |
| Drei-Säulen-Karten (Klären/Entwickeln/Strukturieren) auf der Startseite | verworfen | Redundant zum Kompetenz-Freitext, methodische statt situative Gliederung, vom Homepage-Leitfaden ausdrücklich als „ausführliche Methodenbeschreibung" ausgeschlossen |
| Vierte Situations-Card „Gespräche nicht mehr möglich" | verworfen zugunsten Freitext | Hält das Card-Grid bei 3 statt 4 Cards, passt besser zu „kompakt bleiben" |
| Eigener `steps`-Shortcode mit Icon pro Listenschritt | vereinfacht | Nur Nummern-Badges, keine zusätzlichen Icons je Schritt, technisch einfacher, Darstellung bereits klar genug |
| Link auf Testimonial-Seiten oder komplettes Fallgeschichten-Tag-Archiv | verworfen zugunsten Einzellink | Beide enthalten oder ermöglichen B2B-Inhalte bzw. gelten als veraltet |

---

## 12. Offene Punkte

1. **Hero-Anchor-Ziel:** Bitte final bestätigen, ob `#ablauf` (wie in dieser Dokumentation angenommen) oder `#situation` verwendet wird.
2. **FAQ-Seite** `/haeufige-fragen/` mit FAQPage-JSON-LD: laut letztem Stand noch in Arbeit, nicht Teil der Startseite selbst, wird von dort ggf. nur verlinkt (falls gewünscht, aktuell nicht vorgesehen).
3. **Qualifikations-Halbsatz im Kompetenz-Freitext:** hängt vom Abschluss der „Über mich"-Seite ab (z. B. „… als ausgebildeter Mediator (INKOVEMA-Institut Leipzig)" plus Link), aktuell noch nicht in den Freitext aus Abschnitt 6 eingearbeitet.

---

## 13. Referenzierte Shortcodes (Stand der technischen Umsetzung)

| Shortcode | Zweck | Parameter | Status |
|---|---|---|---|
| `card` / `card-grid` | klickbares Navigationselement | `title`, `url`, `icon`, `accent` | bestehend |
| `steps` | Ablauf-/Prozessdarstellung, nummeriert | `title`, `icon`, `accent` | umgesetzt |
| `panel` | nicht-klickbarer Hervorhebungsblock | `title`, `icon`, `accent` (Standard `blue`) | umgesetzt |
| `cta` | primäre/sekundäre Handlungsaufforderung | `url`, `text`, `accent`, `style` (`solid`/`outline`, Standard `solid`) | umgesetzt |

Alle vier Shortcodes teilen dieselben drei Accent-Werte (`blue`, `green`, `orange`) und dieselbe Fallback-Logik (ungültiger Wert → Warnung, kein Build-Abbruch, Fallback `blue`).
