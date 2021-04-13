# Status - Selbst erstellte Effekte
Ihr könnt jetzt beliebige Effekte auf die Akteure anwenden, welche die Basiswerte des Akteurs beeinflussen. Dies ist ein wichtiges Upgrade für zukünftige Verbesserungen wie zum Beispiel automatische Anwendung von Zaubern/Liturgien oder Effekte von Items.
 
**Ihr könnt alle Datenwerte der Akteure ändern** Aber beachtet, dass einige davon berechnet wurden und deshalb immer wieder überschrieben werden. Deshalb ist diese Funktion mit Vorsicht zu verwenden!  
Dies erfordert Kenntnisse der Datenstruktur von Akteuren. Wir arbeiten daran diese Funktion noch zu erleichtern und mit Tutorials zu erklären. 

## Effekte von Akteuren
Um selbst erstellte Effekte zu verwenden, öffne den Charakterbogen und gehe auf die Kategorie Status. Über das + kann ein neuer Effekt angelegt, der Statuseffekt benannt und die gewünschten Änderungen eingegeben werden.

![Effekt hinzufügen](https://user-images.githubusercontent.com/44941845/112887103-0d442100-90d3-11eb-8ee5-aa056fcbe8e7.png)

### Beispiel
#### Armatrutz
Erstelle einen neuen Status im Charakterbogen unter Status und füge ein neues Attribut mit der Bezeichnung "data.totalArmor" hinzu. Setze den Modus auf *"Add"* und gib als Wert den gewünschten Rüstungswert ein (Bsp.: 1)
So kannst du verschiedene Armatrutz Effekte mit verschiedenen Rüstungswerten anlegen, sodass der Spieler den passenden nur noch aktivieren muss, wenn er den Zauber erfolgreich spricht. Der geänderte Rüstungswert wird dann unter Kampf im Charakterbogen angezeigt.

![Armatrutz](https://user-images.githubusercontent.com/44941845/112887203-264cd200-90d3-11eb-8acd-901577120573.png)

#### Permanenter Verlust von Astralenergie
Wenn ein Charakter Astralpunkte aufgrund eines Rituals oder durch das Binden des Traditionsartefaktes permanent verliert, könnt ihr diesen Verlust mit einem Status darstellen. Erstellt einen neuen Status und füge das Attribut "data.status.astralenergy.gearmodifier" hinzu, setze den Mode auf "Add" und den Wert in Höhe der verlorenen Astralpunkte (Bsp.: -2).

![ASP Verlust](https://user-images.githubusercontent.com/80099175/113255951-c61f8100-92c8-11eb-9eaf-66eb68ac172a.png)  
  
## Effektdauer
Wenn ihr die Dauer der Effekte automatisch ablaufen lassen wollt, schaut euch einmal die folgenden Module an:
* [about-time](https://gitlab.com/tposney/about-time)
* [times-up](https://gitlab.com/tposney/times-up)
  
## ToDo
Folgende Features planen wir aktuell:
  * Die Auswahl des Attributs über eine Liste
  * Dieselbe Funktion bei Zaubern, Liturgien, Items, Sonderfertigkeiten usw.

## Tipp für Fortgeschrittene:
Wer sich ein bisschen mit der Console auskennt (F12 im Browser) kann die Spieldaten selbst nach den Werten durchsuchen.  
Markiert einen Token und gebt in die Konsole: *_token.actor.data* ein. Dann seht ihr die Werte die sich hierdurch beeinflussen lassen. Weitere Infos hierzu folgen.
  
![Console](https://user-images.githubusercontent.com/80099175/113256355-5e1d6a80-92c9-11eb-9e02-b52ea1c371b6.png)
