## Anmerkung:
**Es ist nicht möglich alle Module auf vollständige Kompatibilität zu prüfen. Bitte testet die Module im zweifel in einer Testwelt und setzt sie erst in euren Spielwelten ein, wenn ihr euch sicher seid dass sie funktionieren.**

* [Kompatible Module](de-Module#Kompatible-Module)
	- [Dice Tray](de-Module#dice-tray)
	- [Dice so nice](de-Module#dice-so-nice)
	- [German (Core)](de-Module#german-core)
	- [Optolith to Foundry](de-Module#optolith-to-foundry)
	- [Pings](de-Module#pings)
	- [Tokenizer](de-Module#tokenizer)

* [Persönliche Empfehlungen von Tom](de-Module#persönliche-empfehlungen-von-tom)
	- [Calendar/Weather und About Time](de-Module#zeit-kalender-und-wetter-timesup-smalltime-simplecalendar-weather-control)
	- [DF Curvy Walls](de-Module#df-curvy-walls)
	- [Drag Ruler](de-Module#drag-ruler)
	- [FXMaster](de-Module#fxmaster)
	- [GMScreen](de-Module#gmscreen)
	- [Laptop Form Fix](de-Module#laptop-form-fix)
	- [Permission Viewer](de-Module#permission-viewer)
	- [Pings](de-Module#pings)
	- [Polyglot](de-Module#polyglot)
	- [Popout!](de-Module#popout)
	- [T is for Target](de-Module#t-is-for-target)
	- [Torchlight](de-Module#torchlight)
	- [Quick Insert](de-Module#quick-insert)

# **Kompatible Module**
Diese Module funktionieren mit dem DSA 5 Regelwerk, es kann aber den ein oder anderen Bug geben (Bsp.: Bei Dice so nice werden die 3D Würfel für alle Spieler angezeigt obwohl der Spielleiter verdeckt würfelt (Stand vom 17.03.2021))

## Dice Tray
Platziert unter dem Chat Würfelsymbole um schnell Würfe über das anklicken der jeweiligen Würfel zu generieren. Ein Linksklick fügt einen Würfel hinzu und ein Rechtsklick zieht diesen wieder ab. Über + und - sowie das Feld dazwischen werden die Modifikatoren eingegeben. 
Dabei wird der Wurf direkt in den Chat geschrieben und kann dort noch weiter modifiziert werden.  
![Dice Tray](de/images/Module_Dice_Tray.jpg)

## Dice so nice
Wirf 3D Würfel über den virtuellen Spieltisch. Dabei kann sogar zwischen verschiedenen DSA5 Themen gewählt werden. Mitlerweile gibt es in den [Systemeinstellungen](de-Systemeinstellungen) auch die Möglichkeit die Dice so Nice Würfel für die Proben über den Charakterbogen zu verwenden. 
![Dice so nice Wurf](https://user-images.githubusercontent.com/80099175/111422410-f3780680-86ee-11eb-8edc-6f9ce4d14364.png)
**Achtung:** diese Würfel können bei älteren Geräte zu Performace Problemen führen. Um die Würfel für den einzelnen Spieler zu deaktivieren geht man in *Einstellungen anpassen -> Moduleinstellungen -> Abschnitt Dice so Nice -> My Dice Settings -> Appearance -> Haken bei Enable 3D Dice raus*  
![Dice so nice Einstellungen](https://user-images.githubusercontent.com/80099175/111422629-4356cd80-86ef-11eb-938c-32f944a713fd.png)

## German [Core]
Durch dieses Modul kann die Standardsprache im Foundry Setup auf Deutsch umgestellt werden. Übersetz die komplette Oberfläche auf Deutsch.
Unter *Adminsetup -> Configuration -> Default Language* Deutsch - German [Core] wählen und Server neu starten.
![grafik](https://user-images.githubusercontent.com/80099175/111421703-bb23f880-86ed-11eb-94ee-92a71189353e.png)

## Optolith to Foundry
Ein Modul um die exportierten Charaktere (als .json) direkt zu Foundry zu importieren. Hierzu gibt es ein Video welches die Funktion erklärt: [Link zum Youtube Tutorial](https://youtu.be/SHqkSU1rQoQ)
**Achtung**, muss über die Manifest URL installiert werden, welche ihr hier findet:[https://github.com/ntfoster/optolith-to-foundry](https://github.com/ntfoster/optolith-to-foundry)

## Pings
Um den Spielern einen Hinweis darüber zu geben über was auf der Szene man gerade spricht, kann mit dem Modul Pings ein 
Signal auf der Szene erzeugt werden (Standard: Linksklick)  
Mit einer Tastenkombination (Standard: STRG+Linksklick) springt dann die Sicht der Spieler auch zu dem Punkt an die das Signal gesetzt wurde.  
![Ping](https://user-images.githubusercontent.com/80099175/111904281-60b8ce00-8a46-11eb-9728-720a761c85b3.png)

## Tokenizer
Bietet die Möglichkeit aus dem Hochgeladenen Charakterbild einen Token mit der offiziellen DSA5 Umrandung zu erstellen.
1. Ein Bild für den Charakter hochladen (hier vom eigenen Computer).
1. Über die Tonne kann eine Ebene auf der jeweiligen Seite gelöscht werden.
1. Das Bild von der linken Seite über das Männchen Symbol auf die Token Seite kopieren.
1. Über die Pfeile kann die Anordnung der einzelnen Bilder gesteuert werden. Die Vorschau zeigt dabei immer das Ergebnis.
1. Wird das Schloss deaktiviert kann das einzelne Bild mit der Maus verschoben und über das Mausrad gezoomt werden
1. Ist man mit dem Ergebnis zufrieden kann man das Bild Speichern und dann mit OK bestätigen.
![Tokennizer](https://user-images.githubusercontent.com/80099175/111424712-6c2c9200-86f2-11eb-8343-6c56e0d20c6f.png)

# Persönliche Empfehlungen von *Tom*
Hier liste ich kurz die Module auf, die ich (*Tom*) in meinen Sitzungen verwende. Auch bei diesen gibt es keine Garantie auf Kompatibilität.

## Zeit, Kalender und Wetter: TimesUp, SmallTime, Simplecalendar, Weather Control 
Die Verwendung von Zeit und Kalenderfunktionen ist nicht unkompliziert, weshalb ich empfehle die Wiki Seiten der Module zur Hilfe zu nehmen.  

### SmallTime
Smalltime erzeugt eine kleine Systemuhr über welche die Tageszeit abgebildet wird. Diese Zeiteinstellung lässt sich in den Moduleinstellungen auf das 24 Stunden Format ändern.  
[Github Seite](https://github.com/unsoluble/smalltime)

### Simplecalendar
Simplecalendar ist eine Kalender Lösung für Foundry, die sich in den Einstellungen an Smalltime anbinden lässt. Dann übernimmt Smalltime die Steuerung der Uhrzeit und Simplecalendar steuert Tage, Wochen, Monate und Jahre.   
Eine Datei zum Import des DSA Kalenders findet ihr hier: [SimpleCalender - DSA Kalender](de/files/simple-calendar-export.json).  
[Github Seite](https://github.com/vigoren/foundryvtt-simple-calendar)

### Timesup
Bindet die Zeit an die Effekte so, dass diese nach bestimmter Zeit und Kampfrunden automatisch beendet werden. Dieses Modul funktioniert ohne irgendwelche Einstellungen und arbeitet perfekt mit Smalltime zusammen.  

### Weather Control
Ist der Nachfolger zu Calendar/Weather. Die Kalenderfunktion wurde deaktiviert und übernimmt dann Simplecalendar. Weather Controll übernimmt dann nur noch die Steuerung des Wetters auf Basis der Einstellungn in Simplecalendar.  
**Anmerkung:** Aktuell wird das Wetter dabei nur im Chat ausgegeben. Das Modul ist recht frisch im Umbau und die Funktionen sollen sich laut Entwickler noch weiter entwickeln. Bis dahin könnt ihr darauf aber auch verzichten.  

## DF Curvy Walls
Solltet ihr eine Karte mit einem Runden Turm haben, dann wisst ihr wie unbefriedigend Foundry diese Wände umsetzt. Mit dem Modul Curvy Walls könnt ihr ohne Probleme runde Wände ziehen.

## Drag Ruler
Hiermit lässt sich die Geschwindigkeit der Charaktere für die maximale Bewegungsrate einstellen. Diese wird dann bei Szenen mit Grid farblich dargestellt. In den *Moduleinstellungen* unter *Drag Ruler* -> *Einstellungen zur Systemintegration* beim *Geschwindigkeitsattribut* `actor.data.data.status.speed.max` und bei *Sprint Multiplikator* eine 2 eingeben.  
  
  ![Drag Ruler Einstellungen](https://user-images.githubusercontent.com/80099175/115960451-d7e3f500-a511-11eb-8388-78dfa12a69d4.png)

## FXMaster
Hiermit werden weitere Wettereffekte zum Spiel hinzugefügt. Außerdem gibt es noch eine Handvoll Zaubereffekte.

## GMScreen
Bietet einen aufklappbaren und selbst konfigurierbaren GM Screen, wie ihr ihn vom Tisch kennt. Dort könnt ihr euch Notizen aus dem Journal rein ziehen um Regeln schnell auf einen Blick zu haben oder eure Abenteuernotizen zu platzieren. Der Vorteil gegenüber dem Öffnen einzelner Einträge ist, dass ihr mehrere auf einen Klick öffnen und wieder schließen könnt. 

## Laptop Form Fix
Wenn euch die Meldung über eine zu geringe Auflösung nervt, dann ist das hier das Modul welches die Meldung entfernt und ein paar Optimierungen an der Oberfläche durchführt. Allerdings ist Foundry dadurch in kleineren Auflösungen immer noch nicht optimal zu bedienen. Allerdings lassen sich jetzt alle Schaltflächen erreichen und bedienen.

## Permission Viewer
Bildet über ein Symbol in der Farbe der Spieler die Berechtigungen auf verschiedene Objekte ab. So seht ihrr als Spielleiter welche Spieler worauf Zugriff haben.

## Pings
Ihr könnt ein Symbol auf dem Bildschirm erscheinen lassen um zu verdeutlichen wovon ihr sprecht. Mit einer konfigurierbaren Tastenkombination lässt sich auch der Fokus der Spieler dorthin verschieben.

## Polyglot
Über Polyglot könnt ihr verschiedene Aventurische Sprachen für eure Chatnachrichten auswählen. Diese können dann nur von den Charakteren gelesen werden, die diese Sprache beherrschen.

## PopOut!
Mit PopOut! könnt ihr jedes Fenster in Foundry aus dem Browser in ein separates Fenster verschieben. Sehr nützlich bei 2 Monitoren. Dies Funktioniert aber nicht in der Lokalinstallation von Foundry.

## T is for Target
Das Modul macht genau das was der Name verspricht. Geht mit der Maus über einen Token und drückt *t*, dadurch wird der Token als Ziel markiert. Seid ihr wieder mit der Maus über einem markierten Token und drückt *t*, dann wird die Markierung entfernt.

## Torchlight
Dieses Modul fügt drei Lichtquellen (Zauberspruch, Laterne, Fackel) im Kontextmenü des Charakters hinzu. In den Moduleinstellungen kann die Reichweite der Lichtquellen definiert werden.

1. Bei aktiviertem Haken können auch die Spieler auf die Lichtquellen im Kontextmenü zugreifen.   
2. Radius helles und dämmriges Licht des Zauberspruchs (Die anderen Lichtquellen können genauso eingestellt werden)  
3. Lichtschalter im Kontextmenü mit dem die Lichtquelle aktiviert und deaktiviert werden kann.  
![Torchlight](de/images/Module_Torchlight.jpg)

*[x]Zuletzt bearbeitet: 04.11.2021*











