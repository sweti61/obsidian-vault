# Design-Regeln für Seitenlayout, Templates und UI

**Version:** 0.6\
**Stand:** 13.09.2026\
**Geltungsbereich:** Notion Relationship Management (RM) und Content Hub
(C-H)

## 1. Zweck und Leitgedanke

Diese Design-Regeln gelten gemeinsam für Seitenlayouts,
Datenbank-Templates, Views, UI und gemeinsame Dashboards des
Relationship Managements und des Content Hubs.

Ziel ist eine pragmatische Nutzung der vorhandenen Notion-Konzepte.
Fehlende Notion-Funktionen werden nicht mit komplexen
Hilfskonstruktionen nachgebaut. Wo eine Anforderung mit Notion-Mitteln
nicht sinnvoll realisierbar ist, wird sie konzeptionell gelöst,
vereinfacht oder bewusst als Einschränkung akzeptiert.

Übergeordnet gelten drei Leitprinzipien:

1.  **Notion verwenden, nicht nachbauen.** Vorhandene Notion-Konzepte
    werden entsprechend ihrer vorgesehenen Funktion eingesetzt. Fehlende
    Features werden nicht durch unverhältnismäßig komplexe
    Ersatzkonstruktionen simuliert.
2.  **Datenmodell und Arbeitsoberfläche trennen.** Das Datenmodell
    beschreibt fachliche Objekte und Beziehungen. Seitenlayouts,
    Templates, Views und Dashboards machen dieses Modell benutzbar,
    verändern es aber nicht aus rein visuellen Gründen.
3.  **So einfach wie möglich, so strukturiert wie nötig.** Jede
    zusätzliche Property, View, Relation, Template-Struktur oder
    Automation benötigt einen konkreten Nutzen im wiederkehrenden
    Arbeitsprozess.

## 2. Design-Regeln

### DR-01 -- Strukturierte und narrative Information trennen

> **Auswertbares und strukturiertes → Properties. Lesbares und
> narratives → Seiteninhalt.**

Strukturierte, filterbare, sortierbare oder auswertbare Informationen
werden als Properties modelliert. Narrativer Kontext gehört in den
Seiteninhalt. Dieselbe Information wird nicht ohne fachlichen Grund
zusätzlich im Seiteninhalt nachgebaut.

### DR-02 -- Seitenlayout und Template haben unterschiedliche, aufeinander aufbauende Aufgaben

Das **Seitenlayout** definiert, wie Datenbankseiten einer Datenbank
dargestellt und bedient werden. Das **Template** definiert, mit welchen
vorbelegten Properties und welchem Blockinhalt ein neuer Datensatz
angelegt wird.

> **Templates bauen auf dem Seitenlayout der jeweiligen Datenbank auf.**

Das Seitenlayout bildet die stabile Darstellungs- und Bedienstruktur.
Templates ergänzen diese um fall- oder typbezogene Ausgangsinhalte. Ein
Template soll nicht versuchen, das Seitenlayout durch zusätzliche Blöcke
nachzubauen.

### DR-03 -- Templates strukturieren wiederkehrenden Seiteninhalt

Templates dürfen und sollen den narrativen Seiteninhalt strukturieren,
wenn eine wiederkehrende fachliche Gliederung existiert. Dafür werden
insbesondere **H2- und H3-Abschnitte** verwendet.

``` text
## Ausgangssituation
## Ziel
## Bearbeitungsstand
### Entscheidungen
### Offene Punkte
## Notizen
```

Die Gliederung soll Orientierung geben, ohne für jeden denkbaren Fall
leere Pflichtabschnitte zu erzeugen.

### DR-04 -- Templates müssen Arbeit sparen

Ein Template enthält nur Elemente, die beim Anlegen eines Datensatzes
tatsächlich wiederkehrende Arbeit ersparen: sinnvolle Defaultwerte,
wiederkehrende H2/H3-Strukturen, notwendige Hinweise oder regelmäßig
benötigte Blöcke.

> **Templates sollen Arbeit sparen; wo ein Template nichts sparen kann,
> sollte es auch nichts künstlich hinzufügen.**

### DR-05 -- Das Seitenlayout folgt der Nutzung

Nur weil ein Property fachlich existiert, muss es nicht prominent
dargestellt werden. Häufig benötigte Informationen werden leicht
zugänglich platziert. Administrative, technische oder selten benötigte
Properties werden weniger prominent dargestellt.

Die Darstellung folgt dem Arbeitsablauf und nicht der technischen
Reihenfolge des Datenmodells.

### DR-06 -- Properties bewusst gruppieren

Bei Datenbanken mit vielen Properties werden wenige, fachlich
verständliche Eigenschaftsgruppen verwendet. Alle sichtbaren Properties
werden bewusst einer sinnvollen Gruppe zugeordnet. Zusätzliche Gruppen
werden nur angelegt, wenn sie die Orientierung tatsächlich verbessern.

### DR-07 -- Relevante Relationen arbeitsgerecht darstellen

Relationen werden dort sichtbar gemacht, wo sie für die Arbeit benötigt
werden. Für zentrale Relationen kann ein eigener Bereich bzw. Tab des
Seitenlayouts verwendet werden. Nicht jede Relation muss zusätzlich
prominent in den allgemeinen Properties erscheinen.

> **Properties strukturieren den Datensatz. Relevante Relationen als
> eigener Tab. Narrativer Kontext im Seiteninhalt.**

### DR-08 -- Views sind Arbeitsoberflächen, keine neuen Datenmodelle

Views bilden unterschiedliche Arbeits- und Auswertungsperspektiven auf dieselben fachlichen Datensätze. Sie verändern das Datenmodell nicht und erzeugen keine neuen fachlichen Objektmengen.

Filter, Sortierung, Gruppierung, sichtbare Properties und Darstellungsform werden verwendet, um die Datensätze für einen bestimmten Arbeitszweck zugänglich zu machen. Für eine andere Arbeitssicht wird nicht vorschnell eine zusätzliche Datenbank angelegt.

### DR-09 -- Standard-Views für den Normalfall

Jede zentrale Datenbank erhält eine verständliche Standardansicht für
die normale Arbeit. Zusätzliche Spezial-Views werden nur für tatsächlich
wiederkehrende Arbeitsabläufe angelegt, beispielsweise
`Offene Aufgaben`, `Aktive Vorgänge` oder `Ideen in Entscheidung`.

Views „für alle denkbaren Fälle" werden vermieden.

### DR-10 -- Dashboards aggregieren Arbeit, nicht Daten

Gemeinsame Cockpits und Dashboards verwenden primär Linked Views
vorhandener Datenbanken, Navigation und wenige erklärende oder
orientierende Blöcke. Daten aus RM oder Content Hub werden für ein
Dashboard nicht kopiert oder in zusätzlichen Dashboard-Datenbanken
dupliziert.

### DR-11 -- RM und Content Hub fachlich getrennt, in der UI gemeinsam nutzbar

Relationship Management und Content Hub bleiben eigenständige fachliche
Modelle. Eine gemeinsame Arbeitsoberfläche darf beide Systeme
zusammenführen, ohne ihre Datenmodelle künstlich zu verschmelzen.

``` text
Gemeinsames Cockpit
├─ Heute / demnächst → Aufgaben
├─ Relationship Management → aktive Vorgänge
└─ Content Hub → Content in Bearbeitung / Ideen zur Entscheidung
```

Das Dashboard verbindet die Arbeitssicht, nicht zwangsläufig die
Datenmodelle.

### DR-12 -- Status steuert Arbeitsansichten

Wo ein fachlich definierter Lebenszyklus existiert, werden
Status-Properties bevorzugt zur Steuerung von Views, Boards, Filtern,
Gruppierungen und geeigneten Automationen verwendet. Zusätzliche
UI-Hilfsproperties werden nicht angelegt, wenn der bestehende fachliche
Status dieselbe Aufgabe erfüllen kann.

### DR-13 -- Deterministische Folgeobjekte dürfen automatisiert werden

Ein Statuswechsel darf die automatische Anlage eines Datensatzes in
einer verbundenen Datenbank auslösen, wenn:

1.  der Statuswechsel fachlich eindeutig ist,
2.  genau ein definierter Folgedatensatz entstehen soll,
3.  keine zusätzliche Ermessensentscheidung erforderlich ist,
4.  der neue Datensatz mit dem auslösenden Datensatz verknüpft werden
    kann,
5.  eine unkontrollierte Mehrfachanlage vermieden wird.

Wo eine menschliche Entscheidung erforderlich ist, bleibt die Anlage
manuell.

### DR-14 -- Technische Grenzen nicht durch Hilfskonstruktionen kaschieren

Kann Notion eine fachlich gewünschte Funktion nicht nativ und sinnvoll
abbilden, wird die Einschränkung dokumentiert und der Arbeitsprozess
entsprechend gestaltet.

Es werden keine zusätzlichen Datenbanken, Formeln, Relationsketten oder
Automationen ausschließlich zur Simulation eines fehlenden Features
eingeführt, wenn dadurch unverhältnismäßige Komplexität entsteht.

### DR-15 -- Historische Referenzen in Fachkatalogen erhalten

Fachlich stillgelegte, bereits referenzierte Katalogeinträge werden
nicht gelöscht. Sie erhalten einen Status wie `Inaktiv`. Bestehende
Relationen bleiben erhalten. Standard-Views zeigen grundsätzlich aktive
Werte; eine administrative View kann alle Werte anzeigen.

Da Notion den Relation-Picker nicht nach `Aktiv` filtern kann, soll der
Status nach Möglichkeit als zusätzliche Information im Relation-Picker
angezeigt werden. Die Nichtverwendung inaktiver Werte bei neuen
Relationen bleibt eine fachliche Regel. Aktive und inaktive Katalogwerte
werden nicht auf getrennte Datenbanken verteilt.

### DR-16 -- Keine dynamischen Dokument-Templates simulieren

Der Notion-Seiteninhalt besitzt kein allgemeines
Property-Platzhaltersystem nach dem Muster `{{Property}}`. Deshalb
werden keine Hilfskonstruktionen entwickelt, um dynamische
Property-Werte in beliebige Textblöcke einzusetzen.

Dynamische strukturierte Werte bleiben Properties bzw. Formeln;
narrative Inhalte bleiben Blöcke im Seiteninhalt. Echte
Dokumentgenerierung mit Variablen ist gegebenenfalls als separate
Anforderung außerhalb dieses Modells zu behandeln.

### DR-17 -- Web/Desktop konfigurieren, Mobile nutzen

Erweiterte Layout-, Datenbank- und Relation-Picker-Konfigurationen
werden in Web/Desktop vorgenommen, wenn die Android-App die
entsprechende Einstellung nicht anbietet. Mobile UI-Einschränkungen
führen nicht zu Änderungen des fachlichen Datenmodells.

### DR-18 -- Mobile Nutzung berücksichtigen, ohne auf den kleinsten gemeinsamen Nenner zu reduzieren

Die tägliche Nutzung der Modelle soll auch auf mobilen Geräten
praktikabel bleiben. Sinnvolle Notion-Funktionen werden jedoch nicht
verworfen, nur weil deren Konfiguration ausschließlich oder komfortabler
über Web/Desktop möglich ist.

### DR-19 -- UI-Komplexität aus tatsächlicher Nutzung entstehen lassen

Seitenlayouts, Templates, Views und Dashboards werden zunächst möglichst
einfach aufgebaut. Zusätzliche UI-Elemente werden erst eingeführt, wenn
die praktische Nutzung einen wiederkehrenden Bedarf zeigt.

> **Nicht für mögliche Anforderungen vorbauen, sondern aus tatsächlicher
> Nutzung weiterentwickeln.**

### DR-20 -- Buttons für bewusst ausgelöste, standardisierte Aktionen verwenden

Buttons bündeln wiederkehrende Aktionen, die **bewusst durch den
Benutzer ausgelöst** werden sollen. Die fachliche Entscheidung bleibt
beim Benutzer; anschließend wiederkehrende mechanische Schritte können
durch den Button standardisiert werden.

Ein Button kann beispielsweise Properties ändern, einen Folgedatensatz
anlegen und Relationen vorbelegen. Mehrere mechanische Schritte dürfen
zu einer verständlichen Benutzeraktion zusammengefasst werden.

Button-Blöcke können im Seiteninhalt bzw. in Templates eingesetzt
werden. Datenbank-Button-Properties eignen sich für Aktionen, die
grundsätzlich zu Datensätzen eines bestimmten Typs gehören.

Buttons werden nicht als allgemeines Skript- oder Programmiersystem
verwendet.

### DR-21 -- Formula, Button und Automation nach Art der Logik unterscheiden

``` text
Nur Wert berechnen?
    → Formula

Bewusste fachliche Entscheidung durch Benutzer,
danach standardisierte Aktion?
    → Button

Eindeutiges Ereignis mit deterministischer Folgeaktion?
    → Automation
```

Damit wird vermieden, menschliche Entscheidungen unnötig zu
automatisieren oder einfache Berechnungen als Workflow zu modellieren.

### DR-22 -- Native Spezial-Properties nur bei tatsächlichem Mehrwert einsetzen

Ein spezieller Notion-Property-Typ wird einem einfacheren Property nur
dann vorgezogen, wenn seine zusätzliche native Funktion im tatsächlichen
Arbeitsprozess genutzt wird.

> **Eine interessante Notion-Funktion ist noch kein
> Modellierungsgrund.**

Technisch mögliche Visualisierungen oder Auswertungen allein
rechtfertigen keine zusätzliche Struktur.

Beispiel `Place`: Ein Place-Property ist sinnvoll, wenn geografische
Ortsauflösung oder Map Views tatsächlich benötigt werden. Im aktuellen
RM-Modell rechtfertigt der mögliche Kartennutzen den höheren
Erfassungsaufwand nicht; daher ist dort kein Place-Property
erforderlich. Auch das Speichern des Entstehungsortes einer Idee wäre
zwar technisch möglich, besitzt derzeit aber keinen ausreichenden
fachlichen Nutzen.

### DR-23 -- Capture und Management dürfen getrennt sein

Eine Idee soll dort erfasst werden, wo dies im Entstehungsmoment am
einfachsten ist. Externe Werkzeuge wie Notiz- oder Capture-Anwendungen
dürfen dafür verwendet werden.

Nach der Übernahme in die Ideen-DB ist Notion das **führende System für
Sichtung, Entscheidung und Operationalisierung**. Das Erfassungswerkzeug
muss nicht Notion sein.

``` text
Externe Capture-Werkzeuge
        ↓
     Erfassung
        ↓
    Ideen-DB
        ↓
Sichtung / Entscheidung / Operationalisierung
```

### DR-24 -- Ideen leichtgewichtig erfassen und erst bei Reife strukturieren

Bei der Erfassung einer Idee wird nur die Information verlangt, die
notwendig ist, damit der Gedanke nicht verloren geht. Klassifikation,
Bewertung, Themenzuordnung und weitere Verknüpfungen entstehen erst im
weiteren Lebenszyklus, wenn die Idee gesichtet und fachlich eingeordnet
wird.

> **Nicht die Erfassung verlangt Struktur. Die Bearbeitung erzeugt
> Struktur.**

### DR-25 -- Eine Idee endet an der Operationalisierungsgrenze

Die Ideen-DB dient der Erfassung, Sichtung, Entscheidung und
Vorbereitung der Operationalisierung.

Wird aus einer Idee ein konkretes Vorhaben, entsteht das dafür
vorgesehene Fachobjekt, beispielsweise ein `Content-Vorhaben`, ein
`RM-Vorgang` oder ein anderes definiertes Folgeobjekt.

Die Ideen-DB wird nicht selbst zum Projekt-, Aufgaben-, Relationship-
oder Content-Management erweitert.

``` text
Idee
  ↓
Sichtung
  ↓
Entscheidung
  ↓
Operationalisierung
  ├─ Content-Vorhaben
  ├─ RM-Vorgang
  └─ anderes Fachobjekt
```


### DR-26 – Fachkataloge erhalten vereinfachte Layouts und Templates

Fachkataloge dienen primär der einheitlichen Referenzierung und fachlichen Einordnung anderer Objekte. Ihre Datensätze besitzen in der Regel keinen eigenen operativen Arbeitsprozess. Daher werden für Fachkataloge bewusst vereinfachte Seitenlayouts und Templates verwendet.

> **Je geringer der eigenständige Bearbeitungsbedarf eines Fachkatalogeintrags, desto einfacher bleiben Seitenlayout und Template.**

Insbesondere gilt:

- Wenige Properties benötigen keine künstliche Gruppierung.
- Relationen erhalten nur dann eigene Bereiche oder Tabs, wenn sie tatsächlich zur Pflege des Katalogeintrags benötigt werden.
- Templates enthalten nur wiederkehrenden narrativen Inhalt, der bei der Pflege tatsächlich Arbeit spart.
- Leere Abschnittsstrukturen werden nicht vorsorglich angelegt.
- Operative UI-Elemente wie Buttons oder Workflowbereiche werden nicht ohne konkreten Bedarf übernommen.

### DR-27 – Templates sind schlanke Erfassungsoberflächen

Datenbank-Templates sind Teil der Benutzeroberfläche für die Erfassung neuer Datensätze. Sie sollen die Erfassung erleichtern, wiederkehrende Eingaben und Strukturen vorbelegen und dadurch Arbeit sparen.

Im RM und Content Hub werden Templates bewusst schlank gehalten. Sie verlangen oder erzeugen nur Informationen und Strukturen, die beim Anlegen eines Datensatzes regelmäßig benötigt werden oder die weitere Bearbeitung unmittelbar erleichtern.

> **Ein Template soll die Datenerfassung unterstützen, nicht einen bürokratischen Bearbeitungsprozess erzwingen.**

Daraus folgt:

- Wiederkehrende Werte werden sinnvoll vorbelegt, statt erneut eingegeben.
- H2/H3-Strukturen dürfen die Erfassung narrativer Inhalte orientieren.
- Informationen, die beim Anlegen noch nicht bekannt oder nicht erforderlich sind, werden nicht vorsorglich verlangt.
- Strukturierte Properties werden nicht als Eingabefelder im Seiteninhalt dupliziert.
- Zusätzliche Template-Varianten werden nur angelegt, wenn sie einen wiederkehrenden Erfassungsfall tatsächlich vereinfachen.

### DR-28 – Templates entstehen aus der tatsächlichen Arbeitsweise

Templates werden aus wiederkehrender tatsächlicher Nutzung entwickelt, nicht aus einer möglichst vollständigen Vorstellung des späteren Arbeitsprozesses.

Neue Template-Strukturen und Template-Varianten werden eingeführt, wenn sich in der praktischen Arbeit wiederholt derselbe Erfassungsbedarf zeigt. Ein Template wird angepasst oder vereinfacht, wenn seine Elemente regelmäßig leer bleiben, übersprungen werden oder zusätzliche Pflege verursachen.

> **Template-Komplexität folgt der Nutzung; sie wird nicht vorsorglich aufgebaut.**

### DR-29 – Templates geben Orientierung, ohne erklärungsbedürftig zu werden

Ein Template soll durch seine Struktur möglichst selbsterklärend sein. Überschriften, kurze Hinweise, sinnvolle Vorbelegungen und bei Bedarf knappe Beispiele dürfen die Datenerfassung unterstützen.

Ein regelmäßig verwendetes Template soll jedoch keine separate Anleitung benötigen, um verstanden und korrekt benutzt zu werden.

> **Wird für ein Template eine umfangreiche Gebrauchsanweisung erforderlich, ist zunächst zu prüfen, ob das Template vereinfacht werden kann.**


### DR-30 – Dauerhafte Views beantworten wiederkehrende Arbeitsfragen

Eine dauerhafte View wird für eine konkrete, wiederkehrende Arbeitsfrage eingerichtet. Einmalige oder seltene Auswertungsfragen werden durch temporäre Filter-, Sortier- oder Gruppierungseinstellungen beantwortet und rechtfertigen keine dauerhafte View.

> **So wenige dauerhafte Views wie möglich, so viele wie für die wiederkehrende Arbeit nötig.**

### DR-31 – Jede View besitzt einen erkennbaren Arbeitszweck

Filter, Sortierung, Gruppierung und sichtbare Properties einer View werden aus ihrer Arbeitsfrage abgeleitet. Eine View zeigt nur die Informationen, die für diese Arbeitssicht relevant sind.

> **Properties speichern die fachliche Bedeutung. Views organisieren ihre Nutzung für einen konkreten Arbeitszweck.**

Eine View soll deshalb nicht möglichst vollständig die Datenbankstruktur abbilden, sondern die für ihre Arbeitsfrage erforderliche Arbeitsoberfläche bereitstellen.

### DR-32 – Die Darstellungsform folgt der Arbeitsfrage

Tabelle, Liste, Board, Kalender, Timeline, Galerie oder Map werden nach ihrem funktionalen Nutzen für die jeweilige Arbeitsfrage gewählt. Unterschiedliche Darstellungsformen werden nicht allein zur visuellen Variation angelegt.

Beispiele:

- Eigenschaften vergleichen → Tabelle
- Statusfluss bearbeiten → Board
- Termine überblicken → Kalender
- zeitliche Zusammenhänge und Abhängigkeiten betrachten → Timeline
- visuelle Inhalte beurteilen → Galerie

> **Die technische Verfügbarkeit einer Darstellungsform ist kein Grund für eine zusätzliche View.**

### DR-33 – Views werden dort bereitgestellt, wo die Arbeit stattfindet

Eine View wird dort eingebunden, wo ihre Arbeitsfrage bearbeitet wird. Datenbankeigene Views dienen der Arbeit innerhalb einer Fach-Datenbank. Linked Views bringen ausgewählte Arbeitssichten in Cockpits oder andere Arbeitskontexte, ohne Daten zu duplizieren.

Damit bleibt die fachliche Datenhaltung in den jeweiligen Datenbanken, während Cockpits und Dashboards die für einen Arbeitskontext relevanten Perspektiven zusammenführen.

### DR-34 – Das gemeinsame Cockpit ist eine operative Einstiegsebene

Das gemeinsame Cockpit bündelt die wiederkehrenden Arbeitsfragen aus Relationship Management und Content Hub in einer gemeinsamen operativen Sicht. Es bildet nicht die Struktur aller zugrunde liegenden Datenbanken ab, sondern zeigt vorrangig die Objekte, die aktuell Aufmerksamkeit, Entscheidung oder Bearbeitung benötigen.

> **Das Cockpit zeigt nicht, was das System enthält, sondern was für die aktuelle Arbeit relevant ist.**

### DR-35 – Cockpit-Inhalte werden aus wiederkehrenden Arbeitsfragen abgeleitet

Jedes dauerhafte Element des Cockpits muss eine konkrete wiederkehrende Arbeitsfrage beantworten. Ein Datenbestand oder eine vorhandene Fach-View wird nicht allein deshalb im Cockpit dargestellt, weil sie vorhanden oder fachlich wichtig ist.

> **Wenige dauerhafte Cockpit-Sichten für wiederkehrende Arbeitsfragen; einmalige Auswertungen bleiben temporär.**

### DR-36 – Das Cockpit verdichtet und führt zur Facharbeit weiter

Das Cockpit zeigt nur so viel Information, wie erforderlich ist, um Handlungs-, Steuerungs- oder Entscheidungsbedarf zu erkennen. Von dort führt es direkt zum betreffenden Datensatz oder zu einer detaillierteren Fach-View.

Cockpit-Sichten dürfen deshalb stärker reduziert sein als die dauerhaften Views der jeweiligen Fachdatenbank. Das Cockpit soll nicht die gesamte Fachbearbeitung auf einer Seite nachbilden.

``` text
Erkennen → auswählen → Fach-View / Datensatz öffnen → bearbeiten
```

### DR-37 – Das Cockpit integriert Arbeit, nicht Fachmodelle

Relationship Management und Content Hub werden im gemeinsamen Cockpit über ihre Arbeitsbedarfe zusammengeführt. Ihre fachlichen Objekte, Lebenszyklen und Datenbanken bleiben unterscheidbar.

Eine gemeinsame Cockpit-Darstellung rechtfertigt weder zusätzliche gemeinsame Properties noch die Verschmelzung fachlich unterschiedlicher Objekte.

### DR-38 – Navigation unterstützt das Cockpit, dominiert es aber nicht

Das Cockpit darf kompakte Zugänge zu häufig benötigten Fachbereichen, Datenbanken oder Fach-Views enthalten. Navigation bleibt jedoch eine unterstützende Funktion. Der Schwerpunkt liegt auf aktuellen Arbeits- und Entscheidungsbedarfen.

### DR-39 – Das Cockpit verwendet verlinkte Sichten vorhandener Datenbanken

Das gemeinsame Cockpit ist eine normale Notion-Seite. Operative Inhalte werden durch verlinkte Sichten (Linked Views) vorhandener Datenbanken eingebunden. Es entsteht keine eigene Cockpit-Datenbank und es werden keine Datensätze für das Cockpit dupliziert.

Die Cockpit-Sicht ist ein eigener Nutzungskontext derselben Daten und darf gegenüber einer bestehenden Fach-View weiter reduziert oder anders gefiltert, sortiert und dargestellt werden.

> **Fach-Views dienen der detaillierten Arbeit in einer Datenbank; Cockpit-Views dienen der übergreifenden Orientierung und dem Einstieg in die Arbeit.**

### DR-40 – Das Cockpit beginnt minimal und wächst nur aus Nutzung

Die erste Cockpit-Version enthält nur die Sichten, deren Arbeitsfragen bereits eindeutig und wiederkehrend sind. Weitere Sichten, Kennzahlen, Charts, Widgets oder Navigationselemente werden erst ergänzt, wenn ihre praktische Nutzung einen wiederkehrenden Bedarf belegt.

Insbesondere werden Fachkataloge und Kennzahlen nicht allein deshalb auf der Startseite dargestellt, weil sie verfügbar sind.

> **Das Cockpit wird nicht auf Vollständigkeit, sondern auf geringe Reibung optimiert.**

## 3.1 Festgelegter Inhalt des gemeinsamen Cockpits – Startversion

Die erste Version des gemeinsamen RM/C-H-Cockpits ist bewusst minimalistisch. Sie beantwortet drei unterschiedliche wiederkehrende Arbeitsfragen.

| Arbeitsdimension | Wiederkehrende Arbeitsfrage | Datenbank / Ausgangssicht | Cockpit-Inhalt |
| --- | --- | --- | --- |
| Handeln | Was muss ich in absehbarer Zeit konkret tun? | Aufgaben – `Diese / nächste Woche` | kompakte verlinkte Sicht der anstehenden Aufgaben |
| Steuern | Welche geschäftlichen Vorhaben laufen und benötigen Aufmerksamkeit? | Vorgänge – `Aktiv` | kompakte verlinkte Sicht der aktiven Vorgänge |
| Entscheiden | Welche Ideen benötigen eine fachliche Entscheidung? | Ideen – `In Entscheidung` | kompakte verlinkte Sicht der Ideen in Entscheidung |

Empfohlene Grundstruktur:

``` text
Gemeinsames Cockpit RM + Content Hub

Was steht an?
└─ Aufgaben – Diese / nächste Woche

Relationship Management
└─ Vorgänge – Aktiv

Content / Entscheidungen
└─ Ideen – In Entscheidung
```

Die übrigen bereits vorhandenen dauerhaften Fach-Views bleiben in ihren jeweiligen Datenbanken verfügbar. Insbesondere werden `Kalender`, `Zeitleiste`, `Nach Vorgang`, `Nach Status`, `Offene Ideen`, `Aktive Content-Vorhaben`, `Aktive Content-Assets`, `Veröffentlichungsplanung` sowie die Views der Fachkataloge nicht automatisch in das Cockpit übernommen.

Für `Aktive Content-Vorhaben`, `Aktive Content-Assets` und `Veröffentlichungsplanung` bleibt ausdrücklich offen, ob sich aus der Nutzung eine zusätzliche wiederkehrende Cockpit-Frage ergibt. Die konkrete Content-Arbeit ist bereits über Aufgaben sichtbar; zusätzliche Content-Sichten sollen daher nur aufgenommen werden, wenn sie eine eigenständige Steuerungsfrage beantworten und nicht lediglich denselben Arbeitszusammenhang mehrfach darstellen.

## 3. Kurzfassung der Entscheidungslogik

Bei neuen Modell-, UI- oder Template-Anforderungen wird in dieser
Reihenfolge geprüft:

``` text
1. Gibt es dafür ein natives Notion-Konzept?
             ↓
2. Löst es einen konkreten wiederkehrenden Arbeitsbedarf?
             ↓
3. Gehört die Anforderung ins Datenmodell,
   ins Seitenlayout, ins Template, in eine View
   oder in eine Benutzeraktion?
             ↓
4. Einfachste passende Notion-Lösung verwenden.
```

Für Logik und Aktionen zusätzlich:

``` text
Berechnung                  → Formula
bewusste Benutzeraktion     → Button
deterministische Folgeaktion → Automation
```

Ist eine gewünschte Funktion mit Notion-Mitteln nicht sinnvoll
realisierbar:

> **Nicht nachbauen → Einschränkung akzeptieren → Arbeitsweise
> konzeptionell anpassen.**

## 4. Änderungen gegenüber v0.4

Version 0.5 übernimmt den Stand von v0.4 und konkretisiert die Rolle von Views als Arbeits- und UI-Schicht des Notion-Systems.

- **DR-08 wurde geschärft:** Views bilden Arbeits- und Auswertungsperspektiven auf dieselben fachlichen Datensätze; sie verändern das Datenmodell nicht.
- **DR-30:** Dauerhafte Views werden nur für konkrete, wiederkehrende Arbeitsfragen eingerichtet; einmalige Auswertungen bleiben temporär.
- **DR-31:** Filter, Sortierung, Gruppierung und sichtbare Properties werden aus dem Arbeitszweck der View abgeleitet.
- **DR-32:** Die Darstellungsform einer View folgt der Arbeitsfrage und nicht dem Wunsch nach visueller Variation.
- **DR-33:** Views werden dort bereitgestellt, wo die jeweilige Arbeit stattfindet; Linked Views dienen insbesondere der Einbindung in Cockpits und andere Arbeitskontexte.

Damit gilt für die View-Konzeption als Leitprinzip:

> **Wenige dauerhafte Views für wiederkehrende Arbeitsfragen; einmalige Auswertungen können temporär erzeugt werden.**


## 5. Änderungen gegenüber v0.5

Version 0.6 ergänzt den Regelrahmen um die Konzeption des gemeinsamen Cockpits für Relationship Management und Content Hub.

- **DR-34:** Cockpit als operative Einstiegsebene.
- **DR-35:** Cockpit-Inhalte werden aus wiederkehrenden Arbeitsfragen abgeleitet.
- **DR-36:** Cockpit verdichtet und führt zur Facharbeit weiter.
- **DR-37:** Integration der Arbeit ohne Verschmelzung der Fachmodelle.
- **DR-38:** Navigation bleibt unterstützend.
- **DR-39:** Technischer Aufbau mit Linked Views vorhandener Datenbanken; keine Cockpit-Datenbank und keine Datenkopien.
- **DR-40:** Minimalistische Startversion; Erweiterungen nur aus tatsächlicher Nutzung.
- Zusätzlich wird die erste Cockpit-Belegung mit den drei Arbeitsfragen **Handeln**, **Steuern** und **Entscheiden** festgelegt.
