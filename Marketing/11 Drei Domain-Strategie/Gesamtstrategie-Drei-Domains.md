---
title: "Gesamtstrategie: beltschew.de, sweti.de, mediator.sweti.de"
created: 2026-08-29
tags:
  - seo
  - mediation
  - beltschew.de
  - sweti.de
  - mediator.sweti.de
  - strategie
aliases:
  - Drei-Domain-Strategie
  - SEO Masterplan v3
status: aktiv
---

# Gesamtstrategie: Drei-Domain-Setup

Stand: 29.08.2026

## Überblick

Das Geschäft läuft über drei getrennte Domains mit klar getrennten Rollen. Diese Aufteilung ist der aktuelle, dauerhaft geplante Zielzustand, keine Übergangslösung.

| Domain | Rolle | Zielgruppe | Status |
|---|---|---|---|
| [[beltschew.de]] | B2B-Marketing, organische Sichtbarkeit | Verwaltungen, kommunale IT-Dienstleister, Organisationen Sachsens | Live seit März 2026, 8/23 URLs indexiert, aktiv in Optimierung |
| [[sweti.de]] | B2C-Marketing, organische Sichtbarkeit | Privatpersonen: Familie, Nachbarschaft, Betriebsübergabe, Pflege, Erbe | Live seit 26.08.2026, noch keine Maßnahmen |
| [[mediator.sweti.de]] | Reputations- und Content-Backend, keine Indexierungsziele mehr | Mediator-Kolleg:innen, Ausbildung, Vorträge, Nachweis von Kompetenz für beide Marketing-Domains | Vollständig deindexiert seit März 2026, bewusst nicht mehr für SEO optimiert |

## beltschew.de

- Zielgruppe: KMU, Verwaltungen, kommunale Verwaltung, staatliche und kommunale Dienstleister
- Angebot: Mediation im Team, Konflikt-Coaching, systemische Konfliktberatung, Organisationsentwicklung
- Live seit März 2026, HUGO als CMS
- GSC-Status (23.08.2026): 23 URLs gesamt, 8 indexiert (alle Zielgruppenseiten), 13 "Gefunden, zurzeit nicht indexiert" (alle Services), 7 "Gecrawlt, zurzeit nicht indexiert" (u.a. /about/, /kontakt/, /haltung/, /arbeitsweise/, /zielgruppen/-Übersicht, 2 HUGO-Tag-Seiten)

### Erledigt
- Kritischer Fehler in robots.txt behoben (Sitemap zeigte auf nicht existierende Subdomain `mediator.beltschew.de` statt `beltschew.de`)
- Sitemap mit aktualisiertem `lastmod` für alle 13 Service-Seiten neu eingereicht
- `noindex`, Canonical und Sitemap-Eintrag für die 13 Service-Seiten geprüft, alle unauffällig
- JSON-LD (LocalBusiness/Organization, Person) implementiert und im Rich-Results-Test validiert
- JSON-LD ergänzt: echtes Bild statt Website-Screenshot, `areaServed: Sachsen`
- Diagnose Near-Duplicate-Content-Hypothese für /about/: kanonische URL von Google noch nicht ermittelt, da die Seite den Indexierungs-Filter noch nicht passiert hat, Hypothese damit weder bestätigt noch verworfen

### Offen
- JSON-LD: `telephone` ergänzen
- Manuelle Indexierung für 3 der 13 Service-URLs beantragen (je eine aus den drei Hauptkategorien Mediation, Konflikt-Coaching, Konfliktberatung), danach beobachten
- Screaming-Frog-Check der internen Linkstruktur: Inlinks, Crawl Depth und Orphan-Pages-Report für /about/, /haltung/, /arbeitsweise/, /kontakt/ im Vergleich zu den indexierten Zielgruppenseiten
- Title/Description-Differenzierung der drei Hauptservices prüfen und ggf. schärfen
- GSC-Performance-Report der indexierten Zielgruppenseiten prüfen (Impressionen/Klicks als Indikator, ob grundsätzliches Domain-Vertrauen besteht)
- Diagnose der zwei HUGO-Tag-Seiten unter den 7 "Gecrawlt, nicht indexiert" (voraussichtlich `noindex, follow` + robots.txt-Disallow analog zur mediator.sweti.de-Logik)

## sweti.de

- Zielgruppe: Privatpersonen 50+ mit Konflikten in Familie, Nachbarschaft, Betriebsübergabe, Pflege und Erbe
- Angebot: Mediation, insbesondere Elder-Mediation, Gesprächsvorbereitung in Konfliktsituationen, Begleitung nach Erbstreit und bei Betriebsübergabe, Pflege und Übergang zur Rente
- Live seit 26.08.2026, GSC am selben Tag vollständig eingerichtet
- Struktur: Startseite plus fünf Unterseiten (Angebote, Häufige Fragen, Aktuelles, Über mich, Kontakt), sehr schlank
- Erwähnt ein "Praxisaufbauprogramm 2026/2027" mit kostenfreien Mediationen für Familien und Nachbarschaften in Dresden
- Verlinkt zentrale "Mehr erfahren"-CTAs sowie eine Fallgeschichte auf mediator.sweti.de

### Geplant
- Keine aktiven Maßnahmen vor Mitte September 2026 (Domain zu jung für sinnvolle Diagnose)
- Ab Mitte September: gleiche technische Grundprüfung wie bei beltschew.de (Sitemap, robots.txt, JSON-LD, interne Verlinkung)

## mediator.sweti.de

- Rolle ab sofort: reines Reputations- und Content-Backend, kein Ziel für organische Google-Sichtbarkeit mehr
- Funktion: persönliches fachliches Notizbuch, Orientierung für Mediator-Kolleg:innen, Material für Ausbildungen und Vorträge, anonymisierte Fallreflexion nach Maßgabe des Mediationsgesetzes
- Wird weiter mit Blogartikeln in der etablierten, charakteristischen Struktur, dem gewohnten Argumentationsmuster und Formulierungsrhythmus gepflegt (aktuell ca. 2 Artikel pro Monat, ca. 80 Artikel in 3 Jahren)
- Einbindung erfolgt über LinkedIn-Posts sowie über Verlinkungen von den Angebotsseiten von beltschew.de und sweti.de als Kompetenz- und Reputationsnachweis
- Vollständig deindexiert seit dem Core Update im März 2026 (Peak 86 indexierte Seiten am 05.04.2026, Absturz auf 0 bis 05.05.2026), keine manuelle Maßnahme in GSC

### Warum keine weitere Indexierungs-Optimierung mehr verfolgt wird
Die Deindexierung wird nicht mehr allein als "junge Domain mit schwacher EEAT" erklärt, sondern als plausible Überschneidung mit dem Muster, das Google seit der Spam-Richtlinie zu Scaled Content Abuse (eingeführt März 2024, verschärft durchgesetzt im Core-Update März 2026) algorithmisch zu erkennen versucht: viele thematisch ähnliche Artikel, gleichbleibende Struktur, wenig externe Zitate, anonymisierte statt konkrete Fallbeispiele.

Bei mediator.sweti.de sind das jedoch keine Qualitätsmängel, sondern zwingende Folgen der Funktion der Seite:
- Gleichartige Struktur und Formulierungsrhythmus, weil der Blog als persönliches Notizbuch von einer einzigen, konsistenten Stimme geschrieben wird
- Anonymisierte, fast hypothetisch klingende Fallbeispiele, weil das Mediationsgesetz keine andere Darstellungsform erlaubt
- Fehlende Primärquellen bei etablierten Konzepten (Harvard-Prinzip, 9-Felder-Modell, Bedürfnispyramide), weil es für diese in der Beraterszene gängigen, vielfach bearbeiteten Konzepte keine sinnvoll zitierbaren Primärquellen gibt

Eine Anpassung des Contents an das, was der Algorithmus vermutlich erwarten würde, würde die eigentliche Funktion der Seite zerstören. Deshalb: organische Sichtbarkeit wird auf beltschew.de und sweti.de verlagert, mediator.sweti.de bleibt unverändert in seiner bisherigen Funktion.

## Verlinkungslogik zwischen den Domains

- Links von beltschew.de und sweti.de auf mediator.sweti.de gelten als funktional inert für die Linkkraft (die Zielseiten sind nicht indexiert, Linkkraft verpufft derzeit), aber wertvoll für Nutzerführung und Kompetenzdarstellung
- Kein erhöhtes Risiko für beltschew.de/sweti.de durch diese Verlinkung, da mediator.sweti.de keine manuelle Maßnahme oder Spam-Einstufung hat, sondern eine algorithmische Qualitätsbewertung; die "Bad Neighborhood"-Logik von Google bezieht sich ausdrücklich auf Spam-/Linkschema-Fälle
- Theoretisches, nicht bestätigtes Restrisiko: falls Google die drei Domains als zusammenhängendes Entitäts-Cluster behandelt (gleiches Schema.org-Personenprofil, gleiche NAP-Daten), könnte eine schwache Domain im Cluster ein leiser Kontextfaktor sein; wird beobachtet, insbesondere beim nächsten Core Update
- Setup gilt als dauerhaft; vollständige Domain-Trennung würde nur bei erkennbarem negativem Cluster-Effekt erneut geprüft, bisher nicht beobachtet

## Nächste Schritte (Reihenfolge)

1. beltschew.de: Screaming-Frog-Check der internen Linkstruktur + Title/Description-Differenzierung der drei Hauptservices *(aktueller Fokus)*
2. beltschew.de: verbleibende JSON-LD-Ergänzung (`telephone`), manuelle Indexierung von 3 Service-URLs, Performance-Report-Check
3. Ab Mitte September 2026: sweti.de technische Grundprüfung
4. Laufend: mediator.sweti.de als Backend pflegen, keine SEO-Maßnahmen mehr für Indexierung

## Verwandte Notizen

- [[HUGO SEO-Konfiguration]]
- [[Maßnahmen nach EEAT-Dimensionen]]
- [[SEO-EAT-Masterplan v2]]
- [[To-Do EETA]]
- [[To-Do GBA]]
- [[To-Do SEO]]
