**HUGO SEO-Konfiguration**

mediator.sweti.de — Komplette Schritt-für-Schritt-Anleitung

HUGO · Shared Hosting (Strato) · Stand März 2026

|   |
|---|
|**Was diese Anleitung abdeckt**<br><br>›    Schritt 1 — hugo.toml: Die vollständige SEO-Basiskonfiguration<br><br>›    Schritt 2 — head.html: Meta-Tags, Canonical, Open Graph, Schema.org<br><br>›    Schritt 3 — robots.txt: Korrekte Crawler-Steuerung<br><br>›    Schritt 4 — Taxonomy noindex: /tags/ aus dem Index ausschließen<br><br>›    Schritt 5 — Front Matter: Vorlage für jeden Artikel<br><br>›    Schritt 6 — Sitemap: Prüfung und GSC-Eintragung<br><br>›    Schritt 7 — Deploy-Checkliste: Was nach jedem Build zu tun ist|

# Schritt 1 — hugo.toml

**Datei:** **hugo.toml** (oder config.toml) im Root deines Projektordners

**Das ist die vollständige, SEO-optimierte Konfiguration.** Übernimm sie komplett und passe nur die markierten Felder an.

|   |
|---|
|**hugo.toml — vollständige SEO-Konfiguration**<br><br># ─────────────────────────────────────────<br><br># GRUNDEINSTELLUNGEN<br><br># ─────────────────────────────────────────<br><br>baseURL = "https://mediator.sweti.de/"<br><br>languageCode = "de-DE"<br><br>defaultContentLanguage = "de"<br><br>title = "Mediator Dresden – Mediation & Beratung \| mediator.sweti.de"<br><br># Wichtig: canonifyURLs NICHT auf true setzen<br><br>canonifyURLs = false<br><br>enableRobotsTXT = true<br><br>enableGitInfo = false<br><br># Verhindert kaputte relative Links nach Deploy<br><br>relativeURLs = false<br><br># ─────────────────────────────────────────<br><br># SITEMAP<br><br># ─────────────────────────────────────────<br><br>[sitemap]<br><br>  changefreq = "weekly"<br><br>  priority = 0.7<br><br>  filename = "sitemap.xml"<br><br># ─────────────────────────────────────────<br><br># OUTPUTS — Sitemap nur auf Startseite<br><br># ─────────────────────────────────────────<br><br>[outputs]<br><br>  home = ["HTML", "RSS", "Sitemap"]<br><br>  page = ["HTML"]<br><br>  section = ["HTML", "RSS"]<br><br>  taxonomy = ["HTML"]<br><br>  term = ["HTML"]<br><br># ─────────────────────────────────────────<br><br># TAXONOMIEN<br><br># ─────────────────────────────────────────<br><br>[taxonomies]<br><br>  tag = "tags"<br><br># ─────────────────────────────────────────<br><br># GLOBALE PARAMS — für Meta-Tags im Template<br><br># ─────────────────────────────────────────<br><br>[params]<br><br>  # ↓ Anpassen<br><br>  description = "Mediation & systemische Beratung in Dresden – für pflegende Angehörige, Familien und Teams. Zertifizierter Mediator. Kostenloses Erstgespräch."<br><br>  author = "Sweti [Nachname]"<br><br>  siteUrl = "https://mediator.sweti.de"<br><br>  # Taxonomy-Seiten global auf noindex setzen<br><br>  noindexTaxonomies = true<br><br>  # Open Graph / Social<br><br>  ogImage = "/images/og-default.jpg"<br><br># ─────────────────────────────────────────<br><br># MARKUP — sauberes HTML ohne unnötige Klassen<br><br># ─────────────────────────────────────────<br><br>[markup]<br><br>  [markup.goldmark]<br><br>    [markup.goldmark.renderer]<br><br>      unsafe = false<br><br># ─────────────────────────────────────────<br><br># MINIFY — kleinere Dateien = schnellere Ladezeit<br><br># ─────────────────────────────────────────<br><br>[minify]<br><br>  minifyOutput = true|

|   |
|---|
|**Was sich gegenüber deiner aktuellen Config ändert**<br><br>›    canonifyURLs = false — verhindert doppelte URL-Versionen die Canonical-Konflikte erzeugen<br><br>›    enableRobotsTXT = true — HUGO generiert automatisch robots.txt aus dem Template<br><br>›    noindexTaxonomies = true — eigener Schalter für Taxonomy-noindex im Template<br><br>›    minifyOutput = true — kleinere HTML-Dateien, bessere Core Web Vitals<br><br>›    relativeURLs = false — wichtig für korrektes Canonical auf Shared Hosting|

# Schritt 2 — layouts/partials/head.html

**Datei:** **layouts/partials/head.html**

Hier werden alle SEO-relevanten Meta-Tags gesetzt. Das ist die zentrale Datei für Google.

## 2a — Meta-Tags, Canonical & Open Graph

|   |
|---|
|**layouts/partials/head.html — Teil 1: Meta & Canonical**<br><br><!-- ─────────────────────────────────────── --><br><br><!-- META: TITLE & DESCRIPTION               --><br><br><!-- ─────────────────────────────────────── --><br><br>{{/* Title-Logik: Startseite vs. alle anderen Seiten */}}<br><br>{{ $title := .Title }}<br><br>{{ if .IsHome }}{{ $title = "Mediator Dresden – Mediation & Beratung für Familien & Pflege" }}{{ end }}<br><br><title>{{ $title }} \| mediator.sweti.de</title><br><br>{{/* Description: Front Matter > Site-Default */}}<br><br>{{ $desc := .Params.description \| default .Site.Params.description }}<br><br><meta name="description" content="{{ $desc }}"><br><br><!-- ─────────────────────────────────────── --><br><br><!-- CANONICAL                               --><br><br><!-- ─────────────────────────────────────── --><br><br><link rel="canonical" href="{{ .Permalink }}"><br><br><!-- ─────────────────────────────────────── --><br><br><!-- ROBOTS: noindex für Taxonomy-Seiten     --><br><br><!-- ─────────────────────────────────────── --><br><br>{{ $isTaxo := or (eq .Kind "taxonomy") (eq .Kind "term") }}<br><br>{{ $force := .Params.forceindex }}<br><br>{{ if and (site.Params.noindexTaxonomies) $isTaxo (not $force) }}<br><br>  <meta name="robots" content="noindex, follow"><br><br>{{ else if .Params.noindex }}<br><br>  <meta name="robots" content="noindex, follow"><br><br>{{ else }}<br><br>  <meta name="robots" content="index, follow"><br><br>{{ end }}<br><br><!-- ─────────────────────────────────────── --><br><br><!-- OPEN GRAPH (Facebook, LinkedIn Preview) --><br><br><!-- ─────────────────────────────────────── --><br><br>{{ $ogImg := .Params.image \| default .Site.Params.ogImage }}<br><br><meta property="og:title" content="{{ $title }}"><br><br><meta property="og:description" content="{{ $desc }}"><br><br><meta property="og:url" content="{{ .Permalink }}"><br><br><meta property="og:site_name" content="mediator.sweti.de"><br><br>{{ if .IsHome }}<br><br><meta property="og:type" content="website"><br><br>{{ else }}<br><br><meta property="og:type" content="article"><br><br>{{ end }}<br><br>{{ with $ogImg }}<meta property="og:image" content="{{ . \| absURL }}">{{ end }}<br><br><!-- ─────────────────────────────────────── --><br><br><!-- SITEMAP & ALTERNATE                     --><br><br><!-- ─────────────────────────────────────── --><br><br><link rel="sitemap" type="application/xml" href="/sitemap.xml">|

## 2b — Schema.org: LocalBusiness (nur Startseite)

|   |
|---|
|**layouts/partials/head.html — Teil 2: Schema.org**<br><br><!-- Schema.org LocalBusiness — nur auf der Startseite --><br><br>{{ if .IsHome }}<br><br><script type="application/ld+json"><br><br>{<br><br>  "@context": "https://schema.org",<br><br>  "@type": "LocalBusiness",<br><br>  "name": "Mediator Sweti",<br><br>  "description": "Mediation und systemische Beratung in Dresden für pflegende Angehörige, Familien und Teams.",<br><br>  "url": "https://mediator.sweti.de",<br><br>  "telephone": "+49-XXX-XXXXXXXX",<br><br>  "address": {<br><br>    "@type": "PostalAddress",<br><br>    "streetAddress": "Bünaustr. 52",<br><br>    "addressLocality": "Dresden",<br><br>    "addressRegion": "Sachsen",<br><br>    "postalCode": "01159",<br><br>    "addressCountry": "DE"<br><br>  },<br><br>  "geo": {<br><br>    "@type": "GeoCoordinates",<br><br>    "latitude": 51.0459,<br><br>    "longitude": 13.6897<br><br>  },<br><br>  "openingHours": "Mo-Fr 09:00-18:00",<br><br>  "priceRange": "€€",<br><br>  "areaServed": {<br><br>    "@type": "GeoCircle",<br><br>    "geoMidpoint": { "@type": "GeoCoordinates", "latitude": 51.0459, "longitude": 13.6897 },<br><br>    "geoRadius": "50000"<br><br>  }<br><br>}<br><br></script><br><br>{{ end }}<br><br><!-- Schema.org Article — auf Blogartikeln --><br><br>{{ if eq .Type "post" }}<br><br><script type="application/ld+json"><br><br>{<br><br>  "@context": "https://schema.org",<br><br>  "@type": "Article",<br><br>  "headline": "{{ .Title }}",<br><br>  "description": "{{ .Params.description }}",<br><br>  "datePublished": "{{ .Date.Format "2006-01-02" }}",<br><br>  "dateModified": "{{ .Lastmod.Format "2006-01-02" }}",<br><br>  "author": { "@type": "Person", "name": "{{ .Site.Params.author }}" },<br><br>  "publisher": {<br><br>    "@type": "Organization",<br><br>    "name": "Mediator Sweti",<br><br>    "url": "https://mediator.sweti.de"<br><br>  }<br><br>}<br><br></script><br><br>{{ end }}|

# Schritt 3 — robots.txt

**Datei:** **layouts/robots.txt** — HUGO generiert diese automatisch wenn enableRobotsTXT = true gesetzt ist.

|                                                                                                                                                                                                                                                                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **layouts/robots.txt**<br><br>User-agent: *<br><br>Allow: /<br><br># Seiten die NICHT gecrawlt werden sollen<br><br>Disallow: /tags/<br><br>Disallow: /search/<br><br># Sitemap-Hinweis für alle Crawler<br><br>Sitemap: https://mediator.sweti.de/sitemap.xml<br><br># Google spezifisch<br><br>User-agent: Googlebot<br><br>Allow: /<br><br>Crawl-delay: 1 |

|   |
|---|
|**Wichtiger Hinweis zu /tags/ in robots.txt**<br><br>›    /tags/ in robots.txt disallowen UND noindex im Template setzen — beides zusammen ist korrekt.<br><br>›    Disallow verhindert das Crawlen, noindex verhindert das Indexieren falls doch gecrawlt wird.<br><br>›    Das spart Crawl-Budget für deine echten Inhalte (Artikel, Landingpages).|

# Schritt 4 — Taxonomy-Seiten: noindex

Globaler Schalter in hugo.toml bereits gesetzt (Schritt 1). Hier die Template-Logik und Ausnahme-Option.

## 4a — Automatisch: alle /tags/-Seiten

Bereits in Schritt 2 (head.html) implementiert. Zur Erinnerung:

|   |
|---|
|**Wirkung: ALLE /tags/*-Seiten erhalten automatisch noindex**<br><br>{{/* Diese Logik steht bereits in deinem head.html */}}<br><br>{{ $isTaxo := or (eq .Kind "taxonomy") (eq .Kind "term") }}<br><br>{{ if and (site.Params.noindexTaxonomies) $isTaxo }}<br><br>  <meta name="robots" content="noindex, follow"><br><br>{{ end }}|

## 4b — Ausnahme: eine Taxonomy-Seite doch indexieren

Du hast Taxonomy-Seiten mit eigenem Content (MD-Dateien). Diese kannst du gezielt vom noindex ausnehmen:

|   |
|---|
|**Ausnahme via Front Matter: forceindex: true**<br><br># In der MD-Datei der Taxonomy-Seite, z.B. content/tags/mediation/_index.md<br><br>---<br><br>title: "Mediation – alle Artikel im Überblick"<br><br>description: "Alle Artikel zu Mediation, Konfliktklärung und systemischer Beratung auf mediator.sweti.de"<br><br>forceindex: true   # ← Diese Seite wird NICHT auf noindex gesetzt<br><br>---<br><br>Hier kommt der beschreibende Text der Taxonomy-Seite...|

|   |
|---|
|**Wann lohnt sich forceindex: true?**<br><br>›    Nur wenn die Taxonomy-Seite mindestens 200 Wörter eigenständigen Text hat.<br><br>›    Nur wenn das Tag-Keyword Suchvolumen hat (z.B. 'Mediation' ja, 'systemisch' fraglich).<br><br>›    Im Zweifel: noindex lassen — Crawl-Budget für Artikel sparen.|

# Schritt 5 — Front Matter: Vorlage für Artikel

Jeder Artikel braucht diese Felder. Ohne description generiert Google eine zufällige Vorschau — das senkt die Click-Through-Rate deutlich.

## Vollständige Front Matter-Vorlage

|   |
|---|
|**Front Matter — Vorlage für /content/post/artikel-name.md**<br><br>---<br><br># ── PFLICHTFELDER ────────────────────────<br><br>title: "Pflegekonflikt in der Familie – wie Mediation in Dresden hilft"<br><br># Max. 60 Zeichen für Google-Vorschau<br><br>description: "Wenn Geschwister sich über die Elternpflege streiten: Mediation in Dresden bietet vertrauliche Unterstützung. Kostenloses Erstgespräch vereinbaren."<br><br># Max. 155 Zeichen — wird in Google-Suchergebnissen angezeigt<br><br>date: 2026-03-01<br><br>lastmod: 2026-03-01          # Bei Aktualisierungen anpassen<br><br>draft: false<br><br># ── URL & KATEGORISIERUNG ────────────────<br><br>slug: "pflegekonflikt-mediation-dresden"<br><br># Keyword im Slug — keine Umlaute, keine Leerzeichen<br><br>tags:<br><br>  - "Pflegekonflikte"<br><br>  - "Familienmediation"<br><br>  - "Dresden"<br><br># ── OPTIONALE SEO-FELDER ─────────────────<br><br>author: "Sweti [Nachname]"<br><br># Beitragsbild für Open Graph / Social Media<br><br>image: "/images/pflegekonflikt-mediation.jpg"<br><br># Seite aus Index ausschließen (Standard: false)<br><br>noindex: false<br><br># Taxonomy-Seite forciert indexieren (Standard: false)<br><br>forceindex: false<br><br>---|

## Häufige Front Matter-Fehler

|   |   |   |
|---|---|---|
|**Fehler**|**Auswirkung**|**Fix**|
|Kein description-Feld|Google wählt zufälligen Text → schlechte Klickrate|Immer description setzen (max. 155 Zeichen)|
|Umlaute im Slug|URL-Encoding-Probleme, schlechtes SEO-Signal|Nur a-z, 0-9, Bindestriche im slug-Feld|
|draft: true vergessen|Seite erscheint nicht im Build|Vor Deploy: draft: false prüfen|
|lastmod nie aktualisiert|Google erkennt keine frischen Inhalte|Bei jeder Überarbeitung lastmod anpassen|
|title > 60 Zeichen|Wird in Google abgeschnitten|Titel unter 60 Zeichen halten|

# Schritt 6 — Sitemap prüfen & in GSC eintragen

## 6a — Sitemap lokal prüfen

Nach jedem Build: im /public/-Ordner prüfen ob sitemap.xml vorhanden ist und die richtigen URLs enthält.

|   |
|---|
|**Terminal — Sitemap-Check nach Build**<br><br># Lokaler Build und Sitemap-Check<br><br>hugo --minify<br><br># Sitemap im public-Ordner anzeigen<br><br>cat public/sitemap.xml \| head -30<br><br># Anzahl der URLs in der Sitemap zählen<br><br>grep -c '<loc>' public/sitemap.xml<br><br># Erwartetes Ergebnis: alle deine Artikel + Seiten<br><br># NICHT enthalten sein sollten: /tags/*, /search/|

## 6b — Sitemap in Google Search Console eintragen

1.   GSC öffnen → linkes Menü → 'Sitemaps'

2.   Im Feld 'Neue Sitemap hinzufügen' eingeben: sitemap.xml

3.   Auf 'Senden' klicken

4.   Status sollte nach kurzer Zeit 'Erfolgreich' zeigen

5.   Anzahl der erkannten URLs notieren → das ist deine Baseline

|   |
|---|
|**Was eine gesunde Sitemap zeigen sollte**<br><br>›    Alle Blogartikel (/post/*) — vollständig enthalten<br><br>›    Alle Landingpages (/angebote/*, /dienstleistungen/*) — enthalten<br><br>›    Startseite, Über mich, Kontakt — enthalten<br><br>›    NICHT enthalten: /tags/*, /search/, Seiten mit noindex<br><br>›    Wenn /tags/* trotzdem drin ist: outputs in hugo.toml prüfen (Schritt 1)|

# Schritt 7 — Deploy-Checkliste

**Diese Checkliste gilt nach jedem Build und FTP-Upload.**

## Vor dem Build

•      hugo.toml: baseURL korrekt (https://mediator.sweti.de/)?

•      Neuer Artikel: description im Front Matter gesetzt?

•      Neuer Artikel: draft: false gesetzt?

•      Geänderte Artikel: lastmod aktualisiert?

## Build ausführen

|   |
|---|
|**Terminal — Build-Befehle**<br><br># Standard Build mit Minify<br><br>hugo --minify<br><br># Prüfen ob Build erfolgreich war (keine Fehler in der Ausgabe)<br><br># Wichtig: auf Warnings achten — z.B. 'Page not found' bei internen Links<br><br># Sitemap-Check<br><br>grep -c '<loc>' public/sitemap.xml|

## Nach dem FTP-Upload

•      Browser: https://mediator.sweti.de/ aufrufen — lädt die Seite korrekt?

•      Browser: https://mediator.sweti.de/sitemap.xml aufrufen — ist die Sitemap erreichbar?

•      Browser: https://mediator.sweti.de/robots.txt aufrufen — korrekte Ausgabe?

•      Neuen Artikel aufrufen: Ist der Meta-Title korrekt (im Browser-Tab sichtbar)?

•      Rechtsklick → 'Seitenquelltext anzeigen' → Suche nach 'description' — ist sie befüllt?

•      Bei neuen wichtigen Seiten: GSC → URL-Prüfung → 'Indexierung beantragen'

## Monatlich

•      GSC → Seiten → Zahlen: Wie viele Seiten sind indexiert? Trend positiv?

•      GSC → Suchanfragen → Filter 'Dresden' → welche Keywords erzeugen Impressionen?

•      Sitemap-Fehler in GSC prüfen: Sitemaps → letzte Lesung → Fehler?

•      5xx-Fehler: Abdeckung → Fehler → Serverfehler (5xx) → noch vorhanden?

# Quick Reference — Dateien im Überblick

|   |   |   |   |
|---|---|---|---|
|**Datei**|**Pfad**|**Was du änderst**|**Wann**|
|hugo.toml|/ (Root)|baseURL, Params, Sitemap-Config|Einmalig + bei neuen Taxonomien|
|head.html|layouts/partials/|Meta-Tags, Canonical, Schema.org, noindex-Logik|Einmalig|
|robots.txt|layouts/|Disallow-Regeln|Einmalig|
|Front Matter|content/post/*.md|title, description, slug, lastmod|Bei jedem Artikel|
|Taxonomy MD|content/tags/*/_index.md|forceindex: true für gute Tag-Seiten|Bei Bedarf|

HUGO SEO-Konfiguration | mediator.sweti.de | März 2026