# Händler, Person und Schatz Charakterbogen
Es gibt einen neuen Charakterbogen. mit diesem lassen sich Händler, Schätze und einfache Personen abbilden.  
**Anmerkung**: Der Kauf und Austausch der Items zwischen Spieler und Händler/Schatz ist nur möglich, wenn ein Spielleiter im Spiel angemeldet ist! Sonst passiert nichts beim Klick auf kaufen/verkaufen/nehmen!   
  
Um den Charakterbogen zu verwenden müsst ihr wie folgt vorgehen:
1. Erstellt einen neuen Akteur -> *Nichtspielercharakter*
2. Ändert den Charakterbogen über das Zahnrad *Blatt konfigurieren* zu *MerchantSheetDSA5*. **Achtung** bitte nicht bei Standard Bogen den Bogen ändern!
3. Auf dem Händler Tab des Charakters könnt ihr zwischen *normale Person*, *Händler* oder *Schatz* auswählen.

![Händlerbogen auswählen](https://user-images.githubusercontent.com/80099175/113250611-1a266780-92c1-11eb-86a2-7edcfccd878e.png)  
![Händler Typ auswählen](https://user-images.githubusercontent.com/80099175/113250735-5b1e7c00-92c1-11eb-875c-65eb7f752800.png)  

## Einstellungen durch den Spielleiter in Foundry 7.X:
* Damit die Spieler Zugriff auf den Akteur haben müssen sie das Recht *Beschränkt* auf den Händler haben.
* Sie können dann über den Token auf dem Bildschirm oder im Akteurmenü auf den Händler zugreifen
* Beachtet, dass der Token auf der Szene nicht den Akteur im Menü verändert. So könnt ihr den Händler/das Loot wiederverwenden wenn sie nur über die Szene darauf zugreifen.
* Interaktion mit dem Händler sind nur erlaubt, wenn ein Spielleiter ins Spiel eingelogt ist.

![Beschränkt](https://user-images.githubusercontent.com/80099175/113254135-7f308c00-92c6-11eb-8950-700abcba55e6.png)

## Einstellungen durch den Spielleiter in Foundry 8.X:
* Es gibt im Händlertab jetzt 2 Funktionen über die der Händler konfiguriert werden kann.  
1. Wird der Haken beim jeweiligen Spieler gesetzt hat er das Recht beschränkt für den Akteur. Er sieht ihn im Akteurmenü und kann über den Token in der Szene auf das Händlermenü zugreifen.
2. Über den Haken bei *Für Spieler verbergen* wird der Akteur im Akteurmenü des Spielers nicht mehr angezeigt.
  
  ![Haendler Berechtigungen](images/Haendler_Berechtigungen_8.jpg)
  
## Spielleiter: Umschalten zu Spieleransicht

Der Spielleiter kann den *Begrenzte Ansicht umschalten (Spieleransicht)* Button in der rechten oberen Ecke des Charakterbogens verwenden um die Sicht der Spieler auf den Händler zu bekommen.  
  
![Ansicht umschalten](https://user-images.githubusercontent.com/80099175/113253341-6378b600-92c5-11eb-9920-3c81cb187ff1.png)

## Händler
1. Ihr könnt den Multiplikator für den Kaufs- und Verkaufsfaktor des Händlers einstellen (Bsp.: 2 für doppelt, 0.5 für halb)
2. Zum Handeln benötigt der Händler Geld. Sonst können die Spieler ihm nichts verkaufen. 
3. Ihr könnt die Ausrüstung einfach aus der Bibliothek zu dem Händler hinzufügen oder über das + einen Dummy hinzufügen und ändern (3.1). Außerdem gibt es einen Zufällige Auswahl Button um den Händler Random zu befüllen (3.2).  
  
![Händler](https://user-images.githubusercontent.com/80099175/113251093-f7e11980-92c1-11eb-9889-8fa8a32737d7.png) 

### Händlermenü (Spielersicht)
Die Spieler können entweder über das Actor Menü auf den Händler zugreifen oder aber direkt in der Szene über den Token. Es öffnet sich dann ein Handelsfenster:  
1. **Verkaufen**: Verkauft das Item an den Händler zum Preis von dem Wert des Gegenstandes verrechnet mit dem Kauffaktor.
2. **Kaufen**: Kauft den Gegenstand mit der Anzahl 1 zu dem angegebenen Preis
  
![Händlermenü](https://user-images.githubusercontent.com/80099175/113251956-72f6ff80-92c3-11eb-8556-3fcc73326991.png)  

## Schatz
* Die Spieler haben kompletten Zugriff auf alles was im Schatz zugeordnet ist, auch das Geld.
* Auch hier kann wieder eine zufällige Auswahl an Gegenständen erstellt werden. Oder aber ihr zieht wie beim Händler alles manuell in den Charakter.

![Schatz](https://user-images.githubusercontent.com/80099175/113252240-db45e100-92c3-11eb-83fc-d531b2605690.png)  
  
### Schatzmenü (Spielersicht)
Die Spieler können entweder über das Actor Menü auf den Schatz zugreifen oder aber direkt in der Szene über den Token. Es öffnet sich dann ein Tauschfenster:
* Hier können nach Belieben Gegenstände aus dem Inventar des Schatzes genommen (1) oder Gegenstände darin ablegt werden (2).

![Schatzmenü](https://user-images.githubusercontent.com/80099175/113252470-2f50c580-92c4-11eb-9c90-d3950eecc9b7.png)

## Person
Eine Normale Person hat aus Spielleitersicht alle Charakterwerte eines NSCs. Dieser Bogen kann aber auch von den Spielern geöffnet werden und zeigt dann nur sehr wenig von dem NSC. Dies kann nützlich sein um den Spielern zumindest ein paar Infos zur Verfügung zu stellen.

### Personenmenü (Spielersicht)
Die Spieler können entweder über das Actor Menü auf die Person zugreifen oder aber direkt in der Szene über den Token. Es öffnet sich dann eine Infoansicht:
* Es stehen nur Informationen über Name, Spezies, das Charakterbild sowie die Notizenseite (Ohne GM Informationen) zur Verfügung.
  
![Personenmenü](https://user-images.githubusercontent.com/80099175/113253083-109efe80-92c5-11eb-8837-b49f032b7802.png)

**Anmerkung**: Gebt uns ein Feedback wie wir dieses Feature in der Zukunft verbessern können.
