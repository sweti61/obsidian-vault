---
source: http://neunzehn72.de/kameraprofile-fur-lightroom-erstellen/
---
**I. Farbkorrekturen, Farbmanagement, Farbprofile**
1\. Notwendigkeit
a. Weißabgleich
b. Farbprofile
2\. Realisierung
\- Verwenden von Foto-Targets
Die Software weiß also genau, wie die Farben auf dem Foto der Farbtafel tatsächlich aussehen müssen und generiert ein Kameraprofil, bei dessen Verwendung sich die Farben auf dem Foto und der Farbtafel gleichen. Das müsste uch den korrekten Weißabgleich beinhalten, da die Farben ja sonst nicht gleich wären. Tatsächlich wird aber ein bewusst falscher Weißabgleich bei der Aufnahme durch das Kameraprofil in LR zwar verändert, die Farben sind aber weit entfernt von den echten. 
Aber Achtung! Dieses Profil gilt nur für die Lichtsituation zum Zeitpunkt der Aufnahme! Unter einer anderen Lichtbedingung muss man ein erneutes Profil erstellen.
Dass man für jede Lichtsorte ein separates Profil erstellt, ist der Idealfall. Aber es ist durchaus auch möglich, dasselbe Profil auch für etwas abweichende Lichtfarben anzuwenden; der Weißabgleich gleicht den grundsätzlichen Farbunterschied aus, und die anderen Farben werden dann nicht gleich kilometerweit daneben liegen.
Spezielle Profile lohnen sich am meisten, wenn die Charakteristik der Lichtquelle stark vom Farbtemperatur-Modell abweicht.
Das Profil wird aus den reinen RAW-Daten erstellt, ohne Berücksichtung irgendwelcher Farb-, Helligkeits- oder Weißabgleichseinstellungen. 
Ohne WA geht es nicht. Dieser Wert gehört ebenso zur Entwicklung eine Raws, wie z.B. die Werte für Belichtung, Weiß usw. Und was sollte eine Einstellung wie "Neutral" bedeuten? Der WA ist schließlich von den Lichtbedingungen bei der Aufnahme abhängig. Neutral würde also eigentlich immer nur einen festen Wert bedeuten. Das kannst du an der Kamera so einstellen, wenn du willst.
Der Wert für den Weißabgleich wird immer aus den Metadaten des Bildes entnommen und intern umgesetzt. Ausnahme: Du hast "Auto" als Einstellung für den WA gewählt. Lightroom legt dabei offensichtlich ein etwas eigenes Schema zugrunde, denn die Werte die LR für den WA anzeigt sind nie identisch mit den an der Kamera eingestellten.
Kameraprofile liegen für Windows im LR-Programmverzeichnis unter Resources\\CameraProfiles\\Camera.
_Beispiel_ 
\- X-Rite MSCCPP Passport ColorChecker
\- [DNG Profile Editor](http://www.adobe.com/support/downloads/detail.jsp?ftpID=5493) - Mit dem kostenlosen Programm von Adobe hat man die Möglichkeit die Farben in der Sättigung, Farbton und Luminanz zu verändern und kann dem Profil noch eine Gradationskurve zuweisen. 
[Kameraprofile für Lightroom erstellen](http://neunzehn72.de/kameraprofile-fur-lightroom-erstellen/)

\- Weißabgleich mit Graukarten
2\. Realisierung bei Adobe Photoshop Lightroom
_Entwickeln/Standardeinstellungen_ 
XX. Automatismen 

Filter - Beispiele
![[Bildbearbeitung/Foto/_resources/Workflow.resources/unknown_filename.png]]

II. Optische Korrekturen, Objektivprofile

1\. Notwendigkeit

1. Vignetierung
2. Chromatische Aberration
3. optische Verzerrung - Kopfkisen- und Tonnenförmig
4. perspektivischen Verzerrung - das Bild nicht in dem gleichen Blickwinkel betrachtet, in dem das Motiv von der Kameraposition aus zu sehen war. handelt es sich nicht um einen Objektiv-Fehler, sondern um ein Naturgesetz. Nur wenn sich ein Objekt parallel zur Fläche des Bildsensors befindet, wird es ohne Verzerrung aufgenommen. Ist das nicht der Fall, nähern sich entfernter liegende Punkte aneinander an. 

2\. Automatismen

III. Belichtungskorrekturen

1\. Notwendigkeit

IV. Schärfekorrekturen

1\. Notwendigkeit

V. Nachbearbeitung
1\. Notwendigkeit 

a. Schärfen für verschiedene Ausgabegeräte
