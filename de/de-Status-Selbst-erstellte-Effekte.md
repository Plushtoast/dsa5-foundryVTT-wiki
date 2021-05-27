# Status - Selbst erstellte Effekte
Effekte bieten die Möglichkeit gewisse Charakterwerte zu beeinflussen. Selbst erstellte Effekte sind in verschiedenen Objekten innerhalb von Foundry verfügbar: Charaktere, Zauber, Rituale, Liturgien, Zeremonien, Ausrüstung, usw. Überall da, wo ihr im Fenster des Objektes einen Effekt/Stautseffekte Tab habt. Vom Grundprinzip funktionieren alle ähnlich, deshalb folgen hier 3 Beispiele:
* [Effekte von Akteuren]()
* [Effekte von einer Nahkampfwaffe (Item]()  
* [Talentanpassungen durch Effekte]()

Außerdem findet ihr hier die Beschreibung, wie ihr die Dauer von Effekten automatisch behandeln lassen könnt:
* [Effektdauer]()

## Effekte von Akteuren
**Ihr könnt alle Datenwerte der Akteure ändern.** Beachtet dabei, dass einige davon berechnet wurden und deshalb immer wieder überschrieben werden. Deshalb ist diese Funktion mit Vorsicht zu verwenden!  
Es gibt aber eine Auswahl an Werten in der Effektmaske. Diese können ohne Probleme verwendet werden.
Um selbst erstellte Effekte zu verwenden, öffne den Charakterbogen und gehe auf die Kategorie Status. Über das + kann ein neuer Effekt angelegt, der Statuseffekt benannt und die gewünschten Änderungen eingegeben werden.

![Effekt hinzufügen](https://user-images.githubusercontent.com/44941845/112887103-0d442100-90d3-11eb-8ee5-aa056fcbe8e7.png)

### Auswahlliste der wichtigsten Effekte
Ihr könnt zwischen den wichtisten Attributen und Eigenschaften aus einer Auswahlliste auswählen:
1. Erstellt einen neuen Effekt
2. Öffnet diesen zur Bearbeitung
3. Im Reiter Effekte einen neuen über das + erstellen
4. Hier habt ihr unter Attributsschlüssel jetzt eine Auswahl an gängigen Effekten
  
  ![Liste Effekt](https://user-images.githubusercontent.com/80099175/119772544-a6b76580-bebf-11eb-863b-9d6d2ceea0d2.png)

### Beispiel
#### Armatrutz
Erstelle einen neuen Status im Charakterbogen unter Status und füge ein neues Attribut mit der Bezeichnung "data.totalArmor" hinzu. Setze den Modus auf *"Add"* und gib als Wert den gewünschten Rüstungswert ein (Bsp.: 1)
So kannst du verschiedene Armatrutz Effekte mit verschiedenen Rüstungswerten anlegen, sodass der Spieler den passenden nur noch aktivieren muss, wenn er den Zauber erfolgreich spricht. Der geänderte Rüstungswert wird dann unter Kampf im Charakterbogen angezeigt.
  
![Armatrutz](https://user-images.githubusercontent.com/80099175/119772692-dcf4e500-bebf-11eb-80fe-8bb6c245f719.png)
  
## Effekt von einer Nahkampfwaffe (Item)
Ihr könnt Irems mit Statuseffekten versehen um so zum Beispiel magische Artefakte zu erstellen. Dies funktioniert nur bei Gegenständen die Ausrüstbar oder Verbrauchsgegenstände sind!
**Achtung:** in Foundry 0.7.X können die Gegenstandseffekte nicht im Charakter angepasst werden. Hierfür muss ihr das Item unter Items verändern und wieder in den Charakterbogen ziehen.

1. Erstellt das gewünschte Item und geht dann in den Statuseffekte Tab
2. Klickt auf das + und legt den Effekt an.
3. Rüstet den Gegenstand aus und der eingetragene Effekt wird direkt angewendet. 
3.1 Diesen findet ihr dann auch im Charakterbogen unter *Status* -> *Transferierte Statuseffekte*
  
![Item Effekt Magisches Schwert](https://user-images.githubusercontent.com/80099175/119779619-2d247500-bec9-11eb-933c-17eb62e79078.png)
  
![Transferierte Statuseffekte](https://user-images.githubusercontent.com/80099175/119779705-4a594380-bec9-11eb-8bd2-cf7daf4eeb3f.png)

## Talentanpassungen durch Effekte
Um in Effekten die *Talent - XY* zu verwenden, müsst ihr wie folgt vorgehen. 
1. Attributsschlüssel auswählen
2. Änderungsart auf *Eigenes*
3. Unter Wert TALENT WERT eintragen. Es können auch mehrere eingetragen werden, diese werden duch ein *,* getrennt und ohne Leerzeichen hintereinander geschrieben. Bsp.: 
    * Sinnesschärfe 1
    * Klettern 2,Körperbeherrschung 1
    * Wildnisleben 2,Orientierung 1,Fährtensuchen 2

### Beispiel: Würfelbecher des Glücks
Ein Würfelbecher der 2 Fertigkeitspunkte auf Brett- & Glücksspiel gibt:  
  
![Würfelbecher des Glücks](https://user-images.githubusercontent.com/80099175/119782363-63afbf00-becc-11eb-8fb3-e5552e9ebea0.png)
  
## Effektdauer
Wenn ihr die Dauer der Effekte automatisch ablaufen lassen wollt, benötigt ihr die folgenden Module:
* [about-time](https://gitlab.com/tposney/about-time)
* [times-up](https://gitlab.com/tposney/times-up)  

Weitere Einstellungen in den Modulen sind nicht notwendig, da die Grundeinstellungen von About-Time schon ganz gut passen mit 6 Sekunden pro KR.  
  
Um dann die Dauer in einem Effekt hinzu zu fügen geht ihr folgendermaßen vor:
1. Öffnet das Konfigurationsfenster des Effekts über den Bearbeiten Button
2. Geht im Effekt-Fenster auf den Tab *Dauer*
3. Ihr habt die Auswahl zwischen verschiedenen Optionen. Am häufigsten verwendet werden *Dauer (Sekunden)* und *Dauer (Züge) - Runden*.
   Sobald die Zeit/Runde abgelaufen ist, verschwindet der Effekt automatisch vom Charakterbogen.
   
  ![Dauer Effekt](https://user-images.githubusercontent.com/80099175/119773893-9a340c80-bec1-11eb-996a-3c701f830c1f.png)
   
## Tipp für Fortgeschrittene:
Wer sich ein bisschen mit der Console auskennt (F12 im Browser) kann die Spieldaten selbst nach den Werten durchsuchen.  
Markiert einen Token und gebt in die Konsole: *_token.actor.data* ein. Dann seht ihr die Werte die sich hierdurch beeinflussen lassen. Weitere Infos hierzu folgen.
  
![Console](https://user-images.githubusercontent.com/80099175/113256355-5e1d6a80-92c9-11eb-9e02-b52ea1c371b6.png)
