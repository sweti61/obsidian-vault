# Fachkonzept Content-Hub

**Version:** 0.4 -- integrierter, praktisch geprüfter und UI-seitig
konsolidierter Stand\
**Stand:** 14.09.2026\
**Status:** Implementiert und praktisch getestet\
**Bezug:** Fachkonzept Content-Hub v0.3, Synchronisierungsergebnis RM ↔
Content-Hub v0.2, Relationship Management v0.7, Design-Regeln für
Seitenlayout, Templates und UI v0.5

## 1. Zweck und Geltungsbereich

Der Content-Hub ist die redaktionelle Steuerungs- und
Orientierungsschicht für Content-Ideen, geplante und veröffentlichte
Content-Objekte sowie deren fachlichen Zusammenhang mit Themen,
Angeboten und gegebenenfalls geschäftlichen Vorgängen.

Er strukturiert die Ergebnisse der Marketing- und
Kommunikationsstrategie so, dass redaktionelle Planung, operative
Realisierung, Wiederauffindbarkeit und spätere Auswertung unterstützt
werden.

Der Content-Hub ist **kein CMS**, kein Digital-Asset-Management-System,
kein vollständiges Social-Publishing-System, kein SEO-Spezialsystem und
kein zweites Aufgabenmanagement.

Version 0.4 dokumentiert den nach RM-Integration, End-to-End-Tests sowie
Umsetzung und Praxistest von Seitenlayouts, Standardtemplates, Views und
minimalem Cockpit erreichten Stand.

## 2. Gestaltungs- und Implementierungsprinzipien

### 2.1 Nicht überstrukturieren

> **Heute wird die einfachste fachlich ausreichende Repräsentation
> verwendet. Eine eigene Entität wird erst eingeführt, wenn das
> betreffende Objekt unabhängig verwaltet, betrachtet oder ausgewertet
> werden muss.**

Informationsunterschiede allein rechtfertigen keine zusätzliche
Struktur.

> **Eine zusätzliche Dimension wird nur eingeführt, wenn sie
> eigenständigen Steuerungsnutzen erzeugt.**

### 2.2 Property oder Seiteninhalt

> **Eine Information wird als Property modelliert, wenn sie für
> Identifikation, fachliche Abgrenzung, Steuerung, Auswertung oder
> Verknüpfung des Objekts eigenständig benötigt wird. Erläuternde und
> narrative Informationen gehören in den Seiteninhalt.**

Properties tragen fachliche Bedeutung und strukturierte
Steuerungsinformation. Der Seiteninhalt trägt narrative Tiefe.
Doppelpflege wird vermieden.

### 2.3 Notion-Logic First

> **Wenn Notion für einen fachlichen Bedarf eine native, ausreichend
> einfache Logik bereitstellt, wird diese bevorzugt genutzt, statt eine
> parallele Eigenlogik aufzubauen.**

Dazu gehören insbesondere native Property-Typen, `Status` für
Lebenszyklen, wechselseitige Relationen, native Metadaten,
Seitenlayouts, Templates, Views, Rollups sowie später -- bei
nachgewiesenem Bedarf -- Buttons und Automationen.

### 2.4 Status ohne Bürokratie

> **Statuswerte beschreiben fachliche Zustände und sollen keine
> Bürokratie erzeugen.**

Notions nativer Property-Typ `Status` wird für Lebenszyklen bevorzugt.
`Select` dient Klassifikationen ohne Fortschrittslogik.

### 2.5 Relationsprinzip

> **Relationen werden grundsätzlich wechselseitig eingerichtet. Bei
> 1:n-Zuordnungen wird die Relation von der n-Seite zur übergeordneten
> Seite angelegt. Bei m:n-Beziehungen wird die pflegende Ausgangsseite
> nach dem fachlichen Arbeitsablauf bestimmt.**

### 2.6 Systemgrenzen

-   **Notion:** Relationship Management, Marketingstrategie, Ideen,
    Content-Hub, Vorgänge, Aufgaben und Cockpit-/Steuerungssichten
-   **Obsidian:** Wissen, Methoden, Literatur und dauerhafte fachliche
    Notizen
-   **Hugo/GitHub:** Websites, publizierbarer Web-Content und
    Markdown-Quellen
-   **Gmail:** Kommunikation
-   **Google Calendar / Notion Calendar:** Termine und Zeitplanung

Der Ablageort eines Arbeitsartefakts wird im Content-Hub nicht
strukturell modelliert.

## 3. Informationsarchitektur in Notion

Die Navigation trennt strategische Grundlagen, operative Content-Arbeit
und Ideen:

``` text
Workspace
├── Relationship Management
├── Marketingstrategie
│   ├── Themenfelder
│   └── Themen
├── Content-Hub
└── Ideen
```

`Themenfelder` und `Themen` liegen unter `Marketingstrategie`, weil sie
strategische Grundlagen der Content-Arbeit bilden. `Serie`,
`Content-Vorhaben` und `Content-Asset` gehören zum operativen
Content-Hub. Die Ideen-DB bildet eine gemeinsame Eingangsschicht für
Content-Hub und RM.

## 4. Überblick über das Fachmodell

``` text
IDEE
noch nicht operationalisiert
   ↓ optional 1:n
CONTENT-VORHABEN (CV)
eigenständige redaktionelle Aussage
   ↓ 1:n
CONTENT-ASSET (AS)
konkrete Realisierung auf einem Kanal
   ↓ optional 1:n
AUFGABE (A)
konkrete Arbeitsschritte
```

Das Content-Vorhaben wird durch unabhängige Dimensionen eingeordnet:

``` text
Content-Vorhaben
├── Thema           → worüber?
├── Content-Ziel    → wozu?
├── Serie           → in welchem redaktionellen Zusammenhang?
├── Angebot         → welcher explizite Angebotsbezug?
├── Vorgang         → welche konkrete geschäftliche Bewegung wird ggf. unterstützt?
├── Ursprungs-Idee  → woher kam das Vorhaben?
└── Assets          → wodurch wird es konkret realisiert?
```

Das Content-Asset ergänzt:

``` text
Content-Asset
├── Content-Vorhaben      → welche redaktionelle Aussage?
├── Kanal                 → wo?
├── Status                → in welchem Zustand?
├── Veröffentlichung      → wann?
├── Veröffentlichungs-URL → wo extern erreichbar?
└── Aufgaben              → welche Arbeit ist dafür zu erledigen?
```

## 5. Ideen-Inbox (I)

### 5.1 Definition

> **Eine Idee ist ein noch nicht operationalisierter Gedanke, Ansatz
> oder eine Hypothese, deren mögliche geschäftliche, fachliche oder
> kommunikative Verwendung zunächst geprüft werden soll.**

Eine Idee ist weder ein unfertiger Vorgang noch unfertiger Content oder
ein unfertiges Thema.

### 5.2 Erfassung und Management

Der eigentliche Gedanke wird im Seiteninhalt erfasst. Die Erfassung darf
außerhalb Notions beginnen; nach der Übernahme in die Ideen-DB ist
Notion das führende System für Sichtung, Entscheidung und
Operationalisierung.

> **Nicht die Erfassung verlangt Struktur. Die Bearbeitung erzeugt
> Struktur.**

### 5.3 Properties

  -----------------------------------------------------------------------
  Property                Typ                     Funktion
  ----------------------- ----------------------- -----------------------
  Name                    Title                   kurze Identifikation

  Status                  Status                  Prüfungs- und
                                                  Entscheidungszustand

  Erstellt um             Created time            ursprünglicher
                                                  Erfassungszeitpunkt

  Kurzfassung             Text / AI Autofill      kompakte
                                                  Zusammenfassung des
                                                  Seiteninhalts

  Content-Vorhaben        Gegenrelation           aus der Idee
                                                  entstandene CV

  Vorgänge                Gegenrelation           aus der Idee
                                                  entstandene RM-Vorgänge
  -----------------------------------------------------------------------

### 5.4 Status

``` text
ZU ERLEDIGEN
├── In Prüfung
└── Zurückgestellt

IN BEARBEITUNG
└── In Entscheidung

ABGESCHLOSSEN
├── Operationalisiert
└── Verworfen
```

`In Prüfung` ist Standardstatus.

### 5.5 Operationalisierungsgrenze

> **Eine Idee endet an der Operationalisierungsgrenze.**

Wird aus einer Idee ein konkretes Vorhaben, entsteht das dafür
vorgesehene Fachobjekt: insbesondere ein Content-Vorhaben oder ein
RM-Vorgang. Die Idee bleibt als Herkunfts- und Entscheidungskontext
erhalten.

## 6. Themenfeld (TF)

> **Ein Themenfeld ist eine relativ stabile fachliche Domain, die
> strategisch betrachtet und über längere Zeit bearbeitet wird.**

Properties: - `Name` -- Title - `Beschreibung` -- Text - `Aktiv` --
Checkbox - fachlich erforderliche Gegenrelationen

Themenfelder werden nicht gelöscht, wenn historische Referenzen
bestehen. Nicht mehr verwendete Einträge werden über `Aktiv`
deaktiviert.

Themenfeld ist eine zentrale gemeinsame Entität von RM und Content-Hub.

## 7. Thema (T)

> **Ein Thema ist ein konkreter fachlicher oder redaktioneller
> Gegenstand innerhalb eines oder mehrerer Themenfelder, der als
> eigenständiger Betrachtungsgegenstand für die Content-Arbeit dient.**

Properties: - `Name` -- Title - `Beschreibung` -- Text - `Aktiv` --
Checkbox - `Themenfelder` -- m:n-Relation - `Content-Vorhaben` --
Gegenrelation

Ein CV erhält zunächst genau ein primäres Thema. Eine starre
Unterthemenhierarchie wird nicht verwendet.

## 8. Content-Ziel (CZ)

> **Content-Ziel bezeichnet die strategische kommunikative Funktion
> eines Content-Vorhabens.**

Es beantwortet die Frage:

> **Was soll dieses Content-Vorhaben kommunikativ in erster Linie
> leisten?**

Aktive Content-Ziele: 1. Orientierung geben 2. Fachwissen vermitteln 3.
Zusammenhänge erklären 4. Angebot erklären 5. Vertrauen aufbauen 6.
Positionierung 7. Präsenz/Sichtbarkeit

Properties: - `Name` - `Beschreibung` - `Aktiv` - Gegenrelation zu
Content-Vorhaben

Ein CV erhält zunächst genau ein primäres Content-Ziel.

## 9. Kanal

> **Ein Kanal wird als eigenständige Entität geführt, weil er unabhängig
> von einzelnen Assets für Marketingstrategie, Planung und redaktionelle
> Orientierung betrachtet und gepflegt werden soll.**

Properties: - `Name` - `Strategische Rolle` - `Aktiv` - Gegenrelation zu
Content-Assets

Aktueller Bestand: - LinkedIn - YouTube - Blog - Google Business
Profile - Vortrag

`Vortrag` bleibt bewusst ein pragmatischer Grenzfall zwischen Kanal und
Kommunikationsformat.

## 10. Serie (S)

> **Eine Serie ist eine bewusst zusammengehörige und meist geordnete
> Folge mehrerer Content-Vorhaben.**

Properties: - `Name` - `Abgeschlossen` - `Content-Vorhaben` als
Gegenrelation

Ein CV gehört höchstens zu einer Serie. Beschreibung, Zweck und
Dramaturgie liegen im Seiteninhalt.

## 11. Content-Vorhaben (CV)

### 11.1 Definition und Granularität

> **Ein Content-Vorhaben bildet eine eigenständige redaktionelle Aussage
> bzw. kommunikative Bearbeitung eines Themas ab.**

Unterschiedliche Kanäle oder Formate erzeugen kein neues CV, solange
dieselbe redaktionelle Aussage realisiert wird. Eine wesentlich andere
Kernaussage begründet ein eigenes CV.

Granularitätstest:

> Gleiche Kernaussage, unterschiedliche Realisierung → ein CV, mehrere
> AS.\
> Unterschiedliche Kernaussagen → mehrere CV.

### 11.2 Kernaussage

`Kernaussage` bleibt als eigenes Text-Property erhalten, weil sie die
fachliche Identität und Abgrenzung des CV wesentlich bestimmt.

> **Kernaussage = zentrale redaktionelle Aussage des
> Content-Vorhabens.**

Sie ist nicht bloß eine Zusammenfassung. Sie dient als inhaltlicher
Bezugspunkt für Planung, Abgrenzung und spätere Realisierung in Assets.

### 11.3 Properties

-   `Name`
-   `Status`
-   `Kernaussage`
-   `Thema` -- max. 1
-   `Content-Ziel` -- max. 1
-   `Serie` -- optional, max. 1
-   `Angebote` -- optional m:n
-   `Vorgänge` -- optional m:n
-   `Ursprungs-Idee` -- optional, max. 1
-   `Content-Assets` -- Gegenrelation

### 11.4 Status

``` text
ZU ERLEDIGEN
├── Entwurf
└── Geplant

IN BEARBEITUNG
└── In Bearbeitung

ABGESCHLOSSEN
└── Fertig
```

`Entwurf` ist Standard.

## 12. Content-Asset (AS)

> **Das Content-Asset bildet die konkrete operative Realisierung eines
> Content-Vorhabens auf einem bestimmten Kanal ab.**

Ein CV kann mehrere AS hervorbringen; jedes AS gehört genau einem CV.

Properties: - `Name` - `Status` - `Veröffentlichung` -
`Veröffentlichungs-URL` - `Content-Vorhaben` -- genau ein CV - `Kanal`
-- genau ein Kanal - Gegenrelation zu Aufgaben

Status:

``` text
ZU ERLEDIGEN
└── Geplant

IN BEARBEITUNG
├── In Bearbeitung
└── Fertig

ABGESCHLOSSEN
└── Veröffentlicht
```

`Fertig` bleibt bewusst in der Notion-Gruppe `In Bearbeitung`, weil ein
fertiges, aber noch nicht veröffentlichtes Asset operativ noch nicht
abgeschlossen ist.

> **Terminierung ist kein Lebenszyklusstatus.**

Ein zusätzliches `Format`-/`Asset-Typ`-Property wird derzeit nicht
verwendet.

## 13. Aufgaben und Content-Arbeit

Die bestehende gemeinsame Aufgaben-DB wird für RM und Content-Hub
verwendet.

> **Aufgabe = zu erledigende Arbeit.**\
> **Asset = zu realisierendes bzw. entstandenes Ergebnis.**

Aufgaben werden nur angelegt, wenn ein Arbeitsschritt eigenständig
gesteuert werden soll. Der Aufgabentyp unterscheidet: - `Vorgang` -
`Content-Asset` - `Allgemein`

Aufgabenabhängigkeiten mit `Blockiert` / `Blockiert von` sind nativ
umgesetzt und praktisch getestet. Sub-Items bleiben eine mögliche
spätere Erweiterung.

## 14. Schnittstellen zum Relationship Management

RM und Content-Hub bleiben fachlich getrennte Subsysteme. Die
Integration erfolgt nur über fachlich begründete Schnittstellen.

### 14.1 Gemeinsame Themenfelder

Themenfeld ist eine zentrale gemeinsame Entität. RM-Relationen bestehen
bei Organisationen, Organisationseinheiten, Kontakten, Angeboten und
Vorgängen. Aufgaben erhalten keine direkte Themenfeld-Relation.

### 14.2 Angebot ↔ Content-Vorhaben

Optionale m:n-Relation.

> **Thematische Nähe allein begründet keine Zuordnung.**

Die Relation wird gesetzt, wenn ein Content-Vorhaben ein Angebot bewusst
unterstützt. Der reale ANG/Hugo-Import und der End-to-End-Pfad über
Angebote wurden inzwischen praktisch durchgeführt und erfolgreich
getestet.

### 14.3 Vorgang ↔ Content-Vorhaben

Optionale m:n-Relation.

> **Vorgang → Welche konkrete geschäftliche Veränderung möchte ich
> erreichen?**\
> **Content-Vorhaben → Welche redaktionelle Aussage bzw. kommunikative
> Bearbeitung wird verfolgt?**

Die Relation wird nur genutzt, wenn ein CV Bestandteil oder bewusste
Unterstützung einer konkreten geschäftlichen Bewegung ist.

### 14.4 Idee ↔ Vorgang

Ein Vorgang kann optional auf genau eine Ursprungs-Idee verweisen; aus
einer Idee können mehrere Vorgänge entstehen.

### 14.5 Aufgabe ↔ Content-Asset

Eine Aufgabe kann optional genau einem Content-Asset zugeordnet werden.
Ein Asset kann mehrere Aufgaben besitzen.

## 15. End-to-End-Prozess

### 15.1 Von der Idee zur Operationalisierung

``` text
Gedanke
  ↓
Ideen-DB
  ↓
In Prüfung
  ↓
In Entscheidung
  ├── Verworfen
  ├── Zurückgestellt
  └── Operationalisierung
       ├── Content-Vorhaben
       └── RM-Vorgang
```

Die Idee bleibt Herkunftskontext; die operative Arbeit wird im neuen
Fachobjekt fortgeführt.

### 15.2 Content-Prozess

``` text
Idee oder direkter redaktioneller Bedarf
        ↓
Content-Vorhaben
Kernaussage + Thema + Content-Ziel
        ↓
redaktionelle Konzeption
        ↓
ein oder mehrere Content-Assets
        ↓
kanalspezifische Realisierung
        ↓
optional Aufgaben
        ↓
Fertig
        ↓
Veröffentlicht / realisiert
```

Die Zweiteilung in CV und AS trennt **redaktionelle Absicht** von
**konkreter Realisierung**. Dadurch kann dieselbe Kernaussage ohne
Doppelpflege auf mehreren Kanälen umgesetzt werden.

### 15.3 Geschäftlicher Prozess

``` text
Idee oder direkter geschäftlicher Anlass
        ↓
Vorgang
Ziel + Beziehungen + Angebote
        ↓
Aufgaben
        ↓
geschäftliches Ergebnis
```

Content und Vorgang können verbunden sein, bleiben aber unterschiedliche
Fachobjekte.

## 16. Fachliche Gesamtlogik

``` text
Themenfeld        → In welchem fachlich-strategischen Bezugsraum?
Thema             → Worüber?
Content-Ziel      → Wozu?
Content-Vorhaben  → Welche eigenständige redaktionelle Aussage?
Kernaussage       → Was ist die zentrale Aussage dieses CV?
Serie             → In welchem redaktionellen Zusammenhang?
Content-Asset     → Welche konkrete Realisierung?
Kanal             → Wo?
Veröffentlichung  → Wann?
Vorgang           → Welche geschäftliche Veränderung?
Aufgabe           → Welche Arbeit ist dafür zu erledigen?
```

## 17. Seitenlayouts und Standardtemplates

Die UI-Realisierung folgt den gemeinsamen Design-Regeln für RM und
Content-Hub. Seitenlayout und Template haben unterschiedliche Aufgaben:

> **Seitenlayout definiert, wie Datenbankseiten dargestellt und bedient
> werden. Template definiert, mit welchen vorbelegten Properties und
> welchem Blockinhalt ein neuer Datensatz angelegt wird.**

> **Templates sollen Arbeit sparen; wo ein Template nichts sparen kann,
> sollte es auch nichts künstlich hinzufügen.**

Die Seitenlayouts sind umgesetzt und praktisch getestet.

### 17.1 Standardtemplates

  -----------------------------------------------------------------------
  DB                                  Standardtemplate
  ----------------------------------- -----------------------------------
  Idee                                `Status = In Prüfung`; `## Gedanke`

  Content-Vorhaben                    `Status = Entwurf`;
                                      `## Ausgangspunkt`;
                                      `## Inhaltsskizze`; `## Material`

  Content-Asset                       `Status = Geplant`;
                                      `## Arbeitsnotizen`

  Serie                               `## Idee und Zweck`;
                                      `## Dramaturgie`

  Thema                               `Aktiv = ✓`; Seiteninhalt leer

  Themenfeld                          `Aktiv = ✓`; Seiteninhalt leer

  Content-Ziel                        `Aktiv = ✓`; Seiteninhalt leer

  Kanal                               `Aktiv = ✓`; Seiteninhalt leer
  -----------------------------------------------------------------------

Die Fachkataloge bleiben bewusst besonders einfach. Template-Komplexität
soll erst aus tatsächlicher Nutzung entstehen.

## 18. Views / Sichten

Views sind Arbeitsoberflächen auf bestehenden Datenbeständen und keine
neuen Datenmodelle.

Leitlogik:

``` text
Was ist eine View?
→ Arbeitsoberfläche, kein neues Datenmodell

Wann dauerhaft?
→ nur für wiederkehrende Arbeitsfragen

Was zeigen?
→ nur das für die Arbeitsfrage Relevante

Wie darstellen?
→ Darstellungsform folgt der Arbeitsfrage

Wo bereitstellen?
→ dort, wo die Arbeit stattfindet
```

### 18.1 Implementierte dauerhafte Views

  -------------------------------------------------------------------------------
  Datenbank               View                            Zweck
  ----------------------- ------------------------------- -----------------------
  Ideen                   `Offene Ideen`                  noch nicht
                                                          abgeschlossene Ideen
                                                          bearbeiten

  Ideen                   `In Entscheidung`               entscheidungsreife
                                                          Ideen fokussieren

  Content-Vorhaben        `Aktive Content-Vorhaben`       laufenden
                                                          redaktionellen Bestand
                                                          nach Status steuern

  Content-Vorhaben        `Content-Vorhaben nach Thema`   Content-Bestand
                                                          thematisch betrachten

  Content-Vorhaben        `Content-Vorhaben nach Serie`   Serienzusammenhänge
                                                          betrachten

  Content-Assets          `Aktive Content-Assets`         geplante, bearbeitete
                                                          und fertige, aber noch
                                                          nicht veröffentlichte
                                                          Assets steuern

  Content-Assets          `Veröffentlichungsplanung`      terminierte
                                                          Veröffentlichungen im
                                                          Kalender planen

  Serien                  `Offene Serien`                 nicht abgeschlossene
                                                          Serien überblicken

  Themen                  `Aktive Themen`                 aktuell verwendbare
                                                          Themen pflegen

  Themenfelder            `Aktive Themenfelder`           aktuell verwendbare
                                                          Themenfelder pflegen

  Content-Ziele           `Aktive Content-Ziele`          aktuell verwendbare
                                                          Content-Ziele pflegen

  Kanäle                  `Aktive Kanäle`                 aktuell verwendbare
                                                          Kanäle und ihre
                                                          strategische Rolle
                                                          pflegen
  -------------------------------------------------------------------------------

Weitere dauerhafte Views werden nur ergänzt, wenn eine wiederkehrende
Arbeitsfrage aus der praktischen Nutzung entsteht.

## 19. Cockpit

Ein minimales gemeinsames Cockpit wurde eingerichtet und praktisch
getestet.

Das Cockpit führt Arbeitssichten zusammen, ohne RM und Content-Hub
fachlich oder technisch zu verschmelzen. Es verwendet Linked Views
vorhandener Datenbanken; Daten werden nicht in eine eigene
Dashboard-Datenbank kopiert.

> **Das Cockpit aggregiert Arbeit, nicht Daten.**

Der aktuelle Stand bleibt bewusst minimal. Zusätzliche Bereiche,
Kennzahlen oder Spezialansichten werden erst aus realer Nutzung
abgeleitet.

## 20. Implementierungs- und Teststand v0.4

Der Kern des Content-Hubs ist fachlich, technisch und UI-seitig
umgesetzt.

Praktisch bestätigt sind insbesondere: - Themenfelder und Themen
einschließlich m:n-Relation - Content-Ziele - Kanäle - Serien -
Content-Vorhaben einschließlich Thema, Content-Ziel, Serie und
Kernaussage - Content-Assets einschließlich Kanal und Veröffentlichung -
Ideen-DB einschließlich `Erstellt um`, AI-Kurzfassung und
Operationalisierungsrelationen - gemeinsame Aufgaben-DB -
RM-Schnittstellen - realer ANG/Hugo-Import - Angebot ↔
Content-Vorhaben - Vorgang ↔ Content-Vorhaben - Idee ↔
Content-Vorhaben - Idee ↔ Vorgang - Aufgabe ↔ Content-Asset -
Seitenlayouts - Standardtemplates - dauerhafte Views - minimales
gemeinsames Cockpit

Erfolgreich geprüft wurden die End-to-End-Pfade:

``` text
TF → V → A
TF → ANG ↔ CV → AS → A
I → CV → AS → A
I → V → A
V ↔ CV
```

Damit bestehen derzeit keine offenen Integrationspfade des Kernmodells.

## 21. Freigabestand

Version 0.4 beschreibt den **implementierten und praktisch getesteten
Gesamtstand des Content-Hubs nach RM-Integration und UI-Ausbau**.

Die Ausbauphase

``` text
Seitenlayouts
→ Standardtemplates
→ Views
→ minimales Cockpit
```

ist abgeschlossen und praktisch getestet.

Weitere Änderungen am Fachmodell oder an der UI werden weiterhin aus
realer Nutzung und wiederkehrendem Bedarf abgeleitet, nicht aus
vorsorglicher Modellierung.

# 22. Bekannte und bewusst zurückgestellte Ausbaustufe

Die folgenden Punkte sind bekannt, gehören aber **nicht** zum aktuellen
Ausbau. Sie werden erst wieder aufgenommen, wenn praktische Nutzung
einen ausreichenden Nutzen erkennen lässt.

## 22.1 Buttons und Automationen

Buttons und Automationen werden vollständig in die nächste Ausbauphase
verschoben.

Für die spätere Prüfung gilt:

``` text
Nur Wert berechnen?
→ Formula

Bewusste fachliche Entscheidung durch Benutzer,
danach standardisierte Aktion?
→ Button

Eindeutiges Ereignis mit deterministischer Folgeaktion?
→ Automation
```

Bekannte mögliche Button-Einstiegspunkte: - `Neue Idee erfassen` - aus
Idee: `Neues Content-Vorhaben` - aus Idee: `Neuen Vorgang` - aus CV:
`Neues Content-Asset` - aus AS: `Neue Aufgabe`

Dabei sollen bestehende Relationen, Defaults und Templates genutzt
werden. Buttons dürfen keine parallele Workflow-Logik erzeugen.

Bei Automationen sind insbesondere Statusereignisse und deterministische
Folgeaktionen zu prüfen. Automationen werden nicht allein deshalb
eingeführt, weil sie technisch möglich sind.

## 22.2 Sub-Items im Aufgabenmanagement

Notions native Dependencies `Blockiert` / `Blockiert von` sind bereits
umgesetzt und getestet.

Zurückgestellt ist die Aktivierung und praktische Erprobung nativer
Sub-Items: - `Übergeordnetes Element` - `Unterelemente`

Dabei gilt:

> **Aufgaben bleiben die kleinste steuerungswürdige Arbeitseinheit.**

Unteraufgaben werden nur verwendet, wenn ein Arbeitsschritt eigenständig
hinsichtlich Status, Termin, Priorität, Aufwand oder Abhängigkeit
gesteuert werden soll. Einfache Ausführungsschritte bleiben Checklisten
im Seiteninhalt.

## 22.3 Zielgruppen und Personas

Zielgruppen und Personas sind derzeit nicht Bestandteil des Fachmodells.

Für eine spätere Ausbauphase ist insbesondere zu prüfen:

> **Werden Zielgruppen oder Personas für die Planung, Erstellung und
> Bearbeitung der tatsächlich verwendeten Content-Arten strukturell
> benötigt?**

Dabei sind mindestens LinkedIn, Google Business Profile, Blog, YouTube
und Vorträge/Präsentationen zu betrachten.

Mögliche spätere Modellierungen: - Zielgruppe als Property oder
Katalog - Persona als eigenständiger Katalog - Persona ↔ Content-Ziel -
Zuordnung auf CV- oder ggf. anderer Ebene

Eine Einführung erfolgt nur bei eigenständigem Steuerungsnutzen.

## 22.4 Weitere Content-Dimensionen

Nur bei nachgewiesenem Bedarf erneut prüfen: - `Asset-Typ` / `Format` -
Unterthemenhierarchie - Idee ↔ Thema - Idee ↔ Serie -
Serien-Start-/Enddatum per Rollup aus Assets - weitere strukturierte
Kanalinformationen

## 22.5 Wiederverwendung, Performance und Publishing

Zurückgestellt: - Content-Performance und detaillierte Analytics -
Repurposing-Beziehungen - Asset ↔ Asset - detaillierte Nutzungshistorie
wiederverwendbarer Assets - automatisierte Publishing-Integration -
komplexe Kampagnenlogik

Diese Funktionen dürfen das aktuelle einfache CV→AS-Modell nur
erweitern, wenn ein konkreter Arbeits- oder Auswertungsbedarf entsteht.

## 22.6 Arbeitsartefakte und Dokumentablage

Der Speicherort von Arbeitsartefakten wird weiterhin nicht als eigene
strukturierte Dimension modelliert.

Eine spätere strukturierte Arbeitsartefakt-/Dateiablage wird nur
geprüft, wenn Verweise im Seiteninhalt bzw. die bestehenden
Fachwerkzeuge nicht mehr ausreichen.

## 22.7 Ideen-Capture

Zurückgestellt bleiben: - Zeitpunkt `Aufgenommen in Ideen-DB` -
Auswertung freier, noch nicht in die Ideen-DB aufgenommener Notizen -
weitergehende Integration externer Capture-Werkzeuge

Die bestehende Regel bleibt:

> **Capture und Management dürfen getrennt sein.**

## 22.8 Notion Calendar und weitere Integrationen

Für spätere Ausbauphasen vorgemerkt: - vertiefte
Notion-Calendar-Integration - Gmail-Integration, sofern daraus ein
klarer RM-/Aufgaben-Nutzen entsteht - weitergehende
KI-/MCP-Integration - Publishing- und andere externe Integrationen

## 22.9 Weiterentwicklung von Layouts, Templates, Views und Cockpit

Die jetzt abgeschlossene UI-Stufe ist kein Endzustand.

Neue: - Template-Varianten, - View-Sichten, - Cockpit-Bereiche, -
Layout-Elemente, - Buttons oder Automationen

werden nur ergänzt, wenn sich in der praktischen Arbeit ein
**wiederkehrender Bedarf** zeigt.

> **Nicht für mögliche Anforderungen vorbauen, sondern aus tatsächlicher
> Nutzung weiterentwickeln.**
