---
source: http://www.confessionsofaphotoshopnerd.com/blog/2011/2/8/freaky-details-creative-sharpening-in-photoshop.html
---
0\. Tonwertkorektur
<http://photo.tutsplus.com/tutorials/post-processing/bring-a-photograph-to-life-using-levels-with-zones/>
[Black and White Conversions: An Introduction to Luminosity](http://digital-photography-school.com/black-and-white-conversions-an-introduction-to-luminosity)

I. Black & White
0\. Contrast
a. allgemeine (over all) Kontrast
<http://digital-photography-school.com/5-techniques-for-enhancing-contrast-in-digital-photos>

[http://digital-photography-school.com/improving-composition-with-tonal-contrast](http://digital-photography-school.com/improving-composition-with-tonal-contrast#ixzz2WYmdUXZg)

1. Tonal contrast is a great basis for a successful black and white image. The desaturated versions of the above photos all work fairly well. It won’t take much more work to turn them into striking monochrome images.
2. Images with strong tonal contrast tend to work well in both black and white and colour. An interesting exercise you could try is to go back through photos that you have already taken and select some that feature strong tonal contrast. Then convert them to black and white. I think you will be able to create some strong monochrome images if you do this.
3. Keeping your compositions simple helps make the most out of tonal contrast. If you include too much within the frame, the impact of any tonal contrast is lessened.

b. (speziell) Mitteltonkontrast 
\- s. Luminousity mask

c. Local contrast, Schärfe
Lokaller Kontrast:
 - 2 Ebenen
 - obere Invertieren (Strl-i), Lichtmous: "Farbig abwedeln" oder "Linear abwedeln", Gaußsche Weichzeicher mit Radius 1-3 (feine Details) bis 20-30 (Grobe Details), beide Ebene Zusammenfügen (Ctrl-E)
 - Lichtart zu Hintergrund auf "Multiplizieren", Deckkraft regeln 

     enthance Details - **High Pass Filter** - <http://www.share5.net/enhance-photography-details-in-photoshop/>
     enthance local Contrast - 
          **Unsharp Mask** -  <http://www.cambridgeincolour.com/tutorials/local-contrast-enhancement.htm>
          **contrast mas**k - <http://www.lightfocus.net/tutorials/DetailEnhancement/photoshop/>
<http://www.lightfocus.net/tutorials/DetailEnhancement/photoshop/>          **Freaky Details**  - <http://mattnorris.squarespace.com/blog/2011/2/8/freaky-details-creative-sharpening-in-photoshop.html>

               Zwei neue Ebenen (Blur und Background)
Blur - "Matter machen" Radius 30, thresehold 45
Blur\[Gray\] -(Substraction) Background\[Gray\] (Offset 128) --> neue Alpha-Kanal (alpha 1)
Curvs (Z)
White\[Alpha\] +(Addiation) Background\[Gray\] (Offset -128) --> neue Alpha-Kanal
Alpha to Layer\[Liminance\]

Am Ende der Bearbeitung in Photoshop steht das Schärfen für das jeweilige Ausgabemedium. Einmal schärfe ich die Fotos fürs Web, wobei ich eine Technik verwende, die von Marc Adamus und einigen amerikanischen Fotografen bekannt gemacht wurde: Ich skaliere das Bild zunächst auf das 1,667-Fache der finalen Auflösung. Hier schärfe ich das Bild sehr stark, zum Beispiel durch zweimalige Anwendung des Filters Scharfzeichnen. Danach wird das Bild auf die Zielgröße skaliert. Wichtig ist dabei, in Photoshop die Einstellung bikubisch zu verwenden und nicht bikubisch schärfer. Danach kann ich die Schärfeebene für ein optimales Ergebnis noch mit einer Maske anpassen.

Für den Druck schärfe ich anders: Hier geht es mir nicht darum, dass das Foto auf dem Bildschirm gut aussieht. Im Gegenteil, am Bildschirm wirkt es oft sogar überschärft. Aber das ist nötig, um einen scharfen Druck zu erhalten. Ihr findet ein Video, in dem ich meine Technik genauer beschreibe auf meinem [Youtube-Kanal](http://www.youtube.com/user/mibreit?feature=mhee).

1\. Merge all your visible layers into a new layer (Mac: Shift-Alt-Apple-E, PC: Ctrl-Shift-Alt-E (I think))
2\. Select the new layer and open the Unsharp Mask filter.
3\. Set the Amount to 20, the Radius to 50 and the Threshold to 0.
4\. Change the layer style to “Luminosity’ to prevent any colour shifts.
5\. Pull the layer opacity down to suit and/or add a mask to localise the effect.

1\. Flatten your image.
2\. Go to Edit –> Convert to Profile –> LAB color.
3\. Duplicate the background layer.
4\. Go to Image –> Apply Image (Bildberechnungen).
5\. Select the Lightness Channel, Soft Light, 100% Opacity, and leave the two checkboxes alone. You’ll get a funky pink and blue like image.
6\. Change the layer’s blending mode to Luminosity to remove these wacky colors but preserve the tonal changes.
7\. Adjust the layer opacity to taste and/or use a mask to localise effect.
8\. Don’t forget to convert back to RGB colour when you’re done.

1\. Click the ‘New Adjustment Layer’ icon on the Layers palette.
2\. Select ‘Selective Color’ (Selective farbkorrektur).
3\. In the Color drop-down box, select ‘Whites’ (Weiß).
4\. Move the black slider to suit.
5\. Repeat with ‘Neutrals’ and ‘Blacks’ (Grautöne/Schwarz).

1\. Conversion
<http://photo.tutsplus.com/tutorials/post-processing/7-black-and-white-photoshop-conversion-techniques/>

Einleitung <http://www.photoshopessentials.com/photo-editing/black-and-white/black-and-white-intro/>
1. Grayscale Color Mode - <http://www.photoshopessentials.com/photo-editing/black-and-white/grayscale/>
      Image > Mode > Greyscale - 60%G 30%R and 10%B where the Green lightness as double that of the Red, much like our eyes see 
2. Desaturating The Color (Farnton/Sätigung) - <http://www.photoshopessentials.com/photo-editing/black-and-white/desaturate/>
     Verwendung von Fotofilter
     Image > Adjust > Desaturate
3. Gradient Map (Verlaufsumsetzng) - <http://www.photoshopessentials.com/photo-editing/black-and-white/gradient-map-adjustment/>
     Adjust The Midtones/Contrast with the midpoint marker/black And white color stops
4. Luminosity Blend Mode - <http://www.photoshopessentials.com/photo-editing/black-and-white/luminosity-blend-mode/>
5. Lab Color Mode - <http://www.photoshopessentials.com/photo-editing/black-and-white/lab-color/>
6. Color Channels - <http://www.photoshopessentials.com/photo-editing/black-and-white/color-channels/>
7. Hue/Saturation Adjustment - <http://www.photoshopessentials.com/photo-editing/black-and-white/hue-saturation/>
8\. Chanel Mixer - using these values taken from the sRGB definitions developed by Hewlett Packard (http://www.w3.org/Graphics/Color/sRGB)
      71%G 21%R and 8%B.

2\. Toning
Sepia: Hue 27, Saturation 27
yelow Sepia: Hue 42, Saturation 15
Blue: Hue 210, Saturation 13
Purple (selenium): Hue 250, Saturation 7
Red: Hue 0, Saturation 13
Copper: Hue 16, Saturation 20
Green: Hue 100, Saturation 5

<http://photo.tutsplus.com/tutorials/post-processing/mastering-the-art-of-black-and-white-toning/>

3\. Film grain
Neue Ebene (Blending Mode "Overlay", Fill 50%, ggf in SmartObject konvertiern), Add Noise, Blur Noise, adjust contrast
<http://photoshoptutorials.ws/photoshop-tutorials/photo-effects/natural-film-grain/Page-2.html>
Film Grain Filter von PS5 (nur 6 bit)- http://www.adobe.com/designcenter/photoshop/articles/phs8kbfilmgrain.html

4\. Efekte
Texturen - <http://photo.tutsplus.com/tutorials/mastering-the-art-of-adding-textures-to-your-photos/>
Vinegtierung
Burn edges

5\. Plugins
<http://photo.tutsplus.com/tutorials/two-essential-photoshop-plugins-for-black-and-white-photographers/>

Links
<http://www.digitalcameraworld.com/2012/05/13/black-and-white-photography-what-you-need-to-know-for-perfect-mono-pictures/>

<http://photo.tutsplus.com/tutorials/photography-fundamentals/mastering-the-art-of-black-and-white-photography/>
