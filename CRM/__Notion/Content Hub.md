# Redaktionelles Hub in Notion

## Zweck

Dieses Konzept beschreibt ein schlankes Notion-System zur redaktionellen Steuerung von vier Content-Kanaelen:

- LinkedIn
- Blog mit Hugo und GitHub
- YouTube
- Google Business Profile (GBP)

Notion ist die redaktionelle Steuerzentrale. GitHub und Hugo bleiben fuer Blogartikel die technische Quelle der Veroeffentlichung. LinkedIn, YouTube und GBP sind die jeweiligen Publishing-Plattformen.

## Kernmodell

Das System startet mit zwei verbundenen Datenbanken:

1. Themen und Serien
2. Content

```text
Themen und Serien
        |
        v
Content
  |- LinkedIn
  |- Blog / Hugo / GitHub
  |- YouTube
  `- GBP
```

Ein Inhaltseintrag steht fuer genau eine konkrete Veroeffentlichung auf genau einem Kanal.

Ein Blogartikel und der dazugehoerige LinkedIn-Artikel sind zwei separate Inhaltseintraege. Beide sind mit demselben Thema verknuepft und zusaetzlich als Begleit-Content miteinander verbunden.

## Kanalregeln

| Kanal | Funktion | Regel |
|---|---|---|
| LinkedIn | Wichtigster laufender Sichtbarkeitskanal | Detaillierte Pipeline und Kalenderansicht |
| Blog | Langfristiger SEO- und Wissensanker | Jeder Blogartikel erhaelt mindestens einen LinkedIn-Begleitbeitrag |
| YouTube | Etwa alle zwei Wochen: Erklaerung und Vertrauensaufbau | Jedes Video erhaelt mindestens einen LinkedIn-Begleitbeitrag |
| GBP | Monatliche Aktualitaet und lokale Sichtbarkeit | Kurze Beitraege, eigenstaendig oder aus anderen Formaten abgeleitet |

Alle Inhalte erhalten ein Bild oder ein anderes visuelles Medium. Bildidee, Bildquelle, Bildstatus und Alt-Text sind daher Bestandteile jedes Content-Eintrags.

# Datenbank: Themen und Serien

Ein Eintrag steht fuer ein dauerhaft nutzbares Thema, eine Leitfrage, eine Content-Saeule oder eine zusammenhaengende Serie.

## Beispiele

- Pflegekonflikte unter Geschwistern
- Erbstreit fruehzeitig entschaerfen
- Nachbarschaftskonflikte ohne Eskalation ansprechen
- Mediation verstaendlich erklaert
- Familienkonflikte rund um Verantwortung und Pflege
- Konfliktgespraeche wirksam vorbereiten

## Eigenschaften

| Eigenschaft | Notion-Typ | Zweck |
|---|---|---|
| Thema / Serienname | Titel | Eindeutige inhaltliche Klammer |
| Status | Auswahl | Ideenpool, Aktiv, Geplant, Pausiert, Abgeschlossen, Wiederbeleben |
| Content-Saeule | Auswahl | Pflege, Familie, Erbe, Nachbarschaft, Mediation, Konflikt-Coaching, Organisation |
| Zielgruppe | Mehrfachauswahl | Angehoerige, Geschwister, Erbengemeinschaften, Nachbarn, Fuehrungskraefte, Fachkraefte |
| Kernfrage | Text | Welche Frage wird beantwortet? |
| Kernbotschaft | Text | Fachliche Position oder zentrale Erkenntnis |
| Beratungsbezug | Auswahl | Mediation, Konflikt-Coaching, systemische Beratung, Workshop, Information |
| Primaeres Ziel | Auswahl | Sichtbarkeit, Vertrauen, SEO, Anfrage, Aufklaerung, Google-Sichtbarkeit |
| SEO-Potenzial | Auswahl | Hoch, Mittel, Niedrig, noch pruefen |
| Fokus-Keyword | Text | SEO-Schwerpunkt, besonders fuer Blog-Inhalte |
| Relevanz | Auswahl | Hoch, Normal, Niedrig |
| Startdatum | Datum | Beginn der Serie oder Bearbeitung |
| Verknoepfte Inhalte | Relation zur Content-DB | Alle Inhalte aus diesem Thema |
| Letzte Veroeffentlichung | Rollup | Letztes tatsaechliches Datum aus Content |
| Naechste Veroeffentlichung | Rollup | Naechstes geplantes Datum aus Content |
| Veroeffentlichte Inhalte | Rollup | Anzahl bereits veroeffentlichter Inhalte |
| Notizen / Quellen | Text oder Seiteninhalt | Ideen, Quellen, anonymisierte Fallmuster, Fragen |
| Wiederaufnehmen ab | Datum | Zeitpunkt fuer Aktualisierung |

## Themen richtig zuschneiden

| Zu breit | Sinnvoller Zuschnitt |
|---|---|
| Pflege | Wenn Geschwister die Pflegeverantwortung unterschiedlich verteilen |
| Erbrecht | Erbstreit unter Geschwistern nach dem Tod der Eltern |
| Familienkonflikte | Wenn Eltern im Konflikt zwischen erwachsenen Kindern stehen |
| Nachbarschaft | Laermkonflikte: Ein Erstgespraech ohne Vorwuerfe beginnen |
| Mediation | Was Mediation leisten kann, wenn Kommunikation abgebrochen ist |

# Datenbank: Content

Ein Content-Datensatz steht fuer eine konkrete, geplante oder veroeffentlichte Einheit auf einem Kanal.

## Pflichtfelder

| Eigenschaft | Notion-Typ | Zweck |
|---|---|---|
| Inhaltstitel | Titel | Arbeits- oder finaler Titel |
| Kanal | Auswahl | LinkedIn, Blog, YouTube, GBP |
| Content-Typ | Auswahl | Post, LinkedIn-Artikel, Blogartikel, Video, GBP-Beitrag |
| Status | Auswahl | Produktions- und Veroeffentlichungsphase |
| Geplantes Datum | Datum mit Uhrzeit | Reihenfolge und Kalenderansicht |
| Veroeffentlicht am | Datum | Tatsaechlicher Live-Zeitpunkt |
| Thema / Serie | Relation | Verbindung zur Themen- und Serien-DB |
| Konfliktfeld | Mehrfachauswahl | Pflege, Familie, Erbe, Nachbarschaft, Beruf / Organisation |
| Zielgruppe | Mehrfachauswahl | Je Inhalt konkret waehlen |
| Content-Ziel | Auswahl | Sichtbarkeit, Vertrauen, SEO, Anfrage, Aufklaerung, Google-Sichtbarkeit |
| CTA | Auswahl | Erstgespraech, Kontakt, Blog lesen, Video ansehen, Kommentar, Teilen |
| Bildstatus | Auswahl | Offen, Idee vorhanden, Bild gewaehlt, Bild bearbeitet, bereit |
| Bildlink | URL | Link zum Bild, bevorzugt Google Drive |
| Bildquelle | Auswahl | Eigenes Foto, Canva, Stock, KI, Screenshot / Grafik |
| Bild-Alt-Text | Text | Barrierefreiheit und SEO |
| Veroeffentlichungs-URL | URL | Link zum live veroeffentlichten Inhalt |
| Begleit-Content | Selbstrelation | Verknuepfung von Blog, Video, GBP und LinkedIn-Inhalten |
| Notizen / Erkenntnisse | Text | Resonanz, Kommentare, Anfragen, Folgeideen |
| Wiederverwendung ab | Datum | Spaetere Aktualisierung oder Umwandlung in anderes Format |
| Archiviert | Checkbox | Nicht mehr aktive oder verworfene Inhalte |

## Zusatzfelder fuer Blog, Hugo und GitHub

| Eigenschaft | Notion-Typ | Zweck |
|---|---|---|
| Hugo-Slug | Text | URL-Bestandteil des Artikels |
| Hugo-Dateipfad | Text | Pfad zur Markdown-Datei im Repository |
| SEO-Titel | Text | Seitentitel fuer Suchmaschinen |
| Meta-Description | Text | Beschreibung fuer Suchergebnisse |
| Fokus-Keyword | Text | SEO-Schwerpunkt |
| Front Matter fertig | Checkbox | Pruefschritt vor GitHub-Uebergabe |
| GitHub-URL | URL | Link zur Datei, zu einem Issue oder Pull Request |
| Pull-Request-URL | URL | Technische Uebergabe und Pruefung |
| Hugo-Vorschau geprueft | Checkbox | Pruefschritt vor Merge |
| Live-URL | URL | Oeffentliche Artikeladresse |
| Technisch veroeffentlicht am | Datum | Deployment beziehungsweise Go-live |

## Zusatzfelder fuer YouTube

| Eigenschaft | Notion-Typ | Zweck |
|---|---|---|
| Skriptstatus | Auswahl | Idee, Rohfassung, Ueberarbeitung, final |
| Thumbnail-Status | Auswahl | Offen, in Arbeit, fertig |
| Video-Laenge | Zahl | Geplante oder finale Laenge in Minuten |
| YouTube-URL | URL | Link zum veroeffentlichten Video |
| Kapitel / Timecodes | Text | Vorbereitung der Videobeschreibung |

## Vorbereitung fuer spaetere Automatisierung

| Eigenschaft | Notion-Typ | Nutzung heute | Nutzung spaeter |
|---|---|---|---|
| Veroeffentlichungsmodus | Auswahl | Manuell | Manuell, Scheduled, Make, n8n, GitHub-Export |
| Automation bereit | Checkbox | Normalerweise leer | Eindeutige Freigabe zum Uebergabeprozess |
| Externe ID | Text | Leer | LinkedIn-Post-ID, YouTube-ID oder GitHub-Referenz |
| Uebergabe-Status | Auswahl | Optional | Nicht bereit, bereit, uebergeben, bestaetigt, Fehler |

# Pipeline

```text
Idee
-> Ausgewaehlt
-> In Arbeit
-> Entwurf fertig
-> Bild / Medien offen
-> Freigegeben
-> Terminiert / Uebergabebereit
-> Veroeffentlicht
-> Auswertung / Wiederverwertung
-> Archiviert
```

| Status | Bedeutung |
|---|---|
| Idee | Interessant, aber noch nicht eingeplant |
| Ausgewaehlt | Inhalt wird verbindlich vorbereitet |
| In Arbeit | Recherche, Struktur, Schreiben, Skript oder Bildkonzept laeuft |
| Entwurf fertig | Text oder Skript liegt vollstaendig vor |
| Bild / Medien offen | Redaktionell fertig, aber Bild, Thumbnail oder Medium fehlt |
| Freigegeben | Text, Bild, CTA und Links sind geprueft |
| Terminiert / Uebergabebereit | Datum steht; spaeter Startpunkt einer Automation |
| Veroeffentlicht | Live-Link und tatsaechliches Datum eingetragen |
| Auswertung / Wiederverwertung | Resonanz pruefen, Erkenntnisse und Folgeformate festhalten |
| Archiviert | Bewusst verworfen oder nicht mehr aktiv |

# Verknuepfung von Formaten

Blogartikel und YouTube-Videos werden nicht isoliert geplant. Sie werden mit LinkedIn sichtbar gemacht und koennen in weitere kleine Formate uebersetzt werden.

## Beispiel einer Content-Serie

```text
Thema / Serie:
Pflegekonflikte unter Geschwistern

1. Blogartikel
   Titel: Wenn Geschwister sich ueber die Pflege der Eltern streiten
   Kanal: Blog
   Status: Freigegeben
   Geplant: 8. Oktober

2. LinkedIn-Artikel
   Titel: Warum Pflegekonflikte selten nur an der Pflege beginnen
   Kanal: LinkedIn
   Status: Entwurf fertig
   Geplant: 10. Oktober
   Begleit-Content: Blogartikel

3. YouTube-Video
   Titel: Pflegekonflikte in Familien: Das erste Gespraech sinnvoll vorbereiten
   Kanal: YouTube
   Status: In Arbeit
   Geplant: 22. Oktober
   Begleit-Content: LinkedIn-Artikel

4. LinkedIn-Post
   Titel: Der Satz, der ein Pflegegespraech zwischen Geschwistern eskalieren laesst
   Kanal: LinkedIn
   Status: Idee
   Geplant: 24. Oktober
   Begleit-Content: YouTube-Video

5. GBP-Beitrag
   Titel: Pflegekonflikte fruehzeitig ansprechen
   Kanal: GBP
   Status: Ausgewaehlt
   Geplant: 1. November
```

# Ansichten im Notion-Dashboard

Alle folgenden Ansichten basieren auf der Content-Datenbank.

## Redaktionelles Dashboard

- Naechste 14 Tage: Geplante Inhalte, die noch nicht veroeffentlicht sind
- Heute veroeffentlichen: Inhalte mit geplantem Datum heute
- Blockiert: In Arbeit oder Bild / Medien offen, aber Termin innerhalb der naechsten sieben Tage
- Freigegeben: Fertige Inhalte ohne Termin oder Uebergabe
- Offene Themen: Aktive Themen ohne geplanten Content
- Auswertung faellig: LinkedIn-Inhalte, deren Auswertung nach sieben Tagen noch fehlt

## LinkedIn-Pipeline

- Ansichtstyp: Board
- Filter: Kanal = LinkedIn
- Gruppierung: Status
- Sortierung: Geplantes Datum aufsteigend
- Karteninformationen: Datum, Content-Typ, Thema, CTA, Bildstatus

Dies ist die wichtigste operative Arbeitsansicht.

## Content-Kalender

- Ansichtstyp: Kalender
- Datum: Geplantes Datum
- Filter: Nicht archiviert
- Sichtbare Informationen: Kanal, Status, Thema / Serie, Content-Typ

Der Kalender macht die zeitliche Staffelung von Blog-, LinkedIn- und YouTube-Inhalten sichtbar und verhindert ungeplante Haeufungen.

## Blog / Hugo-Uebergabe

- Ansichtstyp: Tabelle
- Filter: Kanal = Blog
- Zusaetzlicher Filter: Freigegeben oder Terminiert / Uebergabebereit
- Sichtbare Informationen: Titel, Status, SEO-Titel, Fokus-Keyword, Hugo-Slug, Hugo-Dateipfad, GitHub-URL, Pull-Request-URL, Live-URL

Diese Ansicht ist spaeter der Andockpunkt fuer einen Export nach Markdown und GitHub.

## YouTube-Produktion

- Ansichtstyp: Board oder Tabelle
- Filter: Kanal = YouTube
- Gruppierung: Skriptstatus oder allgemeiner Status
- Sichtbare Informationen: Titel, Thema, Datum, Skriptstatus, Thumbnail-Status, LinkedIn-Begleitartikel, Video-URL

## GBP-Monatsuebersicht

- Ansichtstyp: Kalender oder Liste
- Filter: Kanal = GBP
- Sortierung: Geplantes Datum aufsteigend
- Ziel: Mindestens ein relevanter Beitrag pro Monat

# Inhaltspflege und technische Quellen

## Notion als redaktioneller Ort

In Notion werden gepflegt:

- Themenideen und Serien
- LinkedIn-Texte und LinkedIn-Artikel
- GBP-Texte
- YouTube-Briefings, Skripte und Beschreibungen
- Blog-Struktur, Recherche, SEO-Daten und Freigabe
- Bildidee, Bildstatus, Bildlink und Alt-Text
- Veroeffentlichungsplanung
- Links zu Live-Inhalten
- Erkenntnisse aus Resonanz und Anfragen

## GitHub und Hugo als technische Quelle

Fuer Blogartikel bleiben GitHub und Hugo verbindlich:

- Die finale Markdown-Datei liegt im GitHub-Repository.
- Hugo Front Matter, Bildpfade, interne Links und technische Details werden vor dem Merge geprueft.
- Ein Pull Request dient als technischer Qualitaets- und Freigabeschritt.
- Nach dem Merge baut und veroeffentlicht Hugo die Website.

## Google Drive als Bild-Master

Google Drive sollte die zentrale Ablage fuer Originalbilder, bearbeitete Versionen, Canva-Exporte und gegebenenfalls Rohmaterial sein.

Notion speichert bevorzugt:

- Google-Drive-Link
- Bildbeschreibung beziehungsweise Alt-Text
- Bildquelle
- Bearbeitungsstatus
- Optional eine Vorschau

# Spaetere Erweiterung: Content-to-Publish

## LinkedIn

```text
Notion: Status = Terminiert / Uebergabebereit
-> Automation liest freigegebenen Text, Bildlink und Datum
-> Uebergabe an Publishing-Tool oder LinkedIn-Anbindung
-> Veroeffentlichung
-> Post-URL und externe ID zurueck nach Notion
-> Optional: Kennzahlen nach sieben oder 30 Tagen ergaenzen
```

Fuer konfliktbezogene und fachlich sensible Beitraege bleibt eine manuelle Endkontrolle sinnvoll.

## GitHub und Hugo

```text
Notion: Status = Automation bereit
-> Export erzeugt Markdown einschliesslich Hugo Front Matter
-> GitHub-Feature-Branch wird erstellt oder aktualisiert
-> Pull Request wird angelegt
-> Inhalte, Bilder, interne Links und Hugo-Vorschau werden geprueft
-> Merge
-> Hugo-Build und Veroeffentlichung
```

Der Pull Request bleibt bewusst ein Kontrollpunkt. Notion wird dadurch nicht zu einem unkontrollierten Direkt-Publishing-System.

# Startumfang

Fuer die erste Ausbaustufe bewusst klein beginnen:

- 5 bis 8 aktive Themen bzw. Serien
- 10 bis 15 geplante LinkedIn-Inhalte
- 2 geplante Blogartikel
- 1 geplantes YouTube-Video
- 1 GBP-Beitrag pro Monat
- Keine separate Aufgaben-Datenbank
- Keine separate Statistik-Datenbank
- Keine vollautomatische Veroeffentlichung

Nach vier bis sechs Wochen realer Nutzung wird geprueft, welche Erweiterung wirklich Nutzen bringt:

- LinkedIn-Performance-Datenbank
- Content-Aufgaben-Datenbank
- Medien- oder Bildarchiv
- Notion-zu-GitHub-Export
- LinkedIn-Scheduling oder Publishing-Automation

# Arbeitsprinzipien

1. Nicht jedes Thema muss sofort auf allen Kanaelen erscheinen.
2. Blogartikel und Videos erhalten jeweils mindestens einen begleitenden LinkedIn-Inhalt.
3. LinkedIn ist der laufende Sichtbarkeitskanal und erhaelt die detaillierteste Pipeline.
4. Der Blog ist langfristiger SEO- und Wissensanker.
5. YouTube vertieft ausgewaehlte Themen und schafft persoenliches Vertrauen.
6. GBP haelt das Unternehmensprofil monatlich sichtbar und aktuell.
7. Bilder gehoeren als fester Produktionsschritt zu jedem Content-Element.
8. Notion steuert die Redaktion; GitHub und Hugo steuern die technische Blog-Veroeffentlichung.
9. Automatisierung folgt erst einem funktionierenden, bewusst einfachen manuellen Prozess.