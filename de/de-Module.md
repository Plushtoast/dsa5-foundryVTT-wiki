## Anmerkung: 
**Es ist nicht möglich alle Module auf vollständige Kompatibilität zu prüfen. Bitte testet die Module im zweifel in einer Testwelt und setzt sie erst in euren Spielwelte ein, wenn ihr euch sicher seid dass sie funktionieren.**

# **Kompatible Module**
Diese Module funktionieren mit dem DSA 5 Regelwerk, es kann aber den ein oder anderen Bug geben (Bsp.: Bei Dice so nice werden die 3D Würfel für alle Spieler angezeigt obwohl der Spielleiter verdeckt würfelt (Stand vom 17.03.2021))

## Dice Tray
Platziert unter dem Chat Würfelsymbole um schnell Würfe über das anklicken der jeweiligen Würfel zu generieren. Ein Linksklick fügt einen Würfel hinzu und ein Rechtsklick zieht diesen wieder ab. Über + und - sowie das Feld dazwischen werden die Modifikatoren eingegeben. 
Dabei wird der Wurf direkt in den Chat geschrieben und kann dort noch weiter modifiziert werden.  
![Dice Tray empty](https://user-images.githubusercontent.com/80099175/111421882-09d19280-86ee-11eb-8415-9d420ed7b7d8.png)![Dice Tray](https://user-images.githubusercontent.com/80099175/111421985-35ed1380-86ee-11eb-96ff-cfcc19174571.png)

## Dice so nice
Wirf 3D Würfel über den virtuellen Spieltisch. Dabei kann sogar zwischen verschiedenen DSA5 Themen gewählt werden.
![Dice so nice Wurf](https://user-images.githubusercontent.com/80099175/111422410-f3780680-86ee-11eb-8edc-6f9ce4d14364.png)
**Achtung:** diese Würfel können bei älteren Geräte zu Performace Problemen führen. Um die Würfel für den einzelnen Spieler zu deaktivieren geht man in *Einstellungen anpassen -> Moduleinstellungen -> Abschnitt Dice so Nice -> My Dice Settings -> Appearance -> Haken bei Enable 3D Dice raus*  
![Dice so nice Einstellungen](https://user-images.githubusercontent.com/80099175/111422629-4356cd80-86ef-11eb-938c-32f944a713fd.png)

## Tokenizer
Bietet die Möglichkeit aus dem Hochgeladenen Charakterbild einen Token mit der offiziellen DSA5 Umrandung zu erstellen.
1. Ein Bild für den Charakter hochladen (hier vom eigenen Computer).
1. Über die Tonne kann eine Ebene auf der jeweiligen Seite gelöscht werden.
1. Das Bild von der linken Seite über das Männchen Symbol auf die Token Seite kopieren.
1. Über die Pfeile kann die Anordnung der einzelnen Bilder gesteuert werden. Die Vorschau zeigt dabei immer das Ergebnis.
1. Wird das Schloss deaktiviert kann das einzelne Bild mit der Maus verschoben und über das Mausrad gezoomt werden
1. Ist man mit dem Ergebnis zufrieden kann man das Bild Speichern und dann mit OK bestätigen.
![Tokennizer](https://user-images.githubusercontent.com/80099175/111424712-6c2c9200-86f2-11eb-8343-6c56e0d20c6f.png)

## German [Core]
Durch dieses Modul kann die Standardsprache im Foundry Setup auf Deutsch umgestellt werden. Übersetz die komplette Oberfläche auf Deutsch.
Unter *Adminsetup -> Configuration -> Default Language* Deutsch - German [Core] wählen und Server neu starten.
![grafik](https://user-images.githubusercontent.com/80099175/111421703-bb23f880-86ed-11eb-94ee-92a71189353e.png)

## Ping
Um den Spielern einen Hinweis darüber zu geben über was auf der Szene man gerade spricht, kann mit dem Modul Ping ein 
Signal auf der Szene erzeugt werden (Standard: Linksklick)  
Mit einer Tastenkombination (Standard: STRG+Linksklick) springt dann die Sicht der Spieler auch zu dem Punkt an die das Signal gesetzt wurde.  
![Ping](https://user-images.githubusercontent.com/80099175/111904281-60b8ce00-8a46-11eb-9728-720a761c85b3.png)

# Persönliche Empfehlungen von *tsaath*
Hier liste ich kurz die Module auf, die ich (*tsaath*) in meinen Sitzungen verwende. Auch bei diesen gibt es keine Garantie auf Kompatibilität.

## Torch
Dieses Modul fügt einen Fackel Schalter im Kontextmenü des Charakters hinzu. In den Moduleinstellungen kann die Reichweite der Fackel definiert werden.
1. Bei aktiviertem Haken können auch die Spieler auf den Fackelschalter im Kontextmenü zugreifen.
2. Radius helles und dämmriges Licht der Fackel
3. Fackelschalter im Kontextmenü mit dem die Fackel aktiviert und deaktiviert werden kann.  
![grafik](https://user-images.githubusercontent.com/80099175/111770465-beb0ae80-88aa-11eb-88fe-3fd1be700b0b.png)

## T is for Target
Das Modul macht genau das was der Name verspricht. Geht mit der Maus über einen Token und drückt *t*, dadurch wird der Token als Ziel markiert. Seid ihr wieder mit der Maus über einem markierten Token und drückt *t*, dann wird die Markierung entfernt.

## Pings
Ihr könnt ein Symbol auf dem Bildschirm erscheinen lassen um zu verdeutlichen wovon ihr sprecht. Mit einer konfigurierbaren Tastenkombination lässt sich auch der Fokus der Spieler dorthin verschieben.

## FXMaster
Hiermit werden weitere Wettereffekte zum Spiel hinzugefügt. Außerdem gibt es noch eine Handvoll Zaubereffekte.

## PopOut!
Mit PopOut! könnt ihr jedes Fenster in Foundry aus dem Browser in ein separates Fenster verschieben. Sehr nützlich bei 2 Monitoren. Dies Funktioniert aber nicht in der Lokalinstallation von Foundry.

## Calendar/Weather und About Time
Solltet ihr nach einer Möglichkeit suchen den DSA Kalender in Foundry einzubauen, sowie eine Uhr im Spiel zu haben, dann sind dies 2 Module die ihre Aufgabe sehr gut erfüllen. Es lässt sich mit etwas Arbeit der komplette DSA Kalender umsetzen.

Alternativ könnt Ihr die Kalendersettings auch importieren, aus [dieser Datei](https://github.com/mckee14/dsa5-foundryVTT-wiki/files/6384236/Kalendersettings.txt). Die Jahreszeiten, Mondphasen, Monate und Daten sind hinterlegt. **Das aktuelle Tagesdatum ist der 18. Ingerimm 1029 BF im Zwölfgötterkalender**. 

Natürlich könnt Ihr das Datum anpassen, entweder über die GUI (wobei Tag/Datum/Mond automatisch zusammenpassen) oder direkt in den Einstellungen des Kalenders. Dabei muss man recherchieren, an was für einem Datum welcher Wochentag und welche Mondphase ist. [Das hier ist eine gute Anlaufstelle.](https://de.wiki-aventurica.de/wiki/Datum)

## Torchlight
Dieses Modul funktioniert ähnlich wie Torch, nur kann man gleich 3 Lichtquellen voreinstellen (Magisches Licht, Laterne und Fackel).

## Permission Viewer
Bildet über ein Symbol in der Farbe der Spieler die Berechtigungen auf verschiedene Objekte ab. So seht ihrr als Spielleiter welche Spieler worauf Zugriff haben.

## Quick Insert - Search Widget
Ihr könnt über STRG+Leertaste ein kleines Suchfenster öffnen, welches alle Elemente in eurer Welt durchsucht. So habt ihr schnellen Zugriff auf verschiedene Elemente ohne rechts im Menü suchen zu müssen. Es lässt sich sehr kleinteilig einstellen wer was durchsuchen darf und was überhaupt durchsucht wird.

## Laptop Form Fix
Wenn euch die Meldung über eine zu geringe Auflösung nervt, dann ist das hier das Modul welches die Meldung entfernt und ein paar Optimierungen an der Oberfläche durchführt. Allerdings ist Foundry dadurch in kleineren Auflösungen immer noch nicht optimal zu bedienen. Allerdings lassen sich jetzt alle Schaltflächen erreichen und bedienen.

## DF Curvy Walls
Solltet ihr eine Karte mit einem Runden Turm haben, dann wisst ihr wie unbefriedigend Foundry diese Wände umsetzt. Mit dem Modul Curvy Walls könnt ihr ohne Probleme runde Wände ziehen.

## Drag Ruler
Hiermit lässt sich die Geschwindigkeit der Charaktere für die maximale Bewegungsrate einstellen. Diese wird dann bei Szenen mit Grid farblich dargestellt. In den *Moduleinstellungen* unter *Drag Ruler* -> *Einstellungen zur Systemintegration* beim *Geschwindigkeitsattribut* `actor.data.data.status.speed.max` und bei *Sprint Multiplikator* eine 2 eingeben.  
  
  ![Drag Ruler Einstellungen](https://user-images.githubusercontent.com/80099175/115960451-d7e3f500-a511-11eb-8388-78dfa12a69d4.png)
