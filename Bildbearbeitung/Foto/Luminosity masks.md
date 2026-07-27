---
---
Short Cuts
Einzelne Kanäle auswählen - l.Klick auf Kanal-Miniatur oder Ctrl + 2(RGB, Composit), 3(Rot), 4 (Grün), 5(Blau)
Kanal als Auswahl laden - Ctrl+l.Klick auf Kanal-Miniatur oder **Ctrl+Alt+ 2**(composit), 3(Rot), 4 (Grün), 5(Blau)
Aktuelle Auswahl erweitern (_Union, +_) - **Strg- + Umschalttaste** auf Kanal-Miniatur l.klicken
Schnittmenge (_Intersection, x_) mit aktueller Auswahl bilden - **Strg- + Umschalt- + Alt-Taste** auf Kanal-Miniatur l.klicken
\--> Von aktueller Auswahl subtrahieren (_Differenz, -_) - **Strg- + Alt-Taste** auf Kanal-Miniatur l.klicken
Optionen für Schaltfläche „Auswahl als Kanal speichern“ einstellen - Bei gedrückter **Alt-Taste** auf die Schaltfläche „Auswahl als Kanal speichern“ klicken

Bild (Kanal) Invertieren - **Ctrl+I**
Auswahl Invertieren - **Ctrl+Shift+I**
Kanal duplizieren - **Ctrl+J**

Laden eine L.Mask (Alpha-Kanal) als Auswahl - Ctrl+Click auf den Kanal
Laden eine L.Mask (Alpha-Kanal) als Durchschitt zu den AuswahlAuswahl

1\. _Erstellen eine L.Mask_, Benutzen in eine AdjLayer (Curvs), Invertieren der Maske
a. Erstellen - Ctrl+Alt+2 oder Ctrl+Click aug RGB-Kanal
b. Invertieren der Maske Alt+Click aud der Maske, Ctrl+I

2\. _Speicher der maske (Alpha-Kanal)_
Maske erstellen (Ctrl+Alt+2), In Kanal-Ansicht wächseln, Unten auf "Auswahl als Kanal speichen" Klicken, Alt+Click öffnet das Neuer Kanal Dialog
Ctrl+Click auf den Alpha-Kanal ladet den Auswahl wieder

3\. Kombiniere (Intersection) von L.Mask (_Mitteltonkontrast_)
Ctrl-Shift+Alt+Click auf der Alpha-Kanal
Invertieren der Auswahl Ctrl-Shift-I
\--> Mitteltonauswahl: Ctrl+l.Klick dann Ctrl+Alt+l.klick (Warning ignorieren)

4\. Survace Mask
"Kanten Finden" auf eine L.Mask (Ctrl+Alt+2), dann bearbeite der Maske(Kontrast, Unschärfe)
\->Weichzeichnen der Flächen

5\. Edge Mask
"Kanten Finden" auf eine L.Mask (Ctrl+Alt+2), Invertiern der Maske, dann bearbeite der Maske(Kontrast, Unschärfe)
\-> Schärfen der Kanten
