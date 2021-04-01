# Status - Selbst erstellte Effekte
Ihr könnt jetzt beliebige Effekte auf die Akteuere anwenden, welche die Basiswerte des Akteurs beeinflussen. Dies ist ein wichtiges Upgrate für zuküftige Verbesserungen wie zum Beispiel automatische Anwendung von Zaubern/Liturgien oder Effekte von Items.
 
**Ihr könnt alle Datenwerte der Akteure ändern** Aber beachtet, dass einige davon brechnet wurden und deshalb immer wieder überschrieben werden. Deshalb ist diese Funktion mit Vorsicht zu verwenden!  
Dies erfordert Kenntnisse der Datenstruktur von Akteueren. Wir arbeiten daran diese Funktion noch zu erleichtern und mit Tutorials zu erklären. 

## Effekte von Akteuren
Um selbst erstellte Effekte zu verwenden, öffne den Charakterbogen und gehe auf die Kategorie Status. Über das + kann ein neuer Effekt angelegt, der Statuseffekt benannt und die gewünschten Änderungen eingegeben werden.

![grafik](https://user-images.githubusercontent.com/44941845/112887103-0d442100-90d3-11eb-8ee5-aa056fcbe8e7.png)

### Beispiel
#### Armatrutz
Erstelle einen neuen Status im Charakterbogen unter Status und füge ein neues Attribut mit der Bezeichnung "data.totalArmor" hinzu. Setze den Modus auf *"Add"* und gib als Wert den gewünschten Rüstungwert ein (Bsp.: 1)
So kannst du verschiedene Armatrutz Effekte mit verschiedeneen Rüstungswerten anlegen, sodass der Spieler den passenden nur noch aktivieren muss, wenn er den Zauber erfolgreich spricht. Der geänderte Rüstungswert wird dann unter Kampf im Charakterbogen angezeigt.

![grafik](https://user-images.githubusercontent.com/44941845/112887203-264cd200-90d3-11eb-8acd-901577120573.png)

#### Permanenter verlust von Astralenergie
Wenn ein Charakter Astralpunkte aufgrund eines Rituals oder der Bindes des Traditionsartefaktes permanent verliert, könnt ihr diesen Verlust mit einem Status darstellen. Erstellt einen neuen Status und füge das Attribut "data.status.astralenergy.gearmodifier" hinzu, setze den mode auf "Add" und den Wert in Höhe der verlorenen Astralpunkte (Bsp.: -2).

![grafik](https://user-images.githubusercontent.com/44941845/112887282-441a3700-90d3-11eb-8d86-58271d4275eb.png)  

## ToDo
Folgende Features planen wir aktuell:
  * Die Auswahl des Attributs über eine Liste
  * Dieselbe Funktion bei Zaubern, Liturgien, Items, Sonderfertigkeite usw.
