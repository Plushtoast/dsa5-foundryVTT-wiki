# Makro - Probe anfordern
Ihr könnt auch Makros schreiben um schnell eine Probe von den Spielern im Chatfenster anzufordern.  
  
## Einfache Probe
1. Legt ein neues Makro an und stellt es auf *script*  
2. Dann schreibt ihr den Code `game.dsa5.macro.requestRoll("TALENT", MODIFIKATOR);` in das *Command* Feld (Beispiele siehe unten)  
  
  ![Makro Probe anfordern](de/images/de-makro-probe-anfordern_0.png)
  
### Beispiele
#### Bekehren & Überzeugen erleichtert um 1
`game.dsa5.macro.requestRoll("Bekehren & Überzeugen", 1);`  
  
![Bekehren & Überzeugen](de/images/de-makro-probe-anfordern_1.png)
  
#### Willenskraft erschwert um 2
`game.dsa5.macro.requestRoll("Willenskraft", -2);`  
  
![Willenskraft](de/images/de-makro-probe-anfordern_2.png)
  
#### Zauber Fulminictus erschwert um 2
`game.dsa5.macro.requestRoll("Fulminictus", -2);`  
  
![Fulminictus](de/images/de-makro-probe-anfordern_3.png)

## Gruppenprobe
1. Legt ein neues Makro an und stellt es auf *script*  
2. Dann schreibt ihr den Code `game.dsa5.macro.requestGC("TALENT", MODIFIKATOR);` in das *Command* Feld (Beispiel: `game.dsa5.macro.requestGC("Sinnesschärfe", 0);`) 
  
  ![Makro Gruppenprobe anfordern](de/images/de-makro-probe-anfordern_0.png)

## Check
1. Legt ein neues Makro an und stellt es auf *script*  
2. Dann schreibt ihr den Code `game.dsa5.macro.rollCh("TALENT", MODIFIKATOR);` in das *Command* Feld (Beispiel: `game.dsa5.macro.rollCh("Sinnesschärfe", 0);`)
   
![grafik](de/images/de-makro-probe-anfordern_0.png)  
  

*[x]Zuletzt bearbeitet: 04.11.2021*  
*Neu: Check*
