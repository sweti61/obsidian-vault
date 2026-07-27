---
title: Template-Änderungen Ananke-Theme – Heading-Struktur
type: technische-aufgabe
status: vorbereitet, nicht umgesetzt
datum_erstellung: 16.05.2026
prioritaet: mittel
geschaetzter_aufwand: 1.5-2 Stunden Template-Arbeit + Test
zugehoerig_zu:
  - "[[startseite-audit-2026-05-16]]"
  - "[[zeitplan-14-tage-2026-05-16-v3]]"
---

# Template-Änderungen Ananke-Theme – Heading-Struktur

> **Kontext:** Audit der Startseite am 16.05.2026 hat 5 H1-Verletzungen aufgedeckt plus weitere Heading-Probleme. Diese Liste fasst die nötigen Template-Anpassungen zusammen.

---

## 1. Übersicht der Probleme

```
🔴 Mehrfache H1 (5x statt 1x)            - Featured-Templates
🟡 H2 als Subtitle nach Hero             - Header-Template
🟡 H2 als CTA-Button (CTA-Shortcode)     - cta-link-Shortcode
🟡 H3 als Personenname (Testimonials)    - Testimonial-Template
🟢 Fehlender H2 fuer Karten-Sektion      - Intro-Section
🟢 Inkonsistente H3-Logik                - mehrere Templates
```

---

## 2. Konkrete Template-Anpassungen

### 2.1 Featured Articles Template (Priorität 1 - hoch)

**Vermutete Pfade (in Hugo-Theme oder Override-Verzeichnis):**

```
themes/ananke/layouts/_default/list.html
layouts/_default/list.html  (Override-Variante)
layouts/index.html
layouts/partials/recent-articles.html  (falls vorhanden)
```

**Aktueller Code (extrahiert aus HTML der Startseite):**

```html
<h1 class="f3 fw1 athelas mt0 lh-title">
  <a href="/mediator-dresden/" class="color-inherit dim link">
    Mediator in Dresden – Konflikte in Familie, Pflege & Nachbarschaft klären
  </a>
</h1>
```

**Geänderter Code:**

```html
<h3 class="f3 fw1 athelas mt0 lh-title">
  <a href="/mediator-dresden/" class="color-inherit dim link">
    Mediator in Dresden – Konflikte in Familie, Pflege & Nachbarschaft klären
  </a>
</h3>
```

**Methodische Anmerkung:** H3 statt H2, weil die Featured-Sektion selbst durch H2 ("Für meine Leser:") eingeleitet wird. Die einzelnen Featured-Artikel sind Unterstrukturen → H3.

**Betrifft:** Alle 3 Featured-Artikel-Container in der Featured-Sektion.

---

### 2.2 Section "Mehr" mit Origin-Story-Link (Priorität 1 - hoch)

**Aktueller Code:**

```html
<section class="w-100">
  <h1 class="f3">Mehr</h1>
  <h2 class="f5 fw4 mb4 dib mr3">
    <a href="/post/origin-story-mediator-werden/" class="link black dim">
      Wie ich Mediator wurde – die Geschichte hinter einer zweiten Profession
    </a>
  </h2>
  <a href="/post/" class="...">Alles Über die Mediation</a>
</section>
```

**Probleme:**

- H1 "Mehr" ist semantisch leer (ein Wort, kein SEO-Wert)
- H2 als Link-Text ist unklar

**Geänderter Code:**

```html
<section class="w-100">
  <h2 class="f3">Weitere Lektüre</h2>
  <h3 class="f5 fw4 mb4 dib mr3">
    <a href="/post/origin-story-mediator-werden/" class="link black dim">
      Wie ich Mediator wurde – die Geschichte hinter einer zweiten Profession
    </a>
  </h3>
  <a href="/post/" class="...">Alles über die Mediation</a>
</section>
```

**Änderungen:**

- "Mehr" → "Weitere Lektüre" (semantisch reicher)
- H1 → H2
- H2 → H3
- "Alles Über" → "Alles über" (Groß-/Kleinschreibung)

**Pfad:** Vermutlich `layouts/index.html` oder `layouts/_default/baseof.html`

---

### 2.3 Hero-Subtitle als H2 (Priorität 2 - mittel)

**Aktueller Code (Hero im Header):**

```html
<h2 class="fw1 f5 f3-l white-80 measure-wide-l center mt3">
  Familienmediation in Dresden bei Pflegekonflikten, Erbstreit, 
  Nachbarschaftskonflikt und Generationenkonflikten. Systemischer Mediator – 
  ruhig, strukturiert, kostenloses Erstgespräch.
</h2>
```

**Geänderter Code:**

```html
<p class="fw1 f5 f3-l white-80 measure-wide-l center mt3">
  Familienmediation in Dresden bei Pflegekonflikten, Erbstreit, 
  Nachbarschaftskonflikt und Generationenkonflikten. Systemischer Mediator – 
  ruhig, strukturiert, kostenloses Erstgespräch.
</p>
```

**Begründung:** Die Description ist ein Untertitel, keine Sektion-Überschrift. CSS-Klassen bleiben gleich.

**Pfad:** Vermutlich `layouts/partials/site-header.html` oder `layouts/_default/baseof.html`

---

### 2.4 CTA-Link-Shortcode mit H2 (Priorität 2 - mittel)

**Aktueller Code (cta-link Shortcode):**

```html
<h2 id="hahahugoshortcode2s2hbhb">
  <div class="db w-100 mv3 pa2 ba b--moon-gray br2 tl">
    <a class="db link dark-gray fw6 f4" href="https://calendly.com/mediator-sweti">
      🗨️ Jetzt kostenloses Erstgespräch vereinbaren
    </a>
  </div>
</h2>
```

**Problem:** CTA-Button ist als H2 markiert. Plus: automatisch generierte ID "hahahugoshortcode2s2hbhb".

**Geänderter Code:**

```html
<div class="db w-100 mv3 pa2 ba b--moon-gray br2 tl">
  <a class="db link dark-gray fw6 f4" href="https://calendly.com/mediator-sweti">
    🗨️ Jetzt kostenloses Erstgespräch vereinbaren
  </a>
</div>
```

**Begründung:** Ein CTA ist semantisch ein Aktions-Element, kein Sektion-Titel.

**Pfad:** `layouts/shortcodes/cta-link.html`

---

### 2.5 Testimonial-H3 mit Personennamen (Priorität 3 - niedrig)

**Aktueller Code:**

```html
<h3 class="f5 mb2">Thomas S.</h3>
```

**Möglicher geänderter Code (zwei Varianten):**

Variante A – Themen-fokussiert:

```html
<h3 class="f5 mb2">Teamkonflikte am Arbeitsplatz lösen</h3>
<p class="f6">Thomas S.</p>
```

Variante B – Personenname als Untertitel:

```html
<h4 class="f5 mb2">Thomas S.</h4>
```

**Pfad:** Vermutlich `layouts/partials/testimonials.html` oder Template-Section.

**Methodische Entscheidung:** Variante A ist besser, aber aufwändiger. Variante B ist einfacher, aber methodisch nur eine Verbesserung.

---

### 2.6 Karten-Sektion ohne H2-Einleitung (Priorität 3 - niedrig)

**Aktueller Code (in _index.md vor den Karten):**

```markdown
In unterschiedlichen Lebenssituationen entstehen Konflikte auf ganz eigene Weise.  
Hier finden Sie typische Konstellationen, in denen ich begleite:
```

**Problem:** Kein H2 leitet die Karten-Sektion ein. Das macht die Struktur unklar.

**Geänderter Code:**

```markdown
## Typische Konflikt-Konstellationen, in denen ich begleite

In unterschiedlichen Lebenssituationen entstehen Konflikte auf ganz eigene Weise.
```

Oder als direkte HTML-Erweiterung im Template, falls die Karten-Sektion in einem Layout-Partial steckt.

**Pfad:** `content/_index.md` oder das entsprechende Template-Partial.

---

## 3. Umsetzungs-Reihenfolge

### Stufe 1 – Kritisch (1 Stunde)

```
[ ] Featured Articles Template: H1 → H3
[ ] Section "Mehr": H1 → H2, H2 → H3, Text "Mehr" → "Weitere Lektüre"
```

**Wirkung:** 4 von 5 H1-Verletzungen behoben. Site-weit, weil Featured-Template auf vielen Seiten verwendet wird.

### Stufe 2 – Mittel (45 Min)

```
[ ] Hero-Subtitle: H2 → <p> (Header-Template)
[ ] CTA-Link-Shortcode: H2 → <div>
```

**Wirkung:** H2-Hierarchie wird korrekt.

### Stufe 3 – Niedrig (30 Min)

```
[ ] Testimonial-Template: Personennamen-Behandlung
[ ] Karten-Sektion: H2-Einleitung
```

**Wirkung:** Inhaltliche Konsistenz, geringe SEO-Wirkung.

**Gesamt-Aufwand:** etwa 2-2.5 Stunden plus Test-Zeit.

---

## 4. Methodisches Vorgehen vor Umsetzung

### Vorab-Schritte

```
1. Backup des Theme-Ordners erstellen
   cp -r themes/ananke themes/ananke_backup_2026-05-16

2. Override-Strategie waehlen:
   - Theme direkt modifizieren (riskanter, aber einfacher)
   - Layouts in eigenes Verzeichnis ueberschreiben (sicherer)

3. Falls Override-Strategie:
   Theme-Layout kopieren nach layouts/ und dort aendern
   Hugo benutzt automatisch die Override-Version

4. Test lokal mit hugo server
5. Validierung mit HTML-Validator
6. Erst dann Deploy
```

### Site-weite Wirkung

Wichtig zu wissen: Die Featured-Articles-Template-Aenderung wirkt sich aus auf:

- Startseite
- Vermutlich auch /post/-Listenseite
- Eventuell /angebote/-Listenseite
- Eventuell /themen/-Listenseite

Vor der Umsetzung pruefen, wo das Template ueberall verwendet wird.

---

## 5. Verifizierungs-Checkliste nach Umsetzung

```
[ ] hugo server lokal: Startseite oeffnen
[ ] HTML-Quelltext pruefen: nur EINE H1?
[ ] H2-Hierarchie korrekt?
[ ] Heading-Struktur mit HTML-Validator pruefen
   z.B. https://www.w3.org/check
[ ] CSS-Darstellung unveraendert? (Klassen muessen bleiben)
[ ] Alle Links funktionieren?
[ ] Test fuer mindestens 3 weitere Seiten:
    /post/, /angebote/, /themen/
[ ] Wenn alles OK: Deploy
[ ] Nach Deploy: GSC > URL pruefen fuer Startseite
[ ] httpstatus.io: Keine neuen Probleme?
[ ] 7 Tage spaeter: GSC-Auswertung
```

---

## 6. Wann umsetzen?

**Empfehlung:** Nach Abschluss der akuten GSC-Beobachtungs-Phase (Tage 14-28 nach Mai-Welle). Konkret etwa:

- Frühestens 22.05. (parallel zu Mini-Bilanz)
- Idealerweise 25.05.-30.05.

Begründung:

- Aktuell laeuft die Index-Stabilisierung
- Template-Aenderung kann Re-Crawl-Wellen ausloesen
- Erst sehen, wo die Site SEO-technisch nach der Stabilisierung steht
- Dann Template-Anpassungen mit klarem Vorher-Nachher-Vergleich

---

## 7. Verbindung zu anderen Aufgaben

Diese Template-Aenderung gehoert zum Aktivierungs-Audit (Masterplan v3 Abschnitt 5.5):

- Wenn die H1-Hierarchie aufgeraeumt ist, wirken die Pillarseiten besser
- /mediator-dresden/ und /pflegende-angehoerige-dresden/ profitieren direkt
- Aufwertung der Origin Story ist effektiver (bessere Heading-Struktur)

Es ist eine **strukturelle Aktivierung** – nicht inhaltliche, sondern technische.

---

_Liste erstellt 16.05.2026 · Umsetzung empfohlen 22.-30.05.2026 · Aufwand 2-2.5 h_