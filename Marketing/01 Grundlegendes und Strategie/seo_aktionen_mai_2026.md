---

## title: "SEO-Aktionen Mai 2026 – FINALE VERSION (schlank)" 
type: "seo-aktion" 
tags: [seo, stufenplan, aktion, hugo-ananke, taxonomie, noindex, redirect] 
status: "aktiv" 
date: 2026-04-27 
verbunden_mit: "[[SEO-Architektur-Umbau – Stufenplan ohne Produktionsabbruch]]" 
zeitraum: "KW 19–28 (5.5.–12.7.2026), Inhalts-Merge ab Q3" 
strategie: "Schlank: noindex + Cluster-Konsolidierung jetzt, Inhalts-Merge später"
---
# SEO-Aktionen Mai 2026 – FINALE VERSION

> **Strategische Grundlogik:**
> 
> 1. Klasse-A-Fachartikel (alle Untertypen) jetzt auf `noindex` setzen – schnell, risikoarm, gibt Crawl-Budget sofort frei.
> 2. /angebote/-Cluster konsolidieren ohne Inhalts-Merge – die wichtigste Substanz bleibt auf der HAUPT-Seite, der Rest wird per 301 umgeleitet.
> 3. Inhalts-Merge der starken Klasse-A1-Artikel in Landingpages ab Q3 2026, parallel zur Schärfung der Prioritätsseiten. Eigene Aufgabe, eigener Rhythmus.

## Index-Priorität

**Diese Seiten MÜSSEN in den Index:**

1. `/mediator-dresden/` – Landingpage regional
2. `/pflegende-angehoerige-dresden/` – Landingpage Pflege
3. `/nachbarschaftskonflikt-mediation-dresden/` – Landingpage Nachbarschaft
4. `/themen/erbstreit-familie-klaeren-dresden/`
5. `/themen/nachbarschaftskonflikte-klaeren-dresden/`
6. `/themen/schwierige-gespraeche-familie/`
7. `/themen/mediation-verstehen/`
8. `/themen/wenn-eltern-aelter-werden/`
9. `/` (Startseite)
10. `/about/` (Über mich)
11. `/post/origin-story-mediator-werden/` (Cornerstone)
12. `/angebote/praxisaufbau-mediation-dresden/`

---

## Hugo-spezifische Anweisungen

### Wie noindex: true im Ananke-Theme greift

Im FrontMatter der Seite oder des `_index.md`:

```yaml
---
title: "..."
date: 2026-...
noindex: true
---
```

### Verifikation nach Deploy

Nach jedem Deploy einer noindex-Seite:

1. Browser → URL öffnen → Strg+U
2. Strg+F nach `noindex` suchen
3. Erwartet: `<meta name="robots" content="noindex">` im `<head>`

### Hugo-Aliases vs. .htaccess-Redirect

**Für SEO-Redirects immer `.htaccess`** – Hugo-Aliases erzeugen JavaScript-Redirects, die von Google langsamer und unzuverlässiger verarbeitet werden.

### Accordion-Shortcode (für Q3-Inhalts-Merge)

Du hast bereits einen Shortcode implementiert. Beispiel-Aufruf (Syntax bei dir prüfen):

```markdown
{{< accordion summary="Vertiefung: 9-Felder-Modell" >}}
Inhalt...
{{< /accordion >}}
```

---

## STUFE 1 – Test des Mechanismus (KW 19, ab 5.5.2026)

### Aufgabe 1.1 – Noindex-Test

**Ziel:** Vor 25+ Änderungen prüfen, ob die Mechanik wirklich greift.

**Aktion:**

1. `/post/9-felder-modell-kochernz/` als Test-Kandidat
2. FrontMatter ergänzen: `noindex: true`
3. Bauen, deployen
4. Browser-Quelltext prüfen
5. In GSC: URL prüfen → "Indexierung beantragen"
6. **5–7 Tage warten**

**Erwartung:** GSC zeigt URL als "Durch noindex-Tag ausgeschlossen".

**Falls nicht:** Theme-Logik debuggen vor weiteren Schritten.

**Aufwand:** 30 Minuten + Wartezeit

---

### Aufgabe 1.2 – Klassifikations-Liste erstellen

Datei: `/post-klassifikation-mai-2026.md`

**Vorlage:**


# /post/-Klassifikation Mai 2026

## Klasse A – Fachartikel (alle auf noindex setzen)

### A1 – mit thematisch nahem Landingpage-Pendant
(später Kandidaten für Inhalts-Merge in Q3)

| Quelle                                           | Mögliches Ziel                          | Merge-Priorität |
| ------------------------------------------------ | --------------------------------------- | --------------- |
| x post/systemische-auftragsklaerung/             | /angebote/konfliktklaerung-vorbereiten/ | hoch            |
| x /post/klaerungsphase-p2-systemische-mediation/ | /themen/mediation-verstehen/            | hoch            |
| x /post/p4-umsetzungsphase-systemisch/           | /themen/mediation-verstehen/            | mittel          |
| x /post/dienstleistung-elder/                    | /pflegende-angehoerige-dresden/         | hoch            |
| x /post/mediation-wg/                            | /themen/schwierige-gespraeche-familie/  | mittel          |
| x /post/konfliktcoaching/                        | /angebote/konfliktklaerung-vorbereiten/ | hoch            |

### A2 – ohne Pendant (nur noindex, kein Merge)

-  x /post/9-felder-modell-kochernz/
- x /post/drei-beobachtungsebenen-simon/
- x /post/zweiervertrag/
- x /post/dreiervertrag/
- x /post/harvard-batna/
- x /post/harvard-konzept/
- x /post/kreationsphase-moeglichkeitsraeume/ (/post/kreationsphase-p3-systemische-mediation/)
- x /post/proz-mediation/
- x /post/slm/
- x /post/gefuuele-in-der-transaktionsanalyse/
- x /post/passivitaet-verstehen-handlung-ermoeglichen/
- x /post/zwischenraeume-wo-wandel-wirklich-passiert/
- x /post/ressourcenorientierung-mediation/
- x /post/hypothesenbildung-systemische-beratung/
- x /post/mediation-arbeitsrecht-stabilisiert-oder-scheitert/
- x /post/mediation-als-ergaenzendes-verfahren-entscheidungslogiken-anwaelte/
- x /post/mediation-familienrecht-nicht-sinnvoll/
- x /post/warum-mediation-zeit-kostet/
- x /post/konfliktberatung/

## Klasse B – Klienten-orientiert (KEIN noindex, indexierbar)

- /post/streit-nachbarn-laerm-was-tun/
- /post/erbe-klaeren-ohne-streit-dresden/
- /post/was-kostet-mediation-dresden/
- /post/was-ist-mediation-mediator-dresden/
- /post/menschen-im-uebergang-ruhestand/
- /post/mediation-oder-rechtsanwalt-dresden/
- /post/nachbarschaft/
- /post/hoch-eskalierte-nachbarschaftskonflikte-verstaendigung-scheitert/
- /post/origin-story-mediator-werden/
- /post/kontaktabbruch-familie-verstehen/
- /post/elder-mediation/
- /post/geschwisterkonflikte-pflege-dresden/
- /post/pflegegespraech-vorbereiten-dresden/

## Klasse C – Einzelfallentscheidung
(zu prüfen)

## Weitere /post/-Artikel
(GSC zeigt nur Artikel mit Impressionen – manuell ergänzen)

**Aufwand:** 2 Stunden

---

## STUFE 2 – Crawl-Budget freigeben (KW 20–21)

**Voraussetzung:** Aufgabe 1.1 funktioniert.

### Aufgabe 2.1 – Klasse A vollständig auf noindex (KW 20)

Alle Klasse-A-Artikel (A1 + A2 zusammen, ~25 Stück) auf noindex.

**Vorgehen:**

1. Pro Tag 5–7 Artikel
2. FrontMatter ergänzen: `noindex: true`
3. Build, Deploy
4. Stichprobenartig im Browser prüfen

**Klasse A1 unverändert lassen** (kein Redirect, kein Merge zunächst). Sie erhält nur den `noindex`-Tag wie A2. Der Inhalts-Merge folgt später.

**Aufwand:** 3–4 Stunden über die Woche verteilt **Beobachtung:** Nach 7 Tagen erste GSC-Auswertung

---

### Aufgabe 2.2 – B2B-Bereinigung (KW 20)

In `.htaccess` anhängen, nach den bestehenden Redirects (Zeile 50):

```apache
# ───────────────────────────────────────────────────────────────
# 301-REDIRECTS: B2B-INHALTE → BELTSCHEW.DE
# Stand: Mai 2026 - Konsolidierung Privatkunden-Marke
# ───────────────────────────────────────────────────────────────

RewriteRule ^zielgruppen/fuehrung_verwaltung/?$ https://beltschew.de/ [R=301,L]
RewriteRule ^zielgruppen/it/?$ https://beltschew.de/ [R=301,L]
RewriteRule ^zielgruppen/teams/?$ https://beltschew.de/ [R=301,L]

# Veraltete Vorgänger-Seite
RewriteRule ^dienstleistungen/?$ /angebote/ [R=301,L]
```

**Vor jeder .htaccess-Änderung:** Backup als `htaccess_backup_2026-05-XX.txt`.

**Test nach Deploy:**

```bash
curl -I https://mediator.sweti.de/zielgruppen/it/
# Erwartet: HTTP/2 301
```

**Hugo-Aktion:** Inhalte aus `/content/zielgruppen/[name]/` löschen.

**Aufwand:** 30 Minuten

---

### Aufgabe 2.3 – /angebote/-Karteileichen (KW 21)

Die fünf bereits noindexten Seiten endgültig konsolidieren:

```apache
# ───────────────────────────────────────────────────────────────
# 301-REDIRECTS: /angebote/ KARTEILEICHEN
# ───────────────────────────────────────────────────────────────

RewriteRule ^angebote/beziehung-beruhigen/?$ /angebote/familienkonflikt-generationen-dresden/ [R=301,L]
RewriteRule ^angebote/ruhe-schaffen/?$ /angebote/konfliktklaerung-vorbereiten/ [R=301,L]
RewriteRule ^angebote/rolle-klaeren/?$ /angebote/coaching-in-uebergaengen/ [R=301,L]
RewriteRule ^angebote/zusammenarbeit-klaeren/?$ https://beltschew.de/ [R=301,L]
RewriteRule ^angebote/vertrauen-aufbauen/?$ https://beltschew.de/ [R=301,L]
```

**Hugo-Aktion:**

1. `_index.md`-Dateien löschen
    
2. **Wegen Taxonomie:** Aus allen `/zielgruppen/`-Seiten in deren FrontMatter die jeweiligen Tags aus der `angebote`-Liste entfernen:
    
    ```yaml
    # vorher:
    angebote: ["rolle-klaeren", "veraenderung-durchdenken", ...]
    # nachher:
    angebote: ["veraenderung-durchdenken", ...]
    ```
    
3. Build, Deploy, Test
    

**Aufwand:** 2 Stunden

---

## STUFE 3 – Cluster-Konsolidierung (KW 22–24)

**Strategischer Kern:** Pro Cluster eine HAUPT-Seite, Rest per 301. **Kein Inhalts-Merge zunächst** – nur die Redirects.

Falls eine Quell-Seite signifikante Substanz hat, die nicht in der HAUPT-Seite existiert: Notiz machen für späteren Inhalts-Merge in Q3, **aber jetzt trotzdem redirecten**. Der Inhalt geht nicht verloren – er ist im Hugo-Source weiter da, kann später in die HAUPT-Seite eingefügt werden.

---

### Aufgabe 3.1 – Pflege-Cluster (KW 22)

```apache
# Pflege-Cluster: HAUPT = /angebote/mediation-bei-pflege-erbe-uebergang-dresden/
RewriteRule ^angebote/pflege-reflektieren/?$ /angebote/mediation-bei-pflege-erbe-uebergang-dresden/ [R=301,L]
RewriteRule ^angebote/elder-mediation/?$ /angebote/mediation-bei-pflege-erbe-uebergang-dresden/ [R=301,L]
```

**Hugo:**

1. `_index.md`-Dateien löschen
2. Tags aus allen `/zielgruppen/`-FrontMatter entfernen
3. Backup der Inhalte für späteren Merge speichern (z.B. in `/_archiv/pflege-reflektieren-2026-05.md`)

**Aufwand:** 1 Stunde

---

### Aufgabe 3.2 – Übergang-Cluster (KW 22)

```apache
# Übergang-Cluster: HAUPT = /angebote/coaching-in-uebergaengen/
RewriteRule ^angebote/orientierung-finden/?$ /angebote/coaching-in-uebergaengen/ [R=301,L]
RewriteRule ^angebote/veraenderung-durchdenken/?$ /angebote/coaching-in-uebergaengen/ [R=301,L]
RewriteRule ^angebote/entscheidungen-ermoeglichen/?$ /angebote/coaching-in-uebergaengen/ [R=301,L]
```

**Hinweis:** `/angebote/orientierung-finden/` ist die ranking-stärkste Seite des Clusters (7 Impressionen, Pos 5.1). **Vor Redirect:** Inhalt kopieren und ins Archiv legen, damit er später ggf. ins coaching-in-uebergaengen gemerged werden kann.

**Aufwand:** 1 Stunde

---

### Aufgabe 3.3 – Familie-Cluster (KW 23)

**Empfehlung:** `/angebote/familienkonflikt-generationen-dresden/` als HAUPT.

```apache
# Familie-Cluster: HAUPT = /angebote/familienkonflikt-generationen-dresden/
RewriteRule ^angebote/beziehungs-und-familiengespraeche/?$ /angebote/familienkonflikt-generationen-dresden/ [R=301,L]
RewriteRule ^angebote/klarkommen-generationen/?$ /angebote/familienkonflikt-generationen-dresden/ [R=301,L]
```

**Bestätigung benötigt:** Variante A (oben, Empfehlung) oder Variante B (`beziehungs-und-familiengespraeche` als HAUPT)?

**Aufwand:** 1 Stunde

---

### Aufgabe 3.4 – Konflikt- und Team-Cluster (KW 23)

```apache
# Konflikt-Cluster
RewriteRule ^angebote/konfliktverstehen/?$ /angebote/konfliktklaerung-vorbereiten/ [R=301,L]

# Team-Cluster (zu beltschew.de)
RewriteRule ^angebote/projektteam-spannung/?$ https://beltschew.de/ [R=301,L]
RewriteRule ^angebote/konfliktpraevention-team/?$ https://beltschew.de/ [R=301,L]
```

**Aufwand:** 30 Minuten

---

### Aufgabe 3.5 – /zielgruppen/privatpersonen/ (KW 24)

Diese Seite hat 2 Impressionen, Position 13.

**Drei Optionen:** a) **Behalten** als Übersichtsseite mit Links zu Pillarseiten b) **Redirect** zu `/` c) **Redirect** zu `/themen/schwierige-gespraeche-familie/`

**Empfehlung:** (a), wenn du dort echten Hub-Inhalt schaffen kannst. Sonst (c).

**Frage an dich:** Welche Option?

**Aufwand:** 1–2 Stunden (je nach Option)

---

## STUFE 4 – Index-Priorität pushen (KW 25–28)

**Voraussetzung:** Stufen 1–3 abgeschlossen.

### Aufgabe 4.1 – Drei regionale Landingpages

Audit + Schärfung pro Seite. Schema:

```markdown
# Audit: /mediator-dresden/

## Aktueller Stand (GSC)
- "mediator dresden" Pos 3.3, 34 Impressionen, 2 Klicks
- "mediator" Pos 8.1, 22 Impressionen, 0 Klicks

## Inhaltsanalyse
- [ ] Wortzahl: ___ (Ziel: 1500+)
- [ ] H1 mit Keyword: ja/nein
- [ ] H2-Struktur: ja/nein
- [ ] Lokale Verankerung sichtbar: ja/nein
- [ ] Sweti als Person sichtbar: ja/nein
- [ ] Klare CTA: ja/nein
- [ ] Bild mit Alt-Text: ja/nein
- [ ] Interne Links zu Pillarseiten: Anzahl ___

## Verbesserungsplan
1. ...
2. ...
```

**Reihenfolge:**

- KW 25: `/mediator-dresden/`
- KW 26: `/pflegende-angehoerige-dresden/`
- KW 27: `/nachbarschaftskonflikt-mediation-dresden/`

**Aufwand pro Seite:** 4–6 Stunden

---

### Aufgabe 4.2 – Pillarseiten-Audit (KW 28+)

Gleiches Schema für die fünf `/themen/`-Pillarseiten.

**Reihenfolge:**

1. `/themen/erbstreit-familie-klaeren-dresden/`
2. `/themen/wenn-eltern-aelter-werden/`
3. `/themen/nachbarschaftskonflikte-klaeren-dresden/`
4. `/themen/schwierige-gespraeche-familie/`
5. `/themen/mediation-verstehen/`

**Aufwand pro Seite:** 4–6 Stunden, gesamt 20–30 Stunden

---

## STUFE 5 – Beobachtung (laufend)

### Wöchentliche GSC-Beobachtung

In `seo-monatsbilanz-juni-2026.md`:

# SEO-Monatsbilanz Juni 2026

## Zahlen-Vergleich

| Metrik | April | Juni | Veränderung |
|---|---|---|---|
| Indexierte Seiten | 19 | __ | __ |
| Nicht-indexierte | 76 | __ | __ |
| Klicks (28 Tage) | 3 | __ | __ |
| Impressionen | 503 | __ | __ |

## Index-Priorität – Status

- [ ] /mediator-dresden/
- [ ] /pflegende-angehoerige-dresden/
- [ ] /nachbarschaftskonflikt-mediation-dresden/
- [ ] /themen/erbstreit-familie-klaeren-dresden/
- [ ] /themen/nachbarschaftskonflikte-klaeren-dresden/
- [ ] /themen/schwierige-gespraeche-familie/
- [ ] /themen/mediation-verstehen/
- [ ] /themen/wenn-eltern-aelter-werden/

## Suchanfragen-Verschiebung
Vor: ...
Jetzt: ...

## Auffälligkeiten
...

## Anpassungen für Juli

---

## Q3 2026 – Inhalts-Merge (separater Track)

Ab Juli/August 2026, parallel zu Stufe 4:

**Methodik pro Klasse-A1-Merge:**

1. Quelle und Ziel auswählen (siehe A1-Tabelle in Stufe 1.2)
2. Klienten-relevanten Kern aus Quelle extrahieren (200–400 Wörter)
3. Mit Accordion-Shortcode in Ziel-Landingpage einfügen
4. Quell-Artikel aus `/content/post/` löschen
5. 301-Redirect in `.htaccess` setzen
6. Test, Deploy, Beobachtung

**Rhythmus:** 1–2 Merges pro Monat. Niemals in einer Welle. Pro Merge 2–4 Stunden (vorrangig Schreib- und Strukturarbeit).

**Reihenfolge nach Wirkung:**

1. /post/dienstleistung-elder/ → /pflegende-angehoerige-dresden/
2. /post/systemische-auftragsklaerung/ → /angebote/konfliktklaerung-vorbereiten/
3. /post/konfliktcoaching/ → /angebote/konfliktklaerung-vorbereiten/
4. /post/klaerungsphase-p2-systemische-mediation/ → /themen/mediation-verstehen/
5. /post/p4-umsetzungsphase-systemisch/ → /themen/mediation-verstehen/
6. /post/mediation-wg/ → /themen/schwierige-gespraeche-familie/

**Erwartung:** Q3 = 3 Merges, Q4 = 3 Merges. Ende 2026 alle A1-Artikel in Landingpages integriert oder migriert.

---

## Endübersicht – Vorher / Nachher (Mai–Juli 2026)

### /angebote/

**Vorher:** 22 Seiten **Nachher:** 7 Hauptseiten

|Behalten|Begründung|
|---|---|
|`/angebote/`|Übersicht|
|`/angebote/praxisaufbau-mediation-dresden/`|Linie A/B/C|
|`/angebote/mediation-bei-pflege-erbe-uebergang-dresden/`|Pflege-HAUPT|
|`/angebote/erbschaftsstreit-mediation-dresden/`|Erbe einzigartig|
|`/angebote/familienkonflikt-generationen-dresden/`|Familie-HAUPT|
|`/angebote/coaching-in-uebergaengen/`|Übergang-HAUPT|
|`/angebote/konfliktklaerung-vorbereiten/`|Konflikt-HAUPT|

### /zielgruppen/

**Vorher:** 4 Seiten **Nachher:** 1 Seite (Privatpersonen, ggf. neu strukturiert)

### /post/

**Vorher:** ~60 Artikel, alle indexierbar **Nachher:**

- ~13 Klasse-B-Artikel indexiert
- ~25 Klasse-A-Artikel auf noindex (A1 + A2)
- Klasse C: zu klären

**In Q3/Q4 2026:** ~6 Klasse-A1-Artikel werden in Landingpages gemerged und per 301 umgeleitet.

---

## Risiko-Vermeidung – Checkliste

- [ ] Backup der `.htaccess` erstellt?
- [ ] Backup der zu ändernden Hugo-Datei?
- [ ] Inhalt der zu löschenden Seite gesichert (in /_archiv/)?
- [ ] Test der Ziel-URL?
- [ ] Build lokal getestet?
- [ ] Nach Deploy: Redirect-Test mit https://httpstatus.io/?
- [ ] Bei Taxonomie: Tags aus `/zielgruppen/`-FrontMatter entfernt?

---

## Aufwand gesamt

|Stufe|Aufwand|
|---|---|
|Stufe 1 – Test + Klassifikation|3 h|
|Stufe 2 – noindex + B2B + Karteileichen|6–7 h|
|Stufe 3 – Cluster-Konsolidierung|4–6 h|
|Stufe 4 – Prioritätsseiten schärfen|36–48 h|
|Stufe 5 – Beobachtung|2 h/Monat|
|**Mai–Juli 2026 gesamt**|**49–64 h**|
|Q3 2026 – Inhalts-Merge|12–24 h zusätzlich|

Bei 2 Tagen/Woche frei: 4–6 Stunden/Woche.

---

_Stand: 27. April 2026 · Schlanke Version · Inhalts-Merge nach Q3 verschoben · Crawl-Budget-Freigabe und Konsolidierung haben Priorität_