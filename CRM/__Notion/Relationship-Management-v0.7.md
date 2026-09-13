# Relationship Management in Notion

**Dokumentationsstand:** Version 0.7\
**Status:** Implementiert und praktisch getestet; ANG-Import und
ANG↔CV-End-to-End-Test noch offen\
**Stand:** 11.09.2026\
**Bezug:** Relationship Management v0.6, Fachkonzept Content-Hub v0.3
und Synchronisierungsergebnis RM ↔ Content-Hub v0.2

## 1. Zweck und Systemgrenzen

Das Relationship Management (RM) in Notion dient als zentrales
operatives System für die geschäftliche Beziehungsarbeit. Es verbindet
Beziehungsstammdaten mit Angeboten, konkreten geschäftlichen Vorgängen
und den daraus entstehenden Aufgaben.

-   **Notion:** RM, Content-Hub, Vorgänge, Aufgaben und spätere
    Cockpit-/Steuerungssichten.
-   **Obsidian:** Wissen, Methoden, Literatur und dauerhafte fachliche
    Notizen.
-   **Hugo/GitHub:** Websites, publizierbarer Web-Content und
    Markdown-Quellen.
-   **Gmail:** Kommunikation.
-   **Google Calendar / Notion Calendar:** Termine und Zeitplanung.

RM und Content-Hub bleiben fachlich getrennte Subsysteme. Gemeinsame
Entitäten und Relationen werden nur dort verwendet, wo ein klarer
fachlicher Nutzen besteht.

## 2. Gestaltungsprinzipien

### 2.1 Einfachste fachlich ausreichende Repräsentation

> Heute wird die einfachste fachlich ausreichende Repräsentation
> verwendet. Eine eigene Entität wird erst eingeführt, wenn das
> betreffende Objekt unabhängig verwaltet, betrachtet oder ausgewertet
> werden muss.

> Nicht alles strukturieren, nur weil Notion es ermöglicht.

### 2.2 Systematische Prüfung von Properties

> Was wir filtern, sortieren, gruppieren, verknüpfen oder auswerten
> wollen, gehört in Properties. Was primär gelesen und verstanden werden
> soll, gehört in den Seiteninhalt.

Für jede Property werden fünf Fragen gestellt:

1.  Welche eigenständige fachliche Aussage über das Objekt trägt diese
    Property?
2.  Wofür wird ihre strukturierte Existenz tatsächlich benötigt --
    insbesondere Identifikation, Abgrenzung, Relation, Steuerung,
    Filterung, Sortierung, Gruppierung, Auswertung oder Darstellung in
    Views?
3.  Was verlieren wir konkret, wenn diese Information nur im
    Seiteninhalt steht?
4.  Entsteht Doppelpflege oder semantische Überschneidung mit einer
    anderen Property oder dem Seiteninhalt?
5.  Gibt es eine native Notion-Funktion, die von dieser Property bzw.
    ihrem Datentyp profitiert oder sie voraussetzt?

> Nicht: „Kann diese Information als Property modelliert werden?",
> sondern: „Welche eigenständige Funktion rechtfertigt, dass diese
> Information eine Property ist?"

Freie Text-Properties benötigen eine besondere Begründung. Der Datentyp
Text ist jedoch kein Argument gegen eine Property. `V.Ziel`,
`K.Funktion / Rolle` und `ANG.Kurzbeschreibung` sind bewusst bestätigte
Text-Properties.

Narrative Informationen werden als nativer Notion-Blockinhalt geführt.
Markdown ist Eingabe- bzw. Importformat, nicht das zugrunde liegende
Dokumentmodell.

### 2.3 Notion-Logic First

> Wenn Notion für eine fachliche Anforderung ein natives Objekt oder
> eine native Funktion bereitstellt, wird diese bevorzugt. Eigene
> Relationen, Formeln oder Hilfsproperties werden nur eingeführt, wenn
> die native Notion-Logik den tatsächlich benötigten Anwendungsfall
> nicht ausreichend abbildet.

Wenn ein nativer Notion-Datentyp verwendet wird, wird geprüft, welche
zusätzliche native Funktionalität er bereitstellt und ob sie sinnvoll
genutzt werden kann.

### 2.4 Relationen

> Relationen werden grundsätzlich wechselseitig eingerichtet. Bei
> 1:n-Zuordnungen wird die Relation von der n-Seite zur übergeordneten
> Seite angelegt. Bei m:n-Beziehungen wird die pflegende Ausgangsseite
> nach dem fachlichen Arbeitsablauf bestimmt.

### 2.5 Status und Lebenszyklus

> Status wird verwendet, wenn eine Entität einen fachlich relevanten
> Lebenszyklus mit mehreren unterscheidbaren Zuständen besitzt. Bei
> einer reinen binären Zustandsaussage ist eine Checkbox vorzuziehen.
> Ein Status wird nicht vorsorglich für hypothetische zukünftige
> Zustände eingeführt.

> Bei Status-Properties ist zu prüfen, ob Statusübergänge fachliche
> Aktionen oder Automatisierungen auslösen sollen. Der Status beschreibt
> nicht nur einen Zustand, sondern kann Steuerungspunkt eines
> Lebenszyklus sein.

### 2.6 Fachliche Kataloge

Referenzierte Katalogdatensätze werden grundsätzlich nicht gelöscht,
solange historische oder fachliche Referenzen erhalten bleiben müssen.
Wenn ein Katalogeintrag künftig nicht mehr verwendet werden soll, ist
eine binäre Property `Aktiv` zu prüfen. Bestehende Referenzen bleiben
erhalten; neue Verwendungen sollen aktive Katalogeinträge bevorzugen.

Eine eigene Katalog-DB wird nicht allein wegen einer Klassifikation
eingeführt. Ein Select ist ausreichend, wenn die Klassifikation nur
innerhalb einer Entität verwendet wird, wenige selbsterklärende Werte
besitzt und keine eigenständige referenzierbare Entität benötigt wird.

### 2.7 Integritätsregeln

> Integritätsregeln werden fachlich definiert. Technische Erzwingung
> erfolgt nur, wenn sie mit einfachen nativen Notion-Mitteln möglich ist
> und die Bedienung nicht unnötig kompliziert macht.

### 2.8 Seitenlayout und Templates

> Properties strukturieren den Datensatz. Relevante Relationen können
> als eigener Tab dargestellt werden. Narrativer Kontext bleibt im
> Seiteninhalt.

> Seitenlayout definiert, wie Datenbankseiten dargestellt werden.
> Template definiert, mit welchem Property- und Blockinhalt ein neuer
> Datensatz angelegt wird.

> Templates sollen Arbeit sparen; wo ein Template nichts sparen kann,
> sollte es auch nichts künstlich hinzufügen.

## 3. Fachliches Gesamtmodell

Das RM besteht aus sechs Kernentitäten: Organisationen (O),
Organisationseinheiten (OE), Kontakte (K), Angebote (ANG), Vorgänge (V)
und Aufgaben (A).

O, OE und K bilden gemeinsam den Komplex **Beziehungsstammdaten**. Eine
eigene Übersichts-/Arbeitsseite für diesen Komplex soll später in der
UI-/View-Phase geprüft werden; es entsteht keine zusätzliche Entität.

Systemübergreifende Schnittstellen zum Content-Hub sind: Themenfeld,
Idee, gemeinsame Aufgaben, Angebot ↔ Content-Vorhaben und Vorgang ↔
Content-Vorhaben.

## 4. Organisationen (O)

  Property                 Typ / Bedeutung
  ------------------------ ------------------------------
  Name                     Namenseigenschaft
  Organisationstyp         Select
  Beziehungsrolle          Multi-Select
  Beziehungsstatus         Select
  Themenfelder             wechselseitige Relation → TF
  E-Mail                   E-Mail
  Telefon                  Telefon
  Website                  URL
  Straße                   Text
  PLZ                      Text
  Ort                      Text
  Organisationseinheiten   Gegenrelation
  Kontakte                 Gegenrelation
  Vorgänge                 Gegenrelation

`Kontext / Hinweise` wurde als Property entfernt und wird im
Seiteninhalt geführt. Das Adressmodell bleibt zunächst bestehen und wird
später separat gegen native Notion-Orts-/Adressfunktionen geprüft.

## 5. Organisationseinheiten (OE)

Eine OE ist eine organisatorisch erkennbare Untereinheit einer
Organisation, die für die Beziehungsarbeit eigenständig relevant ist.
Eine OE gehört immer zu genau einer Organisation.

  Property           Typ / Bedeutung
  ------------------ ------------------------------
  Name               Namenseigenschaft
  Organisation       wechselseitige Relation → O
  Kontakte           Gegenrelation
  Beziehungsrolle    Multi-Select
  Beziehungsstatus   Select
  Themenfelder       wechselseitige Relation → TF
  E-Mail             E-Mail
  Telefon            Telefon
  Website            URL
  Straße             Text
  PLZ                Text
  Ort                Text
  Vorgänge           Gegenrelation

`Kontext / Hinweise` wurde als Property entfernt und wird im
Seiteninhalt geführt. Eigene Felder für OE-Typ, Leitung oder
Ansprechpartner werden nicht eingeführt.

## 6. Kontakte (K)

  Property               Typ / Bedeutung
  ---------------------- ------------------------------
  Name                   Namenseigenschaft
  Vorname                Text
  Nachname               Text
  Organisation           wechselseitige Relation → O
  Organisationseinheit   wechselseitige Relation → OE
  Funktion / Rolle       Text
  Beziehungsrolle        Multi-Select
  Beziehungsstatus       Select
  Themenfelder           wechselseitige Relation → TF
  E-Mail                 E-Mail
  Telefon                Telefon
  LinkedIn               URL
  Website                URL
  Ort                    Text
  Vorgänge               Gegenrelation
  Aufgaben               Gegenrelation

`Funktion / Rolle` bleibt bewusst Freitext. `Website` bleibt
insbesondere für selbständige Kontakte relevant. `Kontext / Hinweise`
wurde als Property entfernt und wird im Seiteninhalt geführt.

Hat ein Kontakt eine OE, wird zusätzlich die zugehörige Organisation
direkt gepflegt; beide Zuordnungen müssen übereinstimmen.

## 7. Angebote (ANG)

Notion steuert und kontextualisiert das Angebot; Hugo/Webseite bleibt
die publizierte Repräsentation.

  Property           Typ / Bedeutung
  ------------------ ----------------------------------
  Name               Namenseigenschaft
  Geschäftsbereich   Select: B2B / Privat
  Aktiv              Checkbox
  Themenfelder       wechselseitige Relation → TF
  Website            URL
  Kurzbeschreibung   Text, ggf. AI-Autofill
  Vorgänge           Gegenrelation
  Content-Vorhaben   wechselseitige m:n-Relation → CV

`Zusammenfassung` wurde entfernt. `Kurzbeschreibung` ist die führende
kompakte Beschreibung. Der frühere Status `aktiv / geplant / inaktiv`
wurde durch `Aktiv` ersetzt, da derzeit kein eigenständiger
Angebots-Lebenszyklus benötigt wird.

Der vollständige Angebotsinhalt soll im Seiteninhalt geführt werden. Der
Import realer Hugo-Markdown-Angebote ist noch offen. `Geschäftsbereich`
bleibt einfacher Select; eine mögliche Verwendung im Content-Hub wird
dort separat geprüft.

## 8. Vorgänge (V)

> Ein Vorgang ist ein konkretes, zielgerichtetes geschäftliches Vorhaben
> mit einem erkennbaren gewünschten Ergebnis, das sich auf mindestens
> einen Kontakt, eine Organisation oder ein Angebot bezieht.

> Eine Aktivität wird nicht dadurch zum Vorgang, dass sie Arbeit
> verursacht. Sie wird zum Vorgang, wenn sie auf ein bestimmtes
> geschäftliches Ergebnis ausgerichtet ist.

  Property                 Typ / Bedeutung
  ------------------------ ----------------------------------
  Name                     Namenseigenschaft
  Vorgangstyp              Select
  Status                   nativer Status
  Priorität                native Prioritäts-/Auswahllogik
  Ziel                     Text
  Start                    Datum
  Fällig / Wiedervorlage   Datum
  Themenfelder             wechselseitige Relation → TF
  Angebote                 Relation → ANG
  Kontakte                 Relation → K
  Organisationen           Relation → O
  Organisationseinheiten   Relation → OE
  Aufgaben                 Gegenrelation
  Content-Vorhaben         wechselseitige m:n-Relation → CV
  Ursprungs-Idee           optionale Relation → I, max. 1
  Aufwand geplant          Rollup aus Aufgaben
  Aufwand Ist              Rollup aus Aufgaben

Vorgangstypen: Akquiseinitiative; Kontaktaufnahme; Kooperation;
Kundenanfrage / Auftrag; Netzwerk; Marketing; SEO. Ein eigener
Typ-Katalog wird nicht eingeführt.

Status: Geplant; Aktiv; Warten; Abgeschlossen; Verworfen. Später werden
sinnvolle Trigger/Automationen geprüft.

`Ziel` bleibt als fachlich begründete Text-Property erhalten. `Start`
bleibt erhalten; automatische bzw. statusabhängige Setzung wird später
geprüft. `Fällig / Wiedervorlage` bleibt zentrale operative
Steuerungsinformation.

## 9. Aufgaben (A)

> Eine Aufgabe ist eine konkrete, ausführbare Handlung. Ein Vorgang
> beschreibt dagegen das geschäftliche Ergebnis, zu dessen Erreichung
> mehrere Aufgaben notwendig sein können.

Die Aufgaben-DB ist die gemeinsame operative Aufgabenebene von RM und
Content-Hub.

  Property          Typ / Bedeutung
  ----------------- -------------------------------------------
  Name              Namenseigenschaft
  Aufgabentyp       Select
  Status            nativer Status
  Priorität         native Prioritäts-/Auswahllogik
  Termin            natives Datum, Einzeltermin oder Zeitraum
  Dauer             Formel aus Termin
  Vorgang           optionale Relation → V
  Content-Asset     optionale Relation → AS, max. 1
  Kontakte          optionale Relation → K
  Blockiert         native Aufgabenabhängigkeit
  Blockiert von     native Gegenrichtung
  Aufwand geplant   Zahl in Stunden
  Aufwand Ist       Zahl in Stunden

`Notizen` wurde als Property entfernt und wird im Seiteninhalt geführt.

Aufgabentypen: `Vorgang`, `Content-Asset`, `Allgemein`.

> Der Aufgabentyp bestimmt den fachlichen Verwendungskontext einer
> Aufgabe. Die Relation konkretisiert diesen Kontext.

`Termin` bleibt das führende Zeitobjekt. Native Abhängigkeiten werden
gegenüber eigener Abhängigkeitslogik bevorzugt.

## 10. Zentrale Themenfelder (TF)

> Ein Themenfeld ist eine relativ stabile fachliche Domain, die
> strategisch betrachtet und über längere Zeit bearbeitet wird.

Die früheren RM-Multi-Selects wurden durch Relationen zur zentralen
TF-DB ersetzt. TF-Relationen bestehen bei O, OE, K, ANG und V. Aufgaben
erhalten keine direkte TF-Relation.

Die zentrale TF-DB verwendet `Aktiv` als Checkbox. Nicht mehr verwendete
Themenfelder werden deaktiviert, nicht gelöscht.

## 11. Schnittstellen zum Content-Hub

### 11.1 ANG ↔ CV

Optionale m:n-Relation. Sie wird nur gesetzt, wenn ein CV ein Angebot
bewusst unterstützt. Gemeinsames Themenfeld allein begründet keine
Relation. Technisch umgesetzt; Praxistest mit realen Angeboten noch
offen.

### 11.2 V ↔ CV

Optionale m:n-Relation. V operationalisiert eine geschäftliche Absicht,
CV eine redaktionelle Absicht. Die Relation ist umgesetzt und praktisch
getestet.

### 11.3 Idee ↔ Vorgang

`V.Ursprungs-Idee` ist optional: Vorgang 0..1 Idee; Idee 0..n Vorgänge.
Die Relation dokumentiert Provenienz und ist umgesetzt.

### 11.4 Aufgabe ↔ Content-Asset

Die Relation wird auf der n-Seite `Aufgabe` angelegt und wechselseitig
geführt: Aufgabe 0..1 AS; AS 0..n Aufgaben. Sie ist umgesetzt und
praktisch getestet.

## 12. Seiteninhalt und Templates

Narrative Properties wurden bereinigt:

-   `O.Kontext / Hinweise` → Seiteninhalt
-   `OE.Kontext / Hinweise` → Seiteninhalt
-   `K.Kontext / Hinweise` → Seiteninhalt
-   `A.Notizen` → Seiteninhalt

Die bestehenden Standardtemplates enthalten die entsprechenden Bereiche
bereits.

Für Vorgänge bleibt der Seiteninhalt insbesondere gegliedert in
`Hintergrund`, `Aktueller Stand`, `Notizen`, `Nächster Schritt`.

## 13. Implementierungsstand v0.7

Der systematische Property-Audit für O/OE/K/ANG/V/A ist abgeschlossen.
Umgesetzt wurden insbesondere die narrative Bereinigung, `ANG.Aktiv`,
zentrale TF-Relationen, `V.Ursprungs-Idee`, V↔CV, ANG↔CV,
`A.Aufgabentyp` und A↔AS.

  Integrationsschritt   Stand
  --------------------- ---------------------------------------
  TF ↔ O/OE/K/ANG/V     umgesetzt
  ANG ↔ CV              technisch umgesetzt; Praxistest offen
  V ↔ CV                umgesetzt und getestet
  Idee ↔ V              umgesetzt und getestet
  Aufgabentyp           umgesetzt
  A ↔ AS                umgesetzt und getestet

### 13.1 End-to-End-Tests

  Pfad                     Ergebnis
  ------------------------ ---------------------------------------
  TF → V → A               erfolgreich
  TF → ANG ↔ CV → AS → A   vertagt bis reale ANG-Daten vorliegen
  I → CV → AS → A          erfolgreich
  I → V → A                erfolgreich
  V ↔ CV                   erfolgreich

Damit ist die Synchronisierung fachlich und technisch weitgehend
abgeschlossen. Einziger offener Integrationspfad ist der Angebots-Pfad.

## 14. Bewusst zurückgestellte Punkte

-   **ANG/Hugo:** Import realer Angebote, vollständiger Seiteninhalt,
    AI-Autofill der Kurzbeschreibung und realer ANG↔CV-Test.
-   **Adressmodell:** O/OE `Straße`, `PLZ`, `Ort` und K `Ort` später
    gegen native Notion-Orts-/Adressfunktionen prüfen.
-   **Native Notion-Funktionen/Automationen:** Status-Trigger bei V/A,
    automatische Setzung von `V.Start`, statusabhängige Wiedervorlage,
    Priorität, Aufgabenabhängigkeiten, aktive Katalogwerte in
    Relation-Pickern, zusätzliche Anzeigeproperties und Buttons.
-   **Informationsarchitektur:** O/OE/K als Bereich
    `Beziehungsstammdaten`; eigene Übersichts-/Arbeitsseite später
    prüfen.
-   **Weitere Erweiterungen nur bei Bedarf:**
    Aktivitäten/Kontakthistorie, Dokumente, eigene Termine-Entität,
    strategische Ebene oberhalb V, detaillierte
    Zeiterfassung/Abrechnung, V↔AS, A↔TF, Content-Analytics,
    Repurposing, Publishing-Automationen, Gmail, Notion Calendar,
    weitergehende KI-/MCP-Integration.

## 15. Nächste Schritte

1.  Realen ANG-Bestand aus Hugo importieren und konsolidieren.
2.  Offenen End-to-End-Test `TF → ANG ↔ CV → AS → A` durchführen.
3.  Seitenlayouts, Templates und Views auf Auswirkungen der neuen
    Relationen prüfen und gezielt nachziehen.
4.  Native Notion-Funktionen und sinnvolle Automationen anhand der
    bestätigten Regeln untersuchen.
5.  Gemeinsames RM-/Content-Hub-Cockpit konzipieren.
6.  Notion Calendar später auf Web/Desktop weiter integrieren.

## 16. Freigabestand

Version 0.7 dokumentiert den tatsächlich implementierten RM-Stand nach
Property-Audit und praktischer Synchronisierung mit dem Content-Hub.

Das Kernmodell O/OE/K/ANG/V/A ist fachlich konsolidiert. Die
systemübergreifenden Relationen sind bis auf den mangels realer
Angebotsdaten vertagten ANG-Praxistest umgesetzt und erfolgreich
getestet.

Weitere Modelländerungen werden weiterhin aus realer Nutzung und
wiederkehrendem Bedarf abgeleitet, nicht aus vorsorglicher Modellierung.
