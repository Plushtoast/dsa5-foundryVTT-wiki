---
layout: default
title: en-makro-probe-anfordern
---
# Macro - Request a check
You can also write macros to quickly request a check from players in the chat window.  
  
1. create a new macro and set it to *script*.  
2. then write the code `game.dsa5.macro.requestRoll("TALENT", MODIFICATOR);` in the *Command* field (examples see below)  
  
  ![macro request check](/dsa5-foundryVTT-wiki/images/en-macro-request-checks_0.webp)
  
## Examples
### Sense with penalty of 1
`game.dsa5.macro.requestRoll("Sense Acuity", -1);`  
  
![Sinnesschärfe](/dsa5-foundryVTT-wiki/images/en-macro-request-checks_0.webp)
  
### Convert & Convince with a bonus of 1
`game.dsa5.macro.requestRoll("Convert & Convince", 1);` !  
  
![Bekehren & Überzeugen](/dsa5-foundryVTT-wiki/images/en-macro-request-checks_1.webp)
  
### Willpower with a penalty of 2
`game.dsa5.macro.requestRoll("Willpower", -2);`  
  
![Willenskraft](/dsa5-foundryVTT-wiki/images/en-macro-request-checks_2.webp)
  
### Spell Fulminictus with a penalty of 2
`game.dsa5.macro.requestRoll("Fulminictus", -2);` !  
  
![Fulminictus](/dsa5-foundryVTT-wiki/images/en-macro-request-checks_3.webp)


*Translation information*  
*[x] updated: 2021-06-07*  
*[x] german entry [linked](/dsa5-foundryVTT-wiki/de/de-Makro-Probe-anfordern)*  
*[x] automatic translation*  
*[ ] proof read*  
*[ ] change pictures with EN version*
*[ ] change links*  

