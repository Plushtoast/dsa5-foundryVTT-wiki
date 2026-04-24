---
layout: default
title: de-kalender
---
# Kalender & Mondphasen

Das DSA5 System für Foundry VTT verfügt über einen vollständig integrierten aventurischen Kalender. Dieser verwaltet nicht nur das Datum und die Uhrzeit, sondern berechnet auch Mondphasen, Feiertage und kann sogar die Beleuchtung der Szene automatisch steuern.

## Das Kalender-Widget

Auf der Benutzeroberfläche (standardmäßig oben in der mitte) findest du das Kalender-Widget. Es bietet einen schnellen Überblick und grundlegende Steuerungsmöglichkeiten.

![Kalender Widget](de/images/de-kalender-widget.webp)

### Funktionen des Widgets
*   **Anzeige**: Zeigt das aktuelle Datum (z.B. "1. Praios 1040 BF") und die Uhrzeit an.
*   **Mondphase**: Ein Icon visualisiert die aktuelle Mondphase (z.B. Vollmond, Neumond).
*   **Zeitsteuerung**:
    *   `<` / `>`: Springt einen Tag zurück / vor.
    *   `<<` / `>>`: Springt einen Monat zurück / vor.
    *   Kleine Pfeile (falls vorhanden) oder Klick auf die Zeit erlaubt feinere Anpassungen.
*   **Automatische Beleuchtung (Sonne/Mond Icon)**: Ein Klick auf dieses Icon aktiviert oder deaktiviert die automatische Anpassung der Szenen-Helligkeit (siehe unten).
*   **Bearbeiten (Stift/Zahnrad)**: Öffnet das detaillierte Kalender-Fenster.

## Das Kalender-Fenster

Das Hauptfenster des Kalenders bietet tiefere Einblicke und Konfigurationsmöglichkeiten. Es ist in mehrere Reiter unterteilt:

### 1. Kalender
Die klassische Monatsansicht.
*   Hier siehst du alle Tage des aktuellen Monats.
*   Mondphasen sind für jeden Tag grafisch dargestellt.
*   Ein Klick auf einen Tag setzt das Datum auf diesen Tag.

### 2. Feiertage (Ereignisse)
Eine Liste aller im System hinterlegten Feiertage sowie eigener Ereignisse.
*   **Eigene Ereignisse**: Du kannst über das `+` Symbol neue Ereignisse hinzufügen. Diese werden technisch als Journal-Einträge gespeichert.
*   **Kategorien**: Ereignisse können kategorisiert werden (z.B. Religiös, Weltlich).

### 3. Personae Dramatis
Dieses Tool dient der Verwaltung von wichtigen Persönlichkeiten (NSCs) in deiner Kampagne.
*   Es ermöglicht das Anlegen von Profilen für wichtige Charaktere.
*   Du kannst Beschreibungen, Notizen (öffentlich) und SL-Notizen (geheim) hinterlegen.
*   Es lassen sich Beziehungen und Kontakte verknüpfen.

### 4. Einstellungen (Konfiguration)
Hier kann der Spielleiter das Verhalten des Kalenders anpassen.
*   **Kalenderwahl**: Auswahl des verwendeten Kalendersystems (Standard: Aventurischer Kalender).
*   **Mond**: Einstellungen zum Mondzyklus.

## Automatische Beleuchtung

Eine der mächtigsten Funktionen ist die dynamische Beleuchtung (`Auto Day Light`).

*   **Funktionsweise**: Das System berechnet anhand der aktuellen Uhrzeit den Sonnenstand. Entsprechend wird der `Darkness Level` (Dunkelheit) der aktuellen Szene angepasst.
*   **Tageszeiten**: Es gibt fließende Übergänge zwischen Morgendämmerung, Tag, Abenddämmerung und Nacht.
*   **Mondlicht**: In den Einstellungen kann aktiviert werden, dass der Mond in der Nacht die Dunkelheit aufhellt (ein Vollmond macht die Nacht heller als ein Neumond).

> **Hinweis**: Damit dies funktioniert, muss in den Szenen-Einstellungen die globale Beleuchtung oder entsprechende Lichtquellen korrekt konfiguriert sein, damit der `Darkness Level` einen sichtbaren Effekt hat.

## Integration mit DSA5 Atlas

Wenn das Modul **DSA5 Atlas** installiert und aktiviert ist, wird der Kalender noch präziser.
*   Die Sonnenauf- und -untergangszeiten werden dann basierend auf der geographischen Position der Heldengruppe auf der Aventurien-Karte berechnet.
*   Im hohen Norden sind die Tage im Winter also tatsächlich kürzer als im Süden.
