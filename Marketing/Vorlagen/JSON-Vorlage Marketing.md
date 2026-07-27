Agiere als SMC. Hier ist mein Kampagnen-Briefing für IT-Führungskräfte als JSON. Bitte wende deinen kompletten Kampagnenprozess an (Zielgruppe → Personas → Content-Säulen → konkrete Inhalte für Outreach-Mails, Mini-Fallvignetten, PDF-Flyer, Landingpage, LinkedIn-Carousel).


```jason
{
  "campaign_name": "IT-Führungskräfte – Konflikte & Rollen in der Verwaltungs-IT 2025",
  "goal": {
    "primary": "Vertrauen bei IT-Führungskräften in der öffentlichen Verwaltung aufbauen und als Ansprechpartner für Konflikte im IT-Umfeld sichtbar werden.",
    "secondary": [
      "Qualifizierte Erstgespräche (Analysegespräche 20–30 Min.) generieren",
      "Expertise zu ITSM-, DevOps- und Tool-Einführungskonflikten positionieren",
      "Kontaktliste für weitere Outreach-Wellen strukturieren und erweitern"
    ]
  },
  "timeframe": {
    "start_date": "",
    "end_date": "",
    "no_post_days": []
  },
  "target_audience": {
    "label": "IT-Führungskräfte in der öffentlichen Verwaltung und verwandten IT-Organisationen",
    "segments": [
      "IT-Leitung / CIO / CDO in Ministerien, Landes-/Kommunalverwaltungen und öffentlichen IT-Dienstleistern",
      "Bereichs- und Teamleitungen in der Verwaltungs-IT (z. B. Infrastruktur, Applikationsbetrieb, Service Desk, ITSM)",
      "Projekt- und Programmleitungen für Digitalisierungs- und ITSM-Einführungsprojekte",
      "Service-Owner, Prozessverantwortliche (ITIL/ITSM) mit Führungsverantwortung"
    ],
    "exclusions": [
      "Operative Entwickler:innen ohne Führungsverantwortung",
      "Reine Fachverfahrensverantwortliche ohne IT-Steuerungsaufgaben",
      "Externe Berater:innen ohne Mandat in der Organisation",
      "Reine Business-Führung ohne direkten Bezug zur IT-Organisation"
    ]
  },
  "personas": [
    {
      "name": "Thomas",
      "age": 52,
      "type": "IT-Leiter Landesbehörde",
      "core_needs": [
        "Stabile IT-Services trotz hoher Veränderungsdynamik",
        "Weniger Reibung zwischen Fachbereichen, IT-Betrieb und Projekten",
        "Klarheit in Rollen, Zuständigkeiten und Entscheidungswegen"
      ],
      "pain_points": [
        "Spannungen zwischen Fachabteilungen und IT",
        "Dauerbrenner-Konflikte an den Schnittstellen (z. B. Change, Incident, Projekte)",
        "Wenig Zeit für Reflexion, viel Feuerlöschen"
      ],
      "preferred_tone": "sachlich, ruhig, analytisch, mit erkennbarem Praxisbezug"
    },
    {
      "name": "Sabine",
      "age": 45,
      "type": "Teamleiterin ITSM / Service Desk",
      "core_needs": [
        "Entlastung in eskalierten Situationen",
        "Unterstützung bei Konflikten im Team (Belastung, Schichtdienst, Tickets)",
        "Rückhalt von oben und Klarheit in Prozessen"
      ],
      "pain_points": [
        "Druck von oben (Kennzahlen, SLAs) und unten (Teamüberlastung)",
        "Konflikte zwischen 1st/2nd-Level, Fachbereichen und Betrieb",
        "Schwierigkeiten, Veränderungen (neue Tools, Prozesse) zu „verkaufen“"
      ],
      "preferred_tone": "verständlich, pragmatisch, wertschätzend, entlastend"
    },
    {
      "name": "Markus",
      "age": 48,
      "type": "Projektleiter Digitalisierung / ITSM-Einführung",
      "core_needs": [
        "Ruhigere Zusammenarbeit zwischen Betrieb, Entwicklung und Fachbereichen",
        "Klare Entscheidungswege und Rollen in Projekten",
        "Konflikte früh erkennen und moderieren können"
      ],
      "pain_points": [
        "Schnittstellenkonflikte Dev vs. Ops",
        "Unklare oder widersprüchliche Erwartungen von Stakeholdern",
        "Druck, Projekte „durchzuziehen“, obwohl Widerstände groß sind"
      ],
      "preferred_tone": "lösungsorientiert, strukturiert, mit systemischem Blick auf Organisation"
    }
  ],
  "platforms": {
    "linkedin": {
      "main_formats": [
        "Carousels",
        "Fachbeiträge (Textposts)",
        "Mini-Fallvignetten",
        "Profil- und About-Optimierung"
      ],
      "tone": "fachlich, ruhig, systemisch, mit klarer Nutzenkommunikation"
    },
    "email_outreach": {
      "main_formats": [
        "personalisierte Outreach-Mails an warme und kalte Kontakte",
        "Follow-up-Mails",
        "Hinweise auf Fachartikel, PDF-Flyer und Landingpage"
      ],
      "tone": "wertschätzend, knapp, klar, ohne Druck"
    },
    "website": {
      "main_formats": [
        "Landingpage IT-Führungskräfte",
        "Blogartikel zu Konflikten im IT-Umfeld",
        "Downloadbereich für PDF-Flyer"
      ],
      "tone": "klar, strukturiert, vertrauensbildend"
    },
    "pdf": {
      "main_formats": [
        "PDF-Flyer als kompaktes Angebotsdokument für IT-Führungskräfte"
      ],
      "tone": "übersichtlich, sachlich, ruhig, mit klaren nächsten Schritten"
    }
  },
  "design": {
    "style": "Strichmännchen + Wasserfarben",
    "colors": [
      "Beige (#F9F7F4)",
      "warmes Grau",
      "Blau",
      "Grün",
      "Orange"
    ],
    "keywords": [
      "viel Weißraum",
      "ruhig",
      "klar",
      "weiche Schatten",
      "systemische Symbole (Kompass, Knoten, Wege, Türen)"
    ]
  },
  "content_pillars": [
    "Konflikte im IT-Umfeld verstehen (ITSM, DevOps, Schnittstellen)",
    "Rollen & Verantwortung klären (Service-Owner, Prozessverantwortliche, Führung)",
    "Veränderungen & Tool-Einführungen begleiten (Change, Akzeptanz, Widerstand)",
    "Kommunikation in der IT: zwischen Technik, Fachbereich und Management",
    "Führung in der IT: Ruhe in der Unruhe, Entscheiden unter Druck",
    "Externe Begleitung: Mediation, Coaching & Prozessberatung für IT-Organisationen"
  ],
  "cta": {
    "primary": "20–30-minütiges Analysegespräch für IT-Führungskräfte",
    "links": {
      "website": "https://beltschew.de",
      "calendly": "https://calendly.com/sweti-mediator"
    }
  },
  "posting_plan": {
    "total_posts": 10,
    "per_platform": {
      "linkedin": 10,
      "email_outreach": 2,
      "website": 1,
      "pdf": 1
    },
    "notes": {
      "outreach_mails": "Format begonnen; Templates für warme und kalte Kontakte weiter ausarbeiten.",
      "mini_fallvignette": "Konzept und erstes Beispiel begonnen; ausbauen zu 2–3 Vignetten.",
      "pdf_flyer": "Layout und Inhalte fast fertig; finalisieren und mit Landingpage verknüpfen.",
      "landingpage": "Noch zu erstellen; Struktur: Problemfelder – Nutzen – Angebot – CTA.",
      "carousel": "Erstes Carousel erstellt und publiziert; Serie (3–5 Stück) aufbauen."
    }
  },
  "monitoring": {
    "kpis_linkedin": [
      "Impressions",
      "Reichweite",
      "Reaktionen (Likes, Applause)",
      "Kommentare",
      "Shares",
      "Profilbesuche",
      "Klicks auf Website/Calendly"
    ],
    "kpis_email_outreach": [
      "Öffnungsrate",
      "Klickrate auf Links (Landingpage, PDF)",
      "Antwortquote",
      "Anzahl der gebuchten Analysegespräche"
    ],
    "kpis_website_landingpage": [
      "Seitenaufrufe",
      "Verweildauer",
      "Scrolltiefe",
      "Klicks auf CTA (Kontakt/Calendly)",
      "Downloads des PDF-Flyers"
    ],
    "cadence": "Monitoring 1x pro Woche; Auswertung nach 6–8 Wochen und Anpassung der Inhalte."
  }
}
```