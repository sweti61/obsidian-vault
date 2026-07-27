---
title: "CTA-Bibliothek – mediator.sweti.de Blog"
typ: "Referenzdokument"
datum: "2026-07-23"
status: "aktiv"
---

# CTA-Bibliothek – mediator.sweti.de Blog

**Stand:** Juli 2026  
**Icons:** Feather Icons (https://feathericons.com/)  
**Shortcode:** `{{< icon "name" >}}`  
**Grundregel:** Kein beltschew.de-Link in mediator.sweti.de-Artikeln. Keine Emojis. Keine Wir-Form.

---

## Mid-Article CTA

Platzierung: nach 50-60% des Artikels, eingebettet in den Fließtext nach einem `---` Trenner. Kurz, unauffällig, einzeilig.

```
---
{{< icon "calendar" >}} [Orientierungsgespräch vereinbaren](https://calendly.com/mediator-sweti)

---
```

```
---
{{< icon "calendar" >}} [Ein erstes Gespräch buchen](https://calendly.com/mediator-sweti)

---
```

```
---
{{< icon "calendar" >}} [Kostenfrei einen Gesprächstermin wählen](https://calendly.com/mediator-sweti)

---
```

---

## End-CTA – zweizeilig (Standard)

Platzierung: letztes Element des Artikels, nach dem Fazit. Calendly und E-Mail.

```
{{< icon "calendar" >}} [Kostenfreies Orientierungsgespräch buchen](https://calendly.com/mediator-sweti)  
{{< icon "mail" >}} [mediator@sweti.de](mailto:mediator@sweti.de)
```

```
{{< icon "calendar" >}} [Gespräch vereinbaren – kostenlos und unverbindlich](https://calendly.com/mediator-sweti)  
{{< icon "mail" >}} [mediator@sweti.de](mailto:mediator@sweti.de)
```

```
{{< icon "calendar" >}} [Orientierungsgespräch buchen](https://calendly.com/mediator-sweti)  
{{< icon "mail" >}} [mediator@sweti.de](mailto:mediator@sweti.de)
```

---

## End-CTA – einzeilig (Minimalform)

Für Artikel, bei denen ein einziger ruhiger Abschluss gewünscht ist.

```
{{< icon "calendar" >}} [Jetzt einen Termin wählen](https://calendly.com/mediator-sweti)
```

```
{{< icon "calendar" >}} [Ein Gespräch beginnen](https://calendly.com/mediator-sweti)
```

```
{{< icon "calendar" >}} [Termin vereinbaren](https://calendly.com/mediator-sweti)
```

---

## Zuordnung nach Artikeltyp

| Artikeltyp | Mid-Article CTA | End-CTA |
|------------|----------------|---------|
| Fachartikel für Kollegen/Multiplikatoren | "Orientierungsgespräch vereinbaren" | zweizeilig Standard |
| Aufklärungsartikel Privatpersonen | "Ein erstes Gespräch buchen" | zweizeilig Standard |
| Praxisreflexion/Failure Story | "Kostenfrei einen Gesprächstermin wählen" | einzeilig Minimalform |
| Begriffsklärung | "Orientierungsgespräch vereinbaren" | zweizeilig Standard |

---

## Verwendete Feather Icons

| Icon-Name | Darstellung | Verwendung |
|-----------|-------------|------------|
| `calendar` | Kalender | Calendly-Link |
| `mail` | Briefumschlag | E-Mail-Link |
| `globe` | Weltkugel | Website-Link (falls benötigt) |
| `phone` | Telefon | Telefonnummer (falls benötigt) |

---

## Notizen

- Zwei Leerzeichen am Zeilenende erzwingen in Markdown einen Zeilenumbruch ohne neuen Absatz.
- `{{< icon "name" >}}` rendert das Feather-Icon inline vor dem Link.
- Keine weiteren Informationen im End-CTA nötig - wer den Artikel liest, ist bereits auf mediator.sweti.de.
- beltschew.de gehört nicht in CTA-Blöcke auf mediator.sweti.de.
- Telefonnummer nur in Flyern und Printmaterialien, nicht in Blog-CTAs.
