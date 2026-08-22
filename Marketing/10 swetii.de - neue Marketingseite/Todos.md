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

- **Vertikale Rhythmik**: Abstände zwischen Hero, Fließtext, Cards, CTA und Footer einmal auf Smartphone und Desktop vergleichen. Wichtig ist weniger der exakte Wert als ein konsistenter Rhythmus.
- **Card-Innenabstände**: Prüfen, ob Titel, Icon, Fließtext und „Mehr erfahren“ überall gleich ruhig wirken, besonders bei unterschiedlich langen Texten.
- **Hero-Bild**: Border, Radius und Schatten jetzt mit den Cards vergleichen. Wenn beides zusammengehört, sollten Radius und Schattenwirkung ähnlich dezent sein.
- **Link-/Hover-Zustände**: Auf Desktop testen, ob Card-Links, Navigation und CTA bei `hover` und `focus-visible` klar, aber nicht zu auffällig reagieren.
- **Mobile Typografie**: Besonders lange H1/H2 und Card-Titel auf 360–390 px Breite prüfen. Keine unschönen Einzelwörter oder extrem kurze letzte Zeilen.
- **Touch-Ziele**: Burger-Menü, Social Icons, CTA und Links sollten auf dem Smartphone gut mit dem Finger treffbar sein.
- **Bildabstände**: `image`, `image-text`, Video-Card und `news-card` mit echten Inhalten prüfen. Gerade dort zeigen sich oft erst später zu enge oder zu große Abstände.
- **Footer auf Smartphone**: kontrollieren, ob Navigation, Social Icons und rechtliche Links nicht zu dicht stehen.