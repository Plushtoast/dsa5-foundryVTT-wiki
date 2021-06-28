# Charakterbogen - Aufbau (Akteur - Charakter)
Der Aufbau des Charakterbogens ist so ähnlich aufgebaut wie der Bogen des Regelwerkes.
Es gibt darin die Kategorien:
1. [Kopfbereich](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#1-kopfbereich)
2. [Talente](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#2-talente)
3. [Kampf](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#3-kampf)
4. [Eigenschaften](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#4-eigenschaften)
5. [Ausrüstung](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#5-ausr%C3%BCstung)
6. [Status](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#6-status)
7. [Notizen](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#7-notizen)
8. [Magie](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#8-magie)
9. [Religion](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#9-religion)
  
**Anmerkung**: Die Punkte [Magie](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#8-magie) und [Religion](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#9-religion) erscheinen nur, wenn dem Charakter mindestens eine magische oder karmale Sonderfertigkeit/Zauber/Ritual/Liturgie/Zeremonie zugeordnet ist. Auch erst dann erscheinen im [Eigenschaftenbogen](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#4-eigenschaften) AsP- und/oder Karmapunkte.
  
![Charakterbogen](de/images/Charakterbogen.jpg)

## 1. Kopfbereich
Dieser Teil des Bogens ist immer sichtbar und wird unter anderem durch die Eingaben in [Eigenschaften](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#4-eigenschaften) beeinflusst. Es handelt sich hier um die aktuellen Werte des Charakters.  
Außerdem kann hier eine Profession eingetragen werden - entweder eine [vorgefertigte Profession](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charaktererstellung#6-profession-w%C3%A4hlen), oder die Bezeichnung für eine eigene Profession.  
Oben rechts findet ihr ein paar Schaltflächen für weitere Funktionen:  
1. Steigerungen sperren/entsperren 
2. [Bibliothek](de-Bibliothek) öffnen 
3. Akteur konfigurieren: Hier findet ihr die [Import Funktion](de-Import-Funktion) 
4. Blatt konfigurieren: Charakterbogen auswählen - siehe auch [Händler](de-Haendler)
5. Token konfigurieren: siehe auch [Sicht und Licht - Token Einstellungen](de-Sicht-und-Licht#token-einstellungen)
  
![Charakterbogen Kopfbereich](de/images/Charakterbogen_Kopfbereich.jpg) 
  
- **Name und Bild:** Können bearbeitet werden. Wenn ihr den Namen ändert, denkt daran dies auch unter Token konfigurieren abzugleichen.
- **Spezies:** Nur für die Anzeige, kann nicht bearbeitet werden.
- **Profession:** Kann bearbeitet werden, ist dann aber nur Text. [Hier](de-Charaktererstellung#6-profession-wählen) gibt es weitere Information zum Hinzufügen einer Profession zum Character.
- **Eigenschaftswerte:** Übertragen vom [Eigenschafts-Tab](#4-eigenschaften), wo sie verändert werden können.
- **Lebens-/Astral-/Karmapunkte:** (aktuell und max.) Können bearbeitet werden. Es muss der neue Wert eingetragen werden, nicht die Veränderung (Bsp. Ihr habt 30 LeP und verliert 5, tragt hier 25 ein.) Im Tokenmenü könnt ihr die Veränderung eintragen (Bsp. Ihr habt 30 LeP und verliert 5, tragt hier -5 ein. Der Wert wird zu 25)
- **Schicksalspunkte:** Basiswert plus Vor-/Nachteile. Das Maximum kann nicht verändert werden, aber ihr könnt sie durch anklicken ausgeben oder zurückgewinnen. Die Punkte können aber auch über das Kontextmenü einer Probe ausgegeben werden.


## 2. Talente
Auf dem Talentbogen werden die Talentwerte des Charakters festgehalten und es können Proben abgelegt werden.  
  
![Charakterbogen Talente](de/images/Charakterbogen_Talente.jpg)

1. **Suche/Filter:** Mit einem Klick auf das rechte Symbol sehr ihr nur noch die Talente in denen ihr einen FW über 0 habt. Um nach einem Talent zu suchen, gebt einfach einen Begriff in das links Suchfeld ein.
2. **Beschreibung/Informationen:** Klickt ihr auf ein Talent, öffnet sich ein Fenster mit der Beschreibung. Oben lässt sich die Talentbeschreibung in den Chat posten über das Sprechblasen-Symbol. Hier solltet ihr keine Änderungen durchführen, es sei denn ihr wisst genau was ihr macht.
3. **+/- Buttons:** Hiermit könnt ihr den FW des Talentes steigern. Dies beeinflusst die Abenteuerpunkte des Charakters!
4. **Probe durchführen:** Über die Würfel löst ihr die Probe aus. Es öffnet sich ein Popup um Modifikatoren einzugeben.
5. **Belastung:** Steht hier ein *Ja* wird die Belastung auf die Probe angerechnet. Diese kann manuell im Modifikatoren-Fenster abgewählt werden.
6. **Fertigkeitswert:** Die Höhe eures Fertigkeitswertes. Ändert ihr hier die Zahl, wird dies nicht bei den Abenteuerpunkten mit berechnet.

### Sammelproben
Ganz unten auf dem Bogen habt ihr noch die Möglichkeit Sammelproben anzulegen.  
  
1. Über das + fügt ihr eine neue Sammelprobe zum Charakterbogen hinzu.
2. Klickt auf den Namen um die Sammelprobe bearbeiten zu können. Hier könnt ihr neben dem Namen auch alle anderen Werte verändern, insbesondere das verwendete Talent.
3. Durch einen Klick auf den Würfel, wird die Probe gewürfelt.  
  
![Sammelprobe](de/images/Charakterbogen_Talente_Sammelprobe.jpg) 

1. Zuerst wird die Probe angezeigt und die erreichte QS.
2. Darunter ist die Zusammenfassung der Sammelprobe. Sie berücksichtigt jede Probe die auf die Sammelprobe ausgeführt wird.
![Sammelprobe Chat](de/images/Charakterbogen_Talente_Sammelprobe_Chat.jpg)

## 3. Kampf
Der Kampfbogen beinhaltet alle Daten die zum [Kampf](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Kampf) in DSA 5 verwendet werden.
1. **Nah-, Fernkampfwaffen und Rüstungen**: Listet alle Waffen und Rüstungen auf, die im Reiter [Ausrüstung](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#5-ausr%C3%BCstung) vorhanden sind **und ausgerüstet** (=für den Kampfbogen aktiviert) wurden. Dazu muss auf der Ausrüstungs-Seite neben dem Gegenstand ein Haken gesetzt werden, siehe [Ausrüstung](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#5-ausr%C3%BCstung)

   1.1 **Ausweichen, waffenloser Angriff und Parade**: Hinter den Symbolen verbergen sich das Ausweichen sowie der waffenlose Angriff und die Parade.  

   1.2 **Munition**: hier kann Munition für die Waffe ausgewählt werden. Diese muss aber im [Ausrüstungstab](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#5-ausr%C3%BCstung) hinterlegt sein. Dann zieht das System die Munition nach einem Angriff automatisch ab. Für Wurfwaffen zählt die Waffe selbst als Munition, sprich: Wenn man 3 Wurfmesser ausrüstet, reduziert es die Anzahl Wurfmesser nach dem Angriff auf 2 usw., bei Anzahl 0 kann kein Angriff mehr gemacht werden. 
 
   1.3. **Details**: Ein Klick auf den Pfeil zeigt Details wie Reichweite und Ladezeit.
2. **Kampfsonderfertigkeiten**: Listet alle Kampfsonderfertigkeiten des Charakters auf.
3. **Kampftechniken**: Falls ein Wurf auf den Grundwert der Kampftechnik notwendig ist, sind die Werte und Würfel hier zu finden. Das Steigern funktioniert wie bei den Fertigkeiten.
  
![Charakterbogen Kampf](https://user-images.githubusercontent.com/80099175/112133821-5e807c00-8bcc-11eb-836a-ec9431cb011a.png)

## 4. Eigenschaften
In diesem Bogen werden die Grundwerte des Charakters festgelegt und gesteigert. Einige der hier vorhandenen Werte werden komplett automatisch berechnet.
1. **Eigenschaften**: Soll die AP Berechnung verwendet werden muss im Grundwert 8 eingetragen und über + und - gesteigert werden.
1. **Vorteile, Nachteile, Sonderfertigkeiten, Sprache und Schicksalspunktsonderfertigkeiten**: Hier werden die dem Helden zugeordneten Items aufgelistet
die bei der Erstellung oder später aus der Bibliothek auf den Helden gezogen werden. 
1. **Grundwerte**: Alles in der Spalte *Wert* wird automatisch nach DSA 5 Regeln berechnet. Die Werte Astral- und Karmaenergie erscheinen nur, wenn der Charakter einen magische, karmale Sonderfertigkeit, einen Zauber, eine Liturgie oder ähnliches zugeordnet hat. Die Vorteile Zauberer und Geweihter reichen dafür nicht.
1. **Erfahrungsgrad**: hier werden die Verfügbaren und Ausgegebenen Abenteuerpunkte verwaltet. Details hierzu in der [Charaktererstellung](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charaktererstellung)
  
![Eigenschaften](https://user-images.githubusercontent.com/80099175/112108651-c759fb00-8bb0-11eb-9854-697551f5f667.png)  

## 5. Ausrüstung
Im Ausrütungsbogen wird das Inventar des Charakters verwaltet. Hier sind alle Items sichtbar, die dem Charakter zugewiesen sind.
Um neue Items hinzuzufügen, können diese aus der Bibliothek auf den Charakterbogen gezogen werden. Alternativ können [ Inhalte erstellt werden.](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Eigene_Inhalte_erstellen)
1. **Ausrüstung**: Alle vom Charakter ausgerüteten Gegenstände sortiert in Kategorien (Nahkampfwaffe, Rüstung, Behältnis, Munition etc.).
1.1 **Verwenden im Kampf**: Nur wenn hier der Haken gesetzt ist, kann der Gegenstand im Kampf verwendet werden (Nur: Nahkampf-, Fernkampfwaffen und Rüstungen). Rüstungen, die nicht für den Kampf ausgerüstet sind (=angezogen sind), deren Gewicht muss man herumtragen. Bei schweren Rüstungen kann das zu Abzügen führen, aufgrund von Belastung.
1.2 **Anzahl**: Durch einen Linksklick kann die Zahl erhöht, durch einen Rechtsklick verringert werden.
1.3 **Gewicht**: Berechnet auf Basis der Anzahl und des Einzelgewichts
1.4 **Bearbeiten, teilen, Details**: Das Bearbeiten Symbol öffnet den Gegenstand zur Bearbeitung. Die Sprechblase teilt die Infos des Gegenstandes im Chat. 
Über den Pfeil können die Details auf- und zugeklappt werden.
2. **Tragekraft**: Die Tragkraft wird automatisch nach DSA 5 Regeln berechnet. Sobald die Tragkraft überschritten wird, erhält der Charakter Belastungsstufen.
3. **Geldbeutel**: Hier wird das Geld des Charakters verwendet. (SL Tipp: über den Chat Befehl /getPaid kann der SL allen Charakteren (Token markieren!) Geld als Belohnung auszahlen)  
  
![Charakterbogen Ausrüstung](https://user-images.githubusercontent.com/80099175/112141398-86281200-8bd5-11eb-8e58-b2aa7633b982.png)

## 6. Status
Das Statusfenster beinhaltet alle für den Charakter aktiven Zustände und Status. Ein paar davon werden automatisch gehandhabt (Bsp.: Schmerz durch Lebenspunkte,
Belastung durch Rüstung und Ausrüstung.) Soll ein Zustand oder Status entfernt werden, reicht ein Rechtsklick auf den Namen. Dies funktioniert aber nur, wenn der Auslöser eines automatischen Zustands nicht mehr vorhanden ist (Bsp.: Sind die Lebenspunkte unter 1/2 lassen sich die zwei Stufen Schmerz nicht einfach so entfernen)
1. **Wert**: Bei Status wird nur angegeben dass dieser Status aktiviert ist (Haken). Bei Zuständen wird hier die Höhe des Zustandes angegeben.  
2. **Mod.**: Hierüber kann der Zustand durch einen Linksklick erhöht oder einen Rechtsklick verringert werden. Dabei sind negative Werte möglich.  
3. **Plus (Hinzufügen)**: öffnet ein Kontextmenü, über das ein Status/Zustand gesucht und dem Charakter hinzugefügt werden kann. Zudem lassen sich [eigene Stati anlegen.](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Status-Selbst-erstellte-Effekte)
  
![Charakterbogen Status](https://user-images.githubusercontent.com/80099175/112144638-c7222580-8bd9-11eb-9696-3aff6af5e145.png)  
  
**Kontextmenü**: dieses Menü lässt sich über das + im Charakterbogen-Status oder direkt im Kontextmenü des Tokens öffnen. 
 - Über das Kontextmenü des Token lassen sich bekannte Stati/Zustände sehr schnell hinzufügen.
 - Über das  Symbol im Charaktersheet lassen sich Einträge suchen/filtern, zudem kann man [eigene Einträge erstellen](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Status-Selbst-erstellte-Effekte) (+ Symbol neben dem Suchfeld).
  
![Charakterbogen Status Kontextmenü](https://user-images.githubusercontent.com/62849695/116782005-f0f72380-aa86-11eb-91e9-1ceefe799deb.png)  
 
## 7. Notizen
In den Notizen finden sich verschiedene Dinge, die über den Charakter eingetragen werden können. Hier wird auch die Kultur abgelegt, wenn diese beim Charakterbau in den Charakter gezogen wird. Die **GM Notizen** sind nur für Spielleiter sichtbar.
![Charakterbogen Notizen](https://user-images.githubusercontent.com/80099175/112149840-b4125400-8bdf-11eb-9577-1d78333392ad.png)

## 8. Magie
Der Magiebogen erscheint erst, wenn dem Charakter eine magische Sonderfertigkeit, ein Zauber, ein Ritual oder ein Zaubertrick zugeordnet wurde. Der Vorteil Zauberer reicht dafür nicht aus!  
1. **Zaubersprüche und Rituale**: Hier werden alle Zauber und Rituale des Charakters aufgelistet.  
   1.1 Die Sprechblase teilt den Zauber/das Ritual über den Chat, der Pfeil öffnet Details (Wirkungsdauer, Kosten) und die Tonne löscht den Zauber/das Ritual.   
2. **Magische Sonderfertigkeiten**: Alle dem Charakter zugeordneten magischen Sonderfertigkeiten.
3. **Tradition, Leiteigenschaft, Merkmal, Leiteig. Multiplikator**: die Leiteigenschaft muss hier angegeben werden, da sich darüber auch die AsP in den [Eigenschaften](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#4-eigenschaften) berechnen. Außerdem kann über den *Leiteigenschaft Multiplikator* der Einfluss der Leiteigenschaft auf die Astralpunkte eingestellt werden (Bsp: Zauberbarde 0.5).
4. **Zaubertricks**  
  
![Magie](https://user-images.githubusercontent.com/80099175/114888610-b1370780-9e09-11eb-92e3-3b3a7efe629f.png)

## 9. Religion
1. **Liturgien und Zeremonien**: Hier werden alle Liturgien und Zeremonien des Charakters aufgelistet.  
   1.1 Die Sprechblase teilt die Liturgie/die Zeremonie über den Chat, der Pfeil öffnet Details (Wirkungsdauer, Kosten) und die Tonne löscht die Liturgie/die Zeremonie.   
2. **Karmale Sonderfertigkeiten**: Alle dem Charakter zugeordneten karmalen Sonderfertigkeiten.
3. **Tradition, Leiteigenschaft, Aspekt, Wohlgefällige Talente**: die Leiteigenschaft muss hier angegeben werden, da sich darüber auch die KaP in den [Eigenschaften](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#4-eigenschaften) berechnen.  
   - Wohlgefällige Talente sollten hier unbedingt eingetragen werden. Achtet auf korrekte Schreibweise. Der Zustand "Entrückung" berücksichtigt diese Einträge.
5. **Segnungen**  
  
![Religion](https://user-images.githubusercontent.com/80099175/112478313-29af2900-8d74-11eb-8344-d68b8f35dbe6.png)
