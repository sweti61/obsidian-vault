1.**Abschließende technische Qualitätssicherung**  
    Wenn echte Inhalte stehen:
    - genau eine H1 pro Seite
    - keine fehlenden Alt-Texte
    - keine übergroßen Bilder
    - interne Links
    - 404
    - Mobile-Darstellung
    - Accessibility-Grundcheck
    - Lighthouse bzw. PageSpeed
    - finaler `rg`-/PowerShell-Check des erzeugten `public/`
2. **Erst zur Produktion**
    - Google Analytics einbauen und ausschließlich unter `hugo.IsProduction` laden.
    - Live-GSC-Verifikation.
    - Live-`robots.txt`, Sitemap und Canonicals prüfen.

Fine-Tuning
sehr kleine Punkte prüfen, ohne das Design grundsätzlich anzufassen:

- **Link-/Hover-Zustände**: Auf Desktop testen, ob Card-Links, Navigation und CTA bei `hover` und `focus-visible` klar, aber nicht zu auffällig reagieren.

  
  ### Technische Abnahme vor Go-Live (allgemein empfehlenswert für YMYL-Seiten)

4. **FAQPage- und LocalBusiness-JSON-LD validieren** mit dem [Google Rich Results Test](https://search.google.com/test/rich-results), bevor die Seite live geht, damit Tippfehler in der strukturierten Daten nicht erst nach der Indexierung auffallen.
5. **Site-Brand auf einem echten schmalen Smartphone (320 px) gegenprüfen:** Wir hatten das früh als Punkt notiert, ob „Dr. Beltschew" + Home-Icon + Burger-Icon dort sauber nebeneinander passen.
6. **Alt-Texte und `aria-hidden` bei Icons stichprobenartig prüfen**, insbesondere in `panel`, `steps` und `card`, da das in unserer Spezifikation zwar gefordert, aber nicht von mir verifiziert wurde.
7. **Interne Links sitemap-/build-seitig testen** (`hugo --minify` lokal durchlaufen lassen), damit keine der zahlreichen mediator.sweti.de-Links tote Verweise sind, gerade weil wir mehrfach Linkziele nachträglich korrigiert haben.

### Optional, aber sinnvoll

8. Google Search Console für sweti.de einrichten/prüfen, sobald die Seite live ist, damit Indexierungsprobleme früh sichtbar werden
9. Kurzer Review-Durchgang der gesamten Seite auf einem echten Smartphone (nicht nur Browser-Devtools), speziell für Card-Grid-Umbrüche und Panel-Darstellung