---
title: "Phase C – Site-Komplettierung und Begleit-Material beltschew.de"
type: "marketing"
tags: [phase-c, beltschew, site, personalseiten, startseite, infopaket, drei-felder, strategie]
date: 2026-05-08
status: "abgeschlossen"
phase: "C"
related:
  - "[[00 - Phase A – Strategische Grundlage beltschew.de]]"
  - "[[02 - Phase B – Site-Schärfung beltschew.de]]"
---

# Phase C – Site-Komplettierung und Begleit-Material beltschew.de

## Zweck dieses Dokuments

Diese Synthese fasst die Arbeit der Phase C zusammen: die **Komplettierung der Site beltschew.de** durch Schärfung der Personal- und Startseiten plus die Erstellung eines **Begleit-PDFs** ("Infopaket") für Direktansprache und Download.

Sie ist Bezugspunkt für:
- künftige Konversationen, in denen auf konkrete Liefer-Entscheidungen referenziert werden muss
- Folge-Phasen (D – Sichtbarkeit/LinkedIn/Outreach, E – Übergang nach 1.10.2027)
- spätere Überarbeitung einzelner Seiten oder des Infopakets

---

## Ausgangslage zu Phase C

Phase B endete mit einer vollständig Phase-A-konsistenten Service- und Zielgruppen-Ebene. Was in Phase B noch offen blieb:

- **Personalseiten** (`/about/`, `/arbeitsweise/`, `/haltung/`, `/contact/`) — bei der Cross-Link-Verifikation als clean bestätigt, aber inhaltlich noch nicht systematisch auf Phase-A-Konsistenz geprüft
- **Startseite** (`/_index.md` im Root) — textlastig, mit Coach-Markern, ohne sichtbare Drei-Felder-Logik im Markdown-Content
- **PDF-Infopaket** `/material/infopaket.pdf` — veraltet, mit Privatpersonen-Anteilen, falschem Calendly-Link und Generation-A-Inhalten

Ziel der Phase C: **Site-Komplettierung auf einheitlicher Phase-A-Position** plus ein **kompaktes Begleit-PDF**, das Direktansprache und Site-Download bedient.

---

## Was in Phase C geliefert wurde

### Startseite

**`/content/_index.md`** neu strukturiert:
- Hero-Headline neu: *"Konflikte klären, ohne Beziehungen zu beschädigen"*
- Eingangsabsatz mit Drei-Verfahren-Logik
- Inline-CTA zum Calendly
- "Für wen ich arbeite" als kompakte Bullet-Liste
- Nächster Schritt mit Calendly + E-Mail
- Frontmatter erweitert um `featured_services` mit den drei Hauptseiten-Slugs

**`data/features.json`** umgewidmet:
- Vorher: Mediation, Coaching, Systemische Beratung (Generation A)
- Nachher: KRO, MRE, Reflexionszirkel Führung (methodische Spezialformate)

**Wirkung der Architektur:**
Die Startseite zeigt nun zwei klare Ebenen — **Service-Karten oben** mit Klick auf die drei Hauptseiten (Mediation/Konflikt-Coaching/Konfliktberatung) und **Säulen-Block unten** mit den drei methodischen Spezialformaten. Damit ist die gesamte Site-Architektur in einem Sichtbereich repräsentiert.

**Was wegfiel:**
- "Was mich nach Dresden geführt hat" — gehört auf /about/
- "Mein Ansatz" — gehört auf /haltung/
- "Qualifikation & Ausbildung" — gehört auf /about/
- "Mein Angebot im Überblick" — durch Service-Karten ersetzt

### Personalseiten

**`/about/`** geschärft:
- Eingangsabsatz neu: *"Über 30 Jahre Erfahrung in der Verwaltung in Sachsen"* (Compliance-sicher, Insider-Position sichtbar)
- Insider-Marker eingebettet: TVöD, ITIL, OZG, Personalrats-Beteiligung
- INKOVEMA von dreimal auf zweimal reduziert
- Coach-Marker entfernt (*"achtsam"*, *"Du bleibst ruhig, wenn es laut wird"*, *"sachliche Präsenz"*)
- KMU und sozialer Sektor entfernt
- Drei-Felder-Bezeichnung aktualisiert
- *"online europaweit möglich"* entfernt — Phase-A ist Sachsen

**`/arbeitsweise/`** geschärft:
- Sechs methodische Prinzipien als Generation-B-Substanz erhalten
- *"Komplexe Situationen"* → *"Komplexe Konfliktlagen"* (Phase-A-Schärfung)
- *"Räume"* → *"Rahmen"* (Stimme B+C)
- "Typische Situationen" komplett neu mit Persona-Bezug (Martina, Andreas)
- Privatpersonen-Spur entfernt

**`/haltung/`** geschärft:
- Fünf Haltungs-Prinzipien als Generation-B-Substanz erhalten
- **Strukturelle Änderung**: "Drei Rollen" (Berater/Coach/Mediator) → "Drei Verfahren" (Mediation/Konfliktberatung/Konflikt-Coaching) mit Cross-Links zu den Hauptseiten
- "Typische Situationen" mit Persona-Bezug
- Coach-Marker entfernt (*"leise Autorität: Präsenz ohne Lautstärke"* gestrafft auf *"Präsenz, nicht Lautstärke"*)
- Privatpersonen-Spur entfernt

**`/contact/`** komplett neu strukturiert:
- Coach-Sprache durchgängig entfernt
- "Drei Wege zum Gespräch" als Handlungs-Block (Calendly, E-Mail, Formular)
- Anleitung *"Für ein Erstgespräch reicht eine knappe Beschreibung..."* eingefügt
- Kontaktdaten geschärft: nur Mobil, Domain auf beltschew.de
- **"Hinweis für Privatpersonen"** als eigener Abschnitt mit Verweis auf mediator.sweti.de
- Emojis reduziert

### Infopaket-PDF

**`infopaket-beltschew-de.pdf`** komplett neu erstellt:
- 2 Seiten, kompakt, B2B-tauglich
- Phase-A-konform mit Drei-Felder-Logik
- Methodische Spezialformate (KRO/MRE/Reflexionszirkel) als eigener Abschnitt
- "Für wen" mit vier Zielgruppen-Adressaten
- CTA-Box mit Calendly-Link und E-Mail
- Brand-CI dezent eingesetzt: Warm Beige (#F8F5F0) als Hintergrund-Akzent, Watercolor Blue (#9FBFE9) als Linien-Akzent, Warm Gray (#5A5856) als Haupttext
- DejaVu Serif (Heading) und Poppins (Body) als Schrift-Fallback für Playfair Display und Montserrat (Container-Beschränkung)
- Standard-Unterschrift im Footer: *"Mediator (zertifiziert nach MediationsG) · Coach · systemischer Berater"*

### Verifikations-Verifikation

**Zweite rg-Suche** nach Personalseiten-Schärfung durchgeführt — mit erweitertem Pattern-Profil:
- Phase-A-Konsistenz-Marker (öffentliche Verwaltung, KMU, Privatperson, etc.)
- Coach-Marker (juristischer Streitschlichter, achtsam, einzigartig, Räume schaffen/gestalten)

**Befund**: 10 Treffer in 5 Dateien, davon:
- 6 Treffer **bewusst behalten** (Reflexionszirkel öffentlicher Dienst — methodisch begründet; Hinweis für Privatpersonen in /contact/ — funktional)
- 4 Treffer **korrigiert** in 3 Zielgruppen-Seiten (öffentliche Verwaltung → kommunale Verwaltung)

### Soll-Architektur — final

**Site-Hauptseiten** (5 Seiten):
| Slug | Funktion |
|---|---|
| `_index.md` (Root) | Startseite mit Service-Karten + Säulen |
| `about` | Person, Hintergrund, Qualifikation |
| `arbeitsweise` | Methodische Prinzipien |
| `haltung` | Haltung, Drei Verfahren — eine Haltung |
| `contact` | Kontaktwege, Domain-Trennung |

**Begleit-Material**:
| Datei | Funktion |
|---|---|
| `infopaket-beltschew-de.pdf` | Kompaktes 2-Seiten-PDF zum Download |
| `data/features.json` | Drei Spezialformate als Theme-Säulen |

---

## Methodische Erkenntnisse aus Phase C

Drei Erkenntnisse, die für Folge-Phasen tragen:

### 1. Theme-Mechanismen vor Markdown-Design verstehen

Die Startseite enthielt bereits ein Säulen-Element aus `data/features.json`, das im Markdown-Content nicht sichtbar war. Hätte ich das Markdown-Design ohne Kenntnis der Datendatei gemacht, wäre eine Doppelung mit den Säulen entstanden. Erst die Frage *"wie liefert dein Theme die drei Säulen?"* schuf die Voraussetzung für eine saubere Architektur.

**Lehre**: Bevor Layout-Entscheidungen getroffen werden, müssen alle Render-Mechanismen des Themes verstanden sein — Frontmatter-Felder, Datendateien, Shortcodes, Layouts. Sonst entstehen Inkonsistenzen, die erst beim Live-Test auffallen.

### 2. Domain-Trennung muss explizit kommuniziert werden

beltschew.de und mediator.sweti.de teilen Person, Adresse, Telefon und E-Mail — und sind doch zwei strikt getrennte Marken mit unterschiedlichen Zielgruppen. Auf der Site hatte sich an mehreren Stellen Vermischung eingeschlichen (Privatpersonen-Anteile auf beltschew.de, alte Format-Listen mit Lebensthemen). Die saubere Lösung: ein **expliziter "Hinweis für Privatpersonen"-Abschnitt** auf /contact/, der Privatpersonen mit klarem Verweis auf mediator.sweti.de leitet.

**Lehre**: Wenn zwei Marken eines Anbieters parallel laufen, muss die Trennung an Schlüssel-Übergangspunkten (Kontaktseite, Footer) **explizit benannt und gelenkt** werden — nicht implizit über die Adressen-Trennung.

### 3. Generation-B-Substanz erkennen und schützen

Die /haltung/-Seite hatte "Drei Rollen" (Berater/Coach/Mediator) als zentralen Strukturblock. Der erste Reflex wäre, das durch "Drei Verfahren" zu ersetzen — was inhaltlich zur Phase-A-Logik führt. Aber: Die "Drei Rollen" hatten methodisch eine andere Funktion (Selbstverständnis statt Verfahren). Die saubere Lösung war nicht Ersatz, sondern Umwidmung: dieselbe strukturelle Form, neue Phase-A-konforme Inhalte.

**Lehre**: Generation-B-Strukturen (eigenständige methodische Konzepte mit klarer Architektur) sind **schützenswert**. Bei Schärfung sollte gefragt werden: Was ist die Funktion dieser Struktur? Kann ich die Funktion mit Phase-A-Inhalten füllen? Erst dann sollte Ersatz erwogen werden.

### Bonus-Erkenntnis: Verifikations-Suche zweistufig anlegen

Bei der Phase-B-Verifikation hatten wir nur nach **alten Slugs** gesucht — und zwei tote Links übersehen, weil sie auf **falsche Kurzformen neuer Slugs** zeigten. Die Phase-C-Verifikation hat drei Suchpattern-Kategorien:
- Alte Slugs
- Falsche Kurzformen neuer Slugs
- Phase-A-Konsistenz-Marker (Coach-Sprache, alte Zielgruppen-Begriffe)

Das hat die letzten Reste sauber abgegriffen.

---

## Was Phase C nicht angepackt hat

Bewusst außerhalb der Phase gelassen:

- **Pflicht-Seiten** (Impressum, Datenschutzerklärung, 404) — DSGVO-Pflicht, technisch wichtig, aber nicht strategisch
- **Footer- und Header-Inhalte** — werden vom Theme über Konfiguration oder eigene Sections gerendert; nicht überprüft
- **Icons in `data/features.json`** — die alten Icon-Pfade (`icon_beratung.png`, `icon_coaching.png`, `icon_mediation.png`) wurden für die neuen Säulen-Inhalte (KRO/MRE/Reflexionszirkel) wiederverwendet. Sie passen nicht mehr inhaltlich, müssten in Canva neu gestaltet werden
- **Schrift-Konformität im PDF**: Playfair Display und Montserrat (Brand-Schriften) sind im Container nicht verfügbar. Verwendet wurden DejaVu Serif und Poppins als Fallback. Falls strikte Brand-Konformität wichtig ist, müsste das PDF in InDesign/Canva/Affinity nachgebaut werden
- **mediator.sweti.de**: Die Schwester-Site wurde nicht angepasst — der Hinweis für Privatpersonen auf beltschew.de/contact verlinkt darauf, aber mediator.sweti.de selbst hat keine entsprechende Gegen-Trennung
- **Phase-D-Aufgaben**: LinkedIn, GBP, GTM/GA4 für beltschew.de, Outreach, Lead-Magnete

---

## Übergang zu Phase D

Die natürliche Fortsetzung ist **Phase D – Sichtbarkeit und Lead-Generierung**: die Site ist fertig, das Begleit-Material liegt vor, jetzt geht es um Reichweite und Direktkontakt.

Naheliegende Aufgaben:

- **LinkedIn-Profil-Schärfung** für beltschew.de — Headline, About-Sektion, Featured-Block mit den drei Hauptseiten und dem Infopaket
- **LinkedIn-Posting-Plan** — Erstposts, Themen-Plan aus den sechs beltschew.de-Content-Säulen, Posting-Rhythmus 1× pro Woche
- **GBP für beltschew.de** anlegen oder schärfen — Phase-A-konsistent, mit Verlinkung zur Site
- **GTM/GA4-Tracking** für beltschew.de aufsetzen — `calendly_click`, `infopaket_download`, analog zu mediator.sweti.de
- **UTM-Link-Templates** für LinkedIn-Traffic auf beltschew.de
- **Erste Outreach-Aktionen** an kommunale IT-Dienstleister Sachsens — Direktansprache mit dem geschärften Infopaket als Anhang
- **Lead-Magnete** für beltschew.de — analog zu den drei produzierten Lead-Magneten auf mediator.sweti.de, aber B2B-tauglich (z.B. *"Wenn ein Konflikt zwei Stakeholder lähmt — drei Fragen, die helfen"*)

Außerdem laufend:

- **Blog-Artikel** auf beltschew.de — fachliche Vertiefung der Drei-Felder-Position, SEO für Phase-A-Keywords
- **Multiplikator-Outreach** — gezielte Ansprache von HR-Fachkräften, IHK, kommunalen Spitzenverbänden in Sachsen
- **Pflicht-Seiten-Pflege**: Impressum und Datenschutzerklärung auf beltschew.de prüfen

---

## Querverweise

- [[00 - Phase A – Strategische Grundlage beltschew.de]] — strategische Vorentscheidungen
- [[01 - B2B-Personas - Martina und Andreas]] — Persona-Profile
- [[02 - Phase B – Site-Schärfung beltschew.de]] — Service- und Zielgruppen-Ebene
- [[MASTERPLAN – Drei-Kanal-Strategie]] — übergreifende Marketing-Logik (mediator.sweti.de und beltschew.de)