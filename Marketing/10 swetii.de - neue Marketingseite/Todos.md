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