# Anforderungen: FAQ-Seite sweti.de (`/haeufige-fragen/`)

**Projekt:** sweti.de
**Stand:** 25.08.2026
**Kontext:** Umsetzung in separatem Chat, dieses Dokument fasst alle bisher getroffenen Entscheidungen und die YMYL-/E-E-A-T-Anforderungen zusammen

---

## 1. Einordnung und Zweck

sweti.de fällt als Mediations-/Coaching-Angebot unter Googles YMYL-Kategorie (Your Money or Your Life), da Inhalte familiäre, gesundheitliche (Pflege) und teils finanzielle (Erbschaft) Lebensentscheidungen berühren. Google bewertet solche Seiten strenger nach E-E-A-T (Experience, Expertise, Authoritativeness, Trustworthiness).

Die FAQ-Seite erfüllt dabei zwei Funktionen gleichzeitig:
- **Für Besucher:** Abbau von Unsicherheit und typischen Kontakthindernissen (Kosten, Ablauf, Vertraulichkeit), bevor eine Kontaktaufnahme erfolgt
- **Für Google:** sichtbares Signal für Nutzer-Antizipation (Experience) und Vertrauenswürdigkeit (Trustworthiness), zusätzlich potenziell Rich-Snippet-Fähigkeit durch FAQPage-Schema

---

## 2. Platzierung und Abgrenzung

- **Eigene, eigenständige Seite** unter `/haeufige-fragen/`, **nicht** auf der Startseite (dort würde sie den Homepage-Leitfaden „kompakt bleiben" verletzen und mit dem Kompetenz-Freitext/Ablauf-Block inhaltlich überlappen)
- Von der Startseite aus **nicht verlinkt** (aktueller Stand, siehe Dokumentation Startseite). Falls im Rahmen dieses FAQ-Chats ein Link von der Startseite oder aus dem Burger-Menü gewünscht wird, ist das eine offene Entscheidung, die dort getroffen werden sollte, nicht Teil dieser Anforderungen
- **Abgrenzung zu mediator.sweti.de/howto/:** Dort existiert bereits eine „Fragen & Antworten"-Seite. Die sweti.de-Version darf diese nicht 1:1 übernehmen, sondern muss eigenständig, sprachlich einfacher (Zielgruppe 50+, keine Fachsprache) und ausschließlich mit privatem/familiärem Fokus formuliert sein, keine automatische Übersetzung oder Kürzung des bestehenden Textes

---

## 3. B2B-Abgrenzung (strikt, wie für die gesamte Domain)

Keine Fragen zu:
- Organisationsmediation, Teammoderation, Führungskräfte-Coaching
- Verwaltungs- oder Unternehmenskontexten
- IT-Dienstleister- oder Behördenkonflikten

Jede Frage muss aus der Perspektive einer Privatperson gestellt sein, die eine familiäre, pflegebedingte oder nachbarschaftliche Konfliktsituation hat.

---

## 4. Technische Rahmenbedingungen (bereits als ToDo dokumentiert)

- **FAQPage-JSON-LD** wird ausschließlich über ein Frontmatter-Feld dieser einen Seite gesteuert (nicht zentral in `config.toml`, im Unterschied zum LocalBusiness-Schema)
- **Kritische Anforderung von Google für FAQPage-Schema:** Der im JSON-LD hinterlegte Frage-/Antworttext muss inhaltlich exakt dem sichtbaren Seiteninhalt entsprechen. Kein Schema-Text, der von der sichtbaren Antwort abweicht oder diese nur zusammenfasst, das wird von Google als missbräuchliche Auszeichnung gewertet und kann zum Verlust der Rich-Snippet-Berechtigung führen
- Struktur des Frontmatter-Feldes (Vorschlag, an bestehende Konventionen anzupassen):
  ```yaml
  faq:
    - question: "Was kostet eine Mediation?"
      answer: "..."
    - question: "..."
      answer: "..."
  ```
- Da noch kein Accordion-/Akkordeon-Shortcode existiert und laut Implementierungsgrundsatz „keine Vorab-Komplexität, Komponenten erst bauen, wenn gebraucht", wird als Ausgangspunkt empfohlen: **einfache Markdown-Struktur**, jede Frage als `##`-Überschrift (H2, da `title` der Seite bereits die H1 „Häufige Fragen" liefert), Antwort als normaler Fließtext direekt darunter. Ein interaktives Auf-/Zuklappen ist eine spätere, optionale Verbesserung, keine Voraussetzung für Launch

---

## 5. Redaktionelle Vorgaben (aus Redaktionsleitfaden v3, gelten unverändert)

- `title` liefert automatisch die H1, im Markdown keine zusätzliche `#`-Überschrift
- Jede Frage als `##` (H2), keine tiefere Verschachtelung nötig
- Keine n- oder m-Gedankenstriche
- Keine Markdown-Bilder (`![]()`), falls überhaupt ein Bild nötig wird, über `image`-Shortcode
- Normale interne Links zu Angeboten via `{{< relref "slug" >}}`, externe Links (z. B. zu mediator.sweti.de) als Standard-Markdown-Link
- Antworten kurz und konkret halten, keine langen Fließtextblöcke, passend zum Mobile-First-Grundsatz der Seite (Richtwert: 2 bis 5 Sätze pro Antwort)

---

## 6. E-E-A-T-spezifische inhaltliche Anforderungen an die Antworten

Diese Punkte sind speziell für YMYL-Content wichtig und gehen über normale FAQ-Best-Practices hinaus:

1. **Klare Kompetenzgrenzen benennen, wo relevant.** Analog zum „Was ich nicht bin"-Prinzip der „Über mich"-Seite: Wo eine Frage in Richtung Rechtsberatung geht (z. B. „Ist die Vereinbarung rechtlich bindend?"), muss die Antwort deutlich machen, dass keine Rechtsberatung erfolgt und ggf. ein Anwalt hinzugezogen werden sollte. Das ist nicht nur inhaltlich korrekt, sondern für YMYL-Trustworthiness ein wichtiges Signal (keine Überschreitung der eigenen fachlichen Zuständigkeit).
2. **Konkrete, nicht ausweichende Antworten**, besonders bei Kosten- und Ablauffragen. Vage Antworten („kommt darauf an") wirken für YMYL-Bewertung schwächer als konkrete Rahmenangaben (Preisspanne, Dauer in Sitzungen, ungefähre Wochen).
3. **Vertraulichkeit und Datenschutz explizit ansprechen**, nicht nur implizit voraussetzen, das ist bei familiären/sensiblen Themen ein zentrales Vertrauenskriterium.
4. **Keine Heilsversprechen oder Erfolgsgarantien.** Antworten sollen den Prozess realistisch beschreiben (z. B. „Mediation kann helfen, wenn beide Seiten grundsätzlich gesprächsbereit sind" statt „Mediation löst jeden Konflikt").
5. **Erfahrungsbezug wo möglich**, ohne werblich zu wirken, z. B. kurze Verweise auf die Praxis („In meiner Erfahrung …"), das stärkt den Experience-Faktor von E-E-A-T, ohne einen separaten Testimonial-Bereich zu benötigen.

---

## 7. Vorgeschlagene Fragenauswahl (Ausgangsbasis, in der Umsetzung zu priorisieren/kürzen)

**Ablauf und Praktisches**
- Wie läuft eine Mediation bei Ihnen ab?
- Wie lange dauert eine Mediation, wie viele Sitzungen sind üblich?
- Findet das Gespräch vor Ort in Dresden statt oder auch online?
- Muss ich mich vorbereiten?

**Kosten und Rahmen**
- Was kostet eine Mediation?
- Ist das Erstgespräch wirklich kostenlos?
- Gibt es die Möglichkeit einer kostenfreien Mediation (Praxisaufbauprogramm 2026/2027)?

**Vertraulichkeit und Sicherheit**
- Ist das Gespräch vertraulich?
- Was passiert mit meinen Daten?
- Muss ich Dinge sagen, die ich nicht sagen möchte?

**Eignung und Grenzen**
- Was, wenn die andere Seite nicht mitmachen möchte?
- Ist Mediation auch sinnvoll, wenn ich nur für mich selbst Klarheit gewinnen möchte?
- Was unterscheidet Mediation von einem Gespräch mit einem Anwalt oder einem Gerichtsverfahren?
- Ist eine in der Mediation getroffene Vereinbarung rechtlich bindend? *(Kompetenzgrenzen-Hinweis, siehe Abschnitt 6.1)*
- Wann ist Mediation nicht der richtige Weg?

**Vertrauen und Qualifikation**
- Welche Ausbildung haben Sie als Mediator? *(kurzer Verweis, Link zu „Über mich")*
- Wie viele Menschen haben Sie schon begleitet? *(nur beantworten, wenn eine ehrliche, konkrete Angabe möglich ist, sonst Frage weglassen statt vage antworten)*

Diese Liste ist eine Ausgangsbasis. Empfehlung für den Umsetzungs-Chat: nicht alle 15 Fragen gleichzeitig launchen, sondern mit den 6 bis 8 relevantesten starten (Mobile-First-Prinzip „nicht überladen" gilt auch hier), weitere bei Bedarf ergänzen.

---

## 8. Frontmatter-Vorschlag (Grundgerüst)

```yaml
---
title: "Häufige Fragen zur Mediation in Dresden"
description: "Antworten auf häufige Fragen zu Ablauf, Kosten und Vertraulichkeit einer Mediation in Dresden."
tags:
  - faq
faq:
  - question: "..."
    answer: "..."
---
```

`tags: faq` nur, falls eine spätere automatische Verlinkung oder Taxonomie-Nutzung gewünscht ist, andernfalls verzichtbar.

---

## 9. Offene Entscheidungen für den Umsetzungs-Chat

1. Soll die Seite ins Burger-Menü aufgenommen werden (aktuell nur Angebote/Aktuelles/Über mich/Kontakt vorgesehen), oder bleibt sie bewusst „versteckt" und wird nur von einzelnen Angebotsseiten/Blogartikeln aus verlinkt?
2. Endgültige Auswahl und Reihenfolge der Fragen aus Abschnitt 7
3. Ob und wie die Frage „Wie viele Menschen haben Sie schon begleitet?" beantwortet wird oder entfällt (nur mit ehrlicher, konkreter Zahl sinnvoll)
4. Exakte Kostenspanne/Preisangabe für die Kosten-Frage (liegt mir hier nicht vor)
