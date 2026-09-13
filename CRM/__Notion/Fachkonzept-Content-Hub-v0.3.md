# Fachkonzept Content-Hub

**Version:** 0.3 -- implementierter und praktisch geprüfter Stand vor
RM-Integration\
**Stand:** 10.09.2026\
**Status:** Zur fachlichen Freigabe

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

Version 0.3 dokumentiert erstmals nicht nur das fachliche Zielmodell,
sondern den in Notion aufgebauten und mit realen bzw. gezielten
Testfällen geprüften Kern. Die Integration mit dem Relationship
Management (RM) folgt erst nach Freigabe dieser Version und
Aktualisierung des Synchronisierungsdokuments.

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

Damit wird die frühere Regel „Strukturiertes → Property, Narratives →
Seiteninhalt" präzisiert. Nicht nur Auswertbarkeit, sondern auch
Identität und fachliche Abgrenzung können ein Property rechtfertigen.

### 2.3 Notion-Logic First

> **Wenn Notion für einen fachlichen Bedarf eine native, ausreichend
> einfache Logik bereitstellt, wird diese bevorzugt genutzt, statt eine
> parallele Eigenlogik aufzubauen.**

Dazu gehören insbesondere: - native Property-Typen entsprechend ihrer
Semantik, - `Status` für fachliche Lebenszyklen und `Select` für
Klassifikationen, - wechselseitige Relationen, - native Metadaten wie
`Erstellt um`, - später Seitenlayouts, Templates, Views, Rollups,
Buttons und Automationen, soweit sie tatsächlich Arbeit sparen.

Der Property-Typ ist Teil des Modells: Er soll die Semantik der
Information möglichst korrekt ausdrücken und die nativen Möglichkeiten
von Views, Filtern, Gruppierungen und späteren Automatisierungen nutzbar
machen.

### 2.4 Status ohne Bürokratie

> **Statuswerte beschreiben fachliche Zustände und sollen keine
> Bürokratie erzeugen.**

Notions nativer Property-Typ `Status` wird für Lebenszyklen bevorzugt.
Die drei Notion-Statusgruppen bilden dabei eine zusätzliche
Abstraktionsebene für Views und Steuerung.

### 2.5 Relationsprinzip

> **Relationen werden grundsätzlich wechselseitig eingerichtet. Bei
> 1:n-Zuordnungen wird die Relation von der n-Seite zur übergeordneten
> Seite angelegt. Bei m:n-Beziehungen wird die pflegende Ausgangsseite
> nach dem fachlichen Arbeitsablauf bestimmt.**

Notions `Limit` wird dabei als Begrenzung der auswählbaren Seiten im
jeweiligen Relations-Property verstanden, nicht als vollständige
ER-Kardinalitätsdefinition.

### 2.6 Systemgrenzen

-   **Notion:** Relationship Management, Marketingstrategie, Ideen,
    Content-Hub, Vorgänge und Aufgaben sowie spätere
    Cockpit-/Steuerungssichten
-   **Obsidian:** Wissen, Methoden, Literatur und dauerhafte fachliche
    Notizen
-   **Hugo/GitHub:** Websites, publizierbarer Web-Content und
    Markdown-Quellen
-   **Gmail:** Kommunikation
-   **Google Calendar / Notion Calendar:** Termine und Zeitplanung

Der Ablageort eines Arbeitsartefakts wird im Content-Hub nicht
strukturell modelliert.

## 3. Informationsarchitektur in Notion

Die aktuelle Navigation trennt strategische Grundlagen, operative
Content-Arbeit und Ideen:

``` text
Workspace
├── Relationship Management
├── Marketingstrategie
│   ├── Themenfelder
│   └── Themen
├── Content-Hub
└── Ideen
```

`Themenfelder` und `Themen` liegen derzeit unter `Marketingstrategie`,
weil sie strategische Grundlagen der Content-Arbeit bilden. `Serie`,
`Content-Vorhaben` und `Content-Asset` gehören zum operativen
Content-Hub.

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

Das Content-Vorhaben wird durch mehrere unabhängige Dimensionen
eingeordnet:

``` text
Content-Vorhaben
├── Thema           → worüber?
├── Content-Ziel    → wozu?
├── Serie           → in welchem redaktionellen Zusammenhang?
├── Angebot         → welcher explizite Angebotsbezug?
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
└── Veröffentlichungs-URL → wo extern erreichbar?
```

## 5. Ideen-Inbox (I)

### 5.1 Definition

> **Eine Idee ist ein noch nicht operationalisierter Gedanke, Ansatz
> oder eine Hypothese, deren mögliche geschäftliche, fachliche oder
> kommunikative Verwendung zunächst geprüft werden soll.**

Eine Idee ist weder ein unfertiger Vorgang noch unfertiger Content oder
ein unfertiges Thema.

### 5.2 Notion-native Erfassung

Der eigentliche Gedanke wird im **Seiteninhalt** erfasst. Dafür ist kein
zusätzliches Text-Property erforderlich.

Zwei Erfassungswege sind möglich: 1. direkt als Datensatz/Seite in der
Ideen-DB, 2. zunächst als freie Notion-Seite und später durch
`Verschieben nach` in die Ideen-DB.

Der zweite Weg wurde praktisch getestet. Eine Seite kann in eine andere
Seite oder in eine Datenbank verschoben werden; beim Verschieben in eine
Datenbank bleibt der bestehende Seiteninhalt erhalten.

### 5.3 Native Metadaten

Die Ideen-DB verwendet `Erstellt um` (`Created time`).

Praktisch bestätigt wurde: - Datum und Uhrzeit werden automatisch
erzeugt, - der Wert ist nicht editierbar, - er ist als
Datenbank-Property sichtbar und auswertbar, - bei einer zuvor frei
erstellten und später in die Ideen-DB verschobenen Seite bleibt der
**ursprüngliche Erstellungszeitpunkt der Seite** erhalten; der
Verschiebezeitpunkt ersetzt ihn nicht.

Auf einer freien Seite ist dieser Zeitstempel in der normalen Oberfläche
nicht als Datenbank-Property sichtbar. Erst im Datenbankkontext wird er
über `Erstellt um` zugänglich.

Ein zusätzliches Property `Erstellt von` ist im persönlichen
Ein-Nutzer-System ohne eigenständigen Nutzen und wird nicht verwendet.

### 5.4 Kurzfassung mit Notion AI

Zusätzlich wird `Kurzfassung` als Text-Property geführt. Notion AI
Autofill erzeugt daraus automatisch eine kompakte Zusammenfassung des
Seiteninhalts.

Die Kurzfassung ersetzt den ursprünglichen Gedanken nicht. Ihr
eigenständiger Nutzen liegt darin, Ideen in Tabellen, Listen und
späteren Entscheidungssichten beurteilen zu können, ohne jede Seite
öffnen zu müssen.

### 5.5 Properties

  -----------------------------------------------------------------------
  Property                Notion-Typ              Funktion
  ----------------------- ----------------------- -----------------------
  Name                    Title                   kurze Identifikation

  Status                  Status                  Prüfungs- und
                                                  Entscheidungszustand

  Erstellt um             Created time            ursprünglicher
                                                  Erfassungszeitpunkt der
                                                  Seite

  Kurzfassung             Text / AI Autofill      kompakte
                                                  Zusammenfassung des
                                                  Seiteninhalts
  -----------------------------------------------------------------------

### 5.6 Status

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

`In Prüfung` ist der Standardstatus.

Direkte Abkürzungen sind zulässig, wenn zusätzliche Statusschritte
keinen Nutzen erzeugen.

### 5.7 Idee ↔ Content-Vorhaben

Aus einer Idee können mehrere Content-Vorhaben entstehen. Ein
Content-Vorhaben muss nicht aus einer erfassten Idee hervorgehen.

Die Relation wurde praktisch als **1:n** getestet: -
`CV.Ursprungs-Idee`: optional, Limit 1 Seite - `Idee.Content-Vorhaben`:
unbegrenzt

Die Idee bleibt nach der Operationalisierung als Herkunfts- und
Entscheidungskontext bestehen.

Eine direkte Relation Idee ↔ Content-Asset wird nicht benötigt.

## 6. Themenfeld (TF)

### 6.1 Definition

> **Ein Themenfeld ist eine relativ stabile fachliche Domain, die
> strategisch betrachtet und über längere Zeit bearbeitet wird.**

Ein Themenfeld ist **kein Oberthema**. Themenfeld und Thema sind keine
bloßen Ebenen einer starren Taxonomie.

### 6.2 Anlage und Pflege

> **Ein neues Themenfeld wird nur angelegt, wenn eine fachliche Domain
> dauerhaft eigenständig betrachtet, strategisch bewertet oder über
> mehrere Objekte hinweg genutzt werden soll.**

Themenfelder werden grundsätzlich nicht gelöscht. Nicht mehr verwendete
Datensätze werden über `Aktiv` deaktiviert, damit Relationen und
historische Zuordnungen erhalten bleiben.

### 6.3 Properties

-   `Name` -- Title
-   `Beschreibung` -- Text
-   `Aktiv` -- Checkbox

### 6.4 Implementierter Testbestand

Neun aktive Themenfelder wurden angelegt: - Pflege & Alter - Familie &
Erbe - Landwirtschaft - Organisation & Unternehmen -
IT-Digitalisierung - Mediation - Personalvertretung - HR -
Nachbarschaftskonflikte

## 7. Thema (T)

### 7.1 Definition

> **Ein Thema ist ein konkreter fachlicher oder redaktioneller
> Gegenstand innerhalb eines oder mehrerer Themenfelder, der als
> eigenständiger Betrachtungsgegenstand für die Content-Arbeit dient.**

### 7.2 Granularität

> **Themen werden nicht möglichst fein vorstrukturiert. Ein Gegenstand
> wird dann zum eigenständigen Thema, wenn seine kommunikative
> Bearbeitung über mehrere Content-Objekte hinweg eigenständig
> betrachtet und gesteuert werden soll.**

Eine starre Unterthemenhierarchie wird nicht eingeführt.

### 7.3 Properties

-   `Name` -- Title
-   `Beschreibung` -- Text
-   `Aktiv` -- Checkbox
-   `Themenfelder` -- Relation

### 7.4 Themenfeld ↔ Thema

Die Beziehung ist **m:n** und wurde praktisch wechselseitig getestet.

> **Ein Thema wird einem Themenfeld zugeordnet, wenn das Themenfeld
> einen wesentlichen fachlichen Bezugsrahmen des Themas bildet. Eine
> bloße inhaltliche Berührung reicht nicht aus.**

### 7.5 Implementierter Testbestand

Elf aktive Themen wurden angelegt, darunter: - Pflegekonflikte unter
Geschwistern - Mediation verstehen - Lärmkonflikte in der
Nachbarschaft - Grundstücks- und Grenzkonflikte - Konflikte beim
gemeinsamen Wohnen

Die vollständige Themenliste wird in der Datenbank gepflegt.

## 8. Thema ↔ Content-Vorhaben

> **Ein Thema ist der primäre fachliche bzw. redaktionelle Gegenstand
> eines Content-Vorhabens.**

Ein Thema kann mehrere CV umfassen; ein CV wird zunächst genau einem
primären Thema zugeordnet.

Technisch: - `CV.Thema`: Relation, Limit 1 Seite - Gegenrelation
`Thema.Content-Vorhaben`: unbegrenzt

Die 1:n-Annahme wurde mit acht CV-Testfällen geprüft und war ohne
Auffälligkeiten tragfähig.

## 9. Content-Ziel (CZ)

### 9.1 Definition

> **Content-Ziel bezeichnet die strategische kommunikative Funktion
> eines Content-Vorhabens.**

Es beantwortet:

> **Was soll dieses Content-Vorhaben kommunikativ in erster Linie
> leisten?**

### 9.2 Content-Ziele

Sieben aktive Content-Ziele sind implementiert: 1. Orientierung geben 2.
Fachwissen vermitteln 3. Zusammenhänge erklären 4. Angebot erklären 5.
Vertrauen aufbauen 6. Positionierung 7. Präsenz/Sichtbarkeit

### 9.3 Properties

-   `Name` -- Title
-   `Beschreibung` -- Text
-   `Aktiv` -- Checkbox

### 9.4 Content-Ziel ↔ Content-Vorhaben

Ein CV erhält zunächst genau **ein primäres Content-Ziel**.

Technisch: - `CV.Content-Ziel`: Relation, Limit 1 Seite - Gegenrelation:
unbegrenzt

Die Annahme wurde mit acht CV-Testfällen geprüft. Auch bei möglichen
Nebenwirkungen wie Vertrauen oder Positionierung ließ sich jeweils eine
primäre kommunikative Funktion bestimmen.

## 10. Kanal (K)

### 10.1 Definition

> **Ein Kanal wird als eigenständige Entität geführt, weil er unabhängig
> von einzelnen Assets für Marketingstrategie, Planung und redaktionelle
> Orientierung betrachtet und gepflegt werden soll.**

### 10.2 Properties

-   `Name` -- Title
-   `Strategische Rolle` -- Text
-   `Aktiv` -- Checkbox

Weitere Informationen wie typische Frequenz, günstige
Veröffentlichungszeiten, algorithmische Besonderheiten, redaktionelle
Hinweise, technische Einschränkungen und bevorzugte Formate gehören
später in den Seiteninhalt eines Standard-Templates.

### 10.3 Implementierter Bestand

-   LinkedIn
-   YouTube
-   Blog
-   Google Business Profile
-   Vortrag

`Vortrag` bleibt bewusst ein pragmatischer Grenzfall zwischen Kanal und
Kommunikationsformat und wird erst bei praktischem Bedarf
differenzierter modelliert.

## 11. Serie (S)

### 11.1 Definition

> **Eine Serie ist eine bewusst zusammengehörige und meist geordnete
> Folge mehrerer Content-Vorhaben.**

Serie ist kein Stammdatum, sondern ein konkretes redaktionelles Vorhaben
höherer Ordnung und gehört zum operativen Content-Hub.

### 11.2 Properties

Zum Start: - `Name` -- Title - `Abgeschlossen` -- Checkbox

Ein eigenes Property `Aktiv` ist nicht erforderlich. Beschreibung und
redaktioneller Zusammenhang gehören in den Seiteninhalt.

Das spätere Standard-Template soll insbesondere Raum bieten für: -
Beschreibung / redaktionellen Kontext - Idee / Zweck - Dramaturgie -
Hinweise

### 11.3 Serie ↔ Content-Vorhaben

Die Beziehung ist **1:n**: - eine Serie umfasst mehrere CV, - ein CV
gehört höchstens zu einer Serie.

Technisch: - `CV.Serie`: optional, Limit 1 Seite -
`Serie.Content-Vorhaben`: unbegrenzt

Die Relation wurde mit einer Testserie praktisch geprüft.

### 11.4 Spätere Zeitaggregation

Nach vollständiger Asset-Struktur soll geprüft werden, ob `Startdatum`
und `Enddatum` der Serie nativ aus dem ersten bzw. letzten Asset-Termin
abgeleitet werden können. Wegen der Kette `Serie → CV → AS` ist die
konkrete Rollup-Logik noch praktisch zu testen.

## 12. Content-Vorhaben (CV)

### 12.1 Definition

> **Ein Content-Vorhaben bildet eine eigenständige redaktionelle Aussage
> bzw. kommunikative Bearbeitung eines Themas ab.**

Unterschiedliche Kanäle oder Formate erzeugen kein neues CV, solange
dieselbe redaktionelle Aussage realisiert wird. Eine wesentlich andere
Kernaussage begründet dagegen ein eigenes CV.

Damit gilt als Granularitätstest:

> Können zwei geplante Inhalte dieselbe Kernaussage haben und lediglich
> unterschiedlich realisiert werden? → ein CV, mehrere AS.\
> Brauchen sie unterschiedliche Kernaussagen? → mehrere CV.

### 12.2 Kernaussage als Property

`Kernaussage` wird als eigenes Text-Property geführt, weil sie die
fachliche Identität und Abgrenzung des CV wesentlich bestimmt.

Hover-Information: \> **zentrale redaktionelle Aussage des CV**

Narrative Informationen bleiben im Seiteninhalt, insbesondere: -
Ausgangspunkt / Fragestellung - was beim Empfänger hängen bleiben soll -
Inhaltsskizze - Quellen / Material - redaktionelle Hinweise

### 12.3 Properties

-   `Name` -- Title
-   `Status` -- Status
-   `Kernaussage` -- Text
-   `Thema` -- Relation, genau ein primäres Thema
-   `Content-Ziel` -- Relation, genau ein primäres Ziel
-   `Serie` -- optionale Relation, höchstens eine Serie
-   `Angebote` -- optionale m:n-Relation
-   `Ursprungs-Idee` -- optionale Relation, höchstens eine Idee
-   Gegenrelation `Content-Assets` entsteht über AS → CV

### 12.4 Status

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

Die frühere Bezeichnung `Content-Idee` wurde durch `Entwurf` ersetzt, um
eine begriffliche Kollision mit der eigenständigen Entität `Idee` zu
vermeiden.

`In Bearbeitung` beginnt fachlich mit der operativen Realisierung,
typischerweise wenn mindestens ein Asset angelegt wurde. `Fertig` bleibt
zunächst eine bewusste redaktionelle Entscheidung und wird nicht allein
aus Asset-Status abgeleitet.

### 12.5 Test

Acht CV-Testdatensätze aus den Bereichen Pflegekonflikte, Nachbarschaft
und Mediation wurden angelegt. Die Granularität, die Zuordnung zu genau
einem Thema und genau einem primären Content-Ziel sowie die Serie- und
Ideenrelation wurden ohne Auffälligkeiten getestet.

## 13. Angebot (ANG) ↔ Content-Vorhaben

> **Die Relation bildet einen bewusst geplanten, expliziten
> Angebotsbezug ab. Thematische Nähe allein begründet keine Zuordnung.**

Die Relation ist fachlich **m:n** und technisch bereits wechselseitig
eingerichtet.

Ist einem CV ein Angebot zugeordnet, soll dieses in den daraus
entstehenden relevanten Assets ausdrücklich adressiert bzw. verlinkt
werden.

Die fachliche Prüfung mit realen Angebotsdaten erfolgt erst bei der
RM-Integration, da die bestehende Angebots-DB derzeit noch nicht
konsolidiert ist.

## 14. Content-Asset (AS)

### 14.1 Definition

> **Das Content-Asset bildet die konkrete operative Realisierung eines
> Content-Vorhabens auf einem bestimmten Kanal ab.**

Ein CV kann mehrere AS hervorbringen; jedes AS gehört genau einem CV.

Unterschiedliche kanalspezifische Realisierungen derselben Kernaussage
sind unterschiedliche Assets, aber nicht automatisch unterschiedliche
CV.

### 14.2 Properties

  --------------------------------------------------------------------------
  Property                Typ                     Funktion
  ----------------------- ----------------------- --------------------------
  Name                    Title                   Identifikation

  Status                  Status                  Bearbeitungs- und
                                                  Veröffentlichungszustand

  Veröffentlichung        Date                    geplanter bzw.
                                                  tatsächlicher Zeitpunkt

  Veröffentlichungs-URL   URL                     extern erreichbares
                                                  veröffentlichtes Asset

  Content-Vorhaben        Relation                genau ein CV

  Kanal                   Relation                genau ein Kanal
  --------------------------------------------------------------------------

Hover-Texte: - `Status`: Aktueller Bearbeitungs- und
Veröffentlichungsstatus des Content-Assets. - `Veröffentlichung`:
Geplanter bzw. tatsächlicher Zeitpunkt der Veröffentlichung. -
`Veröffentlichungs-URL`: URL des veröffentlichten Content-Assets. -
`Content-Vorhaben`: Content-Vorhaben, das durch dieses Asset konkret
realisiert wird. - `Kanal`: Kanal, auf dem dieses Content-Asset
realisiert bzw. veröffentlicht wird.

### 14.3 Status

``` text
ZU ERLEDIGEN
└── Geplant

IN BEARBEITUNG
├── In Bearbeitung
└── Fertig

ABGESCHLOSSEN
└── Veröffentlicht
```

`Fertig` liegt bewusst in der Notion-Gruppe `In Bearbeitung`, weil ein
fertiges, aber noch nicht veröffentlichtes Web- oder Social-Asset
operativ noch nicht abgeschlossen ist.

Für wiederverwendbare Formate wie Vorträge kann `Fertig` fachlich
ausreichend sein; die konkrete Nutzung eines fertigen Assets begründet
nicht automatisch eine weitere Lebensphase.

### 14.4 Veröffentlichung

> **Terminierung ist kein Lebenszyklusstatus.**

Für Planung und tatsächliche Veröffentlichung wird ein gemeinsames
Property `Veröffentlichung` verwendet. Bei Verschiebungen wird es
aktualisiert; eine Plan-/Ist-Historie wird nicht geführt.

Datum und optional Uhrzeit werden in demselben Property gepflegt.

### 14.5 Keine zusätzliche Formatdimension

`Format` bzw. `Asset-Typ` wird zunächst nicht eingeführt.

> **Kanal ist die primäre strukturierte Einordnung eines Content-Assets.
> Ein zusätzliches Property Format/Asset-Typ wird erst eingeführt, wenn
> daraus ein konkreter Steuerungs-, Filter-, Template- oder
> Automatisierungsnutzen entsteht.**

### 14.6 Test

Sechs AS-Testdatensätze wurden manuell angelegt. Dabei wurde
insbesondere der Fall **ein CV → mehrere AS auf unterschiedlichen
Kanälen** geprüft. Es traten keine Auffälligkeiten auf. Das Fehlen eines
zusätzlichen Format-Properties erwies sich im Test nicht als Problem.

## 15. Relationen im implementierten Content-Hub

  Relation             Kardinalität   Stand
  -------------------- -------------- ------------------------------------------------
  Themenfeld ↔ Thema   m:n            eingerichtet und getestet
  Thema ↔ CV           1:n            eingerichtet und getestet
  Content-Ziel ↔ CV    1:n            eingerichtet und getestet
  Serie ↔ CV           1:n            eingerichtet und getestet
  Idee ↔ CV            1:n            eingerichtet und getestet
  CV ↔ AS              1:n            eingerichtet und getestet
  Kanal ↔ AS           1:n            eingerichtet und getestet
  Angebot ↔ CV         m:n            technisch eingerichtet, fachlicher Test später

## 16. Aufgaben (A) ↔ Content-Asset

Die bestehende RM-Aufgabenentität soll auch für Content verwendet
werden. Eine zweite Content-Aufgabendatenbank wird nicht eingeführt.

> **Aufgabe = zu erledigende Arbeit.**\
> **Asset = zu realisierendes bzw. entstandenes Ergebnis.**

Aufgaben für Assets sind optional und werden nur angelegt, wenn
eigenständige operative Arbeitsschritte geplant oder gesteuert werden
müssen.

Vorgesehen ist der `Aufgabentyp`: - Vorgang - Content-Asset - Allgemein

Die technische Umsetzung erfolgt erst in der RM-Integrationsphase.

## 17. Fachliche Gesamtlogik

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
Aufgabe           → Welche Arbeit ist dafür zu erledigen?
```

Die Dimensionen können korrelieren, werden aber nur bei eigenständigem
fachlichem oder operativem Nutzen strukturell verbunden.

## 18. Anschlussfähigkeit an Content-Marketing-Konzepte

Das Modell ist keine direkte Übernahme einer einzelnen
Marketing-Taxonomie, bleibt aber anschlussfähig:

-   **Themenfeld** ≈ Content Pillar / Core Theme / Content Theme /
    teilweise Topic Area
-   **Thema** ≈ konkreteres Topic
-   **Content-Ziel** ≈ Content Goal / Content Objective / Communication
    Objective
-   **Kanal** = Veröffentlichungs- bzw. Einsatzkontext
-   **CV** = eigenständige redaktionelle Aussage bzw. kommunikative
    Bearbeitung
-   **AS** = konkrete kanalspezifische Realisierung

Das Modell verzichtet bewusst auf starre
Pillar-/Topic-/Subtopic-Hierarchien.

## 19. Praktisch bestätigte Notion-Logik

Die Implementierung hat folgende allgemeine Regeln bestätigt:

1.  **Datenbankdatensatz = Seite.** Datenbankeinträge besitzen normalen
    Seiteninhalt.
2.  **Seiten sind verschiebbar.** Eine freie Seite kann in eine
    Datenbank verschoben und dort strukturiert weitergeführt werden.
3.  **`Erstellt um` bewahrt die ursprüngliche Seitenerstellung.** Beim
    späteren Verschieben in eine DB wird nicht der Verschiebezeitpunkt
    zum Erstellungszeitpunkt.
4.  **Status statt Select für Lebenszyklen.** Dadurch können Notions
    Statusgruppen in Boards, Filtern und Gruppierungen genutzt werden.
5.  **Relationen werden wechselseitig gepflegt.** Die Gegenrelation
    entsteht nativ.
6.  **Seiteninhalt und Properties ergänzen sich.** Properties tragen
    Identität, Steuerung, Auswertung und Verknüpfung; Seiteninhalt trägt
    narrative Tiefe.
7.  **AI Autofill kann Seiteninhalt in strukturierte Kurzfassungen
    überführen.** Dies wird in der Ideen-DB genutzt.

## 20. Buttons, Templates, Views und UI -- späterer Schritt

Die konkrete UI-Gestaltung erfolgt bewusst erst nach RM-Integration.

Reihenfolge: 1. Datenbank-Seitenlayouts 2. Standard-Templates 3. Views
4. gemeinsames Cockpit/Dashboard

Notion-Buttons sollen dabei als kontextbezogene Einstiegspunkte geprüft
werden, zum Beispiel: - `Neue Idee erfassen` - aus Idee:
`Neues Content-Vorhaben` - aus CV: `Neues Content-Asset` - aus AS:
`Neue Aufgabe`

Buttons sollen bestehende Relationen, Defaults und Templates nutzen und
keine parallele Workflow-Logik erzeugen.

## 21. Bewusst zurückgestellte Ausbaustufen

Nur bei nachgewiesenem Bedarf erneut prüfen: - Idee ↔ Thema - Idee ↔
Serie - Zeitpunkt `Aufgenommen in Ideen-DB` - Auswertung freier, noch
nicht in die Ideen-DB aufgenommener Notizen - Zielgruppen als eigener
Katalog - Personas als eigener Katalog - Persona ↔ Content-Ziel -
Asset-Typ / Format - Unterthemenhierarchie - Content-Performance und
detaillierte Analytics - Repurposing-Beziehungen / Asset ↔ Asset -
detaillierte Nutzungshistorie wiederverwendbarer Assets -
Arbeitsartefakt-/Dateiablage - komplexe Kampagnenlogik - automatisierte
Publishing-Integration - Serien-Start-/Enddatum per Rollup aus Assets

## 22. Schnittstellen zum Relationship Management

Die fachliche Synchronisierung mit dem RM ist in einem separaten
Synchronisierungsdokument beschrieben und wird nach Freigabe dieser
Version aktualisiert.

Bereits fachlich vorgesehene Integrationspunkte sind: - zentrale
Themenfeld-Entität für RM und Marketing/Content - Angebot ↔
Content-Vorhaben - Vorgang ↔ Content-Vorhaben - Idee ↔ Vorgang - Aufgabe
↔ Content-Asset - gemeinsamer Aufgabentyp - Migration bestehender
RM-Themenfeld-Multi-Selects zu Relationen

Eine direkte Relation Vorgang ↔ Content-Asset ist zunächst nicht
vorgesehen.

## 23. Implementierungs- und Teststand v0.3

Strukturell aufgebaut und getestet: - Themenfelder - Themen - Themenfeld
↔ Thema - Content-Ziele - Kanäle - Serien - Content-Vorhaben - Thema ↔
CV - Content-Ziel ↔ CV - Serie ↔ CV - Angebot ↔ CV technisch -
Content-Assets - CV ↔ AS - Kanal ↔ AS - Ideen - Idee ↔ CV -
`Erstellt um` bei direkt und frei erstellten Seiten - AI-Autofill
`Kurzfassung`

Die Tests ergaben bislang keinen Bedarf für eine Änderung des
Kernmodells.

## 24. Nächster Schritt

Nach fachlicher Prüfung und ausdrücklicher Freigabe von v0.3:

1.  Synchronisierungsdokument RM ↔ Content-Hub von v0.1 auf v0.2
    aktualisieren.
2.  Synchronisierungsdokument prüfen und freigeben.
3.  RM-Integration praktisch umsetzen.
4.  Danach Datenbank-Seitenlayouts gestalten.
5.  Standard-Templates erstellen.
6.  Views entwickeln.
7.  gemeinsames RM-/Content-Cockpit bzw. Dashboard konzipieren.
8.  Automationen nur dort ergänzen, wo reale Nutzung einen
    wiederkehrenden Nutzen zeigt.
