# Waffen- und Rüstungsbeschädigung

Das DSA5 System für Foundry VTT bietet eine optionale Regelmechanik, um die Beschädigung und Abnutzung von Ausrüstung (Waffen und Rüstungen) automatisch zu verwalten.

## Aktivierung

Diese Funktion ist standardmäßig deaktiviert. Sie kann vom Spielleiter in den Systemeinstellungen aktiviert werden:
*   **Einstellungen** -> **Systemeinstellungen** -> **Kampf** -> **Rüstungs- und Waffenbeschädigung**.

## Funktionsweise

Wenn die Regel aktiv ist, prüft das System bei jedem Kampfmanöver, ob eine Beschädigung auftreten könnte.

### Auslöser

Das System schlägt eine Überprüfung (Bruchfaktorprobe) in folgenden Situationen vor:

*   **Waffen**:
    *   Bei einem **Patzer** im Angriff oder der Parade (besonders bei schlechten QS).
    *   Wenn der Gegner extrem gut pariert (hohe QS).
*   **Rüstungen**:
    *   Wenn der erlittene **Schaden > 14 TP** ist.
    *   Wenn der Angreifer einen besonders guten Treffer landet (> 2 QS).

![Bruchfaktor Dialog](de/images/de-waffen-ruestung-damage-dialog.webp)

### Die Bruchfaktorprobe

Tritt ein solcher Fall ein, erscheint (meist im Chat oder als Dialog) die Aufforderung zur **Bruchfaktorprobe**.
*   Es wird mit **1W20** gegen den Bruchfaktor (Strukturwert) des Gegenstands gewürfelt.
*   Würfelt man **höher** als den Wert, erleidet der Gegenstand Schaden.

### Schaden & Abnutzung

Ein beschädigter Gegenstand verliert Strukturpunkte (in der Regel 25% der maximalen Struktur pro Beschädigung). Basierend auf dem verbleibenden Strukturwert berechnet das System den **Abnutzungsgrad** (Stufe 0 bis 4).

#### Auswirkungen der Abnutzung

Die Abzüge werden **automatisch** auf die Werte des Charakters angerechnet, solange der Gegenstand ausgerüstet ist.

| Abnutzungsgrad | Waffe (AT / PA) | Rüstung (RS) |
| :--- | :--- | :--- |
| **Stufe 1** (ca. 75% Struktur) | -1 / -1 | -1 |
| **Stufe 2** (ca. 50% Struktur) | -2 / -2 | -1 |
| **Stufe 3** (ca. 25% Struktur) | Unbrauchbar (Werte auf 0) | Unbrauchbar (RS 0) |
| **Stufe 4** (0% Struktur) | Zerstört | Zerstört |

![Beschädigter Gegenstand](de/images/de-waffen-ruestung-damaged-item.webp)

> **Hinweis**: Bei Rüstungen kann ab Stufe 2 auch die Belastung steigen (je nach Konfiguration).

## Reparatur

Um einen Gegenstand zu reparieren, muss ein Handwerker (oder Magie) die Struktur wiederherstellen.
*   Öffne den Charakterbogen.
*   Klicke auf den Gegenstand, um die Details zu sehen.
*   Im Reiter "Details" oder "Werte" findest du die **Struktur**.
*   Erhöhe den aktuellen Wert wieder auf das Maximum, um die Abzüge zu entfernen.

![Reparatur Prozess](de/images/de-waffen-ruestung-repair.webp)

*[x]Zuletzt bearbeitet: 14.12.2025*
