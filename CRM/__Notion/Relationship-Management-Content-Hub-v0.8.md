# Relationship Management und Content Hub in Notion

**Dokumentationsstand:** Version 0.8  
**Status:** Fachmodell, Synchronisierung sowie Phase „Seitenlayouts → Templates → Views → Cockpit“ umgesetzt und praktisch getestet  
**Stand:** 14.09.2026  
**Bezug:** Relationship Management v0.7, Fachkonzept Content-Hub v0.3, Synchronisierung RM ↔ Content-Hub v0.2 sowie Design-Regeln für Seitenlayout, Templates und UI v0.6

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

### 5.1 Ideen

Die Ideen-DB dient der Erfassung, Sichtung, Entscheidung und Vorbereitung der Operationalisierung. Die Erfassung bleibt leichtgewichtig; Struktur entsteht während der Bearbeitung.

Eine Idee endet an der Operationalisierungsgrenze. Danach entsteht das geeignete Fachobjekt, insbesondere ein Content-Vorhaben oder ein RM-Vorgang.

### 5.2 Themenfelder und Themen

Themenfelder sind relativ stabile fachliche Domains, die strategisch betrachtet und über längere Zeit bearbeitet werden. Themen sind eigenständige, referenzierbare fachliche Gegenstände innerhalb bzw. zwischen Themenfeldern und werden nicht als starre Baumstruktur modelliert.

### 5.3 Content-Ziele

Content-Ziele beschreiben die strategische Funktion eines Content-Vorhabens, z. B. Orientierung, Fachwissen, Zusammenhänge erklären, Vertrauen, Angebot erklären, Positionierung oder Sichtbarkeit/Präsenz/Aktivierung.

### 5.4 Content-Vorhaben

Ein Content-Vorhaben bündelt die redaktionelle Absicht. Die Property **Kernaussage** formuliert die zentrale Aussage, die über die daraus entstehenden Assets hinweg erhalten bleiben soll.

Zentrale Relationen bestehen zu Themen, Content-Zielen, Serie, Angeboten, Ursprungs-Idee, Vorgängen und Content-Assets.

### 5.5 Content-Assets

Ein Content-Asset ist das konkrete Ergebnis für einen Kanal. Es besitzt einen eigenen operativen Status und kann eigene Aufgaben haben.

Zentrale Properties sind Status, Content-Vorhaben, Kanal, Veröffentlichung und Veröffentlichungs-URL sowie die Relation zu Aufgaben.

> Aufgabe = Arbeit. Content-Asset = Ergebnis.

### 5.6 Serien, Kanäle und Fachkataloge

Serien bündeln zusammengehörige Content-Vorhaben. Kanäle beschreiben die operative Ausspielumgebung und ihre strategische Rolle. Themenfelder, Themen, Content-Ziele und Kanäle werden als Fachkataloge bewusst einfach gehalten.

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

## 8. Implementierungsstand v0.8

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

## 9. Bewusst nicht umgesetzt bzw. nur bei Bedarf weiterzuentwickeln

Das System wird nach Abschluss der UI-Phase nicht vorsorglich erweitert. Weitere Funktionen entstehen nur aus tatsächlicher Nutzung.

Dazu gehören insbesondere:

- zusätzliche Cockpit-Sichten für Content-Vorhaben, Content-Assets oder Veröffentlichungsplanung,
- weitere Buttons und Automationen,
- automatische Status-/Datumslogik, soweit sich ein konkreter deterministischer Bedarf zeigt,
- weitergehende Aktivitäten-/Kontakthistorie,
- Dokumentmanagement,
- eigene Termine-Entität,
- detailliertere Zeiterfassung/Abrechnung,
- Content-Analytics und Publishing-Automationen,
- weitergehende Gmail-/KI-/Connector-Integration.

Native Sub-Items der Aufgaben können praktisch weiter erprobt werden; Dependencies sind bereits umgesetzt und getestet.

## 10. Abschluss der UI-Phase und nächster Entwicklungsmodus

Mit Version 0.8 ist die Phase

> **Seitenlayouts → Templates → Views → Cockpit**

abgeschlossen.

Das System besitzt nun nicht nur ein fachlich konsistentes Datenmodell, sondern auch eine darauf abgestimmte Arbeitsoberfläche. Die weitere Entwicklung erfolgt nicht mehr als vorsorglicher Strukturaufbau, sondern nutzungsgetrieben:

```text
arbeiten
   ↓
Reibung / wiederkehrenden Bedarf erkennen
   ↓
fachliche Arbeitsfrage formulieren
   ↓
einfachste passende Notion-Lösung wählen
   ↓
praktisch testen
   ↓
bei Bewährung dokumentieren
```

Damit wechselt RM + Content Hub von der grundlegenden Aufbauphase in eine **Nutzungs-, Beobachtungs- und gezielte Weiterentwicklungsphase**.

## 11. Änderungen gegenüber v0.7

Version 0.8 aktualisiert den zuvor dokumentierten v0.7-Stand insbesondere in folgenden Punkten:

- ANG/Hugo-Import und vollständige Angebotsinhalte sind abgeschlossen.
- Der zuvor offene End-to-End-Pfad `TF → ANG ↔ CV → AS → A` ist erfolgreich getestet.
- Die RM↔Content-Hub-Synchronisierung ist vollständig abgeschlossen.
- Die Seitenlayouts aller RM- und Content-Hub-Datenbanken sind umgesetzt.
- Die Standardtemplates sind umgesetzt; narrative Kontaktinformationen wurden in den Seiteninhalt migriert.
- Dauerhafte Views wurden aus wiederkehrenden Arbeitsfragen abgeleitet und für RM, Content Hub sowie Fach-/Referenzdatenbanken eingerichtet.
- Das gemeinsame Cockpit wurde als primäre operative Einstiegseite mit den Dimensionen **Handeln – Steuern – Entscheiden** umgesetzt.
- Cockpit-Views wurden gegenüber Fach-Views bewusst verdichtet.
- Eine kompakte Cockpit-Navigation wurde aufgrund der Nutzung auf kleineren Bildschirmen bewusst ergänzt.
- Das Cockpit wurde praktisch getestet.
- Die Place-Prüfung wurde mit der Entscheidung abgeschlossen, das bestehende Adressmodell unverändert zu lassen.
- Notion Calendar funktioniert mit der bestehenden Aufgaben-/Terminlogik.
- Die grundlegende Aufbau- und UI-Phase ist abgeschlossen; weitere Entwicklung erfolgt nutzungsgetrieben.
