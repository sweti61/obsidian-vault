---

title: "Architekturentscheidungen mediator.sweti.de" 
type: "strategie-zusammenfassung" 
version: "v6" 
tags: [strategie, architektur, mediator-sweti, beltschew, saeulen, personas, anlass, themen-analyse, b2b-cleanup] 
status: "in-arbeit" 
datum: "14.05.2026" 
vorgänger: "v5 vom 11.05.2026"
date: 2026-05-11 
verbunden_mit:
- "[[MASTERPLAN_v2_März_2026]]"
- "[[seo_aktionen_mai_2026]]"
- "[[index-noindex-merge-schema]]"
- "[[post-klassifikation-mai-2026]]"
- "[[02_b2b_personas_martina_und_andreas]]" 
ersetzt: "Architekturentscheidungen 2026 05 11 v5.md"
---
**Stand:** 14. Mai 2026 
Vorgänger:** v5 vom 11.05.2026 (B2B-Cleanup, Brückenlösung /zielgruppen/, Pre-Check-Methodik, Inhalts-Migration-Standard) 
**Neu in v6:** Drei-Phasen-Modell, Cross-Cluster-FrontMatter-Konvention, Linkbereinigung als Pflicht-Schritt, Karteileichen-Cluster-Konzept, 
Mai-2026-Konsolidierung abgeschlossen

---

## 1. Zweck dieses Dokuments

Das Dokument hält die strukturellen und methodischen Entscheidungen zur Website mediator.sweti.de fest. Es wächst inkrementell mit jeder Konsolidierungs- oder Strukturentscheidung. Jede Version ergänzt die vorhergehende – ältere Festlegungen bleiben gültig, soweit sie nicht ausdrücklich überschrieben werden.

v6 dokumentiert die Mai-2026-Konsolidierung (Cluster 1–4) als abgeschlossenes Vorhaben und etabliert das Drei-Phasen-Modell als verbindlichen Standard für künftige Konsolidierungen.

---

## 2. Domain- und Inhaltsarchitektur (unverändert seit v5)

Zwei Domains, zwei Zielgruppen:

|Domain|Zielgruppe|Tonalität|
|---|---|---|
|mediator.sweti.de|Privatpersonen 50+|ruhig, klar, einladend, „Sie"|
|beltschew.de|Organisationen, KMU, IT, Behörden|sachlich, analytisch, verbindlich|

Inhaltsstruktur auf mediator.sweti.de:

|Pfad|Funktion|
|---|---|
|/angebote/|Angebots-Landingpages – Conversion-orientiert|
|/post/|Fachartikel und Blogbeiträge – SEO und Vertrauen|
|/themen/|Pillarseiten – thematische Bündelung|
|/zielgruppen/|Zielgruppen-spezifische Brücken (siehe Abschnitt 4)|
|/mediator-dresden/|Zentrale Seite – primäre Lokal-Landingpage|

---

## 3. Zwei-Stufen-Modell der Konsolidierung (aus v5, präzisiert)

Die Konsolidierungsarbeit ist in zwei methodisch getrennte Stufen organisiert. Inhaltlich können sie über Inhalts-Migration eine Brücke bilden, aber sie folgen unterschiedlichen Auslösern und Verfahren.

**Stufe A – /angebote/-Konsolidierung** Auflösung redundanter Angebots-Landingpages, Schärfung der HAUPT-Seiten je Themenfeld. **Mit der Mai-2026-Konsolidierung (Cluster 1–4) ist Stufe A vollständig abgeschlossen.** Die /angebote/-Struktur ist konsolidiert und stabil.

**Stufe B – /zielgruppen/-Auflösung** Auflösung der vier /zielgruppen/-Seiten und der Taxonomie `angebote` aus hugo.toml. Diese Stufe steht noch aus und folgt der Auslöser-Logik aus Abschnitt 4.

---

## 4. Auslöser-Logik für Stufe B (unverändert seit v5)

Zwei Auslöser sind definiert:

**Auslöser B (primär, passiv):** Google-Crawling-Beobachtung der /zielgruppen/-Seiten in GSC. Solange noch organischer Traffic eingeht, bleibt die Brückenlösung bestehen. Sweti entscheidet anhand der Daten, ob und wann eine aktive Auflösung sinnvoll wird.

**Auslöser A (spätestens, aktiv):** Überarbeitung der Startseite. Bei diesem Anlass werden alle vier /zielgruppen/-Seiten gelöscht und die Taxonomie `angebote` aus hugo.toml entfernt. Die Redirect-Entscheidung wird situativ getroffen, nicht vorab fixiert.

Aktuelle Brückenlösung (Stand v5, weiterhin gültig):

- 3 B2B-/zielgruppen/-Seiten haben `angebote: ["praxisaufbau-mediation-dresden"]` und einen Hinweis auf beltschew.de
- 1 Privatpersonen-/zielgruppen/-Seite bleibt unverändert

---

## 5. Drei-Phasen-Modell der Cluster-Konsolidierung _(NEU in v6)_

Dies ersetzt die in v5 (Abschnitt 9) noch vorgesehene Drei-Schritt-Methodik pro Cluster durch eine sauberere Trennung von inhaltlicher und technischer Arbeit. Die Mai-2026-Konsolidierung lief erstmals nach diesem Modell und hat sich bewährt.

### Phase 1 – Inhaltliche Migration (pro Cluster, iterativ)

```
1.1  Analyse + Migrations-Vorschlag (Claude)
     - Beide oder mehrere Dateien lesen
     - Inhalts-Vergleich
     - GSC-Daten der Quell-Seite besprechen (falls verfügbar)
     - Suchabsicht der Quell-Seite rekonstruieren
     - Konkrete Migrations-Anweisungen erarbeiten

1.2  Entscheidung (Sweti)
     - Übernehmen, anpassen oder ablehnen

1.3  Fertige HAUPT-Seite (Claude liefert _index.md)
     - Vollständige neue _index.md der HAUPT-Seite
     - Sweti kann sie direkt einsetzen

1.4  Einsetzen ins Hugo-Repo (Sweti)
     - _index.md ersetzen
     - Git-Commit lokal

1.5  Pro-Cluster-Pre-Check mit ripgrep
     - Verifikation, dass keine Verweise in lebenden Dateien bleiben

→ Wiederholen für Cluster 2, 3, …
```

Phase 1 ist iterativ. Pro Cluster eine eigene Session ist möglich, aber auch zwei oder drei Cluster in einer Session sind denkbar – je nach Komplexität und Konzentration.

### Phase 2 – Technische Konsolidierung (gesammelt für alle Cluster)

Erst nach Abschluss von Phase 1 für alle Cluster:

```
2.1  Gesamt-Pre-Check über alle alten Slugs
     - rg-Suche für alle zu löschenden Slugs auf einmal

2.2  Git-Commit: alle migrierten HAUPT-Seiten
     - Sauberer Wiederherstellungspunkt

2.3  Linkbereinigung in lebenden Dateien
     - Externe relref- und absolute-URL-Verweise umverlinken
     - Verifikation: erneuter Pre-Check, Output leer

2.4  .htaccess: alle 301-Redirects einfügen
     - Block "Konsolidierung [Datum]" mit allen Redirects

2.5  Lösch-Befehl ausführen
     - Remove-Item der obsolet gewordenen Quell-Ordner

2.6  Build + Deploy

2.7  httpstatus.io-Check für alle alten URLs
     - Verifikation: alle 301 → 200, keine Ketten
```

### Phase 3 – Nachverfolgung (gemeinsam)

```
3.1  GSC-Beobachtung 1-3 Wochen
     - Sind die alten URLs als „Weitergeleitet" gelistet?
     - Bleiben die HAUPT-Seiten in Position?
     - Steigen einzelne HAUPT-Seiten in Position?
```

---

## 6. Cross-Cluster-FrontMatter-Konvention _(NEU in v6)_

Etabliert während der Mai-2026-Konsolidierung. Gilt verbindlich für alle künftigen HAUPT-Seiten-Anpassungen in /angebote/. Die Konvention sorgt für strukturelle Konsistenz und vermeidet Hugo-Build-Risiken durch Felder-Doppelungen.

**Verbindliche Regeln:**

- `categories: ["marketing"]` (statt `["angebote"]` oder gemischter Schreibweisen)
- Keywords im YAML-Listen-Format mit Bindestrich pro Eintrag (statt Inline-Array)
- Keine Felder-Doppelungen im FrontMatter (z. B. `categories` zweimal)
- `description` und `summary` auf die migrierten Such-Intentionen ausrichten, nicht nur auf die bisherige HAUPT-Seite

Beispiel-FrontMatter (Mindeststruktur):

```yaml
---
title: "..."
description: "..."
summary: "..."
categories: ["marketing"]
keywords:
  - "..."
  - "..."
slug: "..."
url: "/angebote/.../"
date: 2026-...-...
draft: false
toc: true
author: "Swetoslaw Beltschew"
---
```

---

## 7. Pre-Check-Methodik mit ripgrep _(aus v5, präzisiert in v6)_

Standard-Verfahren für die Verifikation, dass keine internen Verweise auf eine Quell-URL mehr in lebenden Dateien existieren.

**PowerShell-konforme Ausführung:**

- Drei einzelne Befehlszeilen statt Mehrzeilen-Kommandos mit Backticks
- Einfache Anführungszeichen statt doppelte (robust gegen PowerShell-Quirks)
- Glob-Ausschlüsse für alle Cluster-relevanten Ordner

**Pro-Cluster-Pre-Check (Phase 1, Schritt 1.5):**

```powershell
$t = rg -n --type md -e '/angebote/<quell-slug>' content/ -g '!content/angebote/<quell-slug>/**' -g '!content/angebote/<haupt-slug>/**'
```

```powershell
$t | Select-String 'relref'
```

```powershell
$t | Select-String 'relref' -NotMatch
```

**Gesamt-Pre-Check (Phase 2, Schritt 2.1):** Mehrere `-e`-Patterns und alle Cluster-Ordner als Ausschlüsse, in derselben Dreiteilung.

**Auswertung:**

- Block A (`relref`-Treffer): Build-kritisch nach Löschung der Quell-Datei → müssen umverlinkt werden
- Block B (Treffer ohne `relref`, also absolute URLs): .htaccess-301 greift, aber ein Redirect-Hop entsteht → bereinigen wird empfohlen

---

## 8. Linkbereinigung als Pflicht-Schritt vor Löschung _(NEU in v6)_

Methodische Erkenntnis aus der Mai-Konsolidierung, jetzt verbindlich:

**Wenn `relref`-Aufrufe in lebenden Dateien auf eine Quell-Seite zeigen, scheitert der Hugo-Build, sobald die Quell-Datei gelöscht wurde.** Eine reine .htaccess-301-Lösung reicht nicht – sie wirkt erst am Webserver, nicht beim Hugo-Build.

Verbindlicher Workflow:

1. Pre-Check identifiziert alle externen Verweise
2. Verweise in lebenden Dateien werden umverlinkt (auf die neue HAUPT-Seite)
3. Erneuter Pre-Check verifiziert, dass keine Treffer mehr vorliegen
4. Erst dann darf die Quell-Datei gelöscht werden

Bei der Mai-Konsolidierung wurden 9 Dateien mit insgesamt 15 Vorkommen bereinigt.

---

## 9. Hugo-Aliases vs. .htaccess-301 _(NEU in v6)_

Falls in einer HAUPT-Seite Hugo-`aliases`-Einträge existieren (z. B. von früheren Umbenennungen), müssen sie entfernt werden, sobald ein expliziter .htaccess-301 gesetzt wird. Hugo-Aliases erzeugen einen Meta-Refresh-Redirect im HTML; das ist suboptimal gegenüber einem sauberen HTTP-301 und führt zu konkurrierenden Mechanismen.

Die HAUPT-Seite von Cluster 1 (`coaching-in-uebergaengen`) hatte zwei solche Aliases, die im Zuge der Migration entfernt wurden.

---

## 10. Karteileichen-Cluster _(NEU in v6, als Konzept)_

Definition: Ein Cluster, bei dem die Quell-Seite zwar aufgelöst werden soll, aber **keine Inhalts-Migration nötig** ist – weil die Inhalte bereits in einer anderen HAUPT-Seite abgedeckt sind oder weil die Quell-Seite bereits noindex und ohne aktives Ranking ist.

Vorgehen:

1. Analyse, ob Inhalte bereits anderswo abgedeckt sind
2. Falls ja: reiner Redirect, kein Inhalts-Eingriff an der Ziel-Seite
3. Falls nein: vor Inhalts-Migration prüfen, ob die ursprünglich vorgesehene Ziel-Seite methodisch wirklich passt – ggf. Redirect-Ziel anpassen

Cluster 4 der Mai-Konsolidierung war ein Karteileichen-Cluster: `ruhe-schaffen` (noindex) wurde nicht wie ursprünglich geplant auf `konfliktklaerung-vorbereiten` umgeleitet, sondern auf die Cluster-2-HAUPT, weil die Inhalte (Pflege-Belastung, Schuldgefühle) dort bereits inhaltlich integriert waren.

---

## 11. Geschützte Seiten (aus v5)

Folgende Seiten werden in Konsolidierungen **nicht angetastet**, weil sie eigenständige Funktionen erfüllen oder durch Pillarseiten-Verlinkungen geschützt sind:

- `/angebote/beziehungs-und-familiengespraeche/` – in mehreren Pillarseiten verlinkt
- `/angebote/beziehung-beruhigen/` – noindex, aber in Nachbarschafts-Pillar verlinkt
- `/angebote/konfliktverstehen/` – in Nachbarschafts-Pillar verlinkt
- `/angebote/erbschaftsstreit-mediation-dresden/` – eigenständige Erbe-Landingpage

Aus der /themen/-Analyse vom 11.05.2026: 8 /angebote/-Slugs sind aus Pillarseiten verlinkt; 3 ursprünglich zur Auflösung vorgesehene Seiten bleiben durch Pillarseiten-Schutz erhalten.

---

## 12. Abgeschlossene Konsolidierungen

### B2B-Cleanup (11.05.2026, aus v5)

7 Redirects + Hugo-Löschung. Tabellen-Korrektur in `/nachbarschaftskonflikt-mediation-dresden/`. B2B-Block aus `/themen/mediation-verstehen/` entfernt. Brückenlösung `/zielgruppen/` implementiert.

### Mai-2026-Konsolidierung Cluster 1–4 _(NEU in v6)_

Abgeschlossen am 14.05.2026 nach dem Drei-Phasen-Modell.

|HAUPT|Quelle|Redirect|Bemerkung|
|---|---|---|---|
|/angebote/coaching-in-uebergaengen/|/angebote/orientierung-finden/|orientierung-finden → coaching-in-uebergaengen|**Cluster 1.** Inhalts-Migration: FrontMatter erweitert, Einstieg um Trennung und berufliche Neuorientierung ergänzt, „Typische Situationen" auf 8 Bullets, Sitzungs-Format auf 1–5.|
|/angebote/mediation-bei-pflege-erbe-uebergang-dresden/|/angebote/pflege-reflektieren/|pflege-reflektieren → mediation-bei-pflege-erbe-uebergang-dresden|**Cluster 2, Quelle 1.** Migration: Schuldgefühle und Rollen-Dynamiken in „Pflegeverantwortung klären".|
|/angebote/mediation-bei-pflege-erbe-uebergang-dresden/|/angebote/elder-mediation/|elder-mediation → mediation-bei-pflege-erbe-uebergang-dresden|**Cluster 2, Quelle 2.** Migration: neuer Abschnitt „Elder-Mediation", Fallbeispiel übernommen.|
|/angebote/familienkonflikt-generationen-dresden/|/angebote/klarkommen-generationen/|klarkommen-generationen → familienkonflikt-generationen-dresden|**Cluster 3.** Migration: Präventiv-Komponente als „Wann ein präventives Gespräch sinnvoll ist", Sitzungs-Format auf 1–4.|
|/angebote/mediation-bei-pflege-erbe-uebergang-dresden/|/angebote/ruhe-schaffen/|ruhe-schaffen → mediation-bei-pflege-erbe-uebergang-dresden|**Cluster 4 (Karteileiche).** Keine Inhalts-Migration. Abweichung vom ursprünglichen Prompt: Redirect-Ziel ist die Cluster-2-HAUPT, nicht konfliktklaerung-vorbereiten.|

**Bilanz:**

- 5 Quell-Seiten aufgelöst
- 4 HAUPT-Seiten geschärft (3 mit Inhalts-Migration, 1 mit FrontMatter-Hygiene)
- 9 lebende Dateien mit 15 Linkbereinigungen
- 5 301-Redirects in .htaccess
- httpstatus.io-Verifikation erfolgreich (5/5 korrekt)

---

## 13. Offene Punkte und kommende Entscheidungen

**Stufe B – /zielgruppen/-Auflösung** Wartet auf einen der zwei Auslöser (siehe Abschnitt 4). Aktuell weiterhin in Brückenlösung. GSC-Beobachtung läuft.

**GSC-Nachverfolgung Mai-Konsolidierung** 1–3 Wochen Beobachtung ab 14.05.2026. Indikatoren: Übernahme der 301-Signale für die fünf alten URLs, Positionsentwicklung der vier HAUPT-Seiten, Migration der Suchanfragen.

**PDF-Infopaket auf beltschew.de** `/material/infopaket.pdf` ist veraltet (verlinkt aus `/zielgruppen/_index.md` u. a.). Überarbeitung nach Abschluss der beltschew.de-Neuausrichtung.

**Kontakt-Standards (zur Erinnerung)**

- Calendly: `https://calendly.com/mediator-sweti`
- Standard-Unterschrift: `Dr. Swetoslaw Beltschew / Mediator · Coach · systemischer Berater`
- Lang: `mediator@sweti.de · 0163 803 5634 · mediator.sweti.de · calendly.com/mediator-sweti`
- Punkt-Stil: kleine Punkte (·), keine dicken Bullets (•)
- Qualifikations-Hinweis: „Mediator (zertifiziert nach MediationsG)" – niemals „BM-zertifiziert"

---

## 14. Methodische Erkenntnisse (kumuliert)

Aus v5 weiterhin gültig:

- noindex und UX-Verlinkung sind getrennte Konzepte
- Inhalts-Migration kann eine Brücke zwischen Stufen bilden, ohne ihre Trennung aufzuheben
- Pre-Check vor jeder Lösch-Aktion

Neu in v6 etabliert:

- Linkbereinigung in lebenden Dateien ist Pflicht vor Löschung
- Hugo-Aliases und .htaccess-301 dürfen nicht parallel auf dieselbe URL wirken
- Karteileichen-Cluster brauchen keine Inhalts-Migration, aber prüfen, ob das Redirect-Ziel methodisch passt
- Cross-Cluster-FrontMatter-Konvention sorgt für Konsistenz und Build-Sicherheit
- Trennung von inhaltlicher (Phase 1) und technischer Arbeit (Phase 2) erleichtert Reviews und Rollbacks

---

_Version 6 · Stand 14.05.2026 · Mai-2026-Konsolidierung abgeschlossen · Drei-Phasen-Modell etabliert · Bereit für Phase 3 (GSC-Beobachtung) und künftige Stufe-B-Auflösung_