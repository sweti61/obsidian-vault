---
tags:
  - email
  - lead-magnet
  - automation
  - inruhesprechen
  - brevo
status: aktiv – korrigierte Fassung
date: 2026-04-27
verbunden_mit: "[[⨞ Masterplan v2 2026 März]]"
trigger: Download Lead-Magnet 1 'In Ruhe sprechen, auch wenn es schwer ist' über Formspree
versand: automatisiert über Brevo (oder vergleichbares Tool)
sequenz_dauer: 12 Tage
---
# Lead-Magnet-Sequenz – Korrigierte Fassung

> **Korrekturen gegenüber Vorgängerversion:**
> 
> - Unterschrift einheitlich: "Mediator · Coach · systemischer Berater"
> - URL korrigiert auf `/angebote/praxisaufbau-mediation-dresden/`
> - Mail 1: dezenter Verweis auf neue Über-mich-Seite ergänzt
> - Mail 2 und Mail 3: unverändert in Inhalt und Struktur, nur Unterschrift und URL angepasst
> 
> **Funktion der Sequenz:** Lead-Magnet wirken lassen (Mail 1), nach 5 Tagen sanften Bezug zum Erstgespräch herstellen (Mail 2), nach 12 Tagen letzte ruhige Information mit zwei Optionen (Mail 3).

---

## Mail 1 – Sofort nach Download

**Trigger:** Sofort nach Eintrag der E-Mail-Adresse über Formspree **Betreff:** _Ihr Leitfaden + ein kurzer Gedanke_

---

```
Hallo,

hier ist Ihr Leitfaden:

→ [Download-Link Lead-Magnet PDF]

Ein kurzer Gedanke dazu:

Der Leitfaden gibt Orientierung. Aber manche Situationen zeigen
sich erst beim Lesen als größer, als man dachte.

Falls das so ist: Mein erstes Gespräch ist kostenfrei, dauert
30–45 Minuten und dient der Orientierung – nicht der Verpflichtung.

→ calendly.de/mediator.sweti

Mit ruhigen Grüßen
Dr. Swetoslaw Beltschew

Mediator · Coach · systemischer Berater

---

P.S.: Falls Sie wissen möchten, wer hinter diesem Leitfaden steht
und warum mir diese Arbeit wichtig ist – auf
mediator.sweti.de/ueber-mich beschreibe ich es.

mediator@sweti.de · 0163 803 5634
mediator.sweti.de · calendly.de/mediator.sweti
```

**Notiz zur Implementierung:**

- Download-Link: Der Formspree-Trigger soll wie bisher den JavaScript-gesteuerten Google-Drive-Link ausspielen
- Calendly-Link: einheitlich `calendly.de/mediator.sweti` (nicht `.com`)
- UTM-Parameter für den Über-mich-Link: `?utm_source=email&utm_medium=automation&utm_campaign=lead_magnet_seq&utm_content=mail_1_uebermich`

---

## Mail 2 – Tag 5

**Trigger:** 5 Tage nach Mail 1 **Betreff:** _Eine Frage_

---

```
Hallo,

haben Sie den Leitfaden gelesen?

Ich frage, weil ich immer wieder erlebe:
Das Schwierigste ist nicht das Gespräch selbst – sondern der Anfang.

Wenn Sie möchten, können wir in einem kurzen Gespräch gemeinsam
klären, was in Ihrer Situation ein erster, sinnvoller Schritt
wäre.

Kein Druck. Kein Verkauf. Nur Orientierung.

→ calendly.de/mediator.sweti

Ein Hinweis am Rand: Im Aufbau meiner Praxis biete ich 2026 und
2027 eine begrenzte Anzahl kostenfreier Mediationen an – falls
Sie das schwierige Gespräch nicht alleine, sondern mit Begleitung
führen möchten. Bedingungen und Aufnahme:

→ mediator.sweti.de/angebote/praxisaufbau-mediation-dresden/

Dr. Swetoslaw Beltschew

Mediator · Coach · systemischer Berater
mediator@sweti.de · 0163 803 5634
mediator.sweti.de · calendly.de/mediator.sweti
```

**Notiz zur Implementierung:**

- UTM-Parameter für Praxisaufbau-Link: `?utm_source=email&utm_medium=automation&utm_campaign=lead_magnet_seq&utm_content=mail_2`

---

## Mail 3 – Tag 12

**Trigger:** 12 Tage nach Mail 1 (also 7 Tage nach Mail 2) **Betreff:** _Zum letzten Mal von mir_

---

```
Hallo,

ich schreibe Ihnen ein letztes Mal.

Falls die Situation noch ungeklärt ist:
Ich bin da, wenn Sie bereit sind.

Manchmal reicht genau das –
ein ruhigeres, klareres Gespräch –
um wieder ein Stück Handlungsfähigkeit zurückzugewinnen.

Zwei Möglichkeiten, falls Sie weitergehen wollen:

→ Kostenfreies Orientierungsgespräch buchen:
  calendly.de/mediator.sweti

→ Falls eine längere Begleitung notwendig erscheint: Bis Ende 2027
  begleite ich eine begrenzte Anzahl von Familien und Nachbarschaften
  kostenfrei im Rahmen meines Praxisaufbauprogramms:
  mediator.sweti.de/angebote/praxisaufbau-mediation-dresden/

Alles Gute,
Dr. Swetoslaw Beltschew

Mediator · Coach · systemischer Berater
mediator@sweti.de · 0163 803 5634
mediator.sweti.de · calendly.de/mediator.sweti
```

**Notiz zur Implementierung:**

- UTM-Parameter für Praxisaufbau-Link: `?utm_source=email&utm_medium=automation&utm_campaign=lead_magnet_seq&utm_content=mail_3`
- Calendly-Link in Mail 3 ohne UTM (wie in Mail 1 und Mail 2 auch), da Calendly bereits als Conversion-Event in GA4 erfasst wird

---

## Methodisches zur Sequenz

### Warum Mail 1 keinen Praxisaufbau-Verweis enthält

Der erste Kontakt nach dem Download soll den **Leitfaden wirken lassen**. Wer gerade einen kostenlosen Inhalt heruntergeladen hat, ist empfindlich gegen sofort folgende Werbe-Hinweise. Das Programm in Mail 1 zu erwähnen würde die Lead-Magnet-Beziehung untergraben ("kostenloser Leitfaden → Köder für kostenlose Mediation").

Der Über-mich-Verweis im P.S. ist eine andere Klasse von Hinweis: niedrigschwellig, persönlich, kein Verkauf. Er gibt dem Leser die Möglichkeit, sich vertraut zu machen, ohne dass etwas verlangt wird.

### Warum Mail 2 das Programm "am Rande" erwähnt

In Mail 2 steht der Lead-Magnet bereits 5 Tage zurück. Die Aufmerksamkeit hat sich verschoben. Jetzt ist eine Bezugnahme auf das Programm zulässig – aber **als Möglichkeit, nicht als Aufforderung**. Die Formulierung "Hinweis am Rand" und "falls Sie..." schafft Distanz und respektiert die Autonomie des Lesers.

### Warum Mail 3 zwei Optionen anbietet

Wer Tag 12 erreicht und noch nicht reagiert hat, ist entweder noch in der Sortierungsphase oder hat das Thema beiseite gelegt. Zwei klare Optionen geben beiden Gruppen einen passenden Anker:

- **Niedrigschwellig (Calendly):** für Sortierungsphase
- **Verbindlicher (Praxisaufbau):** für Personen, die das Thema ernster angehen wollen

### Was die Sequenz NICHT macht

- Keine künstliche Dringlichkeit ("nur noch wenige Plätze")
- Keine Verkaufs-Sequenzen mit 5–7 Mails
- Kein automatisches Re-Targeting nach Abschluss der Sequenz
- Keine Manipulation durch Knappheit, Sozialdruck oder Angst-Trigger

---

## Erfolgsmessung

**Was zu tracken ist:**

- Öffnungsrate Mail 1, 2, 3 (in Brevo direkt sichtbar)
- Klicks auf Calendly aus jeder Mail (in GA4 über UTM-Parameter)
- Klicks auf Praxisaufbau-Seite aus Mail 2 und 3 (in GA4 über UTM-Parameter)
- Tatsächliche Buchungen in Calendly nach Mail 2 und 3

**Realistische Zielwerte (Lead-Magnet-Sequenzen allgemein):**

|Kennzahl|Zielwert|
|---|---|
|Öffnungsrate Mail 1|> 50 %|
|Öffnungsrate Mail 2|30–45 %|
|Öffnungsrate Mail 3|20–35 %|
|Klick auf Calendly aus Sequenz|1–3 % der Empfänger|
|Tatsächliche Buchung|0,5–2 % der Empfänger|

Die jetzige Sequenz hat noch keine ausreichende Datenbasis für Optimierung. Erste Auswertung sinnvoll nach 30–50 Sequenz-Durchläufen, also voraussichtlich Q3 2026 oder später.

---

## Was nicht in die Mails gehört

Aus der NICHT-Liste ableitbar:

- Keine Selbstbeschreibung als "Coach mit Lebensweisheiten"
- Keine Heilsversprechen ("Lösen Sie Ihre Familienkonflikte!")
- Keine pauschalen Aussagen über andere Anbieter (Therapeut:innen, Anwält:innen)
- Keine Übertreibungen oder Verallgemeinerungen
- Keine Druckmittel: keine Fristen, keine "letzte Chance"-Rhetorik

Die Sequenz hält sich konsequent an die ruhige, sachliche Tonlage des Lead-Magnets selbst. Wer den Leitfaden gelesen hat, sollte beim Lesen der Mails das gleiche Gefühl haben.

---

_Stand: 27. April 2026 · Korrigierte Fassung · Aktiv in Brevo-Automation einzurichten_