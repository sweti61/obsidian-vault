---
title: "14-Tage-Zeitplan: 16.05.2026 - 30.05.2026 (Version 3)"
type: "operativer-zeitplan"
status: "aktiv"
datum_erstellung: "16.05.2026"
version_history:
  - "v1: 16.05.2026 Vormittag - erster Entwurf ohne Stufenplan-Kontext"
  - "v2: 16.05.2026 Mittag - überarbeitet mit Stufenplan-Kontext"
  - "v3: 16.05.2026 Abend - Update mit Tag-1-Reflexion und Realität-Korrektur"
zugehoerig_zu:
  - "[[masterplan-v3-vollausbau-2026-05-14]]"
  - "[[Architekturentscheidungen 2026 05 14 v6]]"
  - "[[SEO-Architektur-Umbau – Stufenplan ohne Produktionsabbruch]]"
  - "[[seo_aktionen_mai_2026]]"
  - "[[seo-baseline-2026-05-24]]"
---

# 14-Tage-Zeitplan: 16.05.2026 – 30.05.2026 (Version 3)

> **Methodischer Kontext:** Diese Version 3 wurde am Abend des 16.05.2026 erstellt, nach Abschluss der Tag-1-Aktivitäten. Sie integriert konkrete Erkenntnisse aus der heutigen Diagnose und passt die Erwartungen an die realen GSC-Daten an.

---

## 0. Ausgangslage zum 16.05.2026 (mit aktualisierten Daten)

### 0.1 Vollständiger Indexverlauf

Aus den heute gesichteten GSC-Daten (Diagramm.csv, 30 Tage Verlauf):

```
Datum         Nicht-indexiert    Indexiert    Impressionen
12.04.2026          20               69            7
14.04.2026          50               39            7
18.04.2026          57               32            1
21.04.2026          76               19            1   ← Stufenplan-Baseline
25.04.2026          87               10            2
28.04.2026          93                4            0
02.05.2026          96                1            3   ← noindex-Welle wirkt
05.05.2026          97                0            4   ← Indexstand 0 erreicht
11.05.2026          97                0            9   ← letzte verfügbare Daten
```

Stand 16.05.2026 (heute): unverändert 0 indexierte Seiten, 97 nicht-indexierte (Diagrammdaten bis 11.05., Indexierungs-Status-Bericht vom 16.05.).

### 0.2 Kritische Probleme aus GSC

```
Umleitungsfehler:                    1 Seite (/testimonials/)
                                     → heute analysiert und teilweise behoben
Gecrawlt – zurzeit nicht indexiert:  96 Seiten
                                     → Validierung gestartet 08.05.2026
Serverfehler (5xx):                  0 Seiten
```

### 0.3 Realitäts-Korrektur der Stufenplan-Erwartung

Der Stufenplan (27.04.2026) erwartete:
- Tag 14-28 nach noindex-Welle: ~25-35 indexierte Seiten

**Tatsächlicher Verlauf:**
- Tag 0 (04.05.): 10 indexiert
- Tag 1 (05.05.): 0 indexiert
- Tag 7 (11.05.): 0 indexiert
- Tag 12 (16.05.): 0 indexiert

**Methodische Konsequenz:** Die Erwartung war zu optimistisch. Realistischer:
- Tag 14-28: 0-5 indexierte Seiten (statt 25-35)
- Tag 28-42: 5-15 indexierte Seiten
- Tag 42-60: 15-25 indexierte Seiten

Google reagiert konservativer nach Massendeindexierungen als die Baseline-Hypothese annahm. Das ist **nicht alarmierend**, sondern eine Anpassung des Erwartungsmanagements.

### 0.4 Status der Stufenplan-Stufen

```
Stufe 1 (Test, Klassifikation):           ✓ abgeschlossen (KW 19)
Stufe 2 (noindex, B2B-Bereinigung):       ✓ abgeschlossen (KW 19-20)
Stufe 3 (Cluster-Konsolidierung):         ✓ abgeschlossen (14.05.2026)
Stufe 4 (Prioritätsseiten schärfen):      vorgezogen, beginnt 18.05.
Stufe 5 (Beobachtung):                    läuft passiv
Q3-Inhalts-Merge:                         offen (ab Juli)
```

---

## 1. Tag-1-Reflexion (16.05.2026 abends)

### 1.1 Was war geplant

Laut v2 für 16.05.:
- Block 1: GSC-Verifizierungs-Diagnose (45-60 Min)
- Block 2: Kontext-Diagnose mit URL-Prüfung für 3 Prioritätsseiten (30 Min)
- Block 3: Hypothesen-Notiz (15-30 Min)

### 1.2 Was tatsächlich passiert ist

```
✓ Block 1: GSC-Indexstand erfasst (0/97)
✓ Block 1+: 30-Tage-Verlauf vollständig interpretiert
◐ Block 2: Übersprungen (URL-Prüfungen für 3 Prioritätsseiten nicht gemacht)
◐ Block 3: Implizit gemacht, nicht als Notiz dokumentiert

Nicht geplant, aber gemacht (Side-Track):
+ Umleitungsfehler-Diagnose für /testimonials/
+ .htaccess vollständig analysiert
+ Hygiene-Änderung Zeile 50 umgesetzt (relative → absolute URL)
+ Mehrfache httpstatus.io-Verifizierung
+ GSC-Validierung /testimonials/ angestoßen
```

### 1.3 Reflexion zur Hygiene-Änderung (Lösung A)

Heute wurde eine Hygiene-Änderung in der .htaccess umgesetzt:

```apache
# vorher:
RewriteRule ^testimonials/?$ /testimoni/ [R=301,L]

# nachher:
RewriteRule ^testimonials/?$ https://mediator.sweti.de/testimoni/ [R=301,L]
```

**Eingeschränkte Wirkung der Änderung:**

Die Änderung von relativer Ziel-URL zu absoluter Ziel-URL ist **kosmetisch**, nicht funktional. Die nachfolgende Verifizierung mit httpstatus.io zeigte: Der Doppel-Hop bei HTTP-Aufrufen bleibt unverändert.

```
http://mediator.sweti.de/testimonials/    →  301
https://mediator.sweti.de/testimonials/   →  301
https://mediator.sweti.de/testimoni/      →  200 OK
```

**Methodische Erkenntnis:** Lösung A wurde gewählt mit der Erwartung, sie behebe den GSC-Umleitungsfehler. Tatsächlich behebt sie ihn nicht. Die echte Lösung (Lösung B: Custom-Regel vor HTTPS-Regel) wäre 10 Minuten zusätzlich gewesen.

**Konsequenz für v3:**
- GSC-Validierung wurde trotzdem angestoßen
- Erwartung: GSC könnte den Eintrag nach Neuevaluation entfernen, weil HSTS und HTTPS-Crawling dominieren
- Falls nicht (Beobachtung 4-6 Wochen): Lösung B als Anschluss-Option

**Methodische Lehre:** Eine Entscheidung mit Wissen um die Wirkung getroffen ist methodisch okay – auch wenn die Wirkung gering ist. Wichtig war: die Verifizierung mit httpstatus.io hat gezeigt, dass die Annahme falsch war. Diese Verifikations-Disziplin trägt langfristig.

### 1.4 Konkrete Side-Track-Ergebnisse für Zeitplan-Anpassung

Folgende Erkenntnisse aus dem Side-Track fließen in v3 ein:

- Die .htaccess hat weiteres Optimierungspotenzial (Lösung B als zukünftige Aufgabe)
- /testimonials/-Validierung muss bis 22.05. beobachtet werden
- Strategische Mini-Bilanz am 22.05. wird konkretisiert

---

## 2. Tagesplan – Woche 1 (überarbeitet)

### Samstag 16.05.2026 – ✓ abgeschlossen

Status: erledigt. Siehe Tag-1-Reflexion oben.

---

### Sonntag 17.05.2026 – Ruhetag

Keine geplanten Aktivitäten.

---

### Montag 18.05.2026 (ca. 2.5-3.5 Stunden)

**Tagesthema:** URL-Prüfungen nachholen, dann Audit /mediator-dresden/ vorbereiten.

```
Block 1 (20-30 Min) – URL-Prüfungen 3 Prioritätsseiten (nachgeholt aus 16.05.)
  □ GSC > "URL prüfen" für:
    - /mediator-dresden/
    - /pflegende-angehoerige-dresden/
    - /themen/erbstreit-familie-klaeren-dresden/
  □ Pro URL notieren:
    - Indexierungsstatus
    - Letztes Crawling-Datum
    - "Crawled, currently not indexed" oder anderer Status
    - Konkrete Probleme (falls vorhanden)
  □ Bei Bedarf: "Indexierung beantragen" klicken
  □ Notiz erstellen: "url-pruefung-prioritaetsseiten-2026-05-18.md"

Block 2 (15 Min) – /testimonials/-Validierung sichten
  □ GSC: Hat sich der Status der Validierung geändert?
  □ Falls bestätigt: Notiz dass Hygiene-Änderung gewirkt hat
  □ Falls noch ausstehend: Geduld, weiter beobachten

Block 3 (90-120 Min) – Audit /mediator-dresden/ (laut Stufenplan KW 25)
  Schema aus seo_aktionen_mai_2026.md Aufgabe 4.1:
  □ Wortzahl zählen (Ziel: 1500+)
  □ H1 mit Keyword "mediator dresden" prüfen
  □ H2-Struktur prüfen
  □ Lokale Verankerung sichtbar?
    - Dresden mehrfach erwähnt
    - Konkrete Stadtteile genannt?
    - Bezug zu sächsischem Kontext?
  □ Sweti als Person sichtbar?
    - Name, Qualifikation, Hintergrund
  □ Klare CTA?
    - Calendly-Link prominent
    - Was passiert nach Erstgespräch?
  □ Bild mit Alt-Text?
  □ Interne Links zu Pillarseiten zählen
  □ GSC-Daten der Seite notieren:
    "mediator dresden" Position __ (war 3.13 in heutigen Daten)
    "mediator" Position __ (war 7.62)

Block 4 (15-30 Min) – Verbesserungsplan formulieren
  □ Audit-Notiz: "audit-mediator-dresden-2026-05-18.md"
  □ 3-5 konkrete Verbesserungspunkte mit Priorität
  □ Geschätzter Aufwand pro Punkt
  □ Welche Verbesserung wird am Mittwoch umgesetzt?
```

---

### Dienstag 19.05.2026 – Ruhetag oder optional

```
Optional (30 Min) – falls Energie da
  □ Inhalt-Recherche für /mediator-dresden/-Schärfung
  □ Konkrete Formulierungen für CTA-Verbesserung skizzieren
  □ Bilder für lokale Verankerung sammeln (Dresden-Motive)
```

---

### Mittwoch 20.05.2026 (ca. 2-3 Stunden)

**Tagesthema:** /mediator-dresden/ schärfen – konkrete Umsetzung.

```
Block 1 (15 Min) – GSC-Schnellcheck
  □ Indexierungs-Status: Veränderung seit Montag?
  □ Wurden die 3 Prioritätsseiten (URL-Prüfung am 18.05.) crawled?

Block 2 (90-120 Min) – /mediator-dresden/ Inhalte schärfen
  Aus dem Verbesserungsplan vom Montag:
  □ Top-Priorität-Punkt 1 umsetzen
  □ Top-Priorität-Punkt 2 umsetzen
  □ Lokale Verankerung verstärken (Dresden-Bezüge)
  □ Interne Links zu Pillarseiten setzen
  □ CTA prüfen und ggf. nachschärfen

Block 3 (30 Min) – Build, Deploy, Test
  □ Hugo build lokal
  □ Browser-Test auf der live-Site nach Deploy
  □ GSC > "URL prüfen" für /mediator-dresden/
  □ "Indexierung beantragen" klicken

Block 4 (15 Min) – Dokumentation
  □ Was wurde konkret geändert? Notiz in Audit-Datei
  □ Erwartung: nächste GSC-Sichtung in 7 Tagen
```

---

### Donnerstag 21.05.2026 – Ruhetag

---

### Freitag 22.05.2026 (ca. 2-2.5 Stunden)

**Tagesthema:** Strategische Mini-Bilanz Woche 1 und kleine Aktivierungs-Aufgaben.

```
Block 1 (45-60 Min) – Strategische Mini-Bilanz Woche 1
  □ GSC-Index-Stand: Veränderung seit 16.05.?
    - Indexierte Seiten: 16.05. = 0, 22.05. = __
    - /mediator-dresden/ nach Schärfung indexiert? (2 Tage Wartezeit)
  □ /testimonials/-Validierung: Status?
    - Eintrag noch in Umleitungsfehler-Liste?
    - Bei Bedarf: Anschluss-Entscheidung zu Lösung B
  □ Konnten Klientenseiten in den Index kommen?
  □ Soll am 25.05. eine zweite Prioritätsseite (/pflegende-angehoerige-dresden/)
    geschärft werden, oder weiter abwarten?
  □ Notiz erstellen: "mini-bilanz-woche-1-2026-05-22.md"

Block 2 (30-45 Min) – /zielgruppen/-GSC-Daten
  □ GSC > Leistung > Seiten: Filter auf /zielgruppen/-URLs setzen
  □ Letzte 14 Tage vs. vorherige 14 Tage vergleichen
  □ Konkret notieren:
    - /zielgruppen/ Hauptseite: Impressionen-Trend
    - /zielgruppen/privatpersonen/: Impressionen-Trend
    - Drei B2B-/zielgruppen/-Seiten (sollten Redirects sein):
      Werden sie noch in Leistung gelistet oder nicht mehr?
  □ Auslöser-B-Status festhalten (laut v6 Abschnitt 4)

Block 3 (30-45 Min) – LinkedIn-Banner-Aktualisierung
  Aus v3 Masterplan Abschnitt 3.3:
  □ Aktuelles Banner sichten – ist es B2B-fokussiert?
  □ Falls nein: einfaches Update
    - Headline-Text auf B2B-Fokus
    - Visuell ruhig und sachlich
  □ Banner hochladen

Block 4 (15 Min) – E-Mail-Signatur erweitern
  □ Signatur erweitern um P.S.-Link zu praxisaufbau-mediation-dresden
  □ Test mit eigenem E-Mail-Versand
```

---

## 3. Tagesplan – Woche 2 (24.05. – 30.05.2026)

### Samstag 23.05.2026 – Optionale Wochenbilanz

```
Optionaler Block (30-45 Min) – Wochenbilanz Woche 1
  □ Was wurde diese Woche erledigt?
  □ Was bleibt offen für Woche 2?
  □ Energielevel-Check
```

---

### Sonntag 24.05.2026 – Ruhetag

---

### Montag 25.05.2026 (ca. 2-3 Stunden)

**Tagesthema:** GSC-Sieben-Tage-Beobachtung nach /mediator-dresden/-Schärfung und LinkedIn-Profil komplette Optimierung.

```
Block 1 (45-60 Min) – GSC-Auswertung nach 7 Tagen Schärfung
  □ Wurde /mediator-dresden/ neu gecrawlt? (URL prüfen)
  □ Hat sich die Position für "mediator dresden" verändert?
    Bisheriger Stand: Position 3.13, 1 Klick, 38 Impressionen
  □ Wurde sie wieder indexiert? (Verifizieren)
  □ Allgemeine Indexierungs-Entwicklung:
    Anzahl indexierte Seiten heute vs. 16.05. = __ vs. 0
  □ Entscheidung: zweite Prioritätsseite (/pflegende-angehoerige-dresden/)
    schärfen, oder weiter abwarten?
  □ Bei Bedarf: Anschluss-Audit beginnen

Block 2 (60-90 Min) – LinkedIn-Profil komplette Optimierung
  Aus Masterplan v3 Abschnitt 3.3:
  □ Headline auf B2B-Fokus:
    "Mediator und systemischer Berater · Konflikte in IT-Projekten
    und Organisationen · Dresden"
  □ About-Section auf Personas Martina und Andreas ausrichten:
    - Einleitung (Anlass für meine Arbeit)
    - Was ich mache (drei Säulen: Mediation, Coaching, Beratung)
    - Für wen (Persona-Hinweise ohne Personennamen)
    - Beispielfälle (anonymisiert, kurz)
  □ Featured-Bereich konfigurieren:
    - Link zu beltschew.de
    - Calendly-Link
    - (Origin Story wenn aktiviert)

Block 3 (15 Min) – Notiz erstellen
  □ Welche LinkedIn-Posts könnten in Q3 2026 entstehen?
    Ideen-Backlog anlegen, nicht jetzt schreiben
```

---

### Dienstag 26.05.2026 – Ruhetag

---

### Mittwoch 27.05.2026 (ca. 2 Stunden)

**Tagesthema:** /zielgruppen/-Status-Auswertung und Quartals-Theme-Plan starten.

```
Block 1 (30-45 Min) – /zielgruppen/-Status zweite Sichtung
  □ GSC-Daten der /zielgruppen/-URLs erneut sichten
  □ Auslöser-B-Bewertung:
    - Sinken die Impressionen weiter?
    - Wann letzte Impression auf einer Brücken-URL?
  □ Entscheidungs-Vorbereitung:
    - Wenn deutlich sinkt: Auflösung in nächster Welle möglich
    - Wenn stabil: weiter abwarten

Block 2 (60-75 Min) – Quartals-Theme-Plan Q3 2026
  Aus Masterplan v3 Abschnitt 6.5:
  □ GSC > Leistung > Suchanfragen: Liste der letzten 90 Tage
  □ Top 20 Suchanfragen identifizieren
  □ 3-5 Blog-Themen für Q3 2026 ableiten:
    - "nachbarschaftsstreit mediation" Position 96.2 – hohes
      Verbesserungspotenzial, was tun?
    - "problem mit nachbarn mediation" Position 98 – Pillarseite
      schärfen oder neuer Artikel?
    - "systemische fragen auftragsklärung" Position 89 – evt.
      A1-Artikel ohne noindex stellen?
  □ Themenliste als Notiz ablegen
```

---

### Donnerstag 28.05.2026 – Ruhetag

---

### Freitag 29.05.2026 (ca. 2-3 Stunden)

**Tagesthema:** Aktivierungs-Audit der Cornerstone-Inhalte und Failure-Story-Material.

```
Block 1 (60-90 Min) – Cornerstone-Inhalte Aktivierungs-Audit
  Aus Masterplan v3 Abschnitt 4:
  □ Origin Story (/post/origin-story-mediator-werden/)
    - Aktuelle Struktur prüfen: Cornerstone oder normaler Artikel?
    - Verlinkungen prüfen: woher wird sie verlinkt?
    - Marketing-Verwendung dokumentieren: keine (Status v3)
    - Aufwertungs-Liste erstellen für Q3 2026
  □ Über-mich-Seite (/about/)
    - Aktuelle Titel/Meta-Description notieren
    - Test-Varianten formulieren für CTR-Optimierung
    - Erste Variante diese Woche umsetzen?
  □ Praxisaufbau-Seite (/angebote/praxisaufbau-mediation-dresden/)
    - Wie viele Pillarseiten verlinken zu ihr? (in v3: 2 von 5)
    - Lösung: 1-2 weitere Pillarseiten verlinken hinzufügen

Block 2 (45-60 Min) – Failure Story Materialsammlung
  Aus Masterplan v3 Abschnitt 4.2:
  □ Notiz "failure-story-material-2026-05-29.md" anlegen
  □ Konkrete Materialsammlung:
    - 12-Monats-Marketing-Aktionen chronologisch dokumentieren
    - Anwalts-Anschreiben: Liste, Daten, Reaktionen
    - Pflege-Telefonate: Liste falls noch erinnerlich
    - IHK/HWK/Sozialministerium-Korrespondenz
    - Persönliche Postkarten-Aktion
  □ Hinweis: Schreiben startet Q3 2026 – jetzt nur Material
```

---

### Samstag 30.05.2026 (ca. 1.5-2 Stunden) – Ende des 14-Tage-Zeitraums

**Tagesthema:** 14-Tage-Bilanz und Entscheidungen für Tage 15-30.

```
Block 1 (45-60 Min) – 14-Tage-Bilanz
  □ GSC-Indexstand: was hat sich verändert?
    - Anzahl indexierte Seiten 16.05. → 30.05.
    - Status /mediator-dresden/ nach Schärfung
    - Status der 12 Prioritätsseiten
    - /testimonials/-Validierung: erfolgreich?
  □ /zielgruppen/-Status: Auslöser B erfüllt oder nicht?
  □ LinkedIn-Profil: optimiert?
  □ Cornerstone-Aktivierungs-Audit: dokumentiert?
  □ Failure Story Material: Erstaufnahme erfolgt?

Block 2 (30 Min) – Entscheidung über Tage 15-30
  Variante A: GSC zeigt erste Stabilisierung (5+ indexierte Seiten)
    → Tage 15-30: Stufe 4 fortsetzen mit /pflegende-angehoerige-dresden/
    → Plus: Cornerstone-Aktivierung beginnen
  
  Variante B: GSC zeigt weiterhin 0-2 indexierte Seiten
    → Tage 15-30: Geduld, weiter beobachten
    → Andere Aktivitäten priorisieren (Aktivierungs-Audit, Material)
    → Eventuell Lösung B für .htaccess umsetzen
    → Eventuell Origin Story aktivieren

  Variante C: GSC zeigt Probleme bei /mediator-dresden/
    → Tage 15-30: Technische Diagnose
    → Weitere Schärfung pausieren

Block 3 (15 Min) – Vorschau nächste Wochen
  □ Wann startet Phase 1a (Q3 2026)?
  □ Welche Vorbereitungen sind in Tagen 15-45 dringend?
```

---

## 4. Aktivitäten-Übersicht nach Themengebiet (aktualisiert)

### Stufe 4 – Prioritätsseiten schärfen (höchste Priorität)

| Tag | Aktivität | Dauer | Status |
|---|---|---|---|
| 18.05. | URL-Prüfung 3 Prioritätsseiten + Audit /mediator-dresden/ | 2.5-3.5 h | geplant |
| 20.05. | /mediator-dresden/ schärfen, Deploy | 2-3 h | geplant |
| 25.05. | GSC-Auswertung nach 7 Tagen Schärfung | 45-60 Min | geplant |

**Gesamt-Stufe-4-Aufwand:** etwa 5.5-7.5 Stunden.

### GSC-Beobachtung (höchste Priorität, dauerhaft)

| Tag | Aktivität | Dauer | Status |
|---|---|---|---|
| 16.05. | GSC-Verifizierungs-Diagnose | 1.5 h | ✓ erledigt |
| 18.05. | URL-Prüfung 3 Seiten (nachgeholt) | 20-30 Min | geplant |
| 18.05. | /testimonials/-Validierung sichten | 15 Min | geplant |
| 20.05. | GSC-Schnellcheck | 15 Min | geplant |
| 22.05. | Strategische Mini-Bilanz | 45-60 Min | geplant |
| 25.05. | 7-Tage-Auswertung | 45-60 Min | geplant |
| 27.05. | /zielgruppen/-Beobachtung | 30-45 Min | geplant |
| 30.05. | 14-Tage-Bilanz | 60 Min | geplant |

**Gesamt-GSC-Aufwand:** etwa 5-6 Stunden über 14 Tage.

### .htaccess-Pflege (Tagesarbeit 16.05.)

| Tag | Aktivität | Dauer | Status |
|---|---|---|---|
| 16.05. | .htaccess analysiert + Hygiene-Änderung Zeile 50 | 1 h | ✓ erledigt |
| (offen) | Lösung B nachholen falls Validierung nicht greift | 10 Min | optional |

### LinkedIn (mittlere Priorität)

| Tag | Aktivität | Dauer | Status |
|---|---|---|---|
| 22.05. | Banner-Update + E-Mail-Signatur | 1 h | geplant |
| 25.05. | Profil-Komplettoptimierung | 1.5 h | geplant |

**Gesamt-LinkedIn-Aufwand:** etwa 2.5 Stunden.

### Aktivierungs-Audit (mittlere Priorität)

| Tag | Aktivität | Dauer | Status |
|---|---|---|---|
| 29.05. | Cornerstone-Audit (Origin, Über-mich, Praxisaufbau) | 1.5 h | geplant |
| 29.05. | Failure Story Material | 1 h | geplant |

**Gesamt-Aktivierungs-Aufwand:** etwa 2.5 Stunden.

### Quartals-Vorbereitung (niedrigere Priorität)

| Tag | Aktivität | Dauer | Status |
|---|---|---|---|
| 27.05. | Quartals-Theme-Plan Q3 2026 aus GSC-Daten | 1 h | geplant |

**Gesamt-Q3-Vorbereitung:** etwa 1 Stunde.

---

## 5. Gesamt-Aufwand (aktualisiert)

```
GSC-Beobachtung:                  5-6 Stunden
Stufe 4 (1 Prioritätsseite):       5.5-7.5 Stunden
.htaccess-Pflege (16.05.):         1 Stunde (erledigt)
LinkedIn:                          2.5 Stunden
Aktivierungs-Audit:                2.5 Stunden
Quartals-Vorbereitung:             1 Stunde
─────────────────────────────────────────────
GESAMT:                            17.5-20.5 Stunden über 14 Tage
```

Bei 2 Tagen/Woche entspricht das 8-10 Stunden pro Woche. An der Grenze des Realistischen, aber machbar.

---

## 6. Methodische Anmerkungen (erweitert)

### 6.1 Was bewusst NICHT in diesen 14 Tagen erledigt wird

- Failure Story schreiben (Q3 2026)
- Kommunal-Pitch (Q3 2026)
- Vortragskontakte (Q3 2026)
- /zielgruppen/-Auflösung umsetzen (wartet auf Auslöser)
- Mehr als eine Prioritätsseite schärfen (zu intensiv)
- Q3-Inhalts-Merge starten (verschoben auf Juli)
- PDF-Infopaket auf beltschew.de überarbeiten (separater Strang)
- Pillarseiten-Audit (Stufe 4.2) – kommt nach den regionalen Landingpages
- Lösung B für .htaccess-Doppel-Redirect (nur falls Validierung scheitert)

### 6.2 Erwartungs-Anpassung Index-Stabilisierung

Die ursprüngliche Stufenplan-Erwartung "Tag 14-28: 25-35 indexierte Seiten" ist unrealistisch. Realistischer:

```
Tag 14-28 (bis 01.06.):    0-5 indexierte Seiten
Tag 28-42 (bis 15.06.):    5-15 indexierte Seiten
Tag 42-60 (bis 03.07.):    15-25 indexierte Seiten
```

**Konsequenz:** Geduld + Stufe 4. Aktiver Push der Prioritätsseiten ist nötig, weil passives Warten allein wahrscheinlich nicht reicht.

### 6.3 Wenn /mediator-dresden/ nicht indexiert wird

Sollte /mediator-dresden/ nach 7 Tagen Schärfung (am 27.05.) immer noch nicht indexiert sein:

- Site-weite Crawl-Verlangsamung als wahrscheinlichste Ursache
- Technisches Problem an der Seite (Hugo, Cache, .htaccess) prüfen
- Authority-Problem der Site insgesamt – dann Geduld

In dem Fall: Tage 15-30 mit technischer Diagnose statt weiterer Schärfung.

### 6.4 Priorisierung bei eingeschränkter Energie

Falls Energie nur für eines reicht:

1. **GSC-Beobachtung** (kritisch, regelmäßig)
2. **Stufe 4 – /mediator-dresden/ schärfen** (hoher Impact)
3. **LinkedIn-Profil** (einmalig, lang wirksam)
4. **/zielgruppen/-Beobachtung** (kontinuierlich)
5. **Aktivierungs-Audit Cornerstone** (Q3-Vorbereitung)
6. **Quartals-Theme-Plan** (Q3-Vorbereitung)
7. **Failure-Story-Material** (Q3-Vorbereitung)

### 6.5 Lesson Learned aus Tag 1 (16.05.)

- Verifikation nach jeder Aktion: trägt langfristig
- Nicht-vollständige Wirkung einer Maßnahme akzeptieren ist okay, wenn sie bewusst gewählt wurde
- httpstatus.io als Diagnose-Tool ist sehr nützlich für .htaccess-Anpassungen

---

## 7. Anschlussplanung (nach 30.05.2026)

Tage 15-30 (31.05. - 13.06.2026) hängen vom 14-Tage-Bilanz-Befund ab:

**Variante A – Stabilisierung erkennbar:**
- /pflegende-angehoerige-dresden/ schärfen
- Erste Pillarseite vorbereiten
- LinkedIn-Posts (1-2 Test-Posts)

**Variante B – Stabilisierung verzögert:**
- Geduld bei der Indexierung
- Mehr Aktivierungs-Audit und Q3-Vorbereitung
- Eventuell .htaccess Lösung B umsetzen
- Origin Story strukturelle Aufwertung

**Variante C – Probleme bei /mediator-dresden/:**
- Technische Diagnose
- Schärfung pausieren
- Hugo-Build und Sitemap-Logik überprüfen

---

## 8. Verbindung zu anderen Dokumenten

- **SEO-Stufenplan** (27.04.2026) – Grundlage für Stufe 4
- **SEO-Aktionen Mai 2026** (27.04.2026) – konkrete Methodik für Stufen 1-4
- **SEO-Baseline 04.05.2026** – Index-Snapshot vor Mai-Welle
- **Masterplan v3 Vollausbau** (14.05.2026) – Aktivierungs-Schicht-Konzept
- **v6 Architekturentscheidungen** (14.05.2026) – /zielgruppen/-Auslöser-Logik

---

*Zeitplan v3 · überarbeitet 16.05.2026 abends · nach Tag-1-Reflexion · realitäts-angepasst · Geltungsdauer 14 Tage*