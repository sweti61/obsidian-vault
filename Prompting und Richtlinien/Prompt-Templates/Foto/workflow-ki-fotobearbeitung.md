---
title: "Workflow für KI-gestützte Fotobearbeitung"
date: 2026-05-25
tags:
  - fotografie
  - bildbearbeitung
  - lightroom
  - photoshop
  - ki-bildbearbeitung
  - nikon
  - workflow
status: entwurf
---

# Workflow für KI-gestützte Fotobearbeitung

## Ausgangspunkt

Ziel ist nicht die Generierung neuer Bilder und auch keine starke Verfremdung vorhandener Fotos. Es geht um die Bearbeitung von Fotos, die mit Digitalkamera aufgenommen wurden – ähnlich wie in Lightroom oder Photoshop.

Typische Ziele:

- technische Defekte korrigieren
- Belichtung verbessern
- Fokus und Schärfe optimieren
- Farbstiche entfernen
- Weißabgleich korrigieren
- Bildrauschen reduzieren
- Komposition und Ausschnitt verbessern
- Stimmung und künstlerische Wirkung verfeinern
- Personen natürlich und wiedererkennbar erhalten

Die Fotos stammen meist aus Nikon-Kameras wie:

- Nikon Z 6 II
- Nikon fc

Typische Objektive:

- 14–30 mm
- 24–70 mm
- 24–120 mm

Wichtig: Bei Bildern mit Personen dürfen Gesichtszüge, Alter, Körperform, Mimik und Identität nicht stark verändert werden. Die Person soll später eindeutig erkennbar bleiben.

---

## 1. Grundprinzip des Workflows

Der gesamte Bearbeitungsprozess sollte nicht als „Bildgenerierung“, sondern als digitale Dunkelkammer verstanden werden.

Die KI soll nicht frei interpretieren, sondern das vorhandene Foto verbessern.

Der Workflow besteht aus vier Ebenen:

1. Analyse des Fotos
2. Technische Korrektur
3. Ästhetische und stimmungsbezogene Bearbeitung
4. Ausschnitt, Komposition und Export

Wichtig ist: Nicht alles muss in einem einzigen Bearbeitungsschritt geschehen. Besonders bei Personenfotos ist eine schrittweise Bearbeitung besser.

---

## 2. Stufe 1: Bildanalyse

Zuerst sollte das Foto fotografisch analysiert werden.

Dabei geht es um Fragen wie:

- Ist das Bild unterbelichtet?
- Ist das Bild überbelichtet?
- Sitzt der Fokus richtig?
- Gibt es Bewegungsunschärfe?
- Hat das Bild einen Farbstich?
- Ist der Weißabgleich passend?
- Sind Gesichter zu dunkel?
- Ist der Hintergrund störend?
- Sind die Kontraste zu hart oder zu flach?
- Gibt es starkes Bildrauschen?
- Ist der Ausschnitt stimmig?
- Lenken Elemente am Bildrand ab?
- Gibt es eine klar erkennbare Bildaussage?

### Beispielprompt: fotografische Analyse

```text
Analysiere dieses Foto fotografisch. Beurteile Belichtung, Kontrast, Weißabgleich, Schärfe, Fokus, Farbstich, Bildrauschen, Komposition und Hintergrund. Gib mir eine konkrete Bearbeitungsempfehlung wie in Lightroom oder Photoshop. Es soll kein neues Bild generiert werden, sondern das vorhandene Foto soll möglichst natürlich verbessert werden. Personen sollen erkennbar bleiben.
```

Dieser Schritt ist besonders hilfreich, wenn noch nicht klar ist, welche Bearbeitung sinnvoll wäre.

---

## 3. Stufe 2: Technische Korrektur

Die technische Korrektur entspricht dem klassischen Lightroom-/Photoshop-Grundworkflow.

Typische technische Korrekturen:

- Belichtung anheben oder abdunkeln
- Schatten öffnen
- Lichter zurücknehmen
- Kontrast verbessern
- Weißabgleich korrigieren
- Farbstiche entfernen
- Hauttöne natürlicher machen
- Gesichter leicht aufhellen
- Augenpartie vorsichtig betonen
- Bildrauschen reduzieren
- Schärfe verbessern
- Hintergrund leicht beruhigen
- störende Überstrahlungen reduzieren

### Beispielprompt: technische Grundkorrektur

```text
Bearbeite dieses Foto wie in Lightroom/Photoshop. Korrigiere Belichtung, Kontrast, Weißabgleich und Farbstich. Helle die Person bzw. das Gesicht leicht auf, ohne die Haut unnatürlich zu glätten. Reduziere Bildrauschen behutsam und verbessere die Schärfe dort, wo der Fokus liegen sollte. Der Hintergrund darf leicht weicher und ruhiger wirken. Keine neuen Bildelemente hinzufügen. Die Person muss eindeutig erkennbar bleiben.
```

---

## 4. Stufe 3: Fokus und Schärfe

Bei Fokus und Schärfe ist besondere Vorsicht notwendig.

Eine KI kann die wahrgenommene Schärfe verbessern, aber sie kann echte fotografische Details nicht immer korrekt rekonstruieren. Deshalb sollte die Bearbeitung zurückhaltend formuliert werden.

Nicht sinnvoll:

```text
Mach das Gesicht perfekt scharf.
```

Besser:

```text
Verbessere die wahrgenommene Schärfe des Gesichts vorsichtig. Keine künstlichen Gesichtszüge erzeugen. Keine Hautstruktur erfinden. Die Person soll natürlich und wiedererkennbar bleiben.
```

### Beispielprompt: leichter Fehlfokus

```text
Der Fokus liegt etwas daneben. Bitte verbessere die lokale Schärfe im Gesicht und reduziere störende Unschärfe, soweit natürlich möglich. Keine Überzeichnung, keine künstlichen Details, keine Veränderung der Gesichtszüge.
```

### Beispielprompt: Bewegungsunschärfe

```text
Reduziere Bewegungsunschärfe vorsichtig, besonders im Gesicht und an den Augen. Das Ergebnis soll realistisch bleiben und nicht wie ein KI-generiertes Porträt wirken.
```

---

## 5. Stufe 4: Farblook und Stimmung

Nach der technischen Korrektur kann die Bildwirkung gestaltet werden.

Das entspricht Presets oder Looks in Lightroom:

- natürlicher Reportage-Look
- warmes Abendlicht
- Nikon-/Kodachrome-inspirierter Look
- Pop-Look
- Schwarzweiß
- ruhiger dokumentarischer Look
- warme Familienfoto-Stimmung
- Party- oder Lagerfeuer-Stimmung

### Beispielprompt: natürlicher Reportage-Look

```text
Erzeuge einen natürlichen, dokumentarischen Look mit ausgewogenem Kontrast, realistischen Hauttönen, leicht warmem Weißabgleich und zurückhaltender Schärfung. Keine dramatische Bearbeitung.
```

### Beispielprompt: warmes Abendlicht

```text
Gib dem Foto eine warme Abendlicht-Stimmung mit goldenen Highlights, sanft geöffneten Schatten und natürlichem Hautton. Der Hintergrund darf etwas dunkler und weicher wirken. Die Person soll dezent hervorgehoben werden.
```

### Beispielprompt: Nikon-/Kodachrome-inspirierter Look

```text
Bearbeite das Foto mit einem ruhigen, fotografischen Look: natürliche Nikon-Farben, leichte Kodachrome-Anmutung, warme Mitteltöne, etwas kräftigere Tiefen, aber keine übertriebene Sättigung. Hauttöne natürlich erhalten.
```

### Beispielprompt: Pop-Look

```text
Erzeuge einen lebendigen, modernen Pop-Look mit etwas stärkerem Kontrast, klareren Farben und frischer Wirkung. Die Bearbeitung soll hochwertig wirken, nicht künstlich oder überschärft.
```

### Beispielprompt: Schwarzweiß

```text
Wandle das Foto in ein hochwertiges Schwarzweißbild um. Achte auf gute Tonwerttrennung, klare Gesichter, weiche Hauttöne und einen ruhigen Hintergrund. Kein extremer HDR-Look.
```

---

## 6. Komposition und Ausschnitt

Neben technischen Korrekturen kann auch die Komposition verbessert werden.

Mögliche Ziele:

- störende Ränder entfernen
- Hauptmotiv stärker betonen
- Bild ruhiger machen
- Personen besser platzieren
- leeren Raum sinnvoll nutzen
- Ausschnitt für Social Media optimieren
- Format für Website, Blog oder LinkedIn anpassen

### Beispielprompt: besserer Bildausschnitt

```text
Schlage mir einen besseren Bildausschnitt vor. Ziel ist eine ruhigere, stärkere Komposition. Die Person soll im Mittelpunkt bleiben. Störende Ränder, leere oder ablenkende Bereiche dürfen reduziert werden. Bitte Seitenverhältnis 3:2 beibehalten, wenn möglich.
```

### Beispielprompt: Social-Media-Ausschnitt

```text
Erstelle einen verbesserten Ausschnitt für Social Media. Die Person soll gut sichtbar bleiben, mit ruhigem Hintergrund und ausgewogener Bildaufteilung. Bitte nicht zu eng schneiden. Geeignet für quadratisches Format 1:1.
```

### Beispielprompt: LinkedIn oder Website

```text
Optimiere den Ausschnitt für ein professionelles Web- oder LinkedIn-Bild. Viel ruhiger Hintergrund, klare Blickführung zur Person, natürliche Wirkung. Keine dramatische Veränderung.
```

---

## 7. Besonders wichtig bei Personen

Bei Fotos mit Personen sollte immer die Wiedererkennbarkeit Vorrang haben.

Die KI darf nicht aus einem dokumentarischen Foto ein künstliches Porträt machen.

Wichtig ist:

- Gesichtszüge erhalten
- Alter erhalten
- Körperform erhalten
- Frisur erhalten
- Mimik erhalten
- Haut nicht künstlich glätten
- keine Beauty-Retusche
- keine Veränderung der Identität
- keine neuen Gesichtszüge erzeugen

### Beispielprompt: Schutz der Identität

```text
Die Identität der Person darf nicht verändert werden. Gesichtszüge, Alter, Körperform, Frisur und Ausdruck sollen erhalten bleiben. Keine Beauty-Retusche, keine künstliche Glättung, keine Veränderung der Mimik.
```

### Kurzform

```text
Person realistisch erhalten. Wiedererkennbarkeit hat Vorrang vor Perfektion.
```

---

## 8. Was man vermeiden sollte

Bestimmte Formulierungen führen leicht zu übertriebener KI-Bearbeitung.

### Ungünstig

```text
Mach daraus ein perfektes Porträt.
```

Besser:

```text
Verbessere das vorhandene Foto fotografisch, aber erhalte den dokumentarischen Charakter.
```

### Ungünstig

```text
Mach das Gesicht schöner.
```

Besser:

```text
Helle das Gesicht leicht auf, verbessere lokale Schärfe und natürliche Hauttöne, ohne Gesichtszüge zu verändern.
```

### Ungünstig

```text
Ersetze den Hintergrund.
```

Besser:

```text
Beruhige den Hintergrund durch leichte Abdunklung und dezente Unschärfe, ohne neue Inhalte hinzuzufügen.
```

Grundregel:

> Nicht „neu machen“, sondern „fotografisch verbessern“.

---

## 9. Empfohlene Standard-Prompt-Struktur

Für viele Fotos kann eine feste Prompt-Struktur genutzt werden.

### Standardprompt

```text
Bearbeite dieses Foto wie in Lightroom/Photoshop.

Ziel: technische Verbesserung und natürlicher fotografischer Look, keine Neugenerierung.

Korrigiere Belichtung, Kontrast, Weißabgleich, Farbstich und Bildrauschen.

Verbessere die lokale Schärfe vorsichtig, besonders im Hauptmotiv.

Helle Gesichter dezent auf und erhalte natürliche Hauttöne.

Beruhige störende Hintergründe durch leichte Abdunklung oder sanfte Unschärfe.

Keine neuen Bildelemente hinzufügen.

Keine Veränderung von Gesichtszügen, Alter, Körperform, Mimik oder Identität.

Das Ergebnis soll realistisch, hochwertig und fotografisch wirken.
```

Diese Struktur kann je nach Foto angepasst werden.

---

## 10. Spezieller Prompt für Nikon-Fotos

Da viele Fotos mit Nikon Z 6 II, Nikon fc und Zoomobjektiven aufgenommen werden, kann die Bearbeitung auch entsprechend formuliert werden.

### Beispielprompt: Nikon-Foto natürlich optimieren

```text
Bearbeite dieses Nikon-Foto mit einem natürlichen hochwertigen Look. Erhalte den Charakter einer Aufnahme mit Nikon Z-Kamera. Korrigiere Belichtung, Weißabgleich und Kontrast. Hauttöne sollen natürlich bleiben. Falls der Hintergrund unruhig ist, reduziere seine Dominanz durch leichte Abdunklung und sanfte Unschärfe, ähnlich einer Aufnahme mit längerer Brennweite und offener Blende. Keine künstliche Porträtretusche. Keine Veränderung der Person.
```

### Beispielprompt: Party, Lagerfeuer, Abendstimmung

```text
Bewahre die vorhandene Stimmung des Fotos. Verstärke warmes Abendlicht, Lagerfeuer-Romantik und natürliche Kontraste. Gesichter sollen etwas heller und erkennbarer werden, aber die Lichtstimmung darf nicht verloren gehen. Hintergrund dunkler, ruhiger und weicher. Keine künstlichen Details, keine Veränderung der Personen.
```

---

## 11. Praktischer Ablauf mit ChatGPT

Der praktische Ablauf sollte nicht so verstanden werden, dass zuerst ein Prompt erstellt und dann manuell erneut eingefügt werden muss.

Wenn das Bild direkt in ChatGPT bearbeitet wird, kann der Ablauf einfacher sein.

### Empfohlener Ablauf

#### Schritt 1: Bild hochladen

Das Ausgangsbild wird hochgeladen.

Optional kann direkt ein Ziel genannt werden, zum Beispiel:

- natürlich verbessern
- Gesicht heller
- Hintergrund dunkler
- warme Abendstimmung
- mehr Schärfe
- weniger Rauschen
- besserer Ausschnitt
- Party-Stimmung erhalten
- Lagerfeuer-Romantik verstärken

#### Schritt 2: Fotografische Analyse

Das Bild wird zuerst fotografisch eingeschätzt:

- Was ist technisch problematisch?
- Was sollte erhalten bleiben?
- Welche Bearbeitung wäre sinnvoll?
- Wo besteht Risiko, die Person zu stark zu verändern?
- Welche Stimmung trägt das Bild bereits?

Dieser Schritt kann ausdrücklich verlangt werden, wenn vor der Bearbeitung erst eine Einschätzung gewünscht ist.

Beispiel:

```text
Analysiere zuerst das Foto und schlage mir eine Bearbeitungsrichtung vor, bevor du es bearbeitest.
```

#### Schritt 3: Direkte Bearbeitung des Bildes

Nach der Analyse kann die Bearbeitung direkt vorgenommen werden.

Es ist nicht notwendig, den von ChatGPT formulierten Prompt zu kopieren und erneut einzufügen.

Der Bearbeitungsauftrag kann direkt lauten:

```text
Bitte bearbeite das Bild jetzt entsprechend deiner Analyse.
```

Oder konkreter:

```text
Bitte bearbeite das Bild jetzt: Gesicht etwas heller, Hintergrund dunkler und unschärfer, warme Abendlichtstimmung, natürliche Hauttöne, Person unverändert lassen.
```

#### Schritt 4: Künstlerische Verfeinerung

Nach der ersten Bearbeitung kann das Ergebnis gezielt weiter verfeinert werden.

Hier geht es nicht mehr um Grundkorrektur, sondern um Bildwirkung.

Mögliche Verfeinerungen:

- etwas wärmer
- etwas kühler
- mehr Abendstimmung
- weniger künstlich
- natürlicher
- mehr Kontrast
- weniger Kontrast
- Gesicht dezenter aufhellen
- Hintergrund stärker abdunkeln
- Bokeh etwas weicher
- Farben ruhiger
- Pop-Look etwas stärker
- Bildausschnitt enger
- mehr Raum um die Person
- Lichtstimmung stärker herausarbeiten

Beispiel:

```text
Das geht in die richtige Richtung. Bitte noch etwas wärmer, den Hintergrund etwas dunkler und die Person natürlicher lassen. Keine zusätzliche Retusche im Gesicht.
```

Oder:

```text
Die Stimmung gefällt mir. Bitte weniger Sättigung, etwas weichere Kontraste und das Gesicht nur minimal heller.
```

#### Schritt 5: Zweite Runde / Varianten

Für eine zweite Runde muss das bearbeitete Bild normalerweise nicht erneut hochgeladen werden, solange die Bearbeitung im selben Chatverlauf fortgesetzt wird.

Man kann direkt auf das zuletzt erzeugte Bild Bezug nehmen:

```text
Bitte erstelle daraus eine zweite Variante mit wärmerem Licht und ruhigerem Hintergrund.
```

Oder:

```text
Bitte nimm die letzte Version und schneide sie etwas enger auf die Person zu.
```

Oder:

```text
Bitte die letzte Version natürlicher machen. Die Haut wirkt etwas zu glatt.
```

Ein erneutes Hochladen ist nur nötig, wenn:

- ein neuer Chat begonnen wurde
- das bearbeitete Bild außerhalb des Chats weiterbearbeitet wurde
- eine andere Version als Grundlage dienen soll
- mehrere Varianten verglichen werden sollen
- die bisherige Bildversion im Chat nicht mehr eindeutig ist

### Merksatz

> Innerhalb desselben Chats kann auf die letzte bearbeitete Version Bezug genommen werden. Ein erneutes Hochladen ist nur nötig, wenn eine andere oder externe Bildversion weiterbearbeitet werden soll.

---

## 12. Bearbeitungsintensitäten

Für die Praxis ist es sinnvoll, drei Intensitätsstufen zu unterscheiden.

### A. Dokumentarisch

Ziel:

- möglichst natürlich
- kaum sichtbar bearbeitet
- realistische Farben
- dokumentarischer Charakter bleibt erhalten

Geeignet für:

- Familienfotos
- Erinnerungsbilder
- Reisebilder
- private Dokumentation
- authentische Porträts

Beispielprompt:

```text
Bearbeite das Foto dokumentarisch und sehr natürlich. Nur Belichtung, Weißabgleich, Kontrast und leichte Schärfe verbessern. Keine sichtbare Retusche, keine starke Farbveränderung, keine Veränderung der Personen.
```

### B. Fotografisch optimiert

Ziel:

- sichtbar besserer Look
- bessere Lichtführung
- klarere Farben
- ruhigerer Hintergrund
- professioneller, aber glaubwürdiger Eindruck

Geeignet für:

- Porträts
- Website-Bilder
- LinkedIn-Bilder
- Veranstaltungsfotos
- Familienbilder mit besonderer Stimmung

Beispielprompt:

```text
Bearbeite das Foto fotografisch optimiert. Verbessere Licht, Kontrast, Farben und Schärfe deutlich, aber realistisch. Die Person soll natürlich bleiben. Hintergrund etwas ruhiger und weicher, Gesicht dezent heller, Hauttöne natürlich.
```

### C. Künstlerisch gestimmt

Ziel:

- stärkere Stimmung
- deutlicher Farblook
- wärmer, dramatischer oder atmosphärischer
- Bildwirkung wichtiger als rein dokumentarische Neutralität

Geeignet für:

- Partybilder
- Lagerfeuerbilder
- Reisebilder
- besondere Stimmungen
- kreative Social-Media-Bilder

Beispielprompt:

```text
Bearbeite das Foto künstlerisch gestimmt, aber nicht verfremdet. Verstärke die vorhandene Atmosphäre, arbeite Licht, Farben und Stimmung deutlicher heraus. Personen sollen natürlich und wiedererkennbar bleiben. Keine künstlichen Elemente hinzufügen.
```

### Empfehlung

Für die meisten Fotos mit Personen ist Stufe B am besten geeignet:

> Fotografisch optimiert, aber identitätstreu.

Das bedeutet:

- besseres Licht
- bessere Farben
- klarere Gesichter
- ruhigerer Hintergrund
- natürliche Hauttöne
- keine Veränderung der Person
- glaubwürdige fotografische Wirkung

---

## Zusammenfassung

Der wichtigste Grundsatz lautet:

> Das vorhandene Foto soll verbessert werden, nicht neu erfunden.

Gute Prompts für die Fotobearbeitung enthalten deshalb immer:

1. das Bearbeitungsziel
2. den gewünschten Stil
3. die technischen Korrekturen
4. den Schutz der Identität bei Personen
5. die Grenze: keine neuen Bildelemente, keine Verfremdung

Besonders wirksam ist eine schrittweise Bearbeitung:

1. Bild hochladen
2. fotografisch analysieren
3. direkt bearbeiten
4. künstlerisch verfeinern
5. bei Bedarf Varianten aus der letzten Version erstellen

Für Personenfotos gilt:

> Wiedererkennbarkeit hat Vorrang vor Perfektion.


# Konakchrome-Preset

```text
Wende ein sehr dezentes Kodachrome-inspiriertes Farb- und Kontrast-Preset an.

Die Bearbeitung soll fotografisch realistisch bleiben und keine neuen Details erzeugen. Erhalte die Identität, Gesichtszüge, Hautstruktur, Alter, Körperform, Kleidung, Haltung und Mimik der Personen unverändert.

Farbwirkung:
- warme, natürliche Hauttöne
- leicht goldene Abendlicht-Anmutung
- gedämpfte, weniger dominante Grüntöne
- etwas reichere, aber natürliche Rot-, Braun- und Holztöne
- keine übertriebene Sättigung
- keine künstliche Orange-/Teal-Wirkung

Tonwerte und Kontrast:
- etwas dichtere Schatten, aber ohne wichtige Details zu verlieren
- sanft erhöhte natürliche Kontraste
- zurückhaltende Lichter, keine ausgebrannten hellen Bereiche
- leichte filmische Tiefe, aber kein dramatischer Look

Schärfe und Struktur:
- dezente lokale Klarheit auf Gesichtern und wichtigen Motivbereichen
- keine aggressive Schärfung
- keine Hautglättung
- keine Beauty-Retusche
- keine künstlichen Details

Hintergrund:
- etwas dunkler, ruhiger und weicher
- Grün leicht entsättigen und beruhigen
- Hauptmotiv klarer vom Hintergrund trennen

Zielwirkung:
Ein ruhiger, warmer, analog wirkender fotografischer Look mit dezentem Kodachrome-Charakter: natürlich, zeitlos, etwas dichter, mit warmem Licht und zurückhaltender Farbintensität.

```
---


```
Am Ende sehr dezentes Kodachrome-Preset anwenden: warme natürliche Hauttöne, leicht goldene Abendlichtwirkung, gedämpfte Grüntöne, etwas reichere Braun- und Rottöne, sanft dichtere Schatten, natürliche Kontraste, ruhiger filmischer Look. Keine Übertreibung, keine Beauty-Retusche, keine künstlichen Details, Identität und Ausdruck der Personen vollständig erhalten.
```

# Wichtig bei Fotobearbeitung

Die Identität der Person darf nicht verändert werden. Gesichtszüge, Alter, Körperform, Frisur und Ausdruck sollen erhalten bleiben. Keine Beauty-Retusche, keine künstliche Glättung, keine Veränderung der Mimik.

Person realistisch erhalten. Wiedererkennbarkeit hat Vorrang vor Perfektion.

Bewahre die vorhandene Stimmung des Fotos. Verstärke natürliche Kontraste. Gesichter sollen etwas heller und erkennbarer werden, aber die Lichtstimmung darf nicht verloren gehen. Hintergrund dunkler, ruhiger und weicher. Keine künstlichen Details, keine Veränderung der Personen.

# Export

Exportiere das Bild 
Format: JPG 
Größe: 4742 × 3164 px 
Auflösung: ca. 15 MP 
Schärfung: dezent für Druck optimiert