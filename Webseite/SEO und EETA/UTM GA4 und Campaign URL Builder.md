UTM, GA4 und Campaign URL Builder – Arbeitsnotiz
[1][2][3][4]

***

## 1. Zweck im eigenen System

- Ziel: verstehen, welcher Post / welcher Kanal zu Besuchen, Downloads und Buchungen führt. [4]
- Werkzeuge:  
  - UTM‑Parameter an allen externen Links (FB, LinkedIn, Newsletter). [2][3]
  - Google Tag Manager (GTM) sammelt Events auf der Website. [4]
  - Google Analytics 4 (GA4) wertet die Daten aus. [4]

***

## 2. UTM‑Parameter – kurz

UTM = Zusatzinformationen am Ende einer URL, damit GA4 die Quelle erkennt. [5][6]

Wichtige drei Parameter: [7][3]
- `utm_source` = Plattform, z.B. `facebook`, `linkedin`, `newsletter`.  
- `utm_medium` = Kanalart, z.B. `organic`, `paid_social`, `email`.  
- `utm_campaign` = Aktion / Kontext, z.B. `leitfaden_in_ruhe_sprechen`, `fb_profil_start_apr26`.  

Beispiel Lead‑Magnet‑Link aus FB‑Profil:  
`https://mediator.sweti.de/leadmagnets/in-ruhe-sprechen-familiengespraeche/?utm_source=facebook&utm_medium=organic&utm_campaign=fb_profil_leitfaden_start` [3]

***

## 3. Campaign URL Builder – Arbeitsweise

- Tool: Google „Campaign URL Builder“ (Online‑Formular). [3][8]
- Schritte:  
  1. Basis‑URL eintragen (z.B. Lead‑Magnet‑Landingpage).  
  2. `utm_source`, `utm_medium`, `utm_campaign` ausfüllen.  
  3. Fertigen Link unten kopieren und in Post / Button einsetzen.  

Nutzen: saubere, einheitliche Links ohne Tippfehler; GA4 ordnet Zugriffe zuverlässig zu. [2][8]

***

## 4. GA4 – was ich auslese

- GA4 empfängt alle Seitenaufrufe und Events von GTM. [4]
- Wichtige Events laut Masterplan:  
  - `leadmagnetdownload` = Klick auf Download‑Button.  
  - `calendlyclick` = Klick auf Terminlink (als Conversion markieren).  
  - `scroll50` = 50% Scrolltiefe auf wichtigen Seiten. [4]

Relevante Ansichten in GA4: [4]
- Akquise → „Sitzungen nach Quelle/Medium“: zeigt, welche Kanäle Besuche bringen.  
- Ereignisse / Conversions: wie oft `leadmagnetdownload` und `calendlyclick` ausgelöst wurden und aus welcher Quelle.  

Frage, die GA4 beantworten soll:  
„Welcher Post / welcher Kanal führt zu Leitfaden‑Downloads und Erstgesprächs‑Klicks?“ [4]

***

## 5. Mini‑Checkliste für meinen Alltag

- Bei jedem neuen Social‑Post mit Link: UTM‑Link mit Campaign URL Builder erstellen und einsetzen. [2][3]
- Einmal im Monat:  
  - In GA4 nachschauen, wie viele `leadmagnetdownload` und `calendlyclick` es gab.  
  - Quelle/Medium prüfen: Was kam aus `facebook / organic`, was aus `linkedin / organic`? [4]
  - Themen und Formate, die geklickt wurden, häufiger einsetzen; andere lockern oder weglassen. [4]

Quellen:
[1] UTM-Parameter richtig einsetzen: Mehr Klarheit im Marketing-Tracking https://dataloft.ch/analyse/utm-parameter-richtig-einsetzen-marketing/
[2] UTM-Parameter für URL-Tracking: So funktioniert's https://blog.hubspot.de/marketing/was-sind-utm-parameter
[3] Was sind UTM-Parameter und wie setzte ich sie ein? - OMT https://www.omt.de/google-analytics/utm-parameter/
[4] MASTERPLAN-v3.md https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/39562230/06121d28-877d-4b24-8ad3-a1b34bf67a34/MASTERPLAN-v3.md
[5] Was sind UTM-Parameter und wie nutze ich sie? - Business.Digital https://business.digital/faq/utm-parameter-erklaerung-marketing
[6] UTM-Parameter – Wikipedia https://de.wikipedia.org/wiki/UTM-Parameter
[7] UTM-Tracking: Alle wichtigen Parameter erklärt - IONOS https://www.ionos.de/digitalguide/online-marketing/web-analyse/utm-parameter-erklaert/
[8] UTM-Parameter für Google Analytics https://www.smarketer.de/blog/utm-parameter-in-google-analytics/
[9] 1000003515.jpg https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/images/39562230/25bf5c91-fa3e-4418-9a92-229d0a701d62/1000003515.jpg
