# DIN 5008 – Geschäftsbrief: Positionen auf A4

## Ausgangspunkt

Diese Notiz beschreibt praxisfähige Positionen für einen Geschäftsbrief nach **DIN 5008** auf einem **A4-Blatt**.

Bezugspunkt für alle Maße ist die **linke obere Blattecke**:

- `x` = Abstand von links
    
- `y` = Abstand von oben
    
- Maße in **mm**
    

Grundlage ist hier **Form B**, da sie bei Geschäftsbriefen mit größerem Briefkopf, Logo oder erweitertem Absenderbereich häufig verwendet wird.

---

## Grundformat

```text
Blattformat: A4
Breite:      210 mm
Höhe:        297 mm

Text links:  25 mm
Text rechts: ca. 20 mm
Textbreite: ca. 165 mm
```

---

## Positionen der Elemente – Form B

|Element|x|y|Breite|Höhe|Bemerkung|
|---|--:|--:|--:|--:|---|
|Briefkopf|0 mm|0 mm|210 mm|45 mm|Logo, Firmenname, Kontaktdaten|
|Absenderzeile / Rücksendeangabe|25 mm|ca. 45–50 mm|ca. 80–85 mm|ca. 5 mm|Kleine Schrift, meist 6–8 pt|
|Anschriftenfeld gesamt|20 mm|45 mm|85 mm|45 mm|Fensterumschlag-relevanter Bereich|
|Zusatz- und Vermerkzone|25 mm|45 mm|80 mm|17,7 mm|z. B. „Einschreiben“, „Persönlich“|
|Anschriftzone|25 mm|62,7 mm|80 mm|27,3 mm|Eigentliche Empfängeranschrift|
|Datum|125 mm|ca. 50 mm|max. 75 mm|variabel|Rechts im Informationsblock|
|Betreffzeile|25 mm|ca. 98–101 mm|165 mm|ca. 5–10 mm|Ohne „Betreff:“|
|Textstart / Anrede|25 mm|ca. 112–118 mm|165 mm|dynamisch|Nach Betreff mit Abstand|
|Fußzeile / Brieffuß|20–25 mm|ca. 255–260 mm|ca. 165–170 mm|ca. 25–35 mm|Bank, Steuer, Register, Kontakt|

---

## Minimal-Koordinaten für Vorlagen

Diese Werte eignen sich als Ausgangspunkt für eine Word-, HTML-, Hugo- oder PDF-Vorlage.

```text
briefkopf:        x=0,   y=0,   w=210, h=45
absenderzeile:    x=25,  y=45,  w=80,  h=5
anschriftenfeld:  x=20,  y=45,  w=85,  h=45
datum:            x=125, y=50,  w=75,  h=5
betreff:          x=25,  y=100, w=165, h=8
textstart:        x=25,  y=114, w=165, h=flex
fusszeile:        x=20,  y=260, w=170, h=30
```

---

## Hinweise zur Platzierung

### Briefkopf

Bei **Form B** ist der Briefkopf typischerweise **45 mm hoch**.

```text
x = 0 mm
y = 0 mm
Breite = 210 mm
Höhe = 45 mm
```

Dieser Bereich kann für Logo, Firmenname, Claim und Kontaktdaten genutzt werden.

---

### Absenderzeile

Die Absenderzeile steht oberhalb oder innerhalb des Anschriftenfelds. Sie enthält meist den Absender in sehr kleiner Schrift.

```text
x = 25 mm
y = ca. 45–50 mm
Breite = ca. 80 mm
Höhe = ca. 5 mm
```

Typische Schriftgröße: **6–8 pt**.

---

### Anschriftenfeld

Das Anschriftenfeld ist für Fensterbriefumschläge relevant.

```text
x = 20 mm
y = 45 mm
Breite = 85 mm
Höhe = 45 mm
```

Innerhalb des Anschriftenfelds beginnt der Text meist bei:

```text
x = 25 mm
```

Damit ist die Anschrift mit dem normalen Textblock bündig.

---

### Datum

Das Datum steht bei Geschäftsbriefen häufig rechts im Informationsblock.

```text
x = 125 mm
y = ca. 50 mm
Breite = max. 75 mm
```

Rechts sollte ein Abstand von mindestens ca. **10 mm** bleiben.

---

### Betreffzeile

Die Betreffzeile beginnt links bündig mit dem Textbereich.

```text
x = 25 mm
y = ca. 98–101 mm
Breite = 165 mm
```

Wichtig:

- Der Betreff steht ohne das Wort „Betreff:“.
    
- Er folgt mit Abstand unterhalb des Anschriftenfelds.
    
- In der Praxis liegt er oft etwa bei `y = 100 mm`.
    

---

### Textstart mit Anrede

Die Anrede beginnt unterhalb der Betreffzeile.

```text
x = 25 mm
y = ca. 112–118 mm
Breite = 165 mm
```

Beispiel:

```text
Sehr geehrte Damen und Herren,
```

Nach der Anrede folgt eine Leerzeile, danach beginnt der Fließtext.

---

### Fußzeile / Brieffuß

Der Brieffuß ist nicht in allen Details streng einheitlich festgelegt, wird aber meist im unteren Bereich des Blattes gesetzt.

```text
x = 20–25 mm
y = ca. 255–260 mm
Breite = ca. 165–170 mm
Höhe = ca. 25–35 mm
```

Typische Inhalte:

- Bankverbindung
    
- Steuernummer / USt-ID
    
- Handelsregister
    
- Geschäftsführung
    
- Kontaktinformationen
    
- Webadresse
    

---

## Unterschied Form A und Form B

|Merkmal|Form A|Form B|
|---|--:|--:|
|Höhe Briefkopf|27 mm|45 mm|
|Beginn Anschriftenfeld|y = 27 mm|y = 45 mm|
|Beginn Anschriftzone|y = 44,7 mm|y = 62,7 mm|
|Eignung|sehr kompakte Briefe|Briefe mit Logo / größerem Kopfbereich|

Für moderne Geschäftsbriefe mit Logo oder stärkerem visuellen Kopfbereich ist **Form B** meist angenehmer.

---

## Empfehlung

Für eine eigene Vorlage würde ich **Form B** verwenden:

```text
Briefkopf:        0 / 0 / 210 / 45
Anschriftenfeld:  20 / 45 / 85 / 45
Text links:       25
Betreff:          ab ca. y=100
Textstart:        ab ca. y=114
Fußzeile:         ab ca. y=260
```

Damit bleibt ausreichend Raum für einen professionellen Briefkopf, ein normgerechtes Anschriftenfeld und einen gut lesbaren Textbereich.