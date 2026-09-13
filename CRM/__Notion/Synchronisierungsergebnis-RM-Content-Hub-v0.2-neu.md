# Synchronisierungsergebnis RM ↔ Content-Hub

**Version:** 0.2 – abgestimmtes Zielmodell für die praktische RM-Integration  
**Stand:** 10.09.2026  
**Status:** Zur fachlichen Freigabe  
**Bezug:** Relationship Management v0.6 und freigegebenes Fachkonzept Content-Hub v0.3

## 1. Zweck und Ausgangslage

Dieses Dokument aktualisiert das Synchronisierungsergebnis RM ↔ Content-Hub v0.1 auf Grundlage des inzwischen implementierten, praktisch getesteten und fachlich freigegebenen Fachkonzepts Content-Hub v0.3.

Ziel ist ein widerspruchsfreies Gesamtmodell mit klaren Verantwortungsbereichen, wenigen bewusst gesetzten Schnittstellen und ohne redundante Doppelmodellierung.

> **RM und Content-Hub bleiben fachlich getrennte Subsysteme. Gemeinsame Entitäten und Relationen werden nur dort eingeführt, wo ein klarer fachlicher Nutzen besteht.**

Die fachliche Content-Hub-Struktur ist vor der RM-Integration bereits praktisch aufgebaut und getestet. Die Synchronisierung dient deshalb nicht mehr der offenen Modellfindung, sondern der kontrollierten Integration der bestätigten Schnittstellen in das bestehende RM.

## 2. Gemeinsame Modellierungsprinzipien

Für RM und Content-Hub gelten dieselben übergeordneten Prinzipien:

> **Heute wird die einfachste fachlich ausreichende Repräsentation verwendet. Eine eigene Entität wird erst eingeführt, wenn das betreffende Objekt unabhängig verwaltet, betrachtet oder ausgewertet werden muss.**

> **Eine Information wird als Property modelliert, wenn sie für Identifikation, fachliche Abgrenzung, Steuerung, Auswertung oder Verknüpfung des Objekts eigenständig benötigt wird. Erläuternde und narrative Informationen gehören in den Seiteninhalt.**

> **Wenn Notion für einen fachlichen Bedarf eine native, ausreichend einfache Logik bereitstellt, wird diese bevorzugt genutzt, statt eine parallele Eigenlogik aufzubauen.**

Für Relationen gilt:

> **Relationen werden grundsätzlich wechselseitig eingerichtet. Bei 1:n-Zuordnungen wird die Relation von der n-Seite zur übergeordneten Seite angelegt. Bei m:n-Beziehungen wird die pflegende Ausgangsseite nach dem fachlichen Arbeitsablauf bestimmt.**

Die konkrete technische Repräsentation wird weiterhin nach Einfachheit und tatsächlichem Nutzen entschieden.

## 3. Systemgrenzen und Verantwortlichkeiten

### 3.1 Relationship Management

Das RM steuert insbesondere:
- Organisationen (O)
- Organisationseinheiten (OE)
- Kontakte (K)
- Angebote (ANG)
- Vorgänge (V)
- Aufgaben (A)

Leitfrage:

> **Welche geschäftlichen Beziehungen, Angebote und konkreten geschäftlichen Bewegungen werden gesteuert?**

### 3.2 Content-Hub

Der Content-Hub steuert insbesondere:
- Ideen (I) als gemeinsame Eingangsschicht
- Themenfelder (TF) und Themen (T)
- Content-Ziele (CZ)
- Kanäle (Kanal)
- Serien (S)
- Content-Vorhaben (CV)
- Content-Assets (AS)

Leitfrage:

> **Was soll kommunikativ bearbeitet und wie konkret realisiert bzw. veröffentlicht werden?**

### 3.3 Gemeinsame Schnittstellen

Gemeinsam genutzt bzw. systemübergreifend verknüpft werden nur:
- Themenfeld
- Idee
- Aufgabe
- Angebot ↔ Content-Vorhaben
- Vorgang ↔ Content-Vorhaben

## 4. Themenfeld als zentrale gemeinsame Entität

`Themenfeld (TF)` wird als zentrale fachlich-strategische Entität des Gesamtsystems bestätigt.

> **Ein Themenfeld ist eine relativ stabile fachliche Domain, die strategisch betrachtet und über längere Zeit bearbeitet wird.**

Die bisher im RM mehrfach als Multi-Select gepflegte Klassifikation `Themenfelder` wird durch Relationen zur bereits bestehenden zentralen Themenfelder-Datenbank abgelöst.

Nicht mehr verwendete Themenfelder werden deaktiviert, nicht gelöscht.

### 4.1 Bestehende zentrale Themenfelder

Der im Content-Hub implementierte Bestand umfasst:
- Pflege & Alter
- Familie & Erbe
- Landwirtschaft
- Organisation & Unternehmen
- IT-Digitalisierung
- Mediation
- Personalvertretung
- HR
- Nachbarschaftskonflikte

Dieser Bestand ist künftig die zentrale Quelle; im RM werden keine parallelen Themenfeld-Auswahllisten mehr gepflegt.

### 4.2 RM-Relationen zu Themenfeld

Folgende RM-Entitäten erhalten eine wechselseitige Relation zu `Themenfeld`:
- Angebot (ANG)
- Vorgang (V)
- Organisation (O)
- Organisationseinheit (OE)
- Kontakt (K)

Keine direkte Themenfeld-Relation erhält:
- Aufgabe (A)

Begründung:

> **Der fachliche Kontext einer Aufgabe ergibt sich aus Vorgang oder Content-Asset; eine zusätzliche Themenfeld-Zuordnung wäre redundante Pflege.**

### 4.3 Content-Hub-Relation

`Themenfeld ↔ Thema` ist bereits als m:n-Relation eingerichtet und praktisch getestet.

Themen werden einem Themenfeld nur zugeordnet, wenn dieses einen wesentlichen fachlichen Bezugsrahmen bildet. Eine bloße inhaltliche Berührung reicht nicht aus.

### 4.4 Migration der bestehenden RM-Werte

Bei der praktischen Integration ist für O, OE, K, ANG und V jeweils:
1. der bestehende Multi-Select-Wert zu prüfen,
2. auf den entsprechenden zentralen TF-Datensatz abzubilden,
3. die Relation zu setzen,
4. das bisherige Multi-Select-Property erst nach erfolgreicher Kontrolle zu entfernen.

Es erfolgt keine automatische Erweiterung des Themenfeldbestands allein aufgrund vorhandener RM-Tags. Nicht eindeutig zuordenbare Werte werden vor einer Neuanlage fachlich geprüft.

## 5. Angebot (ANG) ↔ Content-Vorhaben (CV)

Die Relation `Angebot ↔ Content-Vorhaben` bleibt bestätigt.

> **Die Relation bildet einen bewusst geplanten, expliziten Angebotsbezug ab. Thematische Nähe allein begründet keine Zuordnung.**

Kardinalität: **m:n**, optional.

Die Relation ist im Content-Hub bereits technisch eingerichtet, konnte dort mangels konsolidierter Angebotsdaten aber noch nicht fachlich mit realen ANG-Datensätzen getestet werden.

Der fachliche Integrationstest erfolgt deshalb während der RM-Synchronisierung.

Ist einem CV ein Angebot zugeordnet, soll dieses in den daraus entstehenden relevanten Assets ausdrücklich adressiert bzw. verlinkt werden.

## 6. Vorgang (V) ↔ Content-Vorhaben (CV)

Die optionale Relation `Vorgang ↔ Content-Vorhaben` wird bestätigt.

Kardinalität: **m:n**.

> **V und CV liegen auf vergleichbarer konzeptioneller Ebene: Beide operationalisieren eine Absicht. V operationalisiert eine geschäftliche Absicht, CV eine redaktionelle Absicht. Das Asset ist dagegen die konkrete operative Realisierung des CV.**

Typische Anwendungsfälle:
- ein CV unterstützt einen institutionellen Zugangsweg,
- ein CV dient der fachlichen Positionierung im Kontext eines Vorgangs,
- ein CV bereitet eine Kontaktaufnahme vor,
- ein CV unterstützt eine Kooperation,
- ein CV kann mehrere Vorgänge unterstützen,
- ein Vorgang kann mehrere CV umfassen.

Die Relation wird nur gesetzt, wenn ein **konkreter geschäftlicher Zusammenhang** besteht.

Eine direkte Relation `Vorgang ↔ Content-Asset` wird zunächst nicht eingeführt.

## 7. Idee (I) als gemeinsame Eingangsschicht

Die Ideen-Datenbank ist als systemübergreifende Eingangsschicht bestätigt.

> **Eine Idee ist ein noch nicht operationalisierter Gedanke, Ansatz oder eine Hypothese, deren mögliche geschäftliche, fachliche oder kommunikative Verwendung zunächst geprüft werden soll.**

Die Ideen-DB ist im Content-Hub bereits implementiert. Die Relation `Idee ↔ Content-Vorhaben` wurde als 1:n praktisch getestet.

### 7.1 Idee ↔ Content-Vorhaben

- eine Idee kann mehrere CV hervorbringen,
- ein CV hat höchstens eine Ursprungs-Idee,
- ein CV kann ohne vorherige Idee entstehen,
- die Idee bleibt nach Operationalisierung als Herkunfts- und Entscheidungskontext erhalten.

### 7.2 Idee ↔ Vorgang

Für das RM wird analog eine optionale Relation eingeführt:
- eine Idee kann mehrere Vorgänge hervorbringen,
- ein Vorgang hat höchstens eine Ursprungs-Idee,
- ein Vorgang kann ohne vorherige Idee entstehen.

Damit kann eine Idee sowohl redaktionell als auch geschäftlich operationalisiert werden:

```text
Idee
├── 0..n Content-Vorhaben
└── 0..n Vorgänge
```

`Operationalisiert` bedeutet daher nicht zwingend „CV erzeugt“, sondern allgemein, dass mindestens eine konkrete Weiterführung in einem dafür vorgesehenen fachlichen Objekt erfolgt ist.

Eine direkte Relation Idee ↔ Content-Asset wird nicht eingeführt.

## 8. Gemeinsame Aufgaben-Datenbank

Die bestehende RM-Datenbank `Aufgaben` wird auch für den Content-Hub verwendet. Eine separate Content-Aufgabendatenbank wird nicht eingeführt.

> **Aufgabe = zu erledigende Arbeit.**  
> **Content-Asset = zu realisierendes bzw. entstandenes Ergebnis.**

Aufgaben im Content-Kontext bleiben optional. Ein AS benötigt nicht automatisch Aufgaben.

### 8.1 Aufgabentyp

Die Property `Aufgabentyp` wird eingeführt mit:
- `Vorgang`
- `Content-Asset`
- `Allgemein`

Ein leerer Aufgabentyp soll vermieden werden.

> **Der Aufgabentyp bestimmt den fachlichen Verwendungskontext einer Aufgabe. Die Relation konkretisiert diesen Kontext.**

### 8.2 Integritätslogik

- `Aufgabentyp = Vorgang` → Verwendung innerhalb der Vorgangssteuerung
- `Aufgabentyp = Content-Asset` → höchstens einem Content-Asset zugeordnet
- `Aufgabentyp = Allgemein` → unabhängig von Vorgang und Content-Asset möglich

Die bestehende RM-Relation Aufgabe ↔ Vorgang bleibt erhalten.

Neu hinzu kommt:
- `Aufgabe ↔ Content-Asset`: AS 1:n A; Aufgabe höchstens ein AS

Die konkrete technische Unterstützung der Integritätslogik durch Notion wird erst bei der Implementierung geprüft. Es wird keine künstliche Pflichtstruktur aufgebaut, wenn Notion dies nur mit unverhältnismäßiger Zusatzlogik erzwingen könnte.

## 9. Gesamtarchitektur nach Synchronisierung

```text
                              IDEE
                           /        \
                          ↓          ↓
                    VORGANG  ↔  CONTENT-VORHABEN
                       │             │
                       │             ├── Thema
                       │             ├── Content-Ziel
                       │             ├── Serie
                       │             ├── Angebot
                       │             └── Content-Asset
                       │                    │
                       ↓                    ↓
                    AUFGABE              AUFGABE
```

Gemeinsame strategische Ordnung:

```text
THEMENFELD
├── Thema
├── Angebot
├── Vorgang
├── Organisation
├── Organisationseinheit
└── Kontakt
```

Angebot bildet zusätzlich die explizite Brücke:

```text
ANG ↔ CV
```

## 10. Abgrenzungsregeln

### 10.1 Angebot ↔ Vorgang ↔ Content

> **Angebot (ANG) → Was biete ich an?**  
> **Vorgang (V) → Welche konkrete geschäftliche Veränderung möchte ich erreichen?**  
> **Content → Was kommuniziere bzw. veröffentliche ich?**

### 10.2 Vorgang ↔ Content

> **Vorgänge bilden geschäftliche Bewegungen nach außen ab. Contentarbeit erzeugt und betreibt Kommunikationsmittel und -kanäle.**

Dauerhafte Kanäle und kontinuierliche Content-Produktion sind keine Vorgänge.

### 10.3 Vorgang ↔ Content-Vorhaben

Die Relation wird nur verwendet, wenn ein konkretes CV Bestandteil oder bewusste Unterstützung einer konkreten geschäftlichen Bewegung ist.

### 10.4 Angebot ↔ Content-Vorhaben

Thematische Nähe genügt nicht. Die Relation bedeutet einen geplanten expliziten Angebotsbezug.

### 10.5 Themenfeld

Themenfelder sind gemeinsame strategische Bezugsräume und keine bloßen Oberthemen oder Tags.

### 10.6 Aufgabe

Aufgaben tragen keinen eigenen Themenfeldbezug. Fachlicher Kontext wird über das übergeordnete operative Objekt vermittelt.

## 11. Änderungen am bestehenden RM

Für die nächste RM-Version ergeben sich aus der Synchronisierung folgende konkrete Modelländerungen:

1. zentrale Themenfelder-Datenbank des Content-/Marketing-Modells auch für das RM verwenden,
2. bestehende `Themenfelder`-Multi-Selects bei O, OE, K und ANG durch Relationen ersetzen,
3. bei V die zentrale TF-Relation einführen bzw. bestehende Klassifikation entsprechend migrieren,
4. `Aufgabentyp` bei A einführen,
5. Relation `Aufgabe ↔ Content-Asset` einführen,
6. Relation `Vorgang ↔ Content-Vorhaben` einführen,
7. Relation `Idee ↔ Vorgang` einführen,
8. bestehende Relation `Angebot ↔ Content-Vorhaben` mit realen ANG-Daten fachlich testen,
9. bestehende RM-Seitenlayouts zunächst nur soweit anpassen, wie dies für die neuen Relationen unmittelbar erforderlich ist; die umfassende Layout-/Template-/View-Phase folgt nach der Integration.

Keine weiteren Content-Hub-Entitäten werden in das RM dupliziert.

## 12. Praktische Integrationsreihenfolge

Die Integration soll kontrolliert und testbar erfolgen:

### Schritt 1 – Themenfelder
- zentrale TF-Datenbank als gemeinsame Quelle bestätigen,
- RM-Multi-Select-Werte inventarisieren,
- Werte auf zentrale TF-Datensätze abbilden,
- Relationen O/OE/K/ANG/V ↔ TF einrichten,
- Daten migrieren und prüfen,
- alte Multi-Selects erst danach entfernen.

### Schritt 2 – Angebot ↔ CV
- bestehende technische Relation mit realen Angeboten testen,
- expliziten Angebotsbezug anhand realer CV prüfen.

### Schritt 3 – Vorgang ↔ CV
- wechselseitige m:n-Relation einrichten,
- mit mindestens einem realen Vorgang testen,
- prüfen, ob die Relation operativen Nutzen liefert und keine Doppelpflege erzeugt.

### Schritt 4 – Idee ↔ Vorgang
- Relation auf der n-Seite `Vorgang` als optionale `Ursprungs-Idee` einrichten,
- Limit 1 auf Vorgangsseite,
- Gegenrelation in Ideen unbegrenzt,
- mit einem geeigneten Fall testen.

### Schritt 5 – Aufgabenlogik
- `Aufgabentyp` einführen,
- bestehende Aufgaben sinnvoll klassifizieren,
- Relation Aufgabe ↔ AS einrichten,
- mindestens einen AS mit mehreren Aufgaben testen,
- prüfen, wie gut Aufgabentyp und Relation ohne Zusatzbürokratie zusammenspielen.

### Schritt 6 – End-to-End-Test
Mindestens folgende Pfade praktisch prüfen:

```text
TF → Vorgang → Aufgabe
TF → Angebot ↔ CV → AS → Aufgabe
Idee → CV → AS → Aufgabe
Idee → Vorgang → Aufgabe
Vorgang ↔ CV
```

Erst nach erfolgreichem Test gilt die RM-Synchronisierung als technisch umgesetzt.

## 13. Notion-Logic-First bei der Integration

Auch bei der Synchronisierung gilt:
- native Relation statt paralleler Tags,
- native Status-Properties für Lebenszyklen,
- native Limits für 1:n-Beziehungen, soweit ausreichend,
- Rollups/Formeln nur bei tatsächlichem Auswertungsbedarf,
- Automationen erst bei wiederkehrendem und deterministischem Nutzen,
- Buttons später als kontextbezogene Benutzeraktionen prüfen,
- keine Automatisierung allein deshalb, weil sie technisch möglich ist.

Für spätere Automatisierungen ist das ECA-Denkmodell relevant:

```text
Event → Condition → Action
```

Es führt in v0.2 zu **keiner zusätzlichen Modelländerung**. Trigger, Bedingungen und Actions werden erst in der späteren Realisierungs-/UI-Phase systematisch geprüft.

## 14. Bewusst nicht Teil dieser Synchronisierung

Nicht Gegenstand der RM-Integration sind zunächst:
- Zielgruppen und Personas
- Asset-Typ / Format
- Idee ↔ Thema
- Idee ↔ Serie
- direkte Vorgang ↔ Asset-Relation
- direkte Aufgabe ↔ Themenfeld-Relation
- Content-Performance / Analytics
- Repurposing-Relationen
- Publishing-Automationen
- detaillierte Nutzungshistorien
- zusätzliche Dokument-/Dateiobjekte
- Notion-Calendar-Integration
- umfassende Dashboard- und Cockpit-Gestaltung

Diese Punkte werden nur bei nachgewiesenem Bedarf wieder aufgenommen.

## 15. Offene technische Prüfungen

Während der praktischen Integration sind insbesondere zu prüfen:
- komfortable Auswahl aktiver Themenfelder in Relation-Pickern,
- sinnvolle Anzeige zusätzlicher Informationen bei Relationsauswahl,
- sichere Migration der bisherigen Multi-Select-Werte,
- praktische Kombination von `Aufgabentyp` und Relationsfeldern,
- Verhalten bestehender RM-Views nach Property-Migration,
- Auswirkungen neuer Relationen auf Seitenlayouts,
- spätere Rollup-Möglichkeiten zwischen RM und Content-Hub,
- sinnvolle Einsatzstellen für Buttons und Database Automations.

Diese Punkte sind Implementierungsfragen und ändern das fachliche Zielmodell nicht automatisch.

## 16. Freigabestand und nächster Schritt

Das Fachkonzept Content-Hub v0.3 ist am 10.09.2026 fachlich freigegeben.

Mit diesem Synchronisierungsdokument v0.2 wird das daraus resultierende gemeinsame Zielmodell für RM und Content-Hub zur Prüfung vorgelegt.

Nach fachlicher Freigabe von v0.2 folgt:

1. praktische RM-Integration gemäß Abschnitt 12,
2. Integrationstests und notwendige Korrekturen,
3. Aktualisierung der RM-Gesamtdokumentation auf den tatsächlich implementierten Stand,
4. danach gemeinsame Gestaltung von Datenbank-Seitenlayouts,
5. Standard-Templates,
6. Views,
7. gemeinsames Cockpit/Dashboard,
8. erst anschließend gezielte Buttons und Automationen nach realem Nutzungsbedarf.
