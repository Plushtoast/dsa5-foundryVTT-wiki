# Status - Selbst erstellte Effekte
Effekte bieten die Möglichkeit gewisse Charakterwerte zu beeinflussen. Selbst erstellte Effekte sind in verschiedenen Objekten innerhalb von Foundry verfügbar: Charaktere, Zauber, Rituale, Liturgien, Zeremonien, Ausrüstung, usw. Überall da, wo ihr im Fenster des Objektes einen Effekt/Stautseffekte Tab habt. Vom Grundprinzip funktionieren alle ähnlich, deshalb folgen hier 3 Beispiele:  

- [Effekte von Akteuren](de-status-selbst-erstellte-effekte#effekte-von-akteuren)
- [Effekte von einer Nahkampfwaffe (Item)](de-status-selbst-erstellte-effekte#effekt-von-einer-nahkampfwaffe-item)
- [Talentanpassungen durch Effekte](de-status-selbst-erstellte-effekte#talentanpassungen-durch-effekte)
- [Teilprobenmodifikatoren](de-status-selbst-erstellte-effekte#teilprobenmodifikatoren)

Außerdem findet ihr hier die Beschreibung, wie ihr die Dauer von Effekten automatisch behandeln lassen könnt:  

- [Effektdauer](de-status-selbst-erstellte-effekte#effektdauer)

## Effekte von Akteuren
**Ihr könnt alle Datenwerte der Akteure ändern.** Beachtet dabei, dass einige davon berechnet wurden und deshalb immer wieder überschrieben werden. Deshalb ist diese Funktion mit Vorsicht zu verwenden!  
Es gibt aber eine Auswahl an Werten in der Effektmaske. Diese können ohne Probleme verwendet werden.
Um selbst erstellte Effekte zu verwenden, öffne den Charakterbogen und gehe auf die Kategorie Status. Über das + kann ein neuer Effekt angelegt, der Statuseffekt benannt und die gewünschten Änderungen eingegeben werden.

![Effekt hinzufügen](de/images/de-status-selbst-erstellte-effekte_0.webp)

### Auswahlliste der wichtigsten Effekte
Ihr könnt zwischen den wichtisten Attributen und Eigenschaften aus einer Auswahlliste auswählen:

1. Erstellt einen neuen Effekt
2. Öffnet diesen zur Bearbeitung
3. Im Reiter Effekte einen neuen über das + im Rahmen erstellen
4. Hier habt ihr unter Attributsschlüssel jetzt eine Auswahl an gängigen Effekten
  
  ![Liste Effekt](de/images/de-status-selbst-erstellte-effekte_1.webp)

### Beispiel

#### Armatrutz

Erstelle einen neuen Status im Charakterbogen unter Status und füge ein neues Attribut mit der Bezeichnung "data.totalArmor" hinzu. Setze den Modus auf *"Add"* und gib als Wert den gewünschten Rüstungswert ein (Bsp.: 1)
So kannst du verschiedene Armatrutz Effekte mit verschiedenen Rüstungswerten anlegen, sodass der Spieler den passenden nur noch aktivieren muss, wenn er den Zauber erfolgreich spricht. Der geänderte Rüstungswert wird dann unter Kampf im Charakterbogen angezeigt.
  
![Armatrutz](de/images/de-status-selbst-erstellte-effekte_2.webp)
  
## Effekt von einer Nahkampfwaffe (Item)

Ihr könnt Irems mit Statuseffekten versehen um so zum Beispiel magische Artefakte zu erstellen. Dies funktioniert nur bei Gegenständen die Ausrüstbar oder Verbrauchsgegenstände sind!
**Achtung:** in Foundry 0.7.X können die Gegenstandseffekte nicht im Charakter angepasst werden. Hierfür muss ihr das Item unter Items verändern und wieder in den Charakterbogen ziehen.

1. Erstellt das gewünschte Item und geht dann in den Statuseffekte Tab
2. Klickt auf das + im Rahmen und legt den Effekt an.
3. Rüstet den Gegenstand aus und der eingetragene Effekt wird direkt angewendet. 
3.1 Diesen findet ihr dann auch im Charakterbogen unter *Status* -> *Transferierte Statuseffekte*
  
![Item Effekt Magisches Schwert](de/images/de-status-selbst-erstellte-effekte_3.webp)
  
![Transferierte Statuseffekte](de/images/de-status-selbst-erstellte-effekte_4.webp)

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
  
![Würfelbecher des Glücks](de/images/de-status-selbst-erstellte-effekte_5.webp)
  
## Teilprobenmodifikatoren

Es ist auch möglich nur eine Probe einer 3w20 Talentprobe zu modifizieren.

1. Wählt im Attributsschlüssel *Talent - Teilprobenmodifikator aus* (Nach der Auswahl wird hier: *data.skillModifiers.TPM* angezeigt)
2. Änderungsart auf *Eigenes*
3. Unter Wert tragt ihr TALENT WERT|WERT|WERT ein. Achtet dabei auf das richtige Trennzeichen (STRG+ALT+>)!
4. Im Probenfenster wird dann der Modifikator angezeigt und muss manuell ausgewählt werden.

![Teilprobenmodifikatoren](de/images/Selbst_erstellte_Effekte_Teilprobenmodifikatoren.webp)

## Effektdauer

Wenn ihr die Dauer der Effekte automatisch ablaufen lassen wollt, benötigt ihr die folgenden Module:
* [times-up](https://gitlab.com/tposney/times-up): Zählt ohne weiteres Module zumindest die verstrichenen Kampfrunden.
* [smalltime](https://github.com/unsoluble/smalltime): Blendet unten links eine "Uhr" ein mit der sich die Zeit verändern lässt uvm.

Weitere Einstellungen in den Modulen sind nicht notwendig, da die Grundeinstellungen von About-Time schon ganz gut passen mit 6 Sekunden pro KR.  
  
Um dann die Dauer in einem Effekt hinzu zu fügen geht ihr folgendermaßen vor:
1. Öffnet das Konfigurationsfenster des Effekts über den Bearbeiten Button
2. Geht im Effekt-Fenster auf den Tab *Dauer*
3. Ihr habt die Auswahl zwischen verschiedenen Optionen. Am häufigsten verwendet werden *Dauer (Sekunden)* und *Dauer (Züge) - Runden*.
   Sobald die Zeit/Runde abgelaufen ist, verschwindet der Effekt automatisch vom Charakterbogen.
   
![Dauer Effekt](de/images/de-status-selbst-erstellte-effekte_6.webp)

## Auren

Auren sind aktive Effekte, die sich auf Token in einem festgelegten Radius auswirken. Diese Effekte können sowohl positiv als auch negativ sein. Eine Aura kann über die erweiterten Effekte eines aktiven Effekts aktiviert werden und so konfiguriert werden, dass sie auf die Token-Disposition (freundlich, feindlich usw.) reagiert. Für diese Funktionalität müssen jedoch alle Token entsprechend eingestellt sein. 

Ein Beispiel: Elwene wurde von den Göttern gesegnet. Alle Wesen innerhalb eines Radius von 2 Schritten erhalten einen Bonus von +1 auf Mut. 

Diese Auren können nun ebenso wie Flächeneffekte von Zaubern mit grafischen Animationen unter Verwendung des Moduls "Automated Animations" ausgestattet werden. 


## Tipp für Fortgeschrittene:

Wer sich ein bisschen mit der Console auskennt (F12 im Browser) kann die Spieldaten selbst nach den Werten durchsuchen.  
Markiert einen Token und gebt in die Konsole: *_token.actor.data* ein. Dann seht ihr die Werte die sich hierdurch beeinflussen lassen. Weitere Infos hierzu folgen.
  
![Console](de/images/de-status-selbst-erstellte-effekte_7.webp)

*[x]Zuletzt bearbeitet: 04.11.2021*   
*Überarbeitet: Hinweis auf Module in Effektdauer*
