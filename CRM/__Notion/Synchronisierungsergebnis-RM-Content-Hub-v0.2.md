# Synchronisierungsergebnis RM ↔ Content-Hub

**Stand:** 09.09.2026  
**Version:** 0.2  
**Status:** Fachlich abgestimmt  
**Bezug:** Relationship-Management v0.6 und Fachkonzept Content-Hub v0.1

## 1. Zweck

Dieses Dokument hält die fachlichen Entscheidungen zur Synchronisierung zwischen dem bestehenden Relationship-Management-Modell (RM) und dem Fachkonzept Content-Hub fest.

Ziel ist ein widerspruchsfreies Gesamtmodell mit klaren Verantwortungsbereichen, wenigen bewusst gesetzten Schnittstellen und ohne redundante Doppelmodellierung.

> RM und Content-Hub bleiben fachlich getrennte Subsysteme. Gemeinsame Entitäten und Relationen werden nur dort eingeführt, wo ein klarer fachlicher Nutzen besteht.

## 2. Gemeinsame Aufgaben-Datenbank

Die bestehende RM-Datenbank `Aufgaben` wird auch für den Content-Hub verwendet. Eine separate Content-Aufgabendatenbank wird nicht eingeführt.

Fachliche Verwendungskontexte:
- `Vorgang`
- `Content-Asset`
- `Allgemein`

Dafür wird die Property `Aufgabentyp` eingeführt.

> Aufgabentyp beschreibt den fachlichen Verwendungskontext. Die Relation konkretisiert diesen Kontext.

Integritätslogik:
- `Aufgabentyp = Vorgang` → Zuordnung zu einem Vorgang.
- `Aufgabentyp = Content-Asset` → Zuordnung zu einem Content-Asset.
- `Aufgabentyp = Allgemein` → keine zwingende Zuordnung zu Vorgang oder Content-Asset.

Die technische Durchsetzung wird erst bei der Notion-Implementierung geprüft.

## 3. Themenfeld als zentrale gemeinsame Entität

`Themenfeld (TF)` wird als eigenständige zentrale Entität des Gesamtsystems eingeführt. Die bisherige RM-Umsetzung als mehrfach gepflegte Multi-Select-Klassifikation wird perspektivisch abgelöst.

Begründung:
- Themenfelder werden bei Entwicklung und Revision der Marketingstrategie eigenständig bearbeitet.
- Notion-Seiten können strukturierte und narrative Hintergrundinformationen bündeln.
- Kurzbezeichnungen allein sind häufig nicht ausreichend eindeutig.
- Eine zentrale Datenbank ermöglicht konsistente Pflege.
- Themenfelder sind strategische Bezugsräume und nicht nur Taxonomie.

> Ein Themenfeld ist eine relativ stabile fachliche Domain, die strategisch betrachtet und über längere Zeit bearbeitet wird.

Nicht mehr verwendete Themenfelder werden deaktiviert, nicht gelöscht.

> **Themenfeld-Datensätze werden grundsätzlich nicht gelöscht.** Wird ein Themenfeld nicht mehr aktiv verwendet, wird es über die Checkbox `Aktiv` deaktiviert. Dadurch bleiben bestehende Relationen, historische Zuordnungen und strategische Nachvollziehbarkeit erhalten.

### 3.1 RM-Relationen zu Themenfeld

Folgende RM-Entitäten erhalten eine Relation zu `Themenfeld`:
- `Angebot`
- `Vorgang`
- `Organisation`
- `Organisationseinheit`
- `Kontakt`

Keine direkte TF-Relation erhält:
- `Aufgabe`

Begründung:

> Der fachliche Kontext einer Aufgabe ergibt sich aus Vorgang oder Content-Asset; eine zusätzliche Themenfeld-Zuordnung wäre redundante Pflege.

### 3.2 Implementierungsanforderungen

Bei der späteren Notion-Implementierung ist zu prüfen:
- wie nur aktive Themenfelder möglichst komfortabel zur Auswahl angeboten werden,
- welche Zusatzinformationen bei der Auswahl eines Relationsdatensatzes sichtbar gemacht werden können,
- wie bestehende Multi-Select-Werte migriert werden.

## 4. Angebot ↔ Content-Vorhaben

Die Relation `Angebot ↔ Content-Vorhaben` wird bestätigt.

> Die Relation bildet einen bewusst geplanten, expliziten Angebotsbezug ab.

Thematische Nähe allein begründet keine Relation.

Die Relation ist fachlich m:n.

## 5. Vorgang ↔ Content-Vorhaben

Die Relation `Vorgang ↔ Content-Vorhaben` wird eingeführt und ist optional.

Eine direkte Relation `Vorgang ↔ Content-Asset` wird zunächst nicht eingeführt.

> V und CV liegen auf vergleichbarer konzeptioneller Ebene: Beide operationalisieren eine Absicht. V operationalisiert eine geschäftliche Absicht, CV eine redaktionelle Absicht. Das Asset ist dagegen die konkrete operative Realisierung des CV.

Typische Anwendungsfälle:
- Content-Vorhaben unterstützt einen institutionellen Zugangsweg.
- Content-Vorhaben dient der fachlichen Positionierung im Kontext eines Vorgangs.
- Content-Vorhaben dient der Vorbereitung einer Kontaktaufnahme.
- Content-Vorhaben unterstützt eine Kooperation.
- Ein Content-Vorhaben kann mehrere Vorgänge unterstützen.
- Ein Vorgang kann mehrere Content-Vorhaben umfassen.

Die Relation ist daher fachlich m:n.

## 6. Idee als gemeinsame Eingangsschicht

Die Ideen-Inbox wird als systemübergreifende Eingangsschicht für RM und Content-Hub bestätigt.

Bestätigte optionale Relationen:
- `Idee → Content-Vorhaben`
- `Idee → Vorgang`

> Ein Vorgang kann aus einer Idee hervorgehen, muss aber nicht. Ein Content-Vorhaben kann aus einer Idee hervorgehen, muss aber nicht.

Aus einer Idee können mehrere Vorgänge und/oder mehrere Content-Vorhaben entstehen. Die Idee bleibt als Herkunfts- und Entscheidungskontext bestehen.

## 7. Gemeinsame Aufgabenlogik im Gesamtmodell

Die Aufgabenentität wird zu einer gemeinsamen operativen Arbeitsschicht:

```text
                 ┌── Vorgang
Aufgabe ─────────┤
                 ├── Content-Asset
                 └── Allgemein
```

> Aufgabe = konkrete, ausführbare Handlung.

Im Content-Hub gilt zusätzlich:

> Asset = zu realisierendes bzw. entstandenes Ergebnis.

Die Nutzung von Aufgaben bleibt im Content-Kontext optional.

## 8. Gesamtarchitektur nach Synchronisierung

```text
                         IDEE
                       /      \
                      ↓        ↓
                VORGANG ↔ CONTENT-VORHABEN
                    │          │
                    │          ├── Thema
                    │          ├── Content-Ziel
                    │          ├── Serie
                    │          ├── Angebot
                    │          └── Content-Asset
                    │                 │
                    ↓                 ↓
                 AUFGABE          AUFGABE
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

## 9. Abgrenzungsregeln

### 9.1 Vorgang ↔ Content

> Vorgänge bilden geschäftliche Bewegungen nach außen ab. Contentarbeit erzeugt und betreibt Kommunikationsmittel und -kanäle.

Dauerhafte Kanäle und kontinuierliche Content-Produktion sind keine Vorgänge.

### 9.2 Angebot ↔ Content

> Angebot beantwortet: Was biete ich an?  
> Content beantwortet: Was kommuniziere bzw. veröffentliche ich?

### 9.3 Vorgang ↔ Content-Vorhaben

Die Relation wird nur verwendet, wenn ein konkretes Content-Vorhaben Bestandteil oder bewusste Unterstützung einer konkreten geschäftlichen Bewegung ist.

### 9.4 Themenfeld

Themenfelder sind strategische Bezugsräume und keine bloßen Oberthemen oder Tags.

## 10. Auswirkungen auf das bestehende RM-Modell

Für eine spätere RM-Version nach v0.6 ergeben sich:
1. Einführung der zentralen Entität `Themenfeld` mit der Regel: nicht mehr verwendete Datensätze werden nicht gelöscht, sondern über `Aktiv` deaktiviert.
2. Migration bisheriger Themenfeld-Multi-Selects zu Relationen.
3. Neue TF-Relation bei `Vorgang`.
4. Einführung `Aufgabentyp`.
5. Neue optionale Relation `Aufgabe ↔ Content-Asset`.
6. Neue optionale Relation `Vorgang ↔ Content-Vorhaben`.
7. Neue optionale Relation `Idee ↔ Vorgang`.
8. Relation `Angebot ↔ Content-Vorhaben`.

Diese Änderungen werden erst nach Rückkopplung in das Content-Hub-Konzept und gemeinsamer Implementierungsplanung technisch umgesetzt.

## 11. Offene Implementierungsfragen

Die fachliche Synchronisierung ist abgeschlossen. Offen bleiben:
- Auswahlunterstützung bei Themenfeld-Relationen
- Filterung auf aktive Themenfelder in Relation-Pickern
- Migration bisheriger Themenfeld-Multi-Selects
- konkrete Umsetzung des Aufgabentyps
- konsistente Kombination von Aufgabentyp und Relation
- Seitenlayouts und Templates des Content-Hubs
- gemeinsame Dashboard-Logik
- Notion Calendar
- Integrationstests RM ↔ Content-Hub ↔ Dashboard

## 12. Nächster Schritt

Das Synchronisierungsergebnis wird dem Content-Hub-Chat bereitgestellt. Dort ist das Fachkonzept Content-Hub entsprechend anzupassen und anschließend erneut fachlich freizugeben.

Erst danach folgen:
1. gemeinsame Dashboard-Konzeption,
2. technische Implementierungsplanung,
3. Implementierung des Content-Hubs und der RM-Erweiterungen,
4. Integrationstests RM ↔ Content-Hub ↔ Dashboard,
5. Konsolidierung der Gesamtdokumentation.
