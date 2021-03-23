# Charakterbogen - Aufbau (Akteur - Charakter)
Der Aufbau des Charakterbogens ist so ähnlich aufgebaut wie der Bogen des Regelwerkes.
Es gibt darin die Kategorien:
1. Kopfbereich
2. Talente
3. Kampf
4. Eigenschaften
5. Ausrüstung
6. Status
7. Notizen  
![Charakterbogen](https://user-images.githubusercontent.com/80099175/112130343-adc4ad80-8bc8-11eb-8953-1f82cd10fbf8.png)

## 1. Kopfbereich
Dieser Teil des Bogens ist immer sichtbar und wird unter anderem durch die Eingaben in Eigenschaften (LINK) beeinflusst. Es handelt sich hier um die aktuellen Werte 
des Charakters.  
Außerdem kann hier manuell die Profession eingetragen werden. Es sei denn es wird eine vorgefertigte Profession verwendet (LINK Charakterbau).  
![Charakterbogen Kopfbereich](https://user-images.githubusercontent.com/80099175/112131586-faf54f00-8bc9-11eb-887a-8c8cf417bf9f.png)

## 2. Talente
Auf dem Talentbogen werden die Talentwerte des Charakters festgehalten und es können Proben abgelegt werden. Außerdem kann der Fertigkeitswert gesteigert (LINK Charakterbau/-steigerung) oder verändert werden.  
1. **Talente durchsuchen**: sucht den eingegebenen Begriff in den Talenten
1. **Filter**: Blendet alle Talente aus die einen Fw von 0 haben  
![Charakterbogen Talente](https://user-images.githubusercontent.com/80099175/112131981-6c350200-8bca-11eb-9f89-005632ce6e50.png)

## 3. Kampf
Der Kampfbogen beinhaltet alle Daten die zum Kampf in DSA 5 verwendet werden (Siehe Kampf LINK).  
1. **Nah-, Fernkampfwaffen und Rüstungen**: Listet alle Waffen und Rüstungen die auf der Ausrüstungsseite vorhanden sind und für den Kampfbogen aktiviert wurde (siehe Ausrüstung LINK)  
1.1 **Ausweichen, waffenloser Angriff und Parade**: Hinter den Symbolen verbergen sich das Ausweichen sowie der waffenlose Angriff und die Parade.   
1.2 **Munition**: hier kann Munition für die Waffe ausgewählt werden. Diese muss aber im Ausrüstungstab LINK hinterlegt sein. Dann zieht das System die Munition nach einem Angriff automatisch ab.  
1.3. **Details**: Ein Klick auf den Pfeil zeigt Details wie Recihweite und Ladezeit.
2. **Kampfsonderfertigkeiten**: Listet alle Kampfsonderfertigkeiten des Charakters auf.
3. **Kampftechniken**: Falls ein Wurf auf den Grundwert der Kampftechnik notwendig ist, sind die Werte und Würfel hier zu finden. Das Steigern funktioniert wie bei den Fertigkeiten  
![Charakterbogen Kampf](https://user-images.githubusercontent.com/80099175/112133821-5e807c00-8bcc-11eb-836a-ec9431cb011a.png)

## 4. Eigenschaften
In diesem Bogen werden die Grundwerte des Charakters festgelegt und gesteigert. Einige der hier vorhandenen Werte werden komplett automatisch berechnet.  
1. **Eigenschaften**: Soll die AP Berechnung verwendet werden muss im Grundwert 8 eingetragen und über + und - gesteigert werden.
1. **Vorteile, Nachteile, Sonderfertigkeiten, Sprache und Schicksalspunktsonderfertigkeiten**: Hier werden die dem Helden zugeordneten Items aufgelistet
die bei der Erstellung oder später aus der Bibliothek auf den Helden gezogen werden. 
1. **Grundwerte**: Alles in der Spalte *Wert* wird automatisch nach DSA 5 Regeln berechnet.
1. **Erfahrungsgrad**: hier werden die Verfügbaren und Ausgegebenen Abenteuerpunkte verwaltet. Details hierzu in der Charaktererstellung LINK  

![Eigenschaften](https://user-images.githubusercontent.com/80099175/112108651-c759fb00-8bb0-11eb-9854-697551f5f667.png)  

## 5. Ausrüstung
Im Ausrütungsbogen wird das Inventar des Charakters verwaltet. Hier werden Items aus der Bibliothek abgelegt die in den Charakter gezogen werden.
1. **Ausrüstung**: Alle vom Charakter ausgerüteten Gegenstände sortiert in Kategorien
1.1 **Verwenden im Kampf**: Nur wenn hier der Haken gesetzt ist, kann der Gegenstand im Kampf verwendet werden (Nur: Nahkampf-, Fernkampfwaffen und Rüstungen) 
1.2 **Anzahl**: Durch einen Linksklick kann die Zahl erhöht, durch einen Linksklick verringert werden.
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
2. **Mod.**: Hierüber kann der Zustand durch einen Linksklick erhöht oder einen Rechtsklick verringert werden.
3. **Plus (Hinzufügen)**: öffnet ein Kontextmenü über dass ein Status/Zustand gesucht und dem Charakter hinzugefügt werden kann.  

![Charakterbogen Status](https://user-images.githubusercontent.com/80099175/112144638-c7222580-8bd9-11eb-9696-3aff6af5e145.png)  

**Kontexttmenü**: dieses Menü lässt sich über das + im Charakterbogen-Status oder direkt im Kontextmenü des Tokens öffnen  

![Charakterbogen Status Kontextmenü](https://user-images.githubusercontent.com/80099175/112146446-dc984f00-8bdb-11eb-9e88-cd990dd227ab.png)  

## 7. Notizen
