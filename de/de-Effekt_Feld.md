## Effekt Feld - Attribute modifizieren
Das Effekt Feld von Items kann verwendet werden um die Attribute eines Helden zu erhöhen oder zu senken.  
Dafür muss in das Effekt Feld eines Items `WERT ATTRIBUT` eingetragen werden (Bsp.: +1 GS um die Geschwindigkeit um 1 zu erhöhen). 
Sollen mehrere Attribute durch ein Effekt Feld beeinflusst werden, können diese hintereinander getrennt durch ein `,` eingetragen werden:  
![Effekt Attribut](de/images/de-effekt_feld_0.png) 
**Dies Funktioniert im Effekt Feld folgender ITEMS**: Vorteile, Nachteile, Sonderfertigkeiten, Nahkampfwaffen, Fernkampfwaffen und Ausrüstung. Ausrüstung muss ausrüstbar sein, denn nur wenn diese Ausgewürstet wird, ist der Effekt aktiv.

Aktuelle verwendbare Attribute je Sprache des Systems:
| Deutsch |  ATTRIBUT Deutsch | Englisch | ATTRIBUT Englisch |
| ------------- | ------------- | ------------- |------------- |
| Initiative | INI | Initiative | INI |
| Geschwindigkeit |  GS | Speed | MOV |
| Lebenspunkte | LeP | Life Points | LP |
| Karmapunke | KaP | Karma Points| KP |
| Astralpunkte | AsP | Arcane Energy | AE | 
| Ausweichen | AW | Dodge | DO |
| Seelenkraft | SK | Spirit | SPI | 
| Zähigkeit | ZK | Toughness | TOU |
| Schicksalspunkte | Schip | Fate Points | FtP | 
| Mut | MU | Courage | COU | 
| Klugheit | KL | Sagacity | SGC | 
| Intuition | IN | Intuiation | INT | 
| Fingerfertigkeit | FF | Dexerity |  DEX |
| Geschicklichkeit | GE | Agility | AGI |
| Konstitution |KO | Constitution | CON | 
| Stärke | KK | Strength | STR | 

## Effekt Feld - Fertigkeitspunkte für Talente/Zauber/Rituale/Liturgien/Zeremonien modifizieren
Um die Fertigkeitspunkte der oben genannten Fertigkeiten zu modifizieren kann ebenfalls das Effekt Feld verwendet werden.
Dafür muss in das Effekt Feld eines Items `FERTIGKEIT FPWERT` eingetragen werden (Bsp.: Kraftakt FP2). Auch hier können mehrere Fertigkeiten durch ein `,` getrennt angegeben werden.   
Dies führt aber nicht wie bei den Attributen dazu, dass der Wert automatisch im Charakterbogen steigt/sinkt. Erst bei der Probe taucht die Modifikation im Feld *Bedingte Modifikation* auf.  
![Bedingte Modifikation](de/images/de-effekt_feld_1.png)
**Dies funktioniert im Effekt Feld folgender ITEMS**: Vorteile, Nachteile, Sonderfertigkeiten und Ausrüstung. Ausrüstung muss ausrüstbar sein, denn nur wenn diese Ausgewürstet wird, ist der Effekt aktiv.

Hier noch ein Beispiel für einen Ausrüstungsgegenstand mit Zauberverbesserung:
![Effekt Zauber](de/images/de-effekt_feld_2.png)  

## Effekt Feld - Kampfsonderfertigkeiten.

Bei den Kampfsonderfertigkeiten können aktuell auch einige Modifikatoren eingetragen werden. Sollen mehrere angegeben werden, müssen diese mit `,` getrennt werden.  
Als wert sind positive, negative Zahlen aber auch Würfel (Bsp. `1d6`) erlaubt.

**Anmerkung**: Nur wenn im Effekt Feld etwas angegeben ist, taucht die Sonderfertigkeit zur Auswahl bei der Kampfprobe auf! (Tipp: Es geht auch `+1 AT,-1 AT`)

| Bedeutung | ATTRIBUT Deutsch | ATTRIBUT Englisch | 
| ------------- | ------------- | ------------- |
| Attacke Angreifer | AT | AT |
| Verteidigung Gegner| VM | DM |
| Trefferpunkt Angreifer | TP | DP |
| Geschwindigkeit | GS | MOV |
| Initiative | INI | INI |
  
### Beispiele: Finte `-1 AT, -2 VM`, Wuchtschlag `-2 AT, -2 TP`, Eigen `-2 AT, +1d6 DP`
Für weitere Beispiele, schaut euch die Kampfsonderfertigkeiten aus den Kompendien an.

*[x]Zuletzt bearbeitet: 04.11.2021*  
*Überarbeitet: Inhalte und Bilder*
