**SEO & EEAT MASTERPLAN v2**

mediator.sweti.de — Dresden & Sachsen

**Fokus: Pflegende Angehörige · Pflegekonflikte · Familienmediation**

HUGO · Shared Hosting · Stand März 2026

|   |   |   |
|---|---|---|
|**Technischer Status**<br><br>KRITISCH: 5xx-Fehler, nur 8/110 Seiten indexiert|**GBP-Status**<br><br>Aktiv gepflegt · 0–2 Bewertungen · Ausbaufähig|**Content-Status**<br><br>~100 Artikel · EEAT-Basis vorhanden · Kaum Traffic|

**Inhalt dieses Dokuments**

•      TEIL A — Sofortmaßnahmen: Technische Basis reparieren (HUGO · Shared Hosting)

•      TEIL B — Google Business Profile: Quick-Wins für lokale Sichtbarkeit

•      TEIL C — On-Page SEO & Keyword-Strategie: Pflegefokus

•      TEIL D — EEAT-Aufbau: Expertise INKOVEMA, Praxisnachweise, Vertrauen

•      TEIL E — Backlinks & lokale Autorität aufbauen

•      TEIL F — 90-Tage-Aktionsplan (1–3 Std./Woche)

|   |
|---|
|**⚠ Wichtigste Erkenntnis aus der Analyse**<br><br>›    Das Hauptproblem ist NICHT fehlender Content (100 Artikel sind vorhanden), sondern:<br><br>›    1. 5xx-Serverfehler → Google stuft die Domain als unzuverlässig ein<br><br>›    2. Kaum externe Backlinks → keine messbare Domain-Autorität<br><br>›    3. URL-Struktur /post/ + Shared Hosting → technische Signalschwäche<br><br>›    Solange TEIL A nicht abgeschlossen ist, verpuffen alle Content-Maßnahmen.|

  

# TEIL A — Technische Basis reparieren

**Priorität:** Vor allen anderen Maßnahmen. Geschätzter Aufwand: 3–5 Stunden einmalig.

## A1 · 5xx-Serverfehler diagnostizieren & beheben

Auf Shared Hosting (Strato/1&1/All-Inkl.) entstehen 5xx-Fehler bei HUGO typischerweise durch diese Ursachen:

|   |   |   |
|---|---|---|
|**Ursache**|**Diagnose**|**Lösung**|
|.htaccess-Fehler nach Deploy|FTP: .htaccess prüfen|Backup der letzten funktionierenden .htaccess einspielen|
|Timeout bei großen Build-Outputs|Hosting-Logs prüfen (Fehlerlog im Plesk/cPanel)|Build lokal ausführen, nur /public/ hochladen|
|Defekte Redirect-Regeln|URL aufrufen, HTTP-Status prüfen (z.B. curl -I)|Redirect-Regeln in .htaccess schrittweise testen|
|Falsche Dateirechte nach Upload|FTP: Rechte prüfen (Ordner 755, Dateien 644)|Rekursiv Rechte korrigieren via FTP-Client|
|Fehlende index.html in Unterordnern|Lokalen /public/-Ordner mit Server vergleichen|Hugo build neu ausführen, vollständig hochladen|

### Schritt-für-Schritt: 5xx-Fehler lokalisieren

1.   GSC → Abdeckung → Fehler → 'Serverfehler (5xx)' → Betroffene URLs liste exportieren.

2.   Jede fehlerhafte URL im Browser aufrufen: Zeigt sie 500, 502, 503 oder 504?

3.   Im Hosting-Control-Panel (Plesk / cPanel) das PHP-Fehlerlog und Apache-Fehlerlog öffnen.

4.   Die fehlerhafte URL mit einem HTTP-Checker (z.B. httpstatus.io) testen.

5.   Nach Fix: URL in GSC unter 'Prüfung beantragen' erneut crawlen lassen.

## A2 · HUGO-Konfiguration für maximale SEO-Signale

### hugo.toml / config.toml — Pflichtfelder

|                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| # hugo.toml — SEO-Pflichtkonfiguration<br><br>baseURL = 'https://mediator.sweti.de/'<br><br>languageCode = 'de-DE'<br><br>title = 'Mediator Sweti Dresden – Mediation & Beratung'<br><br>enableRobotsTXT = true<br><br>canonifyURLs = false   # WICHTIG: nicht auf true setzen<br><br>[params]<br><br>  description = 'Mediation für pflegende Angehörige in Dresden'<br><br>  author = 'Sweti [Nachname]'<br><br>[sitemap]<br><br>  changefreq = 'weekly'<br><br>  priority = 0.5<br><br>  filename = 'sitemap.xml'<br><br>[outputs]<br><br>  home = ['HTML', 'RSS', 'Sitemap']<br><br>  page = ['HTML']<br><br>  section = ['HTML', 'RSS'] |

### URL-Struktur: /post/ → /blog/ oder /ratgeber/ umstellen

|   |
|---|
|**Warum das wichtig ist**<br><br>›    /post/ ist ein generisches WordPress-Erbe-Muster ohne thematischen Kontext.<br><br>›    Besser: /ratgeber/ oder /blog/ — Google liest den URL-Pfad als Relevanz-Signal.<br><br>›    Empfehlung: /ratgeber/pflegekonflikt-mediation-dresden/ ist stärker als /post/pflegekonflikt-mediation-dresden/<br><br>›    ACHTUNG: URL-Änderung erfordert 301-Redirects für alle bestehenden URLs — sonst Ranking-Verlust!|

|   |
|---|
|# In hugo.toml: Permalinks anpassen<br><br>[permalinks]<br><br>  post = '/ratgeber/:slug/'<br><br># In .htaccess: 301-Redirect für alte URLs<br><br>RewriteRule ^post/(.*)$ /ratgeber/$1 [R=301,L]|

### robots.txt — korrekte Konfiguration

|   |
|---|
|# /static/robots.txt<br><br>User-agent: *<br><br>Allow: /<br><br>Disallow: /admin/<br><br>Disallow: /search/<br><br>Sitemap: https://mediator.sweti.de/sitemap.xml|

### Sitemap in Google Search Console eintragen

6.   GSC → Sitemaps → URL eingeben: https://mediator.sweti.de/sitemap.xml

7.   Nach Eintragung prüfen: Wird die Sitemap als 'Erfolgreich' angezeigt?

8.   Anzahl der erkannten URLs notieren → Ziel: alle ~110 Seiten sichtbar.

9.   Sitemap monatlich auf Fehler prüfen (GSC → Sitemaps → Letzte Lesung).

## A3 · Meta-Tags & Canonical in HUGO-Templates

In HUGO werden Meta-Tags über die Datei layouts/partials/head.html (oder baseof.html) gesetzt. Hier die Pflicht-Implementierung:

|                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <!-- layouts/partials/head.html --><br><br><title>{{ if .IsHome }}Mediator Dresden – Mediation & Beratung{{ else }}{{ .Title }} \| mediator.sweti.de{{ end }}</title><br><br><meta name='description' content='{{ if .Params.description }}<br><br>  {{ .Params.description }}{{ else }}{{ .Site.Params.description }}{{ end }}'><br><br><link rel='canonical' href='{{ .Permalink }}'><br><br><!-- Open Graph --><br><br><meta property='og:title' content='{{ .Title }}'><br><br><meta property='og:description' content='{{ .Params.description }}'><br><br><meta property='og:url' content='{{ .Permalink }}'><br><br><meta property='og:type' content='{{ if .IsHome }}website{{ else }}article{{ end }}'><br><br><!-- Schema.org LocalBusiness (nur auf Startseite) --><br><br>{{ if .IsHome }}<br><br><script type='application/ld+json'><br><br>{<br><br>  "@context": "https://schema.org",<br><br>  "@type": "LocalBusiness",<br><br>  "name": "Mediator Sweti",<br><br>  "address": { "@type": "PostalAddress",<br><br>    "streetAddress": "Bünaustr. 52",<br><br>    "addressLocality": "Dresden",<br><br>    "postalCode": "01159",<br><br>    "addressCountry": "DE" },<br><br>  "telephone": "+49-XXX-XXXXXXX",<br><br>  "url": "https://mediator.sweti.de"<br><br>}<br><br></script><br><br>{{ end }} |

### Front Matter-Vorlage für jeden Blogartikel

Jeder Artikel braucht diese Felder im Front Matter (YAML), damit Meta-Tags korrekt befüllt werden:

|   |
|---|
|---<br><br>title: 'Pflegekonflikt in der Familie – wie Mediation in Dresden helfen kann'<br><br>description: 'Wenn Geschwister sich über die Pflege der Eltern streiten: Mediation in Dresden bietet vertrauliche Unterstützung. Kostenloses Erstgespräch.'<br><br>date: 2026-03-01<br><br>lastmod: 2026-03-01<br><br>draft: false<br><br>slug: 'pflegekonflikt-mediation-dresden'<br><br>categories: ['Pflegekonflikte', 'Familienmediation']<br><br>keywords: ['Pflegekonflikt Dresden', 'Mediation pflegende Angehörige', 'Geschwisterstreit Pflege']<br><br>author: 'Sweti [Nachname]'<br><br>---|

## A4 · Indexierungsprobleme beheben: 'Gecrawlt – nicht indexiert'

Diese GSC-Meldung bedeutet: Google findet die Seiten, hält sie aber nicht für rankingwürdig. Häufigste Ursachen bei ~100 Artikeln:

|   |   |   |   |
|---|---|---|---|
|**Problem**|**Diagnose-Check**|**Lösung**|**Aufwand**|
|Dünner Content (< 300 Wörter)|Artikel-Länge prüfen|10 kürzeste Artikel auf 600+ Wörter ausbauen|**HOCH**|
|Fehlende Meta-Description|GSC → URL-Prüfung → Seiteninfo|Front Matter ergänzen (s. Vorlage oben)|**MITTEL**|
|Keyword-Kannibalisierung|Mehrere Artikel ähnlichem Keyword|Artikel zusammenführen (Canonical setzen)|**MITTEL**|
|Keine internen eingehenden Links|Verlinkung auf Artikel prüfen|Von Pillarseiten auf Artikel verlinken|**MITTEL**|
|Keine externen Backlinks|GSC → Links|TEIL E umsetzen|**HOCH**|

# TEIL B — Google Business Profile: Quick-Wins

Das GBP ist **der stärkste kurzfristige Hebel** — unabhängig vom technischen Website-Status wirksam.

## B1 · Sofortmaßnahmen GBP (je 15–30 Minuten)

|   |   |   |   |
|---|---|---|---|
|**Maßnahme**|**Wo im GBP**|**Konkrete Aktion**|**Priorität**|
|Kategorie optimieren|Info → Kategorie|Hauptkat.: 'Mediator' · Nebenkat.: 'Coach', 'Lebensberater'|**SOFORT**|
|Leistungen ergänzen|Info → Leistungen|Familienmediation, Pflegekonflikt-Mediation, Elder Mediation, systemisches Coaching, Mediation Erbschaft|**SOFORT**|
|Beschreibung optimieren|Info → Beschreibung|Vorlage aus Teil B2 verwenden|**SOFORT**|
|Fotos hochladen|Fotos → Innenbereich|5–10 echte Fotos: Portrait, Praxisraum, Außenansicht Dresden|**SOFORT**|
|Q&A selbst befüllen|Fragen & Antworten|5 typische Fragen selbst stellen + beantworten|**HOCH**|
|Bewertungslink generieren|GBP-Dashboard|Link teilen nach jeder abgeschlossenen Mediation|**HOCH**|

## B2 · GBP-Beschreibung — fertige Vorlage

|   |
|---|
|**Vorlage GBP-Beschreibung (max. 750 Zeichen)**<br><br>›    Als zertifizierter Mediator und systemischer Berater in Dresden begleite ich pflegende Angehörige, Familien und Teams dabei, Konflikte zu klären und neue Handlungsspielräume zu finden.<br><br>›    Schwerpunkte: Pflegekonflikte, Familienübergänge, Erbschaftsfragen, Nachbarschaftskonflikte, Teamkonflikte in Handwerk und KMU.<br><br>›    Ausgebildet am INKOVEMA Leipzig: Mediation, Organisationsmediation, systemische Organisationsberatung.<br><br>›    Vertraulich · allparteilich · strukturiert. Standort: Dresden Löbtau, Bünaustr. 52. Kostenloses Erstgespräch auf Anfrage.|

## B3 · Bewertungsprozess aufbauen (Ziel: 10+ Bewertungen)

Bewertungen sind bei 'Mediator Dresden' mit starkem Wettbewerb ein entscheidender Rankingfaktor im Local Pack (Google Maps Ergebnisse).

•      Nach Abschluss einer Mediation/Coaching-Einheit: Kurze persönliche Dankesmail mit direktem Bewertungslink (Link aus GBP-Dashboard kopieren).

•      Formulierung: 'Wenn Sie möchten, freuen wir uns über eine kurze Rückmeldung bei Google — ohne inhaltliche Details zu Ihrer Mediation. Ein Satz zur Atmosphäre oder Arbeitsweise genügt.'

•      Jede Bewertung innerhalb von 48 Stunden beantworten — auch kurze, positive.

•      Kritische Bewertungen: ruhig, professionell, lösungsorientiert reagieren, Vertraulichkeit betonen.

•      Ziel Monat 1–3: 5 Bewertungen · Monat 4–6: 10 Bewertungen mit Ø ≥ 4,5 Sternen.

## B4 · GBP-Posts: Redaktionsplan Pflegefokus

|   |   |   |   |
|---|---|---|---|
|**Woche**|**Post-Thema**|**Link auf**|**CTA**|
|Woche 1|Was tun, wenn Geschwister sich über Elternpflege streiten?|/pflegende-angehoerige-dresden|Kostenloses Erstgespräch|
|Woche 2|Mediation bei Erbschaftsstreit in Dresden|/ratgeber/mediation-erbschaft-dresden|Jetzt informieren|
|Woche 3|Was ist Elder Mediation? (kurze Erklärung)|/ratgeber/elder-mediation|Mehr erfahren|
|Woche 4|Neuer Blogartikel: Pflegekonflikt fair lösen|/ratgeber/pflegekonflikt-mediation-dresden|Artikel lesen|
|Monatlich|Hinweis auf kostenloses Erstgespräch|Kontaktseite / Calendly|Termin vereinbaren|

# TEIL C — On-Page SEO & Keyword-Strategie

## C1 · Keyword-Priorisierung: Wettbewerbsrealität

**Wichtiger Hinweis:** Bei starkem Wettbewerb für 'Mediator Dresden' sind breite Haupt-Keywords kurzfristig nicht zu gewinnen. Strategie: Spezifische Nischen-Keywords mit klarer lokaler Absicht — dort ist der Wettbewerb deutlich geringer.

|                                         |                |                                                |                  |
| --------------------------------------- | -------------- | ---------------------------------------------- | ---------------- |
| **Keyword**                             | **Wettbewerb** | **Empfehlung**                                 | **Zeithorizont** |
| Mediator Dresden                        | Sehr hoch      | Langfristiges Ziel — nicht für Sofortmaßnahmen | 6–12 Monate      |
| Pflegekonflikt Mediation Dresden        | Gering         | JETZT angreifen — Landingpage + Artikel        | 1–3 Monate       |
| Mediation pflegende Angehörige Dresden  | Sehr gering    | Stärkster Hebel — kaum Konkurrenz              | 1–2 Monate       |
| Geschwisterstreit Pflege Eltern         | Gering         | Longtail-Blogartikel                           | 2–4 Monate       |
| Elder Mediation Dresden                 | Sehr gering    | Artikel + GBP-Post                             | 1–2 Monate       |
| Mediation Erbschaftsstreit Dresden      | Mittel         | Landingpage/Artikel                            | 2–4 Monate       |
| Mediation Handwerk KMU Sachsen          | Sehr gering    | Neue Zielgruppen-LP                            | 3–6 Monate       |
| Nachbarschaftskonflikt Mediator Dresden | Gering         | Ergänzender Artikel                            | 3–5 Monate       |

## C2 · Pillarseiten-Architektur

Alle ~100 Blogartikel sollen auf 4 Pillarseiten einzahlen. Diese werden intern stark verlinkt und sind die Seiten mit dem höchsten Ranking-Potenzial.

|                           |                                  |                                        |               |
| ------------------------- | -------------------------------- | -------------------------------------- | ------------- |
| **Pillarseite**           | **URL**                          | **Primäres Keyword**                   | **Status**    |
| Pflegende Angehörige      | /pflegende-angehoerige-dresden/  | Mediation pflegende Angehörige Dresden | NEU ERSTELLEN |
| Familienmediation         | /familienmediation-dresden/      | Familienmediation Dresden              | AUSBAUEN      |
| Mediation Arbeitswelt     | /mediation-handwerk-kmu-sachsen/ | Mediation Handwerk KMU Sachsen         | NEU ERSTELLEN |
| Über mich & Qualifikation | /ueber-mich/                     | Mediator Dresden INKOVEMA zertifiziert | SCHÄRFEN      |

## C3 · Landingpage /pflegende-angehoerige-dresden/ — Aufbau-Blueprint

Diese Seite ist die wichtigste neue Maßnahme. Alle Elemente sind auf das Pflegeproblem und lokale Suche ausgerichtet:

10.    H1: 'Mediation für pflegende Angehörige in Dresden – Pflegekonflikte klären, Entlastung finden' [Keyword: Mediation pflegende Angehörige Dresden]

11.    Einstieg (100–150 Wörter): Problemschilderung in der Sprache der Zielgruppe — 'Wer pflegt Mama, wenn du arbeitest?', 'Dein Bruder meldet sich nicht mehr', 'Du bist erschöpft und allein damit.'

12.    H2: 'Typische Pflegekonflikte, bei denen ich helfe' — 4 Situationen (Geschwisterstreit, Pflegegrad-Entscheidungen, Distanzpflege, Konflikte mit Pflegediensten)

13.    H2: 'Wie Mediation bei Pflegekonflikten funktioniert' — 3-Schritte-Ablauf (Erstgespräch → Mediationssitzungen → Vereinbarung)

14.    H2: 'Aus meiner Praxis' — 1 anonymisiertes Fallbeispiel (Ausgangslage → Prozess → Ergebnis, je 2 Sätze)

15.    H2: 'Meine Qualifikation für Pflegekonflikte' — Hinweis INKOVEMA-Ausbildung, systemische Beratung

16.    H2: 'FAQ Mediation bei Pflegekonflikten' — 5 Fragen (s. C4)

17.    CTA-Box: 'Kostenloses Erstgespräch vereinbaren' mit Telefonnummer + Kontaktformular/Calendly-Link

18.    Footer-Links: Startseite, Über mich, Familienmediation, Blogartikel Pflegekonflikte

## C4 · FAQ-Blöcke — fertige Fragen & Antworten

Schema-Markup FAQPage für diese Fragen implementieren (s. A3) — ermöglicht Rich Snippets in Google.

**F: Was kostet eine Mediation bei Pflegekonflikten in Dresden?**

A: Die Kosten richten sich nach Umfang und Anzahl der Sitzungen. Im kostenlosen Erstgespräch klären wir gemeinsam den Rahmen. Häufig liegt eine Sitzung zwischen 90 und 150 Minuten.

**F: Wie viele Sitzungen braucht eine Mediation bei Familienkonflikten rund um die Pflege?**

A: Das hängt von der Komplexität ab. Viele Pflegekonflikte klären sich in 2–4 Sitzungen. Beim Erstgespräch schätzen wir gemeinsam den Bedarf ein.

**F: Ist alles, was in der Mediation gesagt wird, vertraulich?**

A: Ja. Als Mediator bin ich zur Verschwiegenheit verpflichtet. Inhalte aus der Mediation werden nicht an Dritte weitergegeben.

**F: Für wen ist Mediation bei Pflegekonflikten NICHT geeignet?**

A: Mediation ist nicht geeignet bei akuter häuslicher Gewalt, laufenden Gerichtsverfahren zu denselben Streitpunkten oder wenn eine Partei nicht freiwillig teilnimmt. In solchen Fällen vermittle ich weiter.

**F: Kann ich Mediation auch online machen?**

A: Ja, Mediation per Videogespräch ist möglich — besonders wenn Familienmitglieder in verschiedenen Städten leben (z.B. Distanzpflege). Technisch funktioniert das gut.

## C5 · Blog-Content-Plan Pflegefokus (6 Monate)

|   |   |   |   |
|---|---|---|---|
|**Artikel-Titel**|**Primäres Keyword**|**Interne Links auf**|**Monat**|
|Pflegekonflikte in der Familie – wie Mediation in Dresden entlasten kann|Pflegekonflikt Mediation Dresden|LP Pflegende Angehörige|1|
|Wenn Geschwister sich über die Elternpflege streiten|Geschwisterstreit Pflege Eltern|LP Pflegende Angehörige|1|
|Elder Mediation – was ist das und wann hilft es in Dresden?|Elder Mediation Dresden|LP Pflegende Angehörige, Über mich|2|
|Mediation bei Erbschaftsstreit in Dresden – Ablauf, Kosten, Chancen|Mediation Erbschaftsstreit Dresden|LP Familienmediation|2|
|Demenz in der Familie: Konflikte erkennen und konstruktiv ansprechen|Demenz Familie Konflikt Mediation|LP Pflegende Angehörige|3|
|Distanzpflege: Wenn die Familie weit weg lebt und trotzdem mitredet|Distanzpflege Konflikt|LP Pflegende Angehörige|3|
|Mediation im Handwerk: Wenn Konflikte die Werkstatt lähmen|Mediation Handwerk Sachsen|LP Arbeitswelt|4|
|Nachbarschaftskonflikt lösen in Dresden – Mediation als Alternative|Nachbarschaftskonflikt Mediator Dresden|Startseite, Kontakt|5|

**Wichtig für alle neuen Artikel:** Am Ende immer CTA mit lokalem Bezug: 'Sie leben in Dresden oder Umgebung und möchten Unterstützung? Im kostenlosen Erstgespräch klären wir, ob Mediation die richtige Lösung für Sie ist.' + Kontaktlink.

# TEIL D — EEAT: Expertise, Autorität & Vertrauen

EEAT ist im Mediationskontext besonders wichtig: Google stuft Konflikt- und Pflegethemen als YMYL-Content ein (Your Money or Your Life) — Seiten, bei denen falsche Informationen echten Schaden anrichten können. Das erhöht die Anforderungen an nachweisbare Expertise.

## D1 · Experience: Praxisnachweise sichtbar machen

•      Auf jeder Angebotsseite: Box 'Aus meiner Praxis' mit 1 anonymisierten Mini-Fallbeispiel (Ausgangslage · Prozess · Ergebnis, je 2 Sätze).

•      Blogartikel um 'Erlebt & angewendet'-Abschnitt ergänzen: 'So wende ich dieses Prinzip in Mediationen mit pflegenden Angehörigen tatsächlich an.'

•      Echte Fotos aus dem Praxiskontext (Arbeitsraum, Moderationsmaterialien, Außenbereich Dresden Löbtau) — keine Stockfotos.

•      Auf der LP Pflegende Angehörige: Konkrete Beschreibung typischer Mediationssituationen, die du erlebt hast.

## D2 · Expertise: INKOVEMA-Qualifikationen als Vertrauensanker

Die INKOVEMA Leipzig ist eine anerkannte Ausbildungsstätte — das ist ein echter Differenziator gegenüber nicht-zertifizierten Anbietern. Diese Information muss prominenter platziert werden:

|   |
|---|
|**Qualifikations-Darstellung — empfohlene Formulierung für 'Über mich'**<br><br>›    Ausgebildeter Mediator (INKOVEMA Institut für Konflikt- und Verhandlungsmanagement, Leipzig)<br><br>›    Weiterbildung Organisationsmediation (INKOVEMA Leipzig)<br><br>›    Ausbildung systemische Organisationsberatung (INKOVEMA Leipzig)<br><br>›    → Verlinke auf die INKOVEMA-Website als externe Referenz — das stärkt die Glaubwürdigkeit.<br><br>›    → Ergänze: 'Die INKOVEMA ist eine nach BM/BAFM-Standards arbeitende Ausbildungsstätte.' wenn zutreffend.<br><br>›    → Platzierung: Startseite (sichtbar above the fold), Über-mich-Seite, Autorenbox, alle Landingpages.|

## D3 · Autorität: Alleinstellungsmerkmal Pflegekontext entwickeln

Dein USP ist noch offen — hier ist ein Vorschlag basierend auf den Informationen:

|   |
|---|
|**USP-Entwurf: Warum Sweti für pflegende Angehörige?**<br><br>›    Mögliche Kernaussage: 'Als systemisch ausgebildeter Mediator mit Schwerpunkt Familienübergänge verstehe ich die emotionale Erschöpfung pflegender Angehöriger — und bringe die Struktur, die Familiengespräche wieder möglich macht.'<br><br>›    Konkretisierung 1: 'Ich arbeite nicht mit fertigen Lösungen, sondern mit dem, was Ihre Familie tatsächlich kann — systemisch, allparteilich, ohne Schuldige.'<br><br>›    Konkretisierung 2: 'Dresden Löbtau als Praxisstandort — kurze Wege, diskreter Rahmen, auch digital für Distanzpflege-Familien.'<br><br>›    → Diese Formulierungen auf der LP Pflegende Angehörige und im GBP verwenden.<br><br>›    → Mit einem Klienten durchsprechen und schärfen, sobald erste Testimonials vorliegen.|

## D4 · Trust: Rechtliche & Transparenz-Elemente

|   |   |   |
|---|---|---|
|**Element**|**Status-Check**|**Maßnahme**|
|Vollständiges Impressum|Prüfen|Name, Adresse, Tel., E-Mail, ggf. USt-ID sichtbar|
|DSGVO-Datenschutzerklärung|Prüfen|Aktuell, alle Tools (GA, GTM) benannt|
|SSL-Zertifikat (HTTPS)|Prüfen|Auf Shared Hosting meist über Hosting-Panel aktivierbar|
|Kontakt im Header/Footer|Ergänzen wenn nötig|Tel. + E-Mail auf jeder Seite sichtbar|
|Ablauf & Konditionen|Ergänzen|Eigene Seite /ablauf-konditionen/ mit Honorarrahmen, Dauer, Vertraulichkeit|
|'Nicht geeignet für'-Hinweis|Ergänzen|Auf Angebotsseiten klar kommunizieren (stärkt Trust)|
|Cookie-Hinweis|Prüfen|DSGVO-konformes Cookie-Banner (bei HUGO: JS-Snippet)|

# TEIL E — Backlinks & lokale Autorität aufbauen

**Aktuell: 0 externe Backlinks** — das ist bei starkem Wettbewerb das zweitgrößte Problem nach den 5xx-Fehlern. Google sieht eine Domain ohne ein einziges externes Vertrauenssignal.

## E1 · Kurzfristige Backlink-Quellen (1–4 Wochen)

•      11880.com-Profil prüfen und aktualisieren — enthält automatisch einen Backlink auf die Website.

•      Mediatorenverzeichnis des Bundesverbands Mediation (BM) oder BAFM — Profil anlegen wenn noch nicht vorhanden. Hohe Domainautorität, thematisch exakt passend.

•      Google Business Profile enthält selbst keinen klassischen Backlink, aber GBP-Posts mit Website-Link erzeugen lokale Signale.

•      LinkedIn-Profil vervollständigen mit Link auf mediator.sweti.de — auch LinkedIn hat hohe Domainautorität.

•      INKOVEMA Leipzig: Fragen ob Absolventen auf einer Alumni-Seite verlinkt werden — wäre ein sehr wertvoller thematischer Backlink.

## E2 · Mittelfristige Kooperations-Backlinks (1–3 Monate)

|   |   |   |   |
|---|---|---|---|
|**Kooperationspartner**|**Ansatz**|**Backlink-Potenzial**|**Aufwand**|
|Pflegedienste / Pflegeberatung Dresden|Fachbeitrag zu Pflegekonflikten anbieten|Hoch (thematisch perfekt)|Mittel|
|Caritas / AWO / Diakonie Dresden|Gastartikel oder Vortrag zu Familienmediation|Hoch (hohe Domainautorität)|Mittel|
|Angehörigengruppen / Selbsthilfe Dresden|Ressourcen-Seite anbieten, die sie verlinken|Mittel|Gering|
|Handwerkskammer Sachsen / Dresden|Artikel zu Konflikten im Handwerksbetrieb|Hoch (lokale Autorität)|Hoch|
|Lokale Zeitung / MDR Sachsen|Expertenkommentar zu Pflege-/Familienthemen|Sehr hoch|Hoch|

## E3 · Content-basierte Backlinks (langfristig)

•      'Ressourcen-Seite für pflegende Angehörige in Dresden' erstellen: Links zu Pflegestützpunkten, Beratungsstellen, Selbsthilfe — diese Seiten verlinken häufig zurück.

•      Statistiken oder Leitfaden zu 'Pflegekonflikten in Sachsen' erstellen — Medien und Fachblogs verlinken gerne auf Datenmaterial.

•      Gastbeitrag in einem systemischen Fachblog (z.B. INKOVEMA-Blog, systemische Gesellschaft) — wenn dort veröffentlicht: sehr hochwertiger thematischer Backlink.

# TEIL F — 90-Tage-Aktionsplan (1–3 Std./Woche)

Alle Maßnahmen sind auf **1–3 Stunden pro Woche** ausgelegt. Die Reihenfolge ist bewusst: erst Technik, dann Sichtbarkeit, dann Autorität.

## Phase 1: Technische Basis (Wochen 1–3)

|   |
|---|
|**Ziel: 5xx-Fehler beseitigt, Sitemap korrekt, Meta-Tags auf allen Seiten**<br><br>›    Woche 1 (2–3 Std.): 5xx-Fehler diagnostizieren (Hosting-Log + GSC) und beheben. Danach: GSC-Sitemap prüfen/eintragen.<br><br>›    Woche 2 (1–2 Std.): hugo.toml nach Vorlage (A2) prüfen/aktualisieren. Front-Matter-Vorlage (A3) auf die 10 wichtigsten Artikel anwenden.<br><br>›    Woche 3 (1–2 Std.): head.html-Template mit Meta-Description + Canonical + Schema.org LocalBusiness ergänzen. 'Gecrawlt nicht indexiert'-Artikel analysieren.|

## Phase 2: GBP & erste Sichtbarkeit (Wochen 4–6)

|   |
|---|
|**Ziel: GBP vollständig optimiert, erste Bewertungen, Pflegelandingpage live**<br><br>›    Woche 4 (2 Std.): GBP Beschreibung + Kategorien + Leistungen nach Vorlage B2 aktualisieren. 5–10 echte Fotos hochladen.<br><br>›    Woche 5 (2–3 Std.): Landingpage /pflegende-angehoerige-dresden/ nach Blueprint C3 erstellen und veröffentlichen. Intern verlinken.<br><br>›    Woche 6 (1 Std.): Bewertungsprozess starten (1–2 Klienten um Bewertung bitten). Ersten GBP-Post veröffentlichen.|

## Phase 3: Content & Backlinks (Wochen 7–10)

|   |
|---|
|**Ziel: 2 neue Blogartikel, 3 Backlinks, FAQ-Schema live**<br><br>›    Woche 7 (2–3 Std.): Blogartikel 1 schreiben: 'Pflegekonflikte in der Familie – wie Mediation in Dresden entlasten kann' (800–1000 Wörter).<br><br>›    Woche 8 (1–2 Std.): FAQPage-Schema implementieren (A3). INKOVEMA-Alumni-Link anfragen. 11880 und BM-Verzeichnis aktualisieren.<br><br>›    Woche 9 (2–3 Std.): Blogartikel 2 schreiben: 'Wenn Geschwister sich über Elternpflege streiten'. 1–2 Pflegedienste in Dresden anschreiben.<br><br>›    Woche 10 (1–2 Std.): 'Über mich'-Seite nach D2 schärfen (INKOVEMA prominent, USP Pflege). Autorenbox auf alle Artikel prüfen.|

## Phase 4: Wachstum & Konsolidierung (Wochen 11–13)

|   |
|---|
|**Ziel: GSC zeigt Ranking-Verbesserungen, 5+ GBP-Bewertungen, 3+ Backlinks**<br><br>›    Woche 11 (2 Std.): GSC-Auswertung: Welche Keywords ranken? Welche Seiten haben Impressionen ohne Klicks? Anpassen.<br><br>›    Woche 12 (2–3 Std.): Blogartikel 3 (Elder Mediation oder Erbschaft). LP Arbeitswelt /mediation-handwerk-kmu-sachsen/ skizzieren.<br><br>›    Woche 13 (1–2 Std.): Monatliches KPI-Review (GSC-Klicks, GBP-Impressionen, Bewertungen, Backlinks). Nächste 90-Tage planen.|

## KPI-Dashboard: Monatliche Messwerte

|   |   |   |   |
|---|---|---|---|
|**KPI**|**Jetzt (Baseline)**|**Ziel nach 90 Tagen**|**Tool**|
|Indexierte Seiten|8|60–80+|Google Search Console|
|Monatliche Klicks|~5–10|50–100|Google Search Console|
|GBP-Bewertungen|0–2|5–8|Google Business Insights|
|GBP-Anrufe/Monat|unbekannt|5–10|Google Business Insights|
|Externe Backlinks|0|5–8|GSC → Links / Ahrefs free|
|Rang 'Pflegekonflikt Mediation Dresden'|nicht sichtbar|Top 10|GSC → Suchanfragen|
|Monatliche Besucher|~30|150–300|Google Analytics 4|

SEO & EEAT Masterplan v2 | mediator.sweti.de | Dresden & Sachsen | März 2026