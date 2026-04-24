---
layout: default
title: de-Meister-Menue-Sichtautomatisierung
---
## Sichtautomatisierung
Vorwort VTTom: Die Einstellungen in der Sichtautomatisierung sind recht komplex. Ich finde, sie lässt sich nicht so einfach in einem reinen Text erklären. Hier werde ich erst einmal eine Einstellungsempfehlung geben und evtl. irgendwann eine ausführlichere Anleitung schreiben.   
Zur Unterstützung findet ihr hier noch ein Video dazu:  [Foundry DSA Tutorial - Sicht und Licht](https://youtu.be/2WnYh1kpXrU)

Ein Klick auf die Sichtautomatisierung im [Meister Menü - Szeneneinstellungen](/dsa5-foundryVTT-wiki/de/de-Meister-Menue-Szeneneinstellungen) führt in ein Menü mit 3 Abschnitten:
* Token Licht Konfiguration
* Sichtautomatisierung
* Presets

## Token Licht Konfiguration
Dieser Bereich entspricht dem [Licht-Makro](/dsa5-foundryVTT-wiki/de/de-Licht-und-Sicht-Makro) und wird dort erläutert. Wichtig ist hier, dass bei einer aktiven Automatisierung, die Sicht-Werte anhand der Szenen-Dunkelheit angepasst werden. Sie entsprechen also nicht mehr 1:1 dem, was in den [Presets](/dsa5-foundryVTT-wiki/de/de-Meister-Menue-Sichtautomatisierung#presets) eingestellt ist.

![Sicht](/dsa5-foundryVTT-wiki/de/images/Token-Licht-Konfiguration_Sicht.webp)

## Sichtautomatisierung
Die Sichtautomatisierung wird hier genauer definiert. Ob im Meister Menü oder hier bei (1) der Haken gesetzt wird, ist egal; es ist technisch derselbe Haken und deshalb immer identisch eingestellt.  
1. Sichtautomatisierung aktivieren/deaktivieren
2. Modus bestimmt, welche Formel zur Verwendung kommt. Beide sind nicht unkompliziert, werden aber weiter oben im Fenster erläutert.
3. Token HUD für Licht: ist dies aktiv, kann bei einem Rechtsklick auf einen Token ein neuer Button zum schnellen Aktivieren einer Lichtquelle durchgeführt werden.
4. Licht-Token-HUD für Spieler: aktiviert den Token-Button auch für Spieler, sodass diese sich selbst eine Lichtquelle aktivieren können.
5. Dunkelheit = 1: Wird hier der Haken gesetzt, werden alle Token auf der Szene blind, haben also 0 Dämmer- und 0 Helle Sicht, sobald die Dunkelheit auf einer Szene auf 1 steigt.
6. Standard (Keine Sicht): Gibt an, welcher Wert aus den [Presets](/dsa5-foundryVTT-wiki/de/de-Meister-Menue-Sichtautomatisierung#presets) verwendet werden soll, sollte der Akteur über keinen Vorteil oder ähnlichem verfügen.

![Sichtautomatisierung](/dsa5-foundryVTT-wiki/de/images/Token-Licht-Konfiguration_Sichtautomatisierung.webp)

## Presets
Die Presets dienen zum einen als Individualisierungsmöglichkeit für das eigene Spiel und die Vorlieben bei Sicht und Lichtverhältnissen. Diese Werte werden aber auch bei der Konfiguration der Sichtautomatisierung zur Rate gezogen.

Ein paar der Punkte sind bereits unter [Licht-und-Sicht-Makro - Presets](/dsa5-foundryVTT-wiki/de/de-Licht-und-Sicht-Makro#presets) erklärt, deshalb hier nur die Punkte, die zur Sichtautomatisierung wichtig sind.  
7. Die Kompensationskonfiguration erscheint nur, wenn unter [Sichtautomatisierung](/dsa5-foundryVTT-wiki/de/de-Meister-Menue-Sichtautomatisierung#sichtautomatisierung) der Modus (2) auf Kompensation eingestellt ist.

![Presets](/dsa5-foundryVTT-wiki/de/images/Token-Licht-Konfiguration_Presets.webp)



*[x]Zuletzt bearbeitet: 03.03.2022* 
*Neu: Vorwort und ersten Text*