# Fallen und Regionsverhalten

*Zuletzt bearbeitet: 2025-01*

Das DSA5-System nutzt das Foundry VTT Regionensystem, um Fallen auf der Karte zu platzieren. Wenn Token bestimmte Bereiche betreten, können automatisch Fallen ausgelöst werden.

![Falle auf der Karte](de/images/de-fallen-karte.webp)

## Was sind Regionen?

Regionen sind unsichtbare Bereiche auf der Karte, die bestimmte Verhaltensweisen auslösen können, wenn Token sie betreten oder verlassen. Das DSA5-System fügt den speziellen Verhaltenstyp **DSA-Falle** hinzu.

## Falle erstellen

### Methode 1: Falle aus Bibliothek ziehen

1. Öffne die **Bibliothek** (Taste **L**)
2. Suche nach einer Falle im Kompendium
3. **Ziehe die Falle** direkt auf die Karte
4. Eine Region mit dem Fallenverhalten wird automatisch erstellt

### Methode 2: Region manuell erstellen

1. Wechsle zur **Regionen-Ebene** (Symbol in der linken Werkzeugleiste)
2. Zeichne eine neue Region
3. Öffne die **Region-Einstellungen**
4. Füge ein neues **Verhalten** hinzu
5. Wähle **DSA-Falle** als Verhaltenstyp
6. Konfiguriere die Fallenparameter

![Falle konfigurieren](de/images/de-fallen-konfiguration.webp)

## Fallenparameter

### Grundeinstellungen

| Parameter | Beschreibung |
|-----------|--------------|
| **Name** | Bezeichnung der Falle |
| **Beschreibung (SL)** | Nur für den Spielleiter sichtbare Details |
| **Beschreibung** | Für Spieler sichtbare Beschreibung (nach Entdeckung) |

### Komplexität

| Stufe | Bezeichnung | Beschreibung |
|-------|-------------|--------------|
| 0 | **Primitiv** | Einfache Fallgruben, lose Steine |
| 1 | **Einfach** | Stolperdrähte, einfache Mechanismen |
| 2 | **Komplex** | Aufwendige Mechaniken, magische Fallen |

### Fallentyp

| Typ | Beschreibung |
|-----|--------------|
| Falle (Standard) | Allgemeine Falle |
| Stein | Herabfallende Steine |
| Pfeil | Schussapparate |
| Klinge | Schneidende Mechanismen |
| Quetsch | Zuschlagende Fallen |
| Rutsche | Abrutschende Böden |
| Erstickung | Gasfreisetzung |
| Magisch | Zauberbasierte Fallen |

### Auslöser

| Auslöser | Beschreibung |
|----------|--------------|
| **Druckplatte** | Beim Betreten |
| **Stolperdraht** | Beim Durchlaufen |
| **Schloss** | Beim Öffnen (Türen, Truhen) |
| **Übernatürlich** | Magische Detektion |

### Weitere Parameter

| Parameter | Beschreibung |
|-----------|--------------|
| **Schwierigkeit** | Modifikator für Sinnesschärfe/Entschärfen |
| **Tarnung** | Wie gut die Falle versteckt ist |
| **Schadensformel** | Würfelformel für Schaden (z.B. "2d6+4") |
| **Werkzeuge** | Benötigte Werkzeuge zum Entschärfen |
| **Ladungen** | Wie oft die Falle auslösen kann (0 = unbegrenzt) |

## Auslöser-Ereignisse

Du kannst wählen, bei welchen Ereignissen die Falle auslöst:

- **Token betritt Region** (Standard)
- **Token verlässt Region**
- **Rundenbeginn**
- **Rundenende**
- **Zugbeginn**
- **Zugend**

## Falle auslösen

Wenn ein Token die Region betritt:

1. Das Spiel wird **pausiert** (optional)
2. Die Kamera schwenkt zum Token
3. Eine **Fallennachricht** erscheint im Chat
4. Der **Soundeffekt** wird abgespielt (falls konfiguriert)

![Falle ausgelöst](de/images/de-fallen-ausgeloest.webp)

## Die Fallennachricht

Im Chat erscheinen Buttons für verschiedene Aktionen:

- **Sinnesschärfe**: Falle bemerken
- **Ausweichen**: Dem Schaden entgehen
- **Schaden**: Fallenschaden anwenden
- **Entschärfen**: Falle deaktivieren

## Falle entschärfen

Nach erfolgreicher Entschärfung:
- Die Falle wird als **entschärft** markiert
- Sie löst nicht mehr aus
- Der Status kann im Region-Verhalten zurückgesetzt werden

## Tipps

- **Vorschau**: Teste Fallen vor der Session
- **Sound**: Nutze passende Soundeffekte für Atmosphäre
- **Mehrfach-Ladungen**: Für wiederholt auslösende Fallen
- **Magische Fallen**: Nutze den übernatürlichen Auslöser für magische Wächter

---

**Siehe auch:**
- [Kampf](de-kampf.md)
- [Schadensanwendung](de-schadensanwendung.md)
- [Sicht und Licht](de-sicht_und_licht.md)
