---
layout: default
title: de-Kampf
---
# Kampf
Der Kampf beginnt damit, dass der SL eine [Begegnung erstellt](/dsa5-foundryVTT-wiki/de/de-Begegnung_und_Initiative) und die Initiative ausgewürfelt wird.  

## Unterschiede zwischen SL und Spielern
Der Kampfablauf unterscheidet sich zwischen Spieler und SL insoweit, als dass der SL den Token, mit dem er angreifen möchte, auch vorher auswählen muss. Am einfachsten erfolgt dies mit einem Doppelklick des aktiven Akteurs in der INI Liste. Dadurch wird der angeklickte Token markiert und der Charakterbogen geöffnet.  
Außerdem kann das [Schaden anwenden](/dsa5-foundryVTT-wiki/de/de-Kampf#4-schaden-anwenden) bei NSCs und Kreaturen nur durch Personen mit dem Recht *Besitzer* durchgeführt werden. Das bedeutet in der Regel, dass nur der SL den Schaden auf NSCs und Kreaturen anwenden kann.

## 1. Token zum Angriff markieren
**Spieler:** Um einen gegnerischen Token als Ziel auszuwählen führt ihr entweder einen **Doppel-Rechtsklick** auf den gewünschten Token durch, markiert diesen über die linke Menüleiste als Ziel (Token auswählen (1) und auf die Zielscheibe klicken (2)) oder durch Hovern über den Token und drücken der Taste `T`.

**Anmerkung:** Kontrolliert ihr mehrere Akteure (Vertraute, Tierbegleiter, usw.) müsst ihr vorher auswählen, welcher eurer Token angreifen soll.
  
  ![Ziel markieren](/dsa5-foundryVTT-wiki/de/images/de-kampf_0.webp)
  
**Spielleiter:** Ihr verwendet das Token-Kontextmenü der Token um euer Ziel zu markieren. Klickt hierfür einmal mit der rechten Maustaste auf den Token und klickt dann mit der linken Maustaste auf die Zielscheibe (oder Hotkey `T`).
    
  ![SL Ziel markieren](/dsa5-foundryVTT-wiki/de/images/de-kampf_1.webp)
  
Das Ziel wird dann durch 4 kleine orangene Pfeile markiert. Die anderen Spieler (SL) sehen einen Punkt in der Farbe des Spielers (nicht des Tokens), der diesen Token markiert hat.
  
  ![Markiert](/dsa5-foundryVTT-wiki/de/images/de-kampf_2.webp)

  
**Tipp:** Es können auch mehrere Ziele markiert werden. (Stichwort: Rundumschlag)
  
## 2.1 Aktion - Angriff durchführen
Sobald der Token markiert ist, führt ihr den Angriff über den Kampfbogen oder aber direkt über den Combat Tracker (siehe unten) des Charakters aus.  

### Angriff über Combat Tracker
Es ist möglich, mit dem Akteur, der laut Combat Tracker an der Reihe ist, direkt mit einem Nah- oder Fernkampfangriff den markierten Gegner anzugreifen.
1. Kampf Symbol im Combat Tracker anklicken.
2. Handlung anklicken.  
3. Probe durchführen.
  
  ![Angriff Combat Tracker](/dsa5-foundryVTT-wiki/de/images/de-kampf_3.webp)
  
### Ergebnis
Das Ergebnis des Angriffs wird im Chat dargestellt. Hierüber kann die Reaktion des angegriffenen Akteurs ausgeführt werden.  
  
  ![Angriff - Ergebnis](/dsa5-foundryVTT-wiki/de/images/de-kampf_4.webp)
  
## 2.2 Aktion durchführen (Zauber, Liturgie, Nachladen, usw.)
Neben Angriffen gibt es weitere Aktionen, welche ihr ausführen könnt: Zaubern, eine Liturgie wirken, Nachladen usw.  

### Zauber/Liturgien
Ihr könnt einen Zauber zwar nicht direkt im Combat Tracker ansteuern, doch wenn ihr eine Zauberprobe auslöst, dann bekommt ihr im Probenfenster den Button _Konzentrieren_ (1) angezeigt. Klickt ihr darauf, erscheint eine Chatnachricht (2) mit der Angabe wie lange ihr euch bereits konzentriert und im Magie Tab steht es auch hinter dem Zauber (3).  
  
![Konzentrieren](/dsa5-foundryVTT-wiki/de/images/de-kampf_5.webp)  
  
### Fernkampf - Nachladen
Das Nachladen funktioniert ähnlich wie die Zauber. Ihr wählt den Bogen zum Angriff über den Combat Tracker. Im Probenfenster geht ihr dann auf Nachladen (1), es erscheint im Chat eine Nachricht dass ihr am Nachladen seid und im Kampftab wird dies an der Waffe angezeigt.  
  
![Nachladen](/dsa5-foundryVTT-wiki/de/images/de-kampf_6.webp)  
  
Beide Langfristigen Aktionen wird im Combat Tracker angezeigt wie lange es noch dauert bis die Fernkampfwaffe, Liturgie oder der Zauber einsatzbereit sind.  
  
![grafik](/dsa5-foundryVTT-wiki/de/images/de-kampf_7.webp)  
  
## 3.1 Reaktion 
Um auf einen Angriff zu reagieren, muss vorher vom Angreifer ein *Token zum Angriff markiert* worden sein. Ist dies nicht passiert, würfelt ihr einfach eine Reaktion über den Charakterbogen. Dann kann aber der Schaden nicht mehr über den Chat angewendet werden.  
Im Chatfenster erschreint nach einem **erfolgreichen** Angriff bei allen Besitzern des Tokens ein Button *Reaktion* (1). Durch einen Klick öffnet sich das Reaktionsfenster in dem ihr Zugriff auf alle Reaktionsmöglichkeiten des angegriffenen Akteurs habt:  
  
![Reaktion](/dsa5-foundryVTT-wiki/de/images/de-kampf_8.webp)
  
## 3.2 Keine Reaktion
Ihr habt außerdem die Möglichkeit nicht auf einen Angriff zu reagieren. Dies kann notwendig sein, wenn ihr keine Reaktionen mehr in dieser Kampfrunde habt, oder lieber ohne Erschwernisse auf den Gegner reagieren wollt, der vermutlich mehr Schaden verursacht. Dafür wählt ihr im Reaktionsfenster *keine Reaktion* aus.  
  
![Keine Reaktion](/dsa5-foundryVTT-wiki/de/images/de-kampf_9.webp)

## 4. Schaden anwenden
War der Angriff erfolgreich und ist die Reaktion fehlgeschlagen oder wurde nicht reagiert, könnt ihr im Chat auf die Meldung mit der Schadensberechnung einen Rechtsklick durchführen und dann auswählen zwischen:
* Schaden anwenden als TP
* Schaden anwenden als SP
  
  ![Schaden anwenden](/dsa5-foundryVTT-wiki/de/images/de-kampf_10.webp)
  
**Tipp:** ob die Meldung der Schadensberechnung von den Spielern gesehen wird, kann in den Systemeinstellungen eingestellt werden.

## 5. Zug beenden
Um seinen Zug zu beenden klickt ihr als Spieler auf *Zug beenden* unten im *Combat Tracker*:
  
  ![Zug beenden]![grafik](/dsa5-foundryVTT-wiki/de/images/de-kampf_11.webp)  

Als SL klickt ihr auf die weiter oder zurück Pfeile im *Combat Tracker*:
  
  ![Zug beenden SL](/dsa5-foundryVTT-wiki/de/images/de-kampf_12.webp)  

### Aktion verzögern
Um die Aktion *verzögern* umzusetzen, kann der SL die INI der Akteuere beliebig ändern. Dafür macht ihr im *Combat Tracker* einen Rechtsklick auf den jeweiligen Charakter und  klickt auf *Teilnehmer* bearbeiten. Hier kann dann die gewüfelte INI und der Basiswert bearbeitet werden:
  
  ![INI bearbeiten](/dsa5-foundryVTT-wiki/de/images/de-kampf_13.webp)
  
**Alternativ:** könnt ihr als SL auch einfach über die vor und zurück Pfeile den Kampf steuern.

*[x]Zuletzt bearbeitet: 04.11.2021*  
*Neu: Langfristige Handlungen (Konzentrieren und Nachladen) hinzugefügt*  
*Überarbeitet: Bilder ausgetauscht*
