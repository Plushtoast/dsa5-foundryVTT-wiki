# Sicht und Licht
**Anmerkung: Dieses Thema ist nicht ganz so einfach und kurz zu erklären, deshalb ist diese Anleitung deutlich länger als andere!**
**Um das Thema etwas griffiger zu machen, hier einmal ein Video von Enyounter Library 
welches auf Teile dieses Themas eingeht:https://www.youtube.com/watch?v=s60nS56jIH8** 


## Szeneneinstellungen - Gitter
In der Szene gibt es neben dem Abschnitt *Sicht und Beleuchtung* noch die Gitter-Skalierung. Der Wert der hier eingetragen ist, 
wirkt sich auf die Sicht und Lichtweite einzelner Elemente in dieser Szene aus. (Bsp.: Hat ein Token eine 10 bei Dämmersicht,
macht es einen großen unterschied ob ein Gitter 2 oder 20 Einheiten groß ist. Bei 2 kann er 5 Kästchen weit sehen, bei 20 nur 2 Kästchen). 
Diese Einstellung hängt direkt mit den Einstellungen am Token zusammen (LINK ZU TOKEN ANLEITUNG) 
![Gitter 2](https://user-images.githubusercontent.com/80099175/111609623-c9037780-87da-11eb-8cdb-5f75ef20c8a0.png)
![Gitter 20](https://user-images.githubusercontent.com/80099175/111629054-2dc9cc80-87f1-11eb-8b8e-43f6482f91c9.png)

## Szeneneinstellungen - Sicht und Beleuchtung
**Figuren-Sicht** Ist der Haken deaktiviert, können alle Spieler immer alles von der Map sehen. Außerdem werden Lichtquellen und Wände bei 
markierten Token ignoriert was die Sichteinschränkungen angeht. (Bewegungseinschränkungen gelten immer noch).    
**Globale Beleuchtung** Ist der Haken deaktiviert, ist die Karte komplett dunkel. Diese dunkelheit wird nur durch Lichtquellen 
oder Licht- und Sichteinstellungen der Token (LINK ZU TOKEN ANLEITUNG) durchbrochen. (Meistertipp: In Karten mit Außen- und Innenbereich Haken deaktivieren 
und mit Lichtquellen im Außenbereich arbeiten)  
**Nebel Erkundung** Hiermit kann das nach und nach Aufdecken der Karte beeinflusst werden. Ist der Haken deaktiviert, wird der nicht sichtbare 
und/oder beleuchtete Bereich wieder verdeckt wenn der Spieler den Bereich verlässt. Bei Aktivem Haken, bleibt zumindest die Szene sichtbar, allerdings
nicht die Token die sich dort befinden.  
**Dunkelheit** Verändert den generellen Dunkelheitswert der Szene. Wird auf der Karte über die Seitenleiste Tag oder Nacht gewählt, 
wird hier für die Szene der Wert auf 0 für Tag oder auf 1 für Nacht. 
**Schwellwert für globale Beleuchtung** Ist der Haken gesetzt, wird die globale Beleuchtung auf der Szene automatisch deaktiviert sobald der 
im Regler erreichte Grenzwert überschritten ist.  
![Sicht und Beleuchtung](https://user-images.githubusercontent.com/80099175/111619947-6dd78200-87e6-11eb-93e0-5b6cc0169cf7.png)

## Token Einstellungen
Der Token hat noch einmal eine komplett eigene Einstellung für die eigene Sicht bei Dunkelheit (Vorteil: Dunkelsicht) sowie das von ihm 
ausgestrahlte Licht (Stichwort: Fackel).  
**Kurze Anmerkung** Öffnet ihr die folgenden Einstellungen über einen Token auf dem Spielfeld, gilt die Änderung auch nur für den dort platzierten Token.
Zieht ihr den Token dann aus den Akteuren aufs Spielfeld, hat dieser wieder die "alten" Werte.   
1. Öffnet die Einstellungen des gewünschten Tokens über das Akteur Menü. Oben im Fenster muss [Prototyp-Figur] stehen!  
1. In diesem Fenster wird unter *Vision* die komplette Sicht und das Licht vom Token gesteuert.  
![Prototyp Token Vision](https://user-images.githubusercontent.com/80099175/111622001-f5be8b80-87e8-11eb-9135-f6e283007ec5.png)  

###Wichtige Einstellungen für DSA: (persönliche Meinung)
**Hat Sicht**: Bei aktiviertem Haken gelten alle Sichteinschränkungen durch Licht, Wände, etc. Ist er deaktiviert kann der Akteur über die ganze Szene schauen.    
**Dämmersicht**: Einheiten die der Akteur im Dunkeln mit dämmrigem Licht weit sehen kann. (Vorteil: Dunkelsicht)    
**Helle Sicht**: Einheiten die der Akteur im Dunkeln mit hellem Licht weit sehen kann.  
**Radius dämmriges Licht**: Einheiten in denen der Akteur dämmriges Licht um sich herum abgibt (Stichwort: Fackel)  
**Raduis helles Licht**: Einheiten in denen der Akteur helles Licht um sich herum abgibt (Stichwort:Fackel)  
**Lichtfarbe**: Farbe des abgegebenen Lichts  
**Farbintensität**: Stärke des abgegebenen Lichts  
**Animationstyp**: Ob das Licht einen Effekt hat (Stichwort: Fackel)  
Bsp.: Held mit einer Fackel  
![Geron Fackel](https://user-images.githubusercontent.com/80099175/111623244-6619dc80-87ea-11eb-92e6-7cfbb3fd5264.png)

###Modifikationstip: Torch
Die Mod Torch bietet die Möglichkeit Fackeln über das Kontextmenü der Token zu aktivieren und deaktivieren. (LINK ZU MODULE - TORCH)

## Standardeinstellungen Sichtweite
Um nicht bei jedem neu erstellten Akteur die Sicheinstellungen auf den eigenen Standard setzen zu müssen, 
gibt es unter *Zahnrad* (Einstellungen) (1) -> *Einstellungen anpassen* (2) -> *Systemeinstellungen* (3) die Punkte *Standard Sichtweite (vage)* (4) (*Dämmersicht* im Token)
und *Standard Sichtweite (klar)* (5) (*Helle Sicht* im Token). Jeder neu erstellte Akteur bekommt diese Einstellungen. (Persönliche Meinung: Ich habe beides auf 0
und steuere die Sicht bei Tag nur über Hinternisse, bei Dunkelheit über Dämmersicht und Fackeln)
![Systemeinstellungen Sichtweite](https://user-images.githubusercontent.com/80099175/111624415-f278cf00-87eb-11eb-9ac3-b4b3a98fb1e8.png)
