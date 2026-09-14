# Relationship Management und Content Hub in Notion

**Dokumentationsstand:** Version 0.9  
**Status:** Konsolidierter Gesamtstand RM + Content Hub; Aufbau- und UI-Phase abgeschlossen; Nutzungsphase begonnen  
**Stand:** 14.09.2026  
**Bezug:** Relationship Management / Content Hub v0.8, Fachkonzept Content-Hub v0.4, Synchronisierung RM ↔ Content-Hub v0.2 sowie Design-Regeln für Seitenlayout, Templates und UI v0.6

## 1. Zweck und Systemgrenzen

Das Notion-System verbindet zwei fachlich getrennte, aber operativ integrierte Bereiche:

- **Relationship Management (RM):** geschäftliche Beziehungsarbeit mit Organisationen, Organisationseinheiten, Kontakten, Angeboten, Vorgängen und Aufgaben.
- **Content Hub (C-H):** redaktionelle Steuerung von Ideen, Themen, Content-Vorhaben, Content-Assets, Serien, Kanälen und Content-Zielen.

Notion ist das führende operative System für RM, Content-Steuerung, Vorgänge, Aufgaben und das gemeinsame Cockpit. Obsidian bleibt Wissenssystem für Methoden, Literatur und dauerhafte fachliche Notizen. Hugo/GitHub bleiben Publikations- und Quellsystem für die Websites. Gmail bleibt Kommunikationssystem. Google Calendar / Notion Calendar dienen der Termin- und Zeitplanung.

RM und Content Hub werden fachlich nicht verschmolzen. Gemeinsame Entitäten und Relationen werden nur dort verwendet, wo ein klarer fachlicher Nutzen besteht. Das gemeinsame Cockpit integriert die Arbeitssicht, nicht die Fachmodelle.

## 2. Gestaltungsprinzipien

### 2.1 Einfachste fachlich ausreichende Repräsentation

> Heute wird die einfachste fachlich ausreichende Repräsentation verwendet. Eine eigene Entität wird erst eingeführt, wenn das betreffende Objekt unabhängig verwaltet, betrachtet oder ausgewertet werden muss.

> Nicht alles strukturieren, nur weil Notion es ermöglicht.

### 2.2 Strukturierte und narrative Information

Eine Information wird nur dann als Property modelliert, wenn sie als eigenständiges Merkmal des Objekts benötigt wird – insbesondere zur Identifikation, fachlichen Abgrenzung, Steuerung, Verknüpfung, Filterung, Sortierung, Gruppierung oder Auswertung.

Narrative Informationen, Verlauf, Kontext und Erläuterungen gehören grundsätzlich in den Seiteninhalt.

> Nicht: „Kann diese Information als Property modelliert werden?“, sondern: „Welche eigenständige Funktion rechtfertigt, dass diese Information eine Property ist?“

Freie Text-Properties benötigen eine besondere Begründung. `Vorgänge.Ziel`, `Kontakte.Funktion / Rolle`, `Angebote.Kurzbeschreibung` und `Content-Vorhaben.Kernaussage` sind fachlich begründete Text-Properties.

### 2.3 Notion-Logic First

> Wenn Notion für eine fachliche Anforderung ein natives Objekt oder eine native Funktion bereitstellt, wird diese bevorzugt.

Eigene Relationen, Formeln oder Hilfsproperties werden nur eingeführt, wenn die native Notion-Logik den tatsächlich benötigten Anwendungsfall nicht ausreichend abbildet. Native Status-, Datums-, Relations-, Abhängigkeits-, Layout-, View-, Button- und Automationsfunktionen werden entsprechend ihrer vorgesehenen Funktion verwendet.

### 2.4 Relationen

Relationen werden grundsätzlich wechselseitig eingerichtet. Bei 1:n-Zuordnungen wird die Relation von der n-Seite zur übergeordneten Seite angelegt. Bei m:n-Beziehungen wird die pflegende Ausgangsseite nach dem fachlichen Arbeitsablauf bestimmt.

### 2.5 Status, Checkbox und Lebenszyklus

Status wird verwendet, wenn eine Entität einen fachlich relevanten Lebenszyklus mit mehreren unterscheidbaren Zuständen besitzt. Bei einer reinen binären Zustandsaussage wird eine Checkbox bevorzugt.

Status dient zugleich als Steuerungspunkt für Views und – bei fachlich eindeutigen Folgeaktionen – für Automationen.

### 2.6 UI-Schichten

Die Benutzeroberfläche wird in vier aufeinander aufbauenden Schichten gestaltet:

1. **Seitenlayout:** stabile Darstellung und Bedienstruktur eines Datensatzes.
2. **Template:** vorbelegte Properties und wiederkehrender Seiteninhalt beim Anlegen.
3. **View:** Arbeitsoberfläche für eine konkrete wiederkehrende Arbeitsfrage.
4. **Cockpit:** verdichtete, fachübergreifende Einstiegsebene.

Das Datenmodell wird nicht aus rein visuellen Gründen verändert.

## 3. Fachliches Gesamtmodell

### 3.1 Relationship Management

Das RM besteht aus sechs Kernentitäten:

- Organisationen (O)
- Organisationseinheiten (OE)
- Kontakte (K)
- Angebote (ANG)
- Vorgänge (V)
- Aufgaben (A)

O, OE und K bilden den Komplex der Beziehungsstammdaten. Vorgänge sind das führende operative Objekt für konkrete geschäftliche Vorhaben. Aufgaben sind die kleinste steuerungswürdige Arbeitseinheit.

### 3.2 Content Hub

Der Content Hub umfasst:

- Ideen (I)
- Themenfelder (TF)
- Themen (T)
- Content-Ziele (CZ)
- Kanäle
- Serien (S)
- Content-Vorhaben (CV)
- Content-Assets (AS)

Ein Content-Vorhaben beschreibt die redaktionelle Absicht und trägt insbesondere die **Kernaussage**. Ein Content-Asset ist die konkrete operative Ausprägung für einen Kanal. Die Trennung ermöglicht, dass ein gemeinsames Vorhaben mehrere kanalspezifische Ergebnisse erzeugt, ohne unterschiedliche operative Zustände in einem Objekt zu vermischen.

### 3.3 Gemeinsame Schnittstellen

Systemübergreifend integriert sind insbesondere:

- zentrale Themenfelder
- gemeinsame Ideen als Ausgangspunkt für Operationalisierung
- gemeinsame Aufgaben
- Angebot ↔ Content-Vorhaben
- Vorgang ↔ Content-Vorhaben
- Aufgabe ↔ Content-Asset

Die vollständigen End-to-End-Pfade wurden praktisch getestet:

- TF → V → A
- TF → ANG ↔ CV → AS → A
- I → CV → AS → A
- I → V → A
- V ↔ CV

Damit ist die RM↔Content-Hub-Synchronisierung fachlich und technisch abgeschlossen.

## 4. Relationship Management – bestätigtes Fachmodell

### 4.1 Organisationen

Zentrale Properties sind Name, Organisationstyp, Beziehungsrolle, Beziehungsstatus, Themenfelder, E-Mail, Telefon, Website, Straße, PLZ und Ort. Organisationseinheiten, Kontakte und Vorgänge werden als Gegenrelationen geführt.

Narrativer Kontext wird im Seiteninhalt geführt.

### 4.2 Organisationseinheiten

Eine OE ist eine organisatorisch erkennbare Untereinheit einer Organisation, die für die Beziehungsarbeit eigenständig relevant ist. Eine OE gehört immer zu genau einer Organisation.

Zentrale Properties sind Name, Organisation, Quelle, Beziehungsrolle, Beziehungsstatus, Themenfelder, E-Mail, Telefon, Website, Straße, PLZ und Ort. Kontakte und Vorgänge werden als Relationen geführt.

### 4.3 Kontakte

Zentrale Properties sind Name, Vorname, Nachname, Organisationen, Organisationseinheiten, Funktion/Rolle, Beziehungsrolle, Beziehungsstatus, Themenfelder, E-Mail, Telefon, LinkedIn, Website und Ort. Vorgänge und Aufgaben werden als Relationen geführt.

`Kontext/Hinweise` wurde nach der Template-Umstellung in den Seiteninhalt migriert und als Property aufgegeben.

### 4.4 Angebote

Notion steuert und kontextualisiert das Angebot; Hugo/Webseite bleibt die publizierte Repräsentation.

Zentrale Properties sind Name, Geschäftsbereich, Aktiv, Themenfelder, Website, Kurzbeschreibung, Vorgänge und Content-Vorhaben.

Der reale Angebotsbestand aus Hugo wurde für Privat- und B2B-Angebote importiert. Die vollständigen Angebotsinhalte wurden übernommen. Der reale ANG↔CV-Pfad wurde getestet. Eine direkte Relation Angebot ↔ Content-Asset wird nicht geführt; der fachlich richtige Pfad ist ANG ↔ CV → AS.

### 4.5 Vorgänge

> Ein Vorgang ist ein konkretes, zielgerichtetes geschäftliches Vorhaben mit einem erkennbaren gewünschten Ergebnis, das sich auf mindestens einen Kontakt, eine Organisation oder ein Angebot bezieht.

> Eine Aktivität wird nicht dadurch zum Vorgang, dass sie Arbeit verursacht. Sie wird zum Vorgang, wenn sie auf ein bestimmtes geschäftliches Ergebnis ausgerichtet ist.

Zentrale Properties sind Name, Vorgangstyp, Status, Priorität, **Ziel**, Start, Fällig/Wiedervorlage, Themenfelder, Angebote, Kontakte, Organisationen, Organisationseinheiten, Aufgaben, Content-Vorhaben, Ursprungs-Idee sowie Aufwand geplant/Ist.

`Ziel` ist eine zentrale fachliche Property: Sie hält das angestrebte geschäftliche Ergebnis kompakt und strukturiert sichtbar und unterscheidet den Vorgang von bloßer Aktivität.

Status: `Geplant`, `Aktiv`, `Warten`, `Abgeschlossen`, `Verworfen`.

### 4.6 Aufgaben

> Eine Aufgabe ist eine konkrete, ausführbare Handlung. Ein Vorgang beschreibt dagegen das geschäftliche Ergebnis, zu dessen Erreichung mehrere Aufgaben notwendig sein können.

Die Aufgaben-DB ist die gemeinsame operative Aufgabenebene von RM und Content Hub.

Zentrale Properties sind Name, Aufgabentyp, Status, Priorität, Termin, Dauer, Vorgänge, Content-Assets, Kontakte, Blockiert, Blockiert von sowie Aufwand geplant/Ist.

Aufgabentypen: `Vorgang`, `Content-Asset`, `Allgemein`.

Native Dependencies (`Blockiert` / `Blockiert von`) sind umgesetzt und praktisch getestet. Sub-Items können als native Hierarchie verwendet werden, wenn ein Arbeitsschritt eigenständig hinsichtlich Status, Termin, Priorität, Aufwand oder Abhängigkeit gesteuert werden muss.

## 5. Content Hub – bestätigtes Fachmodell

Der Content-Hub ist die redaktionelle Steuerungs- und Orientierungsschicht für Content-Ideen, geplante und veröffentlichte Content-Objekte sowie deren fachlichen Zusammenhang mit Themen, Angeboten und gegebenenfalls geschäftlichen Vorgängen. Er ist kein CMS, kein Digital-Asset-Management-System, kein vollständiges Social-Publishing-System, kein SEO-Spezialsystem und kein zweites Aufgabenmanagement.

### 5.1 Ideen-Inbox

**Definition**

> Eine Idee ist ein noch nicht operationalisierter Gedanke, Ansatz oder eine Hypothese, deren mögliche geschäftliche, fachliche oder kommunikative Verwendung zunächst geprüft werden soll.

Eine Idee ist weder ein unfertiger Vorgang noch unfertiger Content oder ein unfertiges Thema. Der eigentliche Gedanke wird im Seiteninhalt erfasst. Die Erfassung darf außerhalb Notions beginnen; nach der Übernahme in die Ideen-DB ist Notion das führende System für Sichtung, Entscheidung und Operationalisierung.

> Nicht die Erfassung verlangt Struktur. Die Bearbeitung erzeugt Struktur.

Zentrale Properties: `Name`, `Status`, `Erstellt um`, `Kurzfassung`, `Content-Vorhaben`, `Vorgänge`.

Status:

```text
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

> Eine Idee endet an der Operationalisierungsgrenze.

Wird aus einer Idee ein konkretes Vorhaben, entsteht das dafür vorgesehene Fachobjekt, insbesondere ein Content-Vorhaben oder ein RM-Vorgang. Die Idee bleibt als Herkunfts- und Entscheidungskontext erhalten.

### 5.2 Themenfelder

> Ein Themenfeld ist eine relativ stabile fachliche Domain, die strategisch betrachtet und über längere Zeit bearbeitet wird.

Zentrale Properties: `Name`, `Beschreibung`, `Aktiv` sowie fachlich erforderliche Gegenrelationen. Themenfelder werden nicht gelöscht, wenn historische Referenzen bestehen. Themenfeld ist eine zentrale gemeinsame Entität von RM und Content Hub.

### 5.3 Themen

> Ein Thema ist ein konkreter fachlicher oder redaktioneller Gegenstand innerhalb eines oder mehrerer Themenfelder, der als eigenständiger Betrachtungsgegenstand für die Content-Arbeit dient.

Zentrale Properties: `Name`, `Beschreibung`, `Aktiv`, `Themenfelder`, `Content-Vorhaben`. Ein CV erhält zunächst genau ein primäres Thema. Eine starre Unterthemenhierarchie wird nicht verwendet.

### 5.4 Content-Ziele

> Content-Ziel bezeichnet die strategische kommunikative Funktion eines Content-Vorhabens.

Es beantwortet die Frage: **Was soll dieses Content-Vorhaben kommunikativ in erster Linie leisten?**

Aktive Content-Ziele sind: Orientierung geben; Fachwissen vermitteln; Zusammenhänge erklären; Angebot erklären; Vertrauen aufbauen; Positionierung; Präsenz/Sichtbarkeit.

Ein CV erhält zunächst genau ein primäres Content-Ziel.

### 5.5 Kanäle

> Ein Kanal wird als eigenständige Entität geführt, weil er unabhängig von einzelnen Assets für Marketingstrategie, Planung und redaktionelle Orientierung betrachtet und gepflegt werden soll.

Zentrale Properties: `Name`, `Strategische Rolle`, `Aktiv`, Gegenrelation zu Content-Assets.

Aktueller Bestand: LinkedIn, YouTube, Blog, Google Business Profile, Vortrag. `Vortrag` bleibt bewusst ein pragmatischer Grenzfall zwischen Kanal und Kommunikationsformat.

### 5.6 Serien

> Eine Serie ist eine bewusst zusammengehörige und meist geordnete Folge mehrerer Content-Vorhaben.

Zentrale Properties: `Name`, `Abgeschlossen`, `Content-Vorhaben`. Ein CV gehört höchstens zu einer Serie. Beschreibung, Zweck und Dramaturgie liegen im Seiteninhalt.

### 5.7 Content-Vorhaben

> Ein Content-Vorhaben bildet eine eigenständige redaktionelle Aussage bzw. kommunikative Bearbeitung eines Themas ab.

Granularitätstest:

> Gleiche Kernaussage, unterschiedliche Realisierung → ein CV, mehrere AS.  
> Unterschiedliche Kernaussagen → mehrere CV.

`Kernaussage` bleibt als eigenes Text-Property erhalten, weil sie die fachliche Identität und Abgrenzung des CV wesentlich bestimmt.

> **Kernaussage = zentrale redaktionelle Aussage des Content-Vorhabens.**

Zentrale Properties: `Name`, `Status`, `Kernaussage`, `Thema`, `Content-Ziel`, `Serie`, `Angebote`, `Vorgänge`, `Ursprungs-Idee`, `Content-Assets`.

Status:

```text
ZU ERLEDIGEN
├── Entwurf
└── Geplant

IN BEARBEITUNG
└── In Bearbeitung

ABGESCHLOSSEN
└── Fertig
```

`Entwurf` ist Standard.

### 5.8 Content-Assets

> Das Content-Asset bildet die konkrete operative Realisierung eines Content-Vorhabens auf einem bestimmten Kanal ab.

Ein CV kann mehrere AS hervorbringen; jedes AS gehört genau einem CV.

Zentrale Properties: `Name`, `Status`, `Veröffentlichung`, `Veröffentlichungs-URL`, `Content-Vorhaben`, `Kanal`, Gegenrelation zu Aufgaben.

Status:

```text
ZU ERLEDIGEN
└── Geplant

IN BEARBEITUNG
├── In Bearbeitung
└── Fertig

ABGESCHLOSSEN
└── Veröffentlicht
```

`Fertig` bleibt bewusst in der Notion-Gruppe `In Bearbeitung`, weil ein fertiges, aber noch nicht veröffentlichtes Asset operativ noch nicht abgeschlossen ist.

> Terminierung ist kein Lebenszyklusstatus.

Ein zusätzliches `Format`-/`Asset-Typ`-Property wird derzeit nicht verwendet.

### 5.9 Aufgaben und Content-Arbeit

Die bestehende gemeinsame Aufgaben-DB wird für RM und Content Hub verwendet.

> **Aufgabe = zu erledigende Arbeit.**  
> **Asset = zu realisierendes bzw. entstandenes Ergebnis.**

Aufgaben werden nur angelegt, wenn ein Arbeitsschritt eigenständig gesteuert werden soll. Der Aufgabentyp unterscheidet `Vorgang`, `Content-Asset`, `Allgemein`.

### 5.10 End-to-End-Prozesse

Von der Idee zur Operationalisierung:

```text
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

Content-Prozess:

```text
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

Die Zweiteilung in CV und AS trennt **redaktionelle Absicht** von **konkreter Realisierung**. Dadurch kann dieselbe Kernaussage ohne Doppelpflege auf mehreren Kanälen umgesetzt werden.

Geschäftlicher Prozess:

```text
Idee oder direkter geschäftlicher Anlass
        ↓
Vorgang
Ziel + Beziehungen + Angebote
        ↓
Aufgaben
        ↓
geschäftliches Ergebnis
```

Content und Vorgang können verbunden sein, bleiben aber unterschiedliche Fachobjekte.

### 5.11 Fachliche Gesamtlogik

```text
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

## 6. Phase „Seitenlayouts → Templates → Views → Cockpit“

Diese Phase wurde nach Abschluss des Fachmodells und der RM↔Content-Hub-Synchronisierung vollständig umgesetzt und praktisch getestet.

### 6.1 Seitenlayouts

Seitenlayouts strukturieren die Darstellung der Properties und Relationen, nicht den narrativen Seiteninhalt. Der Seiteninhalt wird über Templates strukturiert.

Für operative Datenbanken wurden wenige fachlich verständliche Property-Gruppen und – wo für die tägliche Arbeit sinnvoll – Relation-Tabs eingerichtet.

#### RM

- **Organisationen:** Einordnung, Kontakt, Adresse; Tabs für Organisationseinheiten, Kontakte, Vorgänge.
- **Organisationseinheiten:** Zuordnung, Kontakt, Adresse; Tabs für Kontakte und Vorgänge.
- **Kontakte:** Organisation, Beziehung, Kontakt; Tabs für Vorgänge und Aufgaben.
- **Angebote:** Einordnung; Tabs für Vorgänge und Content-Vorhaben.
- **Vorgänge:** Steuerung, Bezug, Aufwand; Tabs für Aufgaben und Content-Vorhaben.
- **Aufgaben:** Steuerung, Zuordnung, Abhängigkeiten, Aufwand.

#### Content Hub

- **Ideen:** Steuerung und Einordnung; Tabs für Content-Vorhaben und Vorgänge.
- **Themenfelder:** vereinfachtes Kataloglayout mit Einordnung und relevanten Relation-Tabs.
- **Themen:** Einordnung; Tab Content-Vorhaben.
- **Content-Ziele:** Einordnung; Tab Content-Vorhaben.
- **Kanäle:** Einordnung; Tab Content-Assets.
- **Serien:** bewusst einfach; Relation Content-Vorhaben.
- **Content-Vorhaben:** Steuerung und Bezug; Tab Content-Assets.
- **Content-Assets:** Steuerung, Zuordnung, Publikation; Tab Aufgaben.

Fachkataloge bleiben gemäß ihrem geringen eigenständigen Bearbeitungsbedarf bewusst einfacher als operative Entitäten.

### 6.2 Templates

Templates wurden als schlanke Erfassungsoberflächen gestaltet. Sie strukturieren wiederkehrenden narrativen Inhalt, ohne Properties im Seiteninhalt zu duplizieren oder einen bürokratischen Ablauf zu erzwingen.

#### RM-Standardtemplates

**Standardvorgang**

Default: `Status = Geplant`

Seiteninhalt:

```text
## Ausgangssituation
## Aktueller Stand
## Nächster Schritt
## Notizen
```

`Ziel` wird nicht als Überschrift dupliziert, da es als Property geführt wird.

**Standardaufgabe**

Default: `Status = Offen`

```text
## Notizen
```

**Standardkontakt**

```text
## Beziehungskontext
## Notizen
```

Die frühere Property `Kontext/Hinweise` wurde entsprechend migriert.

**Standardorganisation**

```text
## Kontext
## Notizen
```

**Standard-Organisationseinheit**

```text
## Kontext
## Notizen
```

Für Angebote wurde bewusst kein zusätzliches RM-Standardtemplate eingeführt, da kein wiederkehrender Erfassungsfall besteht, der dadurch vereinfacht würde. Die Inhalte stammen aus den Hugo-Angebotsseiten.

Die Standardtemplates des Content Hubs sind ebenfalls umgesetzt. Fachkataloge erhalten nur dann Template-Inhalt, wenn dieser bei der Pflege tatsächlich wiederkehrende Arbeit spart.

### 6.3 Views

Views werden als Arbeitsoberflächen verstanden. Dauerhafte Views existieren nur für konkrete wiederkehrende Arbeitsfragen. Einmalige Auswertungen werden durch temporäre Filter, Sortierungen oder Gruppierungen beantwortet.

#### Aufgaben

Dauerhaft eingerichtet sind:

- `Offen` – alle Aufgaben, die noch Bearbeitung oder Aufmerksamkeit benötigen.
- `Diese / nächste Woche` – operative Zwei-Wochen-Planung.
- `Nach Vorgang` – Aufgaben nach geschäftlichem Vorgang gruppiert.
- `Kalender` – terminliche Verteilung.
- `Zeitleiste` – zeitliche Zusammenhänge und Dauer.

#### Vorgänge

Dauerhaft eingerichtet sind:

- `Aktiv` – aktuell bearbeitete geschäftliche Vorhaben.
- `Warten` – Vorgänge, bei denen auf Rückmeldung/Ereignis gewartet wird und eine Wiedervorlage relevant ist.
- `Diese / nächste Woche` – zeitlich in den nächsten zwei Wochen relevante Vorgänge.
- `Nach Status` – Board zur Bearbeitung des gesamten Vorgangs-Lebenszyklus.

Die übrigen RM-, Content-Hub- und Fach-/Referenzdatenbanken besitzen die in der praktischen Arbeit benötigten Standard- und Spezial-Views. Die View-Konzeption ist abgeschlossen und wurde nicht auf möglichst viele Darstellungsvarianten, sondern auf wiederkehrende Arbeitsfragen optimiert.

### 6.4 Gemeinsames Cockpit

Das gemeinsame Cockpit ist die primäre operative Einstiegseite für RM und Content Hub. Es ist eine normale Notion-Seite und besitzt keine eigene Cockpit-Datenbank. Die Inhalte werden als Linked Views vorhandener Datenbanken eingebunden.

Die Startversion beantwortet drei unterschiedliche Arbeitsfragen:

| Arbeitsdimension | Cockpit-Bereich | Arbeitsfrage | Linked View |
|---|---|---|---|
| Handeln | Was steht an? | Was muss ich in absehbarer Zeit konkret tun? | Aufgaben – `Diese / nächste Woche` |
| Steuern | Relationship Management | Welche geschäftlichen Vorhaben laufen und benötigen Aufmerksamkeit? | Vorgänge – `Aktiv` |
| Entscheiden | Content / Entscheidungen | Welche Ideen benötigen eine fachliche Entscheidung? | Ideen – `In Entscheidung` |

Die Cockpit-Views sind gegenüber den Fach-Views bewusst verdichtet.

Für Aufgaben werden im Cockpit im Kern `Name`, `Termin`, `Priorität` und `Status` gezeigt.

Für aktive Vorgänge werden im Kern `Name`, `Ziel`, `Priorität` und `Fällig/Wiedervorlage` gezeigt.

Für Ideen in Entscheidung werden im Kern `Name`, `Erstellt um` und `Kurzfassung` gezeigt.

Das Cockpit enthält zusätzlich eine kompakte Navigation zu häufig benötigten Fachbereichen. Diese Navigation ist fachlich gerechtfertigt, weil das Cockpit als primäre Einstiegseite dient und die globale Notion-Seitenleiste auf kleineren Bildschirmen, Tablets und Mobilgeräten nicht dauerhaft sichtbar ist.

Weitere Content-Sichten, Kennzahlen, Charts oder Widgets werden nicht vorsorglich ergänzt. Insbesondere werden aktive Content-Vorhaben, aktive Content-Assets und Veröffentlichungsplanung erst dann zusätzlich ins Cockpit aufgenommen, wenn sich dafür eine eigenständige wiederkehrende Steuerungsfrage aus der Nutzung ergibt.

### 6.5 Praxistest

Das gemeinsame Cockpit wurde nach der Einrichtung praktisch getestet. Die drei operativen Sichten wurden anschließend verdichtet. Die kompakte Navigation wurde bewusst beibehalten.

Damit ist die Phase **„Seitenlayouts → Templates → Views → Cockpit“ fachlich, technisch und praktisch abgeschlossen.**

## 7. Weitere bestätigte Implementierungsentscheidungen

### 7.1 Hugo-Angebote

Der reale Angebotsbestand wurde aus Hugo importiert und konsolidiert. Privat- und B2B-Angebote sind in der Angebote-DB vorhanden; die Seiteninhalte wurden übernommen.

### 7.2 Relation-Picker und Fachkataloge

Die praktische Prüfung in der Notion-Web-App hat gezeigt, dass die gewünschte Arbeit mit aktiven Katalogwerten im Relation-Picker funktioniert. Eine zwischenzeitlich erwogene generelle Umstellung langlebiger Fachkataloge von `Aktiv` auf `Status = Aktiv/Inaktiv` wurde mangels Mehrwert nicht vorgenommen.

### 7.3 Adressmodell / Place

Das bestehende Adressmodell wird beibehalten. Ein natives `Place`-Property wird derzeit nicht eingeführt, weil sein Zusatznutzen – insbesondere die Kartenansicht – den Erfassungs- und Migrationsaufwand im aktuellen RM nicht rechtfertigt.

### 7.4 Notion Calendar

Die Kopplung mit Notion Calendar funktioniert und ist praktisch bestätigt. `Termin` bleibt das führende Zeitobjekt der Aufgaben.

## 8. Abschlussstand der Aufbau- und UI-Phase

| Bereich | Stand |
|---|---|
| RM-Fachmodell | umgesetzt und geprüft |
| Content-Hub-Fachmodell | umgesetzt und geprüft |
| Property-Audit RM | abgeschlossen |
| RM ↔ Content-Hub-Synchronisierung | abgeschlossen |
| End-to-End-Tests | vollständig erfolgreich |
| ANG/Hugo-Import | abgeschlossen |
| Seitenlayouts RM | abgeschlossen |
| Seitenlayouts Content Hub | abgeschlossen |
| Standardtemplates RM | abgeschlossen |
| Standardtemplates Content Hub | abgeschlossen |
| Views RM | abgeschlossen |
| Views Content Hub | abgeschlossen |
| Views Fach-/Referenzdatenbanken | abgeschlossen |
| Gemeinsames Cockpit | umgesetzt und praktisch getestet |
| Notion Calendar | funktioniert |

## 9. Nutzungsphase ab 14.09.2026

Mit Abschluss der Aufbau- und UI-Phase beginnt am **14.09.2026** die Nutzungsphase.

Ziel dieser Phase ist nicht, weitere Struktur vorsorglich aufzubauen. Das bestehende System wird im realen Arbeitsalltag genutzt und beobachtet. Weiterentwicklungen werden aus wiederkehrender Reibung, fehlender Steuerungsmöglichkeit oder nachweisbarem Zusatznutzen abgeleitet.

```text
arbeiten
   ↓
Reibung / wiederkehrenden Bedarf erkennen
   ↓
fachliche Arbeitsfrage formulieren
   ↓
Entwicklungsreserve prüfen
   ↓
einfachste passende Notion-Lösung wählen
   ↓
praktisch testen
   ↓
bei Bewährung dokumentieren
```

> **Die Entwicklungsreserve ist keine To-do-Liste. Ein Punkt wird erst zu einem Ausbauvorhaben, wenn sein Auslöser in der Nutzung tatsächlich eintritt.**

## 10. Entwicklungsreserve für spätere Aufbauphasen

| Thema | Derzeitiger Status | Auslöser für Wiederaufnahme |
|---|---|---|
| Buttons und Automationen | bewusst zurückgestellt; Entscheidungslogik Formula → Button → Automation ist definiert | derselbe fachlich eindeutige Ablauf wird wiederholt manuell ausgeführt oder ein Statusereignis erzeugt zuverlässig genau eine deterministische Folgeaktion |
| Sub-Items im Aufgabenmanagement | native Dependencies sind umgesetzt; Sub-Items noch nicht aktiviert/erprobt | Checklisten reichen wiederholt nicht aus, weil Teilschritte eigenständig nach Status, Termin, Priorität, Aufwand oder Abhängigkeit gesteuert werden müssen |
| Zielgruppen / Personas | nicht Bestandteil des aktuellen Fachmodells | bei Planung oder Erstellung von LinkedIn-, GBP-, Blog-, YouTube- oder Vortrags-Content fehlt wiederholt eine explizite adressatenbezogene Steuerungsdimension |
| Aktivitäten- / Kontakthistorie | derzeit über Vorgänge, Aufgaben und Seiteninhalt ausreichend | Beziehungsgeschichte lässt sich wiederholt nicht mehr zuverlässig aus bestehenden Objekten und Kontextnotizen nachvollziehen |
| Zeiterfassung / Abrechnung | Aufwand geplant/Ist auf Aufgabenebene vorhanden; kein weitergehendes Abrechnungsmodell | tatsächlicher Controlling-, Honorar- oder Abrechnungsbedarf verlangt zusätzliche strukturierte Auswertung |
| Arbeitsartefakte / Dokumentmanagement | Speicherorte und Dateien werden nicht als eigene Dimension modelliert | Verweise im Seiteninhalt bzw. bestehende Fachwerkzeuge reichen für wachsende Dokumentmengen nicht mehr aus |
| Weitere Content-Dimensionen | `Asset-Typ/Format`, Unterthemenhierarchie, Idee↔Thema, Idee↔Serie u. a. bewusst nicht modelliert | eine zusätzliche Dimension erzeugt in der realen Content-Arbeit einen eigenständigen Steuerungs- oder Auswertungsnutzen |
| Wiederverwendung / Repurposing | keine Asset↔Asset- oder Repurposing-Struktur | wiederholte Wiederverwendung bestehender Inhalte muss geplant, nachvollzogen oder ausgewertet werden |
| Content-Performance / Analytics | nicht Bestandteil des Content-Hubs | Reichweiten-, Resonanz- oder Conversion-Daten werden regelmäßig für Content-Entscheidungen benötigt |
| Publishing-Integration | Veröffentlichung wird geplant/dokumentiert, aber nicht automatisiert | wiederkehrender manueller Publishing-Prozess verursacht relevante Reibung und eine Integration bietet klaren Nutzen |
| Zusätzliche Content-Sichten im Cockpit | Startcockpit bleibt bei Handeln – Steuern – Entscheiden | Aufgaben allein beantworten die Content-Steuerung nicht mehr und CV/AS/Veröffentlichungsplanung erzeugen eine eigenständige wiederkehrende Cockpit-Frage |
| Ideen-Capture / externe Capture-Integration | Capture und Management dürfen getrennt sein; Notion führt ab Übernahme in die Ideen-DB | wiederkehrende Verluste, Doppelpflege oder hoher manueller Übernahmeaufwand zwischen Capture-Werkzeugen und Notion |
| Gmail- / weitere externe Integrationen | derzeit keine zusätzliche RM-Integration erforderlich | wiederkehrender manueller Transfer von Kommunikation oder Informationen verursacht einen klaren operativen Nachteil |
| Vertiefte Notion-Calendar-Nutzung | Grundkopplung funktioniert | reale Terminplanung verlangt zusätzliche, heute nicht abgedeckte Calendar-Workflows |
| KI-/MCP-/Connector-Integration | nicht Teil des Kernmodells | ein klar umrissener wiederkehrender Prozess kann ohne zusätzliche Modellkomplexität zuverlässig unterstützt werden |
| Layouts, Templates, Views und Cockpit weiterentwickeln | aktuelle UI-Stufe abgeschlossen und getestet | ein wiederkehrender Arbeitsbedarf zeigt, dass die bestehende Oberfläche zu viel Reibung erzeugt oder eine Arbeitsfrage nicht ausreichend beantwortet |

Abgeschlossene Entscheidungen wie das derzeit nicht benötigte `Place`-Property oder die bewusste Trennung von RM und Content Hub werden **nicht** als offene Ausbaupunkte geführt. Sie werden nur bei veränderten fachlichen Anforderungen erneut geprüft.

## 11. Implementierungsstand v0.9

| Bereich | Stand |
|---|---|
| RM-Fachmodell | umgesetzt und geprüft |
| Content-Hub-Fachmodell | umgesetzt und geprüft |
| Property-Audit RM | abgeschlossen |
| RM ↔ Content-Hub-Synchronisierung | abgeschlossen |
| End-to-End-Tests | vollständig erfolgreich |
| ANG/Hugo-Import und Inhalte | abgeschlossen |
| Seitenlayouts RM + Content Hub | abgeschlossen |
| Standardtemplates RM + Content Hub | abgeschlossen |
| Views RM + Content Hub + Fach-/Referenzdatenbanken | abgeschlossen |
| Gemeinsames Cockpit | umgesetzt, verdichtet und praktisch getestet |
| Cockpit-Navigation | umgesetzt; primäre Navigation insbesondere bei ausgeblendeter Seitenleiste auf kleineren Displays |
| Notion Calendar | Grundkopplung funktioniert |
| Aufbauphase | abgeschlossen |
| Nutzungsphase | **gestartet am 14.09.2026** |

## 12. Änderungen gegenüber den Vorgängerdokumenten

Diese Version ist die **gemeinsame konsolidierte Dokumentation** von Relationship Management und Content Hub. Sie führt den RM-Gesamtstand v0.8 und das Fachkonzept Content-Hub v0.4 zusammen.

Gegenüber RM/C-H v0.8 wurde insbesondere:

- das detaillierte Content-Hub-Fachmodell aus v0.4 integriert,
- die konkreten Content-Hub-Statusmodelle, Views und Prozesslogiken konsolidiert,
- der Beginn der Nutzungsphase am 14.09.2026 ausdrücklich festgelegt,
- die bisher verstreuten bzw. allgemein formulierten späteren Ausbauideen in eine **Entwicklungsreserve für spätere Aufbauphasen** überführt,
- für jeden Reservepunkt ein konkreter **Auslöser für Wiederaufnahme** definiert,
- klargestellt, dass die Entwicklungsreserve keine To-do-Liste ist.

Mit diesem Stand endet die grundlegende Aufbauphase. Weitere Versionen entstehen aus der praktischen Nutzung und daraus abgeleiteten, tatsächlich begründeten Weiterentwicklungen.
