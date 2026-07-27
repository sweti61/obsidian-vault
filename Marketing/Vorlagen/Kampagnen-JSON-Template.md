---
title: "Kampagnen-JSON-Template – Marketingprozesse"
type: "template"
tags: [marketing, kampagne, json, smc, vorlage]
date: 2025-11-20
---

# 📦 Kampagnen-JSON-Template  
Standard-Vorlage zur strukturierten Übergabe von Marketing-Kampagnen  
nach dem SMC-Prozess (Zielgruppe → Personas → Plattformanalyse → Content-Säulen → Posts → Monitoring).

Nutze diese JSON-Struktur, um **neue Kampagnen in neuen Chats** zu starten oder fortzuführen.

---

## 🧩 JSON-Vorlage

```json
{
  "campaign_name": "",
  "goal": {
    "primary": "",
    "secondary": []
  },
  "timeframe": {
    "start_date": "",
    "end_date": "",
    "no_post_days": []
  },
  "target_audience": {
    "label": "",
    "segments": [],
    "exclusions": []
  },
  "personas": [
    {
      "name": "",
      "age": null,
      "type": "",
      "core_needs": [],
      "pain_points": [],
      "preferred_tone": ""
    }
  ],
  "platforms": {
    "instagram": {
      "main_formats": ["Carousels", "statische Bilder"],
      "image_ratio": ["4:5", "1:1"],
      "tone": "kurz, klar, emotional-ruhig"
    },
    "facebook": {
      "main_formats": ["Textposts mit Bild"],
      "image_ratio": ["1.91:1", "16:9"],
      "tone": "erzählerisch, reflektierend, ruhig"
    }
  },
  "design": {
    "style": "Strichmännchen + Wasserfarben",
    "colors": ["Beige", "warmes Grau", "Blau", "Grün", "Orange"],
    "keywords": ["viel Weißraum", "ruhig", "klar", "weiche Schatten"]
  },
  "content_pillars": [],
  "cta": {
    "primary": "",
    "links": {
      "website": "",
      "calendly": ""
    }
  },
  "posting_plan": {
    "total_posts": 0,
    "per_platform": {
      "instagram": 0,
      "facebook": 0
    },
    "notes": ""
  },
  "monitoring": {
    "kpis_instagram": [
      "Reichweite",
      "Impressionen",
      "Saves",
      "Shares",
      "Kommentare",
      "Profilaufrufe",
      "Link-Klicks"
    ],
    "kpis_facebook": [
      "Reichweite",
      "Interaktionen",
      "Kommentare",
      "Shares",
      "Link-Klicks"
    ],
    "cadence": "2x pro Woche (Montag, Donnerstag)"
  }
}
