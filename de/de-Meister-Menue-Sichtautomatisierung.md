## Sichtautomatisierung
Vorwort VTTom: Die Einstellungen in der Sichtautomatisierung sind recht komplex. Ich finde sie lässt sich nicht so einfach in einem reinen Text erklären. Hier werde ich erstmal eine Einstellungsempfehlung geben und evtl. irgendwann eine ausführlichere Anleitung schreiben.   
Zur Unterstützung findet ihr hier noch ein Video dazu:  [Foundry DSA Tutorial - Sicht und Licht](https://youtu.be/2WnYh1kpXrU)

Ein Klick auf die Sichtautomatisierung im [Meister Menue - Szeneneinstellungen](de-meister-menue-szeneneinstellungen.md) führt in ein Menü mit 3 Abschnitten:
* Token Licht Konfiguration
* Sichtautomatisierung
* Presets

## Token Licht Konfiguration
Dieser Bereich entspricht dem [Licht Makro](de-licht-und-sicht-makro.md) und wird dort erläutert. Wichtig ist hier, dass bei einer aktiven Automatisierung, die Sicht-Werte anhand der Szenen-Dunkelheit angepasst werden. Sie entsprechen also nicht mehr 1:1 dem was in den [Presets](de-meister-menue-sichtautomatisierung.md#presets) eingestellt ist.

![Sicht](de/images/Token-Licht-Konfiguration_Sicht.jpg)

## Sichtautomatisierung
Die Sichtautomatisierung wird hier genauer definiert. Ob im Meister Menü oder hier bei (1) der Haken gesetzt wird ist egal, es ist technisch derselbe Haken und deshalb immer identisch eingestellt.  
1. Sichtautomatisierung aktivieren/deaktivieren
2. Modus bestimmt welche Formel zur Verwendung kommt. Beide sind nicht umkompliziert, werden aber weiter oben im Fenster erläutert.
3. Token HUD für Licht: ist dies aktiv, kann bei einem rechtsklick auf einen Token ein neuer Button zum schnellen Aktivieren einer Lichtquelle durchgeführt werden.
4. Licht Token HUD für Spieler: aktiviert den Token Button auch für Spieler so, dass diese sich selbst eine Lichtquelle aktivieren können.
5. Dunkelheit = 1: Wird hier der Haken gesetzt, werden alle Token auf der Szene blind, haben also 0 Dämmer- und 0 Helle Sicht, sobald die Dunkelheit auf einer Szene auf 1 Steigt.
6. Standard (Keine Sicht): Gibt an welcher Wert aus den [Presets](de-meister-menue-sichtautomatisierung.md#presets) verwendet werden soll, sollte der Akteur über keinen Vorteil oder ähnlicher verfügen.

![Sichtautomatisierung](de/images/Token-Licht-Konfiguration_Sichtautomatisierung.jpg)

## Presets
Die Presets dienen zum einen als Individualisierungsmöglicheit für das eigene Spiel und die Vorlieben bei Sicht und Lichtverhältnissen. Diese Werte werden aber auch bei der Konfiguration der Sichtautomatisierung zur Rate gezogen.

Ein paar der Punkte sind bereits unter [Licht und Sicht Makro - Presets](de-licht-und-sicht-makro.md#presets) erklärt, deshalb hier nur die Punkte die zur Sichtautomatisierung wichtig sind.  
7. Die Kompensationskonfiguration erscheint nur, wenn unter [Sichtautomatisierung](de-meister-menue-sichtautomatisierung.md#sichtautomatisierung) der Modus (2) auf Kompensation eingestellt ist.

![Presets](de/images/Token-Licht-Konfiguration_Presets.jpg)



*[x]Zuletzt bearbeitet: 03.03.2022* 
*Neu: Vorwort und ersten Text*