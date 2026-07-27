---
source: http://www.lightroom-blog.de/2011/06/10/systemleistung-fur-lightroom-optimieren/
---
## [Systemleistung für Lightroom optimieren](http://www.lightroom-blog.de/2011/06/10/systemleistung-fur-lightroom-optimieren/)

10.06.2011 Gepostet in [Allgemein](http://www.lightroom-blog.de/category/uncategorized/), [Lightroom](http://www.lightroom-blog.de/category/lightroom/)

Hallo zusammen,

immer wieder kommen von Anwendern Beschwerden über die Trägheit Lightrooms. Lösungsvorschläge findet man nach kurzer Recherche zu Genüge – allerdings hat Adobe nun selbst eine Zusammenfassung veröffentlicht, wie man das System und Lightroom auf einen gemeinsamen Nenner bringen kann. Da nicht jeder Englisch spricht, übersetze ich hier im Lightroom-Blog die wichtigsten Punkte auf Deutsch.

Die folgenden Empfehlungen sind der Webseite <http://kb2.adobe.com/cps/400/kb400808.html> entnommen. ACHTUNG: Ich übernehme keine Verantwortung für eventuell auftretende Probleme. Bevor ihr grundlegende Einstellungen und Hardware ändert, führt ein Systembackup durch!

**1.) HARDWARE UND BETRIEBSSYSTEM**

**\- Über die minimalen Systemvoraussetzungen hinausgehen**

Auch wenn die minimalen Systemvoraussetzungen erfüllt sind: Ausgehend davon, mit welchem Dateiformat und welcher Dateigröße ihr arbeitet sowie der Anzahl an Fotos im Lightroom-Katalog, ist es natürlich empfehlenswert, mehr Arbeitsspeicher und einen schnelleren Prozessor zu verwenden. Das alleine kann schon einen spürbaren Geschwindigkeitszuwachs bringen.

**\- Eine schnelle Festplatte benutzen**

Für einfache Arbeitsschritte reicht eine schnelle, interne S-ATA-Festplatte (7.200 Umdrehungen/min.). Wer einen aufwendigeren Workflow durchführt, sollte über den Einsatz der RAID-Technologie nachdenken.

Das Speichern von Katalogen, Fotos und Vorschaudateien auf einer externen Festplatte ist zwar praktisch wenn man mit einem Katalog auf mehreren Computern arbeiten muss, kann aber die Leistung von Lightroom verringern. Ist man gezwungen, seine Daten extern zu speichern, sollte man zumindest sicherstellen, dass eine schnelle Verbindungen wie FireWire, USB3.0 (nicht 1.0 oder 2.0) oder eSATA genutzt wird. Anmerkung: Kataloge können nicht auf Netzlaufwerken gelagert werden.

**\- Genügend Speicherplatz frei halten**

Lightroom 2 und 3 benötigen mindestens 1GB freien Speicherplatz. Je größer der Katalog wird, desto mehr Speicher wird auch benötigt. Da je nach Anzahl der Fotos und Größe der Vorschaudateien der notwendige Speicherplatz variabel ist, gilt die allgemeine Regel “mehr ist besser”.

Nicht vergessen sollte man, dass der freie Speicherplatz zählt. Eine große Festplatte im Terrabyte-Bereich nützt nichts, wenn nur noch wenig Speicherplatz zur Verfügung steht. Die Festplatte, auf der Kataloge, Vorschauen und Fotos gelagert sind, sollte in jedem Fall mindestens 20 Prozent freien Speicherplatz haben. Arbeitet man mit weniger, wirkt sich das schnell sehr negativ auf die Leistung Lightrooms aus.

**\- Grafikkarte aktuell halten**

Die meisten Grafikkarten sind mit Lightroom kompatibel. Wichtig ist, immer den aktuellsten Treiber der Karte zu installieren.

**\- 64-Bit nutzen (ab Lightroom 3)**

Wird Lightroom im 64-Bit-Modus ausgeführt, können mehr als 2GB Arbeitsspeicher angesprochen werden, was die Grenze eines 32-Bit-Systems darstellt. Mehr als 4GB RAM wirken sich erheblich auf Lightrooms Leistung aus. Lightroom wird automatisch in 64 Bit ausgeführt, wenn das Programm auf einem Computer installiert ist, der 64 Bit unterstützt und ein 64-Bit-Betriebssystem laufen hat. In welchem Modus Lightroom läuft, lässt sich schnell überprüfen:

_Windows:_ In der Titelleiste des Programms steht x64.
_Mac OS:_ Finder – Programme – Adobe Lightroom 3. CMD-I klicken und in den allgemeinen Optionen sicherstellen, dass das Kästchen “32-Bit Modus” abgewählt ist.

**2.) RICHTIGE VORSCHAUDATEIEN UND KATALOGEINSTELLUNGEN WÄHLEN**

**\- 1:1-Vorschauen nach dem Import rendern**

Beim Import von Fotos kann zwischen drei Arten von Vorschauen gewählt werden:

_**++ Minimal:**_ Dabei handelt es sich um kleine, niedrig aufgelöste JPG-Vorschauen in der Bilddatei, die von der Kamera erstellt werden. Diese Vorschauen können in Lightroom am schnellsten generiert werden. Sie werden temporär vom Filmstreifen und der Rasteransicht benutzt, bis Lightroom Standardvorschauen rendert.
**_++ Eingebettete und Filialdateien:_** Dabei handelt es sich um etwas größere, ebenfalls in der Kamera generierte Vorschauen, die in Lightroom etwas länger zum Rendern benötigen.
**_++ Standard:_** Standardvorschauen werden von Lightroom mittels Camera Raw Engine erstellt, daher unterscheiden  sie sich optisch von den Vorschauen “Minimal” und “Eingebettete und Filialdateien”. Standardvorschauen werden im Filmstreifen, in der Rasteransicht und in Vorschaubereichen der Module Diashow, Druck und Web verwendet.
_**++ 1:1:**_ Diese Vorschauen stellen 100% der tatsächlichen Pixel dar und werden auch mittels Camera Raw Engine generiert. Bei deren Erstellung werden gleichzeitig Minimal- und Standardvorschauen kreiert, damit das Programm je nach Zweck darauf zugreifen kann. Da große Datenmengen verarbeitet werden müssen, dauert die Erstellung deutlich länger. Verwendung finden sie, wenn der Anwender 1:1 oder größer in das Bild zoomt.

Um Fotos darzustellen benötigt Lightroom Standard- oder 1:1-Vorschauen, je nach Aufgabe.  Wählt man beim Import “Minimal” oder “Eingebettete und Filialdateien” aus, muss Lightroom während der gewünschten Aufgabe die größeren Vorschauen rendern, was natürlich Zeit kostet. Besser ist es, gleich nach dem Import 1:1-Vorschauen erstellen zu lassen, auch wenn das deutlich Zeit in Anspruch nimmt. Dadurch ist sichergestellt, dass Lightroom schneller reagiert, vor allem im Bibliotheks-Modul.

**\- Standard-Vorschauen nicht größer als notwendig rendern**

Da das Rendern von Standardvorschauen Zeit in Anspruch nimmt, sollte sichergestellt werden, dass nicht unnötigerweise zu große Vorschauen generiert werden. Kleinere Standardvorschauen helfen auch dabei, den Cache kleiner zu halten und somit eine allgemeine Leistungsreduktion zu verhindern sowie Speicherplatz zu sparen.

Um die richtige Größe einzustellen, geht man in die Katalogeinstellungen: Für die Standardvorschaugröße wählt man den Wert, der am nächsten zur Breite der Bildschirmauflösung liegt, aber nicht darunter! Beispiel: Hat man eine Bildschirmauflösung von 1.900×1.200 Pixel eingestellt, wählt man den nächstmöglichen Wert 2.048 Pixel. Wählt man einen kleineren Wert, führt Lightroom die Generierung der Vorschauen doppelt aus.

Anmerkung: Je größer der verwendete Monitor ist, desto mehr muss Lightroom rechnen, um die tatsächlichen Pixel zu rendern und Änderungen im Entwickeln-Modul darzustellen. Sind die Leistungsabfälle zu groß, kann man testweise die Bildschirmauflösung verringern.

**\- 1:1-Vorschauen nicht verwerfen**

Da 1:1-Vorschauen schnell viel Speicherplatz benötigen, gibt es in Lightroom die Option, nach einer bestimmten Zeit diese Vorschauen zu verwerfen: täglich, wöchentlich oder monatlich. Sind sie einmal gelöscht, muss Lightroom bei einem erneuten Aufruf eines Fotos – es reicht dabei schon das Einzoomen auf 100% – die Vorschau neu rendern, was natürlich wieder zu Lasten der Leistung und Zeit geht. Solange Speicherplatz keine Bedeutung spielt, sollte deshalb die Option “1:1-Vorschauen automatisch verwerfen” in den Katalogeinstellungen auf “Nie” gestellt werden.

**\- Katalog und Vorschaucache im selben Ordner zusammenhalten**

Die Katalogdatei und der Vorschau-Ordner Previews.lrdata müssen im selben Ordner liegen. Wird die Katalogdatei ohne die Cachedatei verschoben, muss Lightroom alle Vorschauen erneut rendern.

**\- “XMP automatisch in Dateien schreiben” deaktivieren**

In Lightroom durchgeführte Änderungen werden sofort in die Datenbank des Programms geschrieben. Damit diese Änderungen aber auch in anderen Programmen sichtbar sind, muss die Datei gespeichert werden (STRG/CMD-S). Dabei werden die Einstellungen je nach Dateityp entweder direkt in die Datei oder als Sidecar-Datei XMP gespeichert. In den Katalogeinstellungen kann man unter dem Reiter “Metadaten” angeben, dass jede Änderung sofort in die Datei geschrieben werden soll. Ist diese Option aktiviert, bremst sie Lightroom stark aus, da nach jeder kleinen Anpassung die Datei akualisiert wird. Das ist bei einer einzelnen vielleicht nicht schlimm, sobald aber mehrere Dateien gleichzeitig bearbeitet werden, wird das Arbeiten spürbar langsamer.

**\- Katalog optimieren**

Lightroom schreibt Änderungen ständig in den Katalog. Fällt die Leistung spürbar ab, sollte der Katalog optimiert werden (in den Katalogeinstellungen den Button klicken). Das Programm überprüft und optimiert dann die Datenstruktur.

**3.) SYSTEM REGELMÄSSIG WARTEN**

**\- Lightroom aktuell halten**

Zwischenupdates entfernen kleine Fehler und steigern die Leistung, deshalb sollte immer die aktuellste Version von Lightroom installiert sein.

**\- Nicht benötigte Programme schließen**

Jedes geöffnete Programm benötigt Arbeitsspeicher, der sich für Lightroom dadurch verringert, deshalb sollten nur für die Arbeit relevante Programme gestartet werden. Ist man vom Internet getrennt, kann auch der Virenscanner deaktiviert werden.

**\- Datenträgerbereinigung durchführen (Windows)**

Nach einem System- oder Programmabsturz werden temporär erstellte Dateien nicht automatisch gelöscht und nehmen Speicherplatz weg. Unter Windows  kann man die Datenträgerbereinigung durchführen (XP: Start – Programm – Zubehör – System Tools – Datenträgerbereinigung; Vista/7: Start – Datenträgerbereinigung im Suchfeld suchen). Nach der Auswahl des Laufwerks wählt man “Temporäre Dateien”.

**\- Festplatte defragmentieren**

Durch das Anlegen, Verschieben und Löschen von Dateien entstehen auf einer Festplatte “Löcher”, sodass neue Informationen nicht mehr zusammen an einem Ort abgelegt werden können, sondern an unterschiedlichsten Stellen auf dem Laufwerk platziert werden. Die Zugriffszeiten erhöhen sich dadurch. Deshalb sollte von Zeit zu Zeit eine Defragmentierung durchgeführt werden. Unter Mac OS muss dieser Schritt standardmäßig nicht durchgeführt werden.

**\- Betriebssystem aktuell halten**

Hier gilt das selbe wie bei Lightroom: neue Updates können die Leistung erhöhen und die Kompatibilität mit einzelnen Programmen verbessern.

Ich hoffe diese Tipps bringen dem ein oder anderen von euch einen Geschwindigkeitszuwachs! Habt ihr noch Fragen?

Viele Grüße,
Christian

*  <http://www.lightroom-blog.de/2011/06/10/systemleistung-fur-lightroom-optimieren/feed>

*  <http://delicious.com/post?url=http://www.lightroom-blog.de/2011/06/10/systemleistung-fur-lightroom-optimieren/&title=Systemleistung+f%C3%BCr+Lightroom+optimieren>
*  <http://digg.com/submit?phase=2&url=http://www.lightroom-blog.de/2011/06/10/systemleistung-fur-lightroom-optimieren/&title=Systemleistung+f%C3%BCr+Lightroom+optimieren>
*  <http://www.diigo.com/post?url=http://www.lightroom-blog.de/2011/06/10/systemleistung-fur-lightroom-optimieren/&title=Systemleistung+f%C3%BCr+Lightroom+optimieren&desc=Hallo%20zusammen%2C%0D%0A%0D%0Aimmer%20wieder%20kommen%20von%20Anwendern%20Beschwerden%20%C3%BCber%20die%20Tr%C3%A4gheit%20Lightrooms.%20L%C3%B6sungsvorschl%C3%A4ge%20findet%20man%20nach%20kurzer%20Recherche%20zu%20Gen%C3%BCge%20%E2%80%93%20allerdings%20hat%20Adobe%20nun%20selbst%20eine%20Zusammenfassung%20ver%C3%B6ffentlicht%2C%20wie%20man%20das%20System%20und%20Lightroom%20auf%20einen%20gemeinsamen%20Nenner%20bri>
*  <http://www.google.com/buzz/post?url=http://www.lightroom-blog.de/2011/06/10/systemleistung-fur-lightroom-optimieren/&imageurl=>
*  <http://www.mister-wong.de/addurl/?bm_url=http://www.lightroom-blog.de/2011/06/10/systemleistung-fur-lightroom-optimieren/&bm_description=Systemleistung+f%C3%BCr+Lightroom+optimieren&plugin=sexybookmarks>
*  <http://www.mixx.com/submit?page_url=http://www.lightroom-blog.de/2011/06/10/systemleistung-fur-lightroom-optimieren/&title=Systemleistung+f%C3%BCr+Lightroom+optimieren>
*  <http://reddit.com/submit?url=http://www.lightroom-blog.de/2011/06/10/systemleistung-fur-lightroom-optimieren/&title=Systemleistung+f%C3%BCr+Lightroom+optimieren>
*  <http://www.stumbleupon.com/submit?url=http://www.lightroom-blog.de/2011/06/10/systemleistung-fur-lightroom-optimieren/&title=Systemleistung+f%C3%BCr+Lightroom+optimieren>
*  <http://technorati.com/faves?add=http://www.lightroom-blog.de/2011/06/10/systemleistung-fur-lightroom-optimieren/>
*  <http://twitter.com/home?status=Systemleistung+f%C3%BCr+Lightroom+optimieren+-+http://www.lightroom-blog.de/2011/06/10/systemleistung-fur-lightroom-optimieren/&source=shareaholic>

Tags: [Katalogeinstellungen](http://www.lightroom-blog.de/tag/katalogeinstellungen/), [Lightroom](http://www.lightroom-blog.de/tag/lightroom/), [Performance](http://www.lightroom-blog.de/tag/performance/), [Systemleistung](http://www.lightroom-blog.de/tag/systemleistung/), [Voreinstellungen](http://www.lightroom-blog.de/tag/voreinstellungen/), [Vorschauen](http://www.lightroom-blog.de/tag/vorschauen/)
