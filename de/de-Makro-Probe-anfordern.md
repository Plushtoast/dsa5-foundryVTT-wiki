# Makro - Probe anfordern
Ihr könnt auch Makros schreiben um schnell eine Probe von den Spielern im Chatfenster anzufordern.  
  
1. Legt ein neues Makro an und stellt es auf *script*  
2. Dann schreibt ihr den Code `game.dsa5.macro.requestRoll("TALENT", MODIFIKATOR);` in das *Command* Feld (Beispiele siehe unten)  
  
  ![Makro Probe anfordern](https://user-images.githubusercontent.com/80099175/114201515-8f93d700-9956-11eb-99ee-3551bfc93c8a.png)
  
## Beispiele
### Sinnesschärfe erschwert um 1
`game.dsa5.macro.requestRoll("Sinnesschärfe", -1);`  
  
![Sinnesschärfe](https://user-images.githubusercontent.com/80099175/114202181-3a0bfa00-9957-11eb-9dca-d985dfe5798f.png)
  
### Bekehren & Überzeugen erleichtert um 1
`game.dsa5.macro.requestRoll("Bekehren & Überzeugen", 1);`  
  
![Bekehren & Überzeugen](https://user-images.githubusercontent.com/80099175/114202239-47c17f80-9957-11eb-9779-c440fda8670b.png)
  
### Willenskraft erschwert um 2
`game.dsa5.macro.requestRoll("Willenskraft", -2);`  
  
![Willenskraft](https://user-images.githubusercontent.com/80099175/114202331-5c9e1300-9957-11eb-9db1-cb654a4d0306.png)
  
### Zauber Fulminictus erschwert um 2
`game.dsa5.macro.requestRoll("Fulminictus", -2);`  
  
![Fulminictus](https://user-images.githubusercontent.com/80099175/114202385-6b84c580-9957-11eb-8ba5-8fede59b9685.png)
