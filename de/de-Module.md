## Anmerkung:
**Es ist nicht möglich alle Module auf vollständige Kompatibilität zu prüfen. Bitte testet die Module im zweifel in einer Testwelt und setzt sie erst in euren Spielwelten ein, wenn ihr euch sicher seid dass sie funktionieren.**


## Dice Tray
Platziert unter dem Chat Würfelsymbole um schnell Würfe über das anklicken der jeweiligen Würfel zu generieren. Ein Linksklick fügt einen Würfel hinzu und ein Rechtsklick zieht diesen wieder ab. Über + und - sowie das Feld dazwischen werden die Modifikatoren eingegeben. 
Dabei wird der Wurf direkt in den Chat geschrieben und kann dort noch weiter modifiziert werden.  
![Dice Tray](de/images/Module_Dice_Tray.webp)

## Dice so nice
Wirf 3D Würfel über den virtuellen Spieltisch. Dabei kann sogar zwischen verschiedenen DSA5 Themen gewählt werden. Mitlerweile gibt es in den [Systemeinstellungen](de-systemeinstellungen) auch die Möglichkeit die Dice so Nice Würfel für die Proben über den Charakterbogen zu verwenden. 
![Dice so nice Wurf](de/images/de-module_0.webp)

**Achtung:** diese Würfel können bei älteren Geräte zu Performace Problemen führen. Um die Würfel für den einzelnen Spieler zu deaktivieren geht man in *Einstellungen anpassen -> Moduleinstellungen -> Abschnitt Dice so Nice -> My Dice Settings -> Appearance -> Haken bei Enable 3D Dice raus*  
![Dice so nice Einstellungen](de/images/de-module_1.webp)

[Link zum Youtube Tutorial](https://www.youtube.com/watch?v=o8tlbTe42WM&list=PLGyb6RcE5AmVHzCZSKEN00cenwkB3LxTC&index=5)

## German Core
Durch dieses Modul kann die Standardsprache im Foundry Setup auf Deutsch umgestellt werden. Übersetz die komplette Oberfläche auf Deutsch.
Unter *Adminsetup -> Configuration -> Default Language* Deutsch - German [Core] wählen und Server neu starten.
![grafik](de/images/de-module_2.webp)

## Optolith Connector
Ein Modul um die exportierten Charaktere (als .json) direkt zu Foundry zu importieren. Hierzu gibt es ein Video welches die Funktion erklärt.

## Tokenizer
Bietet die Möglichkeit aus dem Hochgeladenen Charakterbild einen Token mit der offiziellen DSA5 Umrandung zu erstellen.
1. Ein Bild für den Charakter hochladen (hier vom eigenen Computer).
1. Über die Tonne kann eine Ebene auf der jeweiligen Seite gelöscht werden.
1. Das Bild von der linken Seite über das Männchen Symbol auf die Token Seite kopieren.
1. Über die Pfeile kann die Anordnung der einzelnen Bilder gesteuert werden. Die Vorschau zeigt dabei immer das Ergebnis.
1. Wird das Schloss deaktiviert kann das einzelne Bild mit der Maus verschoben und über das Mausrad gezoomt werden
1. Ist man mit dem Ergebnis zufrieden kann man das Bild Speichern und dann mit OK bestätigen.
![Tokennizer](de/images/de-module_4.webp)

[Link zum Youtube Tutorial](https://youtu.be/137LU0GtvEI?list=PLGyb6RcE5AmVHzCZSKEN00cenwkB3LxTC&t=1393)


## Automated Animations & JB2A - Jules and Ben's Animated Assets
Für animierte lebendigere Kämpfe sind diese beiden Module ein Muss.

[Link zum Youtube Tutorial](https://www.youtube.com/watch?v=ltWiQ4EsFJA&t=2s)

### Automated Animations
Mit diesem Modul könnt ihr Waffen und Zaubern bestimmte Effekte und Sounds zuweisen, welche beim anwenden automatisch ausgeführt werden.
Dieses Modul ist vom Modul **sequencer** abhängig.  
  
Im Modul dsa5-gluenandhammer findet ihr ein fertiges JSON File zum Importieren. 

Diese Datei importiert ihr über:  
1. Einstellungen
2. Einstellungen anpassen
3. Moduleinstellungen
4. Automated Animations einstellungen -> Automatische Erkennung konfigurieren
5. Ganz nach unten Scrollen -> Einstellungen Importieren
6. Datei auswählen -> die oben herunter geladene Datei auswählen
7. Abschließen mit Import

![Automated Animations import](de/images/Module_Automated_Animations_import.webp)

### JB2A - Jules and Ben's Animated Assets
Dieses Modul bietet eine große Datenbank an Animationen für **Automated Animations**

## Zeit & Kalender: SmallTime, Simplecalendar, TimesUp
Die Verwendung von Zeit und Kalenderfunktionen ist nicht unkompliziert, weshalb ich empfehle die Wiki Seiten der Module zur Hilfe zu nehmen.  

### SmallTime
Smalltime erzeugt eine kleine Systemuhr über welche die Tageszeit abgebildet wird. Diese Zeiteinstellung lässt sich in den Moduleinstellungen auf das 24 Stunden Format ändern.  
[Github Seite](https://github.com/unsoluble/smalltime)

Nellkirs Trick, um den Mond in der Zeitleiste als Madamal darzustellen [Madamal-Bilder-Download](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/raw/master/de/files/moon-phases.zip):

![image](de/images/de-module_5.webp)

**Hinweis von Danii0206:** 
Nellkirs Tipp mit den alternativen images für die gedrehte Mondansicht funktioniert soweit, muss aber nach jedem Update des Moduls angewendet werden. Den gleichen Effekt kann man über das Modul Custom CSS erreichen, wenn man als globale Regeln folgendes festlegt:

`#smalltime-app .moon::-webkit-slider-thumb {
  transform: rotate(90deg);
}
#smalltime-app .moon::-moz-range-thumb {
  transform: rotate(90deg);
}`

Der Vorteil daran ist, dass das auch bei einem Update von Smalltime bestehen bleibt und eine Einstellung pro Spielwelt ist - nützlich, falls man auch andere Systeme spielt.  

### Simplecalendar
Simplecalendar ist eine Kalender Lösung für Foundry, die sich in den Einstellungen an Smalltime anbinden lässt. Dann übernimmt Smalltime die Steuerung der Uhrzeit und Simplecalendar steuert Tage, Wochen, Monate und Jahre.   
Eine Datei zum Import des DSA Kalenders findet ihr hier: 

[SimpleCalender - DSA Kalender](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/raw/master/de/files/simple-calendar-export-Sonnenzeiten.zip)

[SimpleCalender - DSA Thorwaler Kalender](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/raw/master/de/files/simple-calendar-export-Thorwalsch-Sonnenzeiten.zip)

[Github Seite](https://github.com/vigoren/foundryvtt-simple-calendar)

### Timesup
Bindet die Zeit an die Effekte so, dass diese nach bestimmter Zeit und Kampfrunden automatisch beendet werden. Dieses Modul funktioniert ohne irgendwelche Einstellungen und arbeitet perfekt mit Smalltime zusammen.  

## Clipboard Image
Lässt euch schnell und einfach Bilder aus dem Web oder PDF's auf die Foundry Oberfläche legen.

[Link zum Youtube Tutorial](https://www.youtube.com/watch?v=bBQ5t7OEGeA&list=PLGyb6RcE5AmVHzCZSKEN00cenwkB3LxTC&index=3)

## DF Curvy Walls
Solltet ihr eine Karte mit einem Runden Turm haben, dann wisst ihr wie unbefriedigend Foundry diese Wände umsetzt. Mit dem Modul Curvy Walls könnt ihr ohne Probleme runde Wände ziehen.

## Drag Ruler
Hiermit lässt sich die Geschwindigkeit der Charaktere für die maximale Bewegungsrate einstellen. Diese wird dann bei Szenen mit Grid farblich dargestellt. In den *Moduleinstellungen* unter *Drag Ruler* -> *Einstellungen zur Systemintegration* beim *Geschwindigkeitsattribut* `actor.system.status.speed.max` und bei *Sprint Multiplikator* eine 2 eingeben.  
  
  ![Drag Ruler Einstellungen](de/images/de-module_6.webp)
  
  [Link zum Youtube Tutorial](https://youtu.be/137LU0GtvEI?list=PLGyb6RcE5AmVHzCZSKEN00cenwkB3LxTC&t=17)

## FXMaster
Hiermit werden weitere Wettereffekte zum Spiel hinzugefügt. Außerdem gibt es noch eine Handvoll Zaubereffekte.

## Laptop Form Fix
Wenn euch die Meldung über eine zu geringe Auflösung nervt, dann ist das hier das Modul welches die Meldung entfernt und ein paar Optimierungen an der Oberfläche durchführt. Allerdings ist Foundry dadurch in kleineren Auflösungen immer noch nicht optimal zu bedienen. Allerdings lassen sich jetzt alle Schaltflächen erreichen und bedienen.

## Permission Viewer
Bildet über ein Symbol in der Farbe der Spieler die Berechtigungen auf verschiedene Objekte ab. So seht ihrr als Spielleiter welche Spieler worauf Zugriff haben.

[Link zum Youtube Tutorial](https://www.youtube.com/watch?v=g1RSPkPOi4Q)

## Polyglot
Über Polyglot könnt ihr verschiedene Aventurische Sprachen für eure Chatnachrichten auswählen. Diese können dann nur von den Charakteren gelesen werden, die diese Sprache beherrschen.

[Link zum Youtube Tutorial](https://youtu.be/137LU0GtvEI?list=PLGyb6RcE5AmVHzCZSKEN00cenwkB3LxTC&t=1238)

## PopOut!
Mit PopOut! könnt ihr jedes Fenster in Foundry aus dem Browser in ein separates Fenster verschieben. Sehr nützlich bei 2 Monitoren. Dies Funktioniert aber nicht in der Lokalinstallation von Foundry.

## Turnmarker
Mit diesem simplen Modul könnt ihr den Rundenmarker übersichtlicher und schöner gestalten.

[Link zum Youtube Tutorial](https://youtu.be/137LU0GtvEI?list=PLGyb6RcE5AmVHzCZSKEN00cenwkB3LxTC&t=1529)

## Window Controls
Mit diesem kleinen Modul könnt ihr die geöffneten/minimierten Fenster im Foundry ordentlich aufreihen und verwalten.

[Link zum Youtube Tutorial](https://www.youtube.com/watch?v=YQOuo3tRkpE&list=PLGyb6RcE5AmVHzCZSKEN00cenwkB3LxTC&index=4)

## Combat Tracker Effect Icon Tooltips
Habt ihr keine Ahnung, was die Effektesymbole auf den Charakteren bedeuten? Dieses kleine Modul öffnet einen nützlichen Tooltip auf den Effekt im Begegnungstracker.

![image](de/images/de-module_7.webp)

## Forien's Quest Log
Eine sehr nützliche Rückverfolgung der Questen, wenn ihr mit umfangreichen Kampagnen oder openworld sandboxing spielt.

## Popout Resizer
Ein kleines Modul, welches erlaubt die mit **PopOut!** extrahierten Fenster, in ihrer Größe zu verändern.

## Health Estimate
Zeigt den Spielern eine ungefähre Einschätzung des Zustands ihrer Gegner an ohne zu viel zu verraten.

![Health Estimate](de/images/healthestimate.webp)

## Splatter
Zeigt Blutspritzer und -spuren auf Grund von Verletzungen.

```
Settings:
Current HP:     status.wounds.value
Max HP:	        status.wounds.max
Creature type:  creatureType
```

![Splatter](de/images/splatter.webp)

*[x]Zuletzt bearbeitet: 04.03.2022 by Tom*
*Neu: Automated Animations Anleitung und Beispieldatei*
