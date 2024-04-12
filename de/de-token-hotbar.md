# Token Hotbar und Token Hotbar Konversion

## Token Hotbar

Über die Settings kannst du die Token Hotbar aktivieren.
Diese stellt für den aktuell markierten Token einige Schaltflächen zur Verfügung zum schnellen Zugriff auf z.B.:

* Zauber
* Verbrauchsgegenstände
* Angriffe
* Besondere Fähigkeiten

Diese Schaltfläche lässt sich ausrichten und Verschieben.
Bei Hover können die einzelnen Abschnitte zusätzlich gefiltert werden, wenn du über die Tastatur einen Suchbegriff eingibst.

![Token hotbar](de/images/hotbar-1.png)

Es gibt jetzt eine neue Meistermenü-Hotbar für den Spielleiter. Immer wenn kein Token ausgewählt ist, wird sie anstelle der normalen Token-Hotbar angezeigt. Sie enthält häufig genutzte Funktionen des Spielleitermenüs in einer besser zugänglichen Form. Wenn du Ideen für weitere Funktionen hast, lass es uns wissen.
Derzeit enthält es die folgenden Funktionen (in dieser Reihenfolge):

* Öffnen des Hauptmenüs des Spiels (diese Schaltfläche könnte wieder verschwinden)
* Würfeln eines zufälligen Opfers, was dem Spielleiter für einen kurzen Moment die Grafik des Opfers zeigt. Klicke mit der linken Maustaste, um zufällig zu würfeln, klicke mit der rechten Maustaste, um "Pechmagnet" einzubeziehen. Wenn im Hauptmenü einzelne Akteure ausgewählt sind, wird nur unter diesen gewürfelt.
* Schaltfläche "Bezahlen/Bezahlt werden", die eine /pay- oder /getPaid-Nachricht in den Chat sendet. Der Geldwert wird aus dem Zahleneingabefeld übernommen, das sich ebenfalls in der Hotbar des Hauptmenüs befindet.
* Schaltfläche Talente. Bewege den Mauszeiger über diese Schaltfläche, um alle verfügbaren Talente anzuzeigen. Klicke mit der linken Maustaste auf eine Talent, um einen Wurf anzufordern. Rechtsklick, um eine Gruppensammelprobe zu erstellen, Strg + Klick, um einen /ch Fertigkeitswurf ohne Token/Akteur durchzuführen. Alle drei Funktionen beinhalten einen Modifikator, der über das Eingabefeld in der Token-Hotbar eingestellt werden kann. Man kann auch mit dem Mauszeiger über die Fertigkeiten-Schaltfläche fahren und anfangen zu tippen, was dann die Fertigkeiten filtert, so dass man schneller die richtige findet. Diese Filterfunktion funktioniert jetzt auch für die Fertigkeiten in der normalen Token-Hotbar für Token.
* Zahlenfeld eingeben. Der Wert wird für die /pay-Funktion oder als Modifikator für Fertigkeitswürfe verwendet.
* Dunkelheitsschwelle. Schnelles Ändern der Szenendunkelheit ohne ein Menü zu öffnen.

## Token Hotbar Konversion

Die Token Hotbar Konversion hat alle Funktionen der Tokenhotbar ersetzt aber die normale Foundry Hotbar am unteren Rand des GUIs.

![Token hotbar](de/images/hotbar-2.png)

Sie bietet einige zusätzliche Funktionen, darunter z.B.:

* Schnelles Löschen von Effekten auf dem aktuell markierten Akteur (Rechtsclick) und Hinzufügen
* Filterfunktionen um schnell das passende Element zu finden (Hover über die Tokenhotbar und Keyboard Eingabe)
* Diverse alternative Funktionen die über shift, strg, alt + click ausgelöst werden. Darunter z.B. Gruppenproben, normale Proben, Waffen an- und ablegen etc.
* Detaillierte Tooltips zu den jeweiligen Elementen.

Intention ist es dem Spielleiter und den Spielern schnell Zugriff auf alles zu gewähren, ohne dass der Heldenbogen das GUI blockiert.