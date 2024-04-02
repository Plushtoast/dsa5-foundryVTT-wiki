# Sicht und Licht
**Anmerkung**: Dieses Thema ist nicht ganz so einfach und kurz zu erklären, deshalb ist diese Anleitung deutlich länger als andere!
**Passend zu dem Thema hier noch ein Video von VTTom: [Sicht und Licht](https://youtu.be/Y86e-juqVAo)** 


## Szeneneinstellungen - Gitter
In der Szene gibt es neben dem Abschnitt *Sicht und Beleuchtung* noch die Gitter-Skalierung. Der Wert der hier eingetragen ist, 
wirkt sich auf die Sicht und Lichtweite einzelner Elemente in dieser Szene aus. (Bsp.: Hat ein Token eine 10 bei Dämmersicht,
macht es einen großen Unterschied ob ein Gitter 2 oder 20 Einheiten groß ist. Bei 2 kann er 5 Kästchen weit sehen, bei 20 nur 2 Kästchen). 
Diese Einstellung hängt direkt mit den [Einstellungen am Token](de-sicht_und_licht#token-einstellungen) zusammen.  
  
![Gitter 2](de/images/de-sicht_und_licht_0.png)
![Gitter 20](de/images/de-sicht_und_licht_1.png)

## Szeneneinstellungen - Sicht und Beleuchtung
1. **Figur-Sicht**: Ist der Haken deaktiviert, können alle Spieler immer alles von der Map sehen. Außerdem werden Lichtquellen und Wände bei 
markierten Token ignoriert was die Sichteinschränkungen angeht. (Bewegungseinschränkungen gelten immer noch).    
2. **Nebel Erkundung**: Hiermit kann das nach und nach Aufdecken der Karte beeinflusst werden. Ist der Haken deaktiviert, wird der nicht sichtbare 
und/oder beleuchtete Bereich wieder verdeckt wenn der Spieler den Bereich verlässt. Bei Aktivem Haken, bleibt zumindest die Szene sichtbar, allerdings
nicht die Token die sich dort befinden.
3. **Unbeschränkte Sichtreichweite**: Ist der Haken **deaktiviert**, ist die Karte komplett dunkel. Diese Dunkelheit wird nur durch Lichtquellen 
oder [Licht- und Sichteinstellungen der Token](de-sicht_und_licht#token-einstellungen) durchbrochen. (Meistertipp: In Karten mit Außen- und Innenbereich Haken deaktivieren 
und mit Lichtquellen im Außenbereich arbeiten). Ist der Haken **aktiv**, ist überall auf der Karte Licht. Die Token können unbegrenzt weit schauen. Die Einschränkungen durch Wände gelten aber immer noch.
3. **Dunkelheit**: Verändert den generellen Dunkelheitswert der Szene. Wird auf der Karte über die Seitenleiste Tag oder Nacht gewählt, 
wird hier für die Szene der Wert auf 0 für Tag oder auf 1 für Nacht. Dies ist eine rein optische Dunkelheit und hat keinen direkten Einfluss auf die Sichteinschränkungen der Token.  
4. **Sichtbeschränkungs-Schwellwert**: Wenn die **Dunkelheit** diesen Schwellenwert erreicht und der Haken für **unbeschränkte Sichtreichweite** gesetzt ist, dann wird der Haken dort deaktiviert so, dass bei Dunkelheit die Sicht und Lichteinstellungen der Token greifen. Dies dient zur Simulierung von Tag und Nacht.
  
![Sicht und Beleuchtung](de/images/de-sicht_und_licht_2.png)

## Token Einstellungen
Der Token hat noch einmal eine komplett eigene Einstellung für die eigene Sicht bei Dunkelheit (Vorteil: Dunkelsicht) sowie das von ihm 
ausgestrahlte Licht (Stichwort: Fackel).  
**Kurze Anmerkung** Öffnet ihr die folgenden Einstellungen über einen Token auf dem Spielfeld, gilt die Änderung auch nur für den dort platzierten Token.
Zieht ihr den Token dann aus den Akteuren aufs Spielfeld, hat dieser wieder die "alten" Werte. Siehe auch dieses [Video](https://youtu.be/CO7F7wi9Gz4)   
1. Öffnet die Einstellungen des gewünschten Tokens über das Akteur Menü. Oben im Fenster muss [Prototyp-Figur] stehen!  
1. In diesem Fenster wird unter *Vision* die komplette Sicht und das Licht vom Token gesteuert. 
   
![Prototyp Token Vision](de/images/de-sicht_und_licht_3.png) 

### Wichtige Einstellungen für DSA: (persönliche Meinung von *tsaath*)
1. **Hat Sicht**: Bei aktiviertem Haken gelten alle Sichteinschränkungen durch Licht, Wände, etc. Ist er deaktiviert kann der Akteur über die ganze Szene schauen.    
2. **Dämmersicht**: Einheiten die der Akteur im Dunkeln mit dämmrigem Licht weit sehen kann. (Vorteil: Dunkelsicht)    
3. **Helle Sicht**: Einheiten die der Akteur im Dunkeln mit hellem Licht weit sehen kann.  
4. **Sichtwinkel**: In welchem Winkel die Sicht gilt (z.B. für Helme 70-90°)
5. **Radius dämmriges Licht**: Einheiten in denen der Akteur dämmriges Licht um sich herum abgibt (Stichwort: Fackel)  
6. **Raduis helles Licht**: Einheiten in denen der Akteur helles Licht um sich herum abgibt (Stichwort: Fackel)  
7. **Abgabewinkel**: Winkel in dem das Licht ausgestrahlt wird (Blendlaterne)
8. **Lichtfarbe**: Farbe des abgegebenen Lichts  
9. **Farbintensität**: Stärke des abgegebenen Lichts  
10. **Animationstyp**: Ob das Licht einen Effekt hat (Stichwort: Fackel)  
11. **Animationsgeschwindigkeit**
12. **Animationsintensität**
Bsp.: Held mit einer Fackel  
  
![Elfin Fackel](de/images/de-sicht_und_licht_4.png)

### Tipp: Makro Sicht und Licht im Grundregelwerk
Wenn ihr das Grundregelwerk besitzt, dann gibt es dort im Makro Kompendium ein Makro, mit dem ihr die Sicht und Licht Einstellungen recht komfortabel umstellen könnt.  
Siehe auch [Licht-Makro](de-licht-und-sicht-makro)

*[x]Zuletzt bearbeitet: 04.11.2021*     
*Überarbeitet: Kompletten Inhalt für Foundry 8 überarbeitet*  
