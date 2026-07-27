---

tags: 
  - Lightroom-LR
  - bildbearbeitung
  - foto

---
Bei dem Schärferegler für Pinsel & Verlauf muss man noch folgendes beachten:
Im Wertebereich -50...+100 modifiziert er lediglich die globale Schärfung, die unter "Details" eingestellt ist. -50 schaltet die globale Schärfung effektiv lokal aus und +100 verstärkt sie um einiges (und aktiviert sogar wieder eine globale Schärfung, die auf 0 steht). Radius, Details und Maskierung sind immer die von der globalen Schärfung.
Deshalb gibt es auch das verwirrende Verhalten, dass sich bei sehr schwach eingestellter globaler Schärfung beim Einstellen der Schärfung von Pinsel & Verlauf auf 0...-50 erstmal nicht so richtig viel tut. Steht die globale Schärfung auf 0, tut sich _rein gar nichts_.
Erst unterhalb von -50 kommt die zusätzliche Funktion von Pinsel & Verlauf ins Spiel, die das Bild _aktiv_ unschärfer macht. Man muss also auf jeden Fall den Regler kleiner als -50 stellen, um überhaupt einen Unschärfe-Effekt zu sehen.
Malt man mehrere Unschärfen übereinander, addieren sich die Werte entsprechend (wie bei den anderen Effekten auch), so dass man auch z.B. effektiv auf -200 oder -300 kommen kann. Bei 3 "Schichten" bzw. -300 scheint aber Schluss zu sein, dann ist irgendeine Grenze erreicht und es wird nicht mehr sehr viel unschärfer.
Ach ja: Fast unnötig zu erwähnen, dass dies im Handbuch praktisch _überhaupt nicht_ erklärt wird.
P.S. Ich finde, dass der Schärfe-Regler bei Pinsel & Verlauf für Unschärfe gar nicht mal so schlecht funktioniert. Das Problem ist nur, das irgendwie sinnvoll ins Bild hineinzumalen - und dafür ist LR bei komplexeren Sachen wahrscheinlich wirklich nicht so geeignet. Und man muss auch noch sagen, dass die erreichbare Unschärfe relativ gering ist, der Einsatzbereich also doch eher begrenzt. Also so eine richtig schöne Hintergrundunschärfe wie mit hochlichtstarken Objektiven möglich wird nix.
Edit: Noch ein Beispiel angefügt. Ohne/mit künstlicher Unschärfe durch zwei schräg gegenüberliegende Verläufe (wirklich nur Schärfe auf Minimum, Klarheit und Kontrast neutral belassen), jeweils in dreifacher Ausfertigung (eine vierte Schicht bringt wie gesagt nichts). Der Unschärfeverlauf ist allerdings völlig unrealistisch - eben nur zur Demonstration. Edit 2: Als drittes Bild noch ein animiertes Vergleichs-GIF.
