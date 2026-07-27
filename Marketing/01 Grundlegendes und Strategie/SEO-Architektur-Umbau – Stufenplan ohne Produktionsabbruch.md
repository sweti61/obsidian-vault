---
title: SEO-Architektur-Umbau – Stufenplan ohne Produktionsabbruch
type: seo-strategie
tags:
  - seo
  - gsc
  - indexierung
  - hugo
  - konsolidierung
  - noindex
  - stufenplan
status: aktiv
date: 2026-04-27
verbunden_mit:
  - "[[⨞ Masterplan v2 2026 März]]"
zeitraum: Mai 2026 – Oktober 2026 (6 Monate, kontrollierte Schritte)
ziel: Marketing-Seiten in den Index, Fachblog aus dem SEO-Wettbewerb herausnehmen, Klassifikation der Site neu prägen
---

# SEO-Architektur-Umbau – Stufenplan

## Ausgangslage

|Metrik|Stand 27.04.2026|
|---|---|
|Indexierte Seiten|19|
|Nicht indexierte Seiten|76 (75 "ausstehend" + 1 Umleitungsfehler)|
|Klicks letzte 3 Monate|10|
|Star-Seiten (mit Klicks)|3|
|Schläfer (Impressionen, 0 Klicks)|22|
|Tote Seiten (<5 Impressionen)|34|

## Strategische Grund-Trennung

|Site-Bereich|Funktion|SEO-Status|Maßnahme|
|---|---|---|---|
|`/post/`|Fachblog für Kolleg:innen|unwichtig|**`noindex` setzen**|
|`/angebote/`|Marketing-Landingpages|kritisch|Konsolidieren, schärfen|
|`/themen/`|Pillarseiten|kritisch|Erhalten, optimieren|
|`/leadmagnets/`|Lead-Magnet-Seiten|kritisch|Prüfen, ggf. konsolidieren|
|`/zielgruppen/`|Zielgruppen-Seiten|kritisch|Prüfen, ggf. konsolidieren|
|Startseite, `/contact/`, `/about/`|Anker|kritisch|Erhalten, optimieren|

## Grundprinzip des Stufenplans

**Klein anfangen, beobachten, lernen, skalieren.**

Nicht alle 75 Seiten gleichzeitig anfassen. Stattdessen in fünf Stufen vorgehen, jeweils mit einer Beobachtungsphase von 3–4 Wochen, bevor die nächste Stufe gestartet wird. Begründung:

- Google reagiert langsam (4–6 Wochen) auf strukturelle Änderungen
- Wenn etwas schiefgeht, betrifft es nur eine Teilmenge, nicht die ganze Site
- Wir können aus der Wirkung der ersten Stufe lernen, was die zweite Stufe braucht

---

## STUFE 1 – Sofortmaßnahmen (Woche 1, Mai 2026)

**Ziel:** Risiko-frei, schnell wirksam, keine Inhalte verlieren.

### 1.1 Robots.txt-Audit

**Aktion:** Inhalt von `https://mediator.sweti.de/robots.txt` prüfen.

**Worauf achten:**

- Sind kritische Pfade blockiert? (z.B. `Disallow: /angebote/`)
- Ist die Sitemap referenziert? (`Sitemap: https://mediator.sweti.de/sitemap.xml`)

**Aufwand:** 5 Minuten **Beobachtung:** Sofort

### 1.2 Sitemap-Audit

**Aktion:** `https://mediator.sweti.de/sitemap.xml` öffnen und Inhalt prüfen.

**Worauf achten:**

- Sind alle wichtigen Marketing-Seiten enthalten?
- Sind veraltete Seiten enthalten, die längst entfernt wurden?
- Hat Hugo die Sitemap automatisch aktualisiert?

**Aufwand:** 10 Minuten **Beobachtung:** Sofort

### 1.3 Umleitungsfehler beseitigen

**Aktion:** Den einen "Umleitungsfehler"-Eintrag in GSC identifizieren und behandeln. Falls die alte URL nie existiert hat: Den Eintrag in GSC manuell als "behoben" markieren oder ignorieren – dieser Punkt löst sich von selbst, wenn die Domain weiter sauber ist.

**Aufwand:** 5 Minuten

### 1.4 GBP-UTM-Korrektur

**Beobachtung aus den Daten:** Die Seite mit den meisten Klicks ist `/mediator-dresden/?utm_source=google&utm_medium=organic&utm_campaign=gbp` mit 6 Klicks. Eine zweite Variante `/mediator-dresden/` (ohne UTM) hat 10 Impressionen, 0 Klicks.

**Problem:** Die UTM-Parameter erzeugen eine eigene URL-Variante. Google kann diese als duplizierte Seite werten.

**Aktion:**

- Im GBP-Profil die UTM-Parameter aus dem Website-Link entfernen (nur die saubere URL eintragen)
- Oder kanonisch markieren: `<link rel="canonical" href="https://mediator.sweti.de/mediator-dresden/" />` auf der Seite einfügen, damit Google die Hauptversion versteht

**Aufwand:** 15 Minuten **Beobachtung:** Erstmal weitere Daten beobachten, ob beide Varianten in GSC auseinandergehen

### 1.5 Status-Notiz erstellen

Eine Datei `/seo-baseline-2026-04-27.md` in deinem Obsidian-Vault, in der die aktuelle Datenlage dokumentiert ist:

- 10 Klicks in 3 Monaten
- 19 indexierte Seiten
- 76 nicht-indexierte Seiten
- Top-Suchanfragen (mediator dresden auf Pos 3.3)

**Funktion:** In 3 Monaten vergleichen, ob sich etwas verändert hat.

---

## STUFE 2 – Fachblog isolieren (Woche 2–3, Mai 2026)

**Ziel:** Den `/post/`-Bereich aus der SEO-Konkurrenz herausnehmen, ohne Inhalte zu verlieren.

### 2.1 Drei Sub-Klassen im Blog identifizieren

Schaue alle Blog-Artikel an und sortiere sie in drei Klassen:

**Klasse A – Reine Fachartikel** (Theorie-Begriffe, akademisch, für Kolleg:innen) Beispiele aus den Daten:

- `/post/9-felder-modell-kochernz/`
- `/post/systemische-auftragsklaerung/`
- `/post/klaerungsphase-p2-systemische-mediation/`
- `/post/p4-umsetzungsphase-systemisch/`
- `/post/drei-beobachtungsebenen-simon/`
- `/post/hypothesenbildung-systemische-beratung/`
- `/post/zweiervertrag/`, `/post/dreiervertrag/`
- `/post/harvard-batna/`, `/post/harvard-konzept/`
- `/post/kreationsphase-moeglichkeitsraeume/`

→ Diese werden auf **`noindex`** gesetzt.

**Klasse B – Klienten-orientierte Artikel** (Suchanfragen-relevant für Privatpersonen) Beispiele aus den Daten:

- `/post/streit-nachbarn-laerm-was-tun/`
- `/post/erbe-klaeren-ohne-streit-dresden/`
- `/post/was-kostet-mediation-dresden/`
- `/post/was-ist-mediation-mediator-dresden/`
- `/post/menschen-im-uebergang-ruhestand/`
- `/post/mediation-oder-rechtsanwalt-dresden/`

→ Diese **bleiben indexierbar**, möglicherweise später in andere Pfade verschoben.

**Klasse C – Halb-und-halb** (haben beide Aspekte) Beispiele:

- `/post/ressourcenorientierung-mediation/`
- `/post/konfliktcoaching/`
- `/post/zwischenraeume-wo-wandel-wirklich-passiert/`
- `/post/passivitaet-verstehen-handlung-ermoeglichen/`

→ Erstmal **indexierbar lassen**, in Stufe 4 entscheiden.

**Aufwand:** 1–2 Stunden für die Klassifikation **Beobachtung:** Klassifikations-Arbeit dokumentieren als `/post-klassifikation-mai-2026.md`

### 2.2 Hugo-FrontMatter für Klasse A anpassen

In jedem Klasse-A-Artikel ergänzen:

```yaml
---
title: "..."
# ... bestehende Felder ...
noindex: true
---
```

Bzw. abhängig vom verwendeten Theme: `robotsNoIndex: true` oder `seo.noindex: true` – das ist Theme-spezifisch.

**Wichtig:** Die Artikel bleiben für Menschen sichtbar (interne Links, Direktaufruf, Social Media). Nur Google wird gebeten, sie nicht zu indexieren.

**Aufwand:** 15–30 Minuten pro Artikel, gesamt 4–8 Stunden über mehrere Tage verteilt

### 2.3 Beobachtungsphase Stufe 2

**Dauer:** 3–4 Wochen **Was beobachten:**

- Sinkt die Anzahl indexierter `/post/`-Seiten in GSC?
- Steigt die Anzahl indexierter Marketing-Seiten?
- Verändert sich die Suchanfragen-Verteilung in GSC? (Weniger Fach-Suchen?)
- Veränderung des Crawl-Volumens auf der Site

**Erwartung:** Nach 3–4 Wochen sollten:

- 10–20 Klasse-A-Artikel aus dem Index verschwunden sein
- 5–10 Marketing-Seiten neu in den Index gekommen sein

**Falls die Erwartung nicht eintritt:** Stop. Datenanalyse. Nächste Stufe wird aufgeschoben.

---

## STUFE 3 – Marketing-Bereich kartieren (Woche 4–5, Juni 2026)

**Ziel:** Klare Übersicht, welche Marketing-Seiten erhalten bleiben, welche zusammengeführt werden, welche gelöscht werden.

### 3.1 Vollständige Marketing-Kartierung

Erstelle eine Liste aller URLs außerhalb von `/post/`. Aus deiner CSV ergeben sich (mindestens):

**`/angebote/` (~14 Seiten):**

- `/angebote/erbschaftsstreit-mediation-dresden/`
- `/angebote/mediation-bei-pflege-erbe-uebergang-dresden/`
- `/angebote/orientierung-finden/`
- `/angebote/coaching-in-uebergaengen/`
- `/angebote/konfliktklaerung-vorbereiten/`
- `/angebote/beziehungs-und-familiengespraeche/`
- `/angebote/rolle-klaeren/`
- `/angebote/veraenderung-durchdenken/`
- `/angebote/zusammenarbeit-klaeren/`
- `/angebote/vertrauen-aufbauen/`
- `/angebote/klarkommen-generationen/`
- `/angebote/pflege-reflektieren/`
- `/angebote/praxisaufbau-mediation-dresden/` (NEU – behalten)
- weitere?

**`/themen/` (Pillarseiten):**

- `/themen/erbstreit-familie-klaeren-dresden/`
- `/themen/nachbarschaftskonflikte-klaeren-dresden/`
- `/themen/schwierige-gespraeche-familie/`
- `/themen/mediation-verstehen/`
- `/themen/wenn-eltern-aelter-werden/`

**Zielgruppen-Seiten:**

- `/pflegende-angehoerige-dresden/`
- `/nachbarschaftskonflikt-mediation-dresden/`
- `/mediator-dresden/`
- `/zielgruppen/privatpersonen/`

**Lead-Magnets (5+):**

- `/leadmagnets/in-ruhe-sprechen-familiengespraeche/`
- `/leadmagnets/bevor-das-gespraech-beginnt/`
- `/leadmagnets/klaerungsraum-orientierung/`
- `/leadmagnets/rollenklaerung-mre/`
- `/leadmagnets/zwischen-entscheidung-und-verantwortung/`
- `/leadmagnets/it-projekt-retter-deadlock-loesen/`
- `/leadmagnets/harvard-konzept/`

**Anker:** `/`, `/about/`, `/contact/`, `/dienstleistungen/`, `/zielgruppen/`, `/testimoni/`

### 3.2 Konsolidierungs-Cluster definieren

Für jeden thematischen Cluster: **Eine Hauptseite, der Rest wird per 301-Redirect umgeleitet.**

**Cluster Pflege:**

- HAUPT: `/themen/wenn-eltern-aelter-werden/` (Pillar)
- Redirect → `/pflegende-angehoerige-dresden/`
- Redirect → `/angebote/pflege-reflektieren/`
- Behalten als ergänzend: `/angebote/mediation-bei-pflege-erbe-uebergang-dresden/`

**Cluster Erbe:**

- HAUPT: `/themen/erbstreit-familie-klaeren-dresden/` (Pillar)
- Redirect → `/angebote/erbschaftsstreit-mediation-dresden/`
- Behalten: `/post/erbe-klaeren-ohne-streit-dresden/` (Klienten-relevanter Blogartikel)

**Cluster Nachbarschaft:**

- HAUPT: `/themen/nachbarschaftskonflikte-klaeren-dresden/`
- Redirect → `/nachbarschaftskonflikt-mediation-dresden/`
- Behalten: `/post/streit-nachbarn-laerm-was-tun/`
- Behalten: `/post/nachbarschaft/`

**Cluster Familiengespräche:**

- HAUPT: `/themen/schwierige-gespraeche-familie/`
- Redirect → `/angebote/beziehungs-und-familiengespraeche/`

**Cluster "Übergänge/Coaching":**

- HAUPT: zu definieren
- Redirect → `/angebote/coaching-in-uebergaengen/`
- Redirect → `/angebote/orientierung-finden/`
- Redirect → `/angebote/veraenderung-durchdenken/`
- Redirect → `/angebote/rolle-klaeren/`

**Cluster "Zusammenarbeit/Vertrauen" (B2B-Lite):**

- HAUPT: zu prüfen, ggf. nach beltschew.de auslagern
- `/angebote/zusammenarbeit-klaeren/`
- `/angebote/vertrauen-aufbauen/`
- `/angebote/konfliktklaerung-vorbereiten/`

**Cluster "Klarkommen Generationen":**

- HAUPT: `/angebote/klarkommen-generationen/`
- Behalten – ist eigenständige Zielgruppe (erwachsene Kinder + alte Eltern)

### 3.3 Lead-Magnet-Cluster

**Aktive Lead-Magnets** (gehört in den Trichter, bleibt):

- `/leadmagnets/in-ruhe-sprechen-familiengespraeche/` (LM 1, live)
- `/leadmagnets/bevor-das-gespraech-beginnt/` (LM 2, live)

**Lead-Magnet-Karteileichen** (löschen oder nach beltschew.de auslagern):

- `/leadmagnets/klaerungsraum-orientierung/`
- `/leadmagnets/rollenklaerung-mre/`
- `/leadmagnets/zwischen-entscheidung-und-verantwortung/`
- `/leadmagnets/it-projekt-retter-deadlock-loesen/`
- `/leadmagnets/harvard-konzept/`

→ Vorschlag: Diese 5 entweder löschen (mit 301-Redirect zur Startseite oder zur passenden Pillarseite) oder nach beltschew.de auslagern, wenn sie B2B-relevant sind.

### 3.4 Ergebnis Stufe 3

Eine vollständige Konsolidierungs-Kartierung als Datei `/marketing-konsolidierung-juni-2026.md` mit:

- Welche URL bleibt, welche wird umgeleitet, welche wird gelöscht
- Pro Redirect: Quelle → Ziel
- Pro gelöschter URL: Begründung

**Aufwand:** 4–6 Stunden **Beobachtung:** Diese Stufe ist nur Planung, noch keine Aktion.

---

## STUFE 4 – Konsolidierung umsetzen (Woche 6–8, Juli 2026)

**Ziel:** Schrittweise Umsetzung der in Stufe 3 geplanten Konsolidierung.

### 4.1 Erste Welle – Lead-Magnet-Karteileichen (Woche 6)

Beginne mit den 5 Lead-Magnet-URLs, die nicht aktiv genutzt werden.

**Pro URL:**

1. Inhalt prüfen: Ist hier noch etwas Wertvolles drin, das auf eine andere Seite migriert werden sollte?
2. Wenn ja: Inhalt extrahieren und in passende Hauptseite einarbeiten
3. URL löschen
4. 301-Redirect setzen → Hauptseite oder Startseite
5. Aus Hugo-Seitenstruktur entfernen
6. In GSC-Sitemap aktualisieren

**Aufwand:** 30–60 Minuten pro URL, gesamt 3–5 Stunden **Beobachtung:** 1 Woche warten, dann GSC prüfen

### 4.2 Zweite Welle – Angebot-Karteileichen (Woche 7)

Die `/angebote/`-Cluster, die zu `/themen/`-Pillarseiten redirected werden:

**Pro URL:**

1. Inhalt extrahieren
2. Falls auf der Ziel-Pillarseite ergänzungsbedürftig: einarbeiten
3. URL löschen
4. 301-Redirect setzen
5. Sitemap aktualisieren

**Wichtig:** Die Pillarseite muss **vorher** stark genug sein, um die Redirects zu rechtfertigen. Falls die Pillarseite dünn ist: erst inhaltlich stärken, dann redirecten.

**Aufwand:** 1–2 Stunden pro URL (wegen Inhaltsmigration) **Beobachtung:** 2 Wochen warten

### 4.3 Beobachtungsphase Stufe 4

**Dauer:** 2–3 Wochen **Was beobachten:**

- Werden die 301-Redirects von Google erkannt? (In GSC: "Indexierungsstatus" der alten URL sollte auf "Weitergeleitet" wechseln)
- Werden die Ziel-Seiten häufiger gecrawlt?
- Steigt die Position der Ziel-Seiten?
- Sinkt die Anzahl der nicht-indexierten Seiten?

**Erwartung:** Nach Stufe 4 sollten:

- Die nicht-indexierten Seiten von 75 auf 30–40 sinken
- Die Marketing-Pillarseiten in GSC auftauchen
- Erste organische Klicks aus generischen Suchanfragen

---

## STUFE 5 – Pillarseiten schärfen (Woche 9–14, August/September 2026)

**Ziel:** Die verbliebenen Marketing-Hauptseiten so stark machen, dass sie in der Top-10 ranken.

### 5.1 Pillarseiten-Audit

Pro Pillarseite eine eigene Detailprüfung:

**Audit-Fragen:**

- Sind mindestens 1.500 Wörter substantieller Inhalt da?
- Wird die zentrale Suchanfrage in Title und ersten 100 Wörtern aufgenommen?
- Gibt es eine klare Strukturierung mit H2/H3?
- Werden 3–5 sekundäre Suchanfragen abgedeckt?
- Gibt es einen klaren CTA?
- Ist die Seite intern stark verlinkt?
- Lädt sie schnell?
- Gibt es ein Bild mit Alt-Text?

### 5.2 Pillarseiten in der Reihenfolge der Wirkung

**Priorität 1 – höchstes Suchvolumen, schnellste Conversion:**

- `/themen/erbstreit-familie-klaeren-dresden/`
- `/themen/wenn-eltern-aelter-werden/`
- `/themen/nachbarschaftskonflikte-klaeren-dresden/`

**Priorität 2 – mittleres Volumen:**

- `/themen/schwierige-gespraeche-familie/`
- `/themen/mediation-verstehen/`

**Pro Pillarseite:**

- 4–8 Stunden Schreib- und Optimierungsarbeit
- Vor Veröffentlichung gegen GSC-Suchanfragen-Liste prüfen
- Nach Veröffentlichung: manuell Indexierung in GSC anfordern
- 2–3 Wochen Beobachtung

### 5.3 Beobachtungsphase Stufe 5

**Dauer:** 4–6 Wochen pro Pillarseite **Was beobachten:**

- Position in GSC für die Hauptsuchanfrage
- Klick-Rate (CTR)
- Verweildauer auf der Seite (in GA4)
- Conversion-Rate (Calendly-Klicks)

---

## STUFE 6 – Stabilisierung und Beobachtung (Oktober 2026)

**Ziel:** Den neuen Zustand stabilisieren, bevor neue Inhalte dazukommen.

**Maßnahmen:**

- Keine neuen Marketing-Seiten produzieren
- Fachartikel im Blog können weiterlaufen (mit `noindex` automatisch)
- Existierende Pillarseiten regelmäßig erweitern, statt neue zu erstellen
- Wöchentliche GSC-Beobachtung

**Erwartung Ende Oktober 2026:**

- 25–35 indexierte Seiten (statt 19)
- 30–50 Klicks/Monat (statt 3)
- 1–3 Erstgespräche/Monat aus organischer Suche
- Klare Suchanfragen-Verteilung mit erkennbaren Klienten-Suchen (nicht nur Fach-Suchen)

---

## Abbruch- und Rückbau-Bedingungen

**Stop-Bedingung A:** Wenn nach Stufe 2 die indexierten Seiten **deutlich sinken** (unter 15) statt zu steigen, ist die `noindex`-Strategie für Fachartikel falsch. Dann muss umgekehrt werden.

**Stop-Bedingung B:** Wenn die 301-Redirects in Stufe 4 nicht funktionieren (Hugo-Theme-Problem oder Server-Konfiguration), ist die Konsolidierung zu unterbrechen.

**Stop-Bedingung C:** Wenn die Klicks insgesamt sinken (statt zu steigen), nach jeder Stufe Pause und Datenanalyse.

---

## Zeitplan in der Übersicht

|Stufe|Wochen|Datum|Aufwand|Hauptergebnis|
|---|---|---|---|---|
|1 – Sofort|1|KW 19/2026|1–2 h|Robots/Sitemap/UTM bereinigt|
|2 – Fachblog|2–3|KW 20–21|8–12 h|30–40 `/post/`-Artikel auf `noindex`|
|Beobachtung|4–5|KW 22–23|–|GSC-Trend prüfen|
|3 – Kartierung|6|KW 24|4–6 h|Konsolidierungs-Plan|
|4 – Konsolidierung|7–10|KW 25–28|15–20 h|15–25 URLs gelöscht/umgeleitet|
|Beobachtung|11–12|KW 29–30|–|GSC-Trend prüfen|
|5 – Pillarseiten|13–22|KW 31–40|30–40 h|5 Pillarseiten geschärft|
|6 – Stabilisierung|23–26|KW 41–44|5–10 h|Konsolidiertes Ergebnis|

**Gesamtaufwand:** 65–95 Stunden über 6 Monate. **Bei 2 Tagen/Woche frei:** ca. 4–6 Stunden pro Woche, gut machbar.

---

## Dokumentation & Beobachtung

Pro Stufe eine Notiz in deinem Obsidian-Vault:

- `seo-baseline-2026-04-27.md` (Vor-Zustand)
- `seo-stufe-1-sofortmassnahmen.md`
- `seo-stufe-2-fachblog-isoliert.md`
- `seo-stufe-3-konsolidierungsplan.md`
- `seo-stufe-4-konsolidierung-umgesetzt.md`
- `seo-stufe-5-pillarseiten.md`
- `seo-monatsbilanz-mai-2026.md`, `seo-monatsbilanz-juni-2026.md` etc.

In jeder Monatsbilanz festhalten:

- Indexierte Seiten (Zahl)
- Nicht-indexierte Seiten (Zahl)
- Klicks (letzte 30 Tage)
- Top 5 Suchanfragen mit Position
- Erstgespräche aus organischer Suche
- Beobachtete Auffälligkeiten

---

## Erwartete Erfolge im Zeitverlauf

|Zeitpunkt|Indexiert|Klicks/Monat|Erstgespräche/Monat|Bemerkung|
|---|---|---|---|---|
|April 2026|19|3|0|Ausgangslage|
|Juni 2026|25–30|5–10|0–1|Nach Stufe 2|
|August 2026|22–28|10–20|0–2|Während Konsolidierung|
|Oktober 2026|25–35|30–50|1–3|Stabilisierung|
|Januar 2027|30–40|50–80|2–5|Volle Wirkung|

**Wichtige Realitätscheck-Anmerkung:** Diese Erwartungen sind optimistisch-realistisch. SEO-Effekte sind langsam und nicht garantiert. Die Maßnahmen erhöhen die Wahrscheinlichkeit, aber sie erzwingen kein Ergebnis.

---

## Was nicht in diesen Plan gehört

- Bezahlte SEO-Maßnahmen (Backlink-Aufbau, Premium-Tools)
- Komplett-Relaunch der Site
- Wechsel des Hugo-Themes
- AI-generierte Massenartikel zur Auffüllung
- Google Ads-Kampagnen

Diese Maßnahmen würden den Aufwand verdoppeln, ohne klare Verbesserung zu bringen. Der Plan setzt darauf, die bestehende Site zu schärfen, nicht zu erweitern.

---

_Stand: 27. April 2026 · Stufenplan für SEO-Architektur-Umbau · Beobachtung in Wochen-Schritten · Gesamtdauer 6 Monate_