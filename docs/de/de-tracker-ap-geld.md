---
layout: default
title: de-tracker-ap-geld
---
# AP- und Geld-Tracker

Das System bietet eine optionale Funktion, um alle Änderungen an Abenteuerpunkten (AP) und dem Vermögen der Charaktere automatisch zu protokollieren. Dies ist besonders nützlich für Spielleiter, um den Fortschritt und die Ausgaben der Gruppe im Blick zu behalten.

## Aktivierung

Diese Funktionen müssen in den Systemeinstellungen aktiviert werden:
*   **Einstellungen** -> **Systemeinstellungen** -> **Allgemein** (oder ähnlich).
*   Haken bei **Abenteuerpunkte tracken** (`enableAPTracking`).
*   Haken bei **Geld tracken** (`enableMoneyTracking`).

![AP Tracker Einstellung](de/images/de-tracker-setting.webp)

## Funktionsweise

Sobald aktiviert, erstellt das System automatisch Journal-Einträge für jeden Spielercharakter, sobald sich dessen AP oder Geldstand ändert.

### Speicherort
Die Protokolle findest du im **Journal-Verzeichnis** (Buch-Symbol in der rechten Leiste).
*   Es werden automatisch Ordner angelegt (z.B. "Abenteuerpunkte" und "Geld").
*   Darin befindet sich für jeden Charakter ein eigenes Journal.

![AP Tracker Journal](de/images/de-tracker-ap.webp)

![Geld Tracker Journal](de/images/de-tracker-money.webp)

### Aufbau des Protokolls
*   **Seiten**: Für jeden Tag, an dem Änderungen vorgenommen wurden, wird eine neue Seite im Journal angelegt (Datum als Titel).
*   **Einträge**: Jede Zeile dokumentiert eine Änderung:
    *   **Beschreibung**: Was wurde geändert? (z.B. "Mut", "Schwert gekauft", "Belohnung").
    *   **Änderung**: Der Wert der Änderung (z.B. "+1", "-5 Silber").
    *   **Kosten**: Die Kosten in AP oder Geld.
    *   **Gesamt**: Der neue Gesamtstand nach der Änderung.

## Nutzung
*   **AP-Tracker**: Protokolliert erhaltene AP (durch den Meister vergeben) und ausgegebene AP (Steigerung von Eigenschaften, Talenten, Sonderfertigkeiten).
*   **Geld-Tracker**: Protokolliert Einnahmen und Ausgaben (Händler, Beute).

> **Hinweis**: Die Journals haben die gleichen Berechtigungen wie der Charakter. Spieler können also in der Regel ihr eigenes Protokoll einsehen.
