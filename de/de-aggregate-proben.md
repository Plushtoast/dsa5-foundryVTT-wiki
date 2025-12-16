# Sammelproben (Aggregate Tests)

*Zuletzt bearbeitet: 2025-01*

Sammelproben sind erweiterte Proben, bei denen mehrere Versuche über einen längeren Zeitraum hinweg zusammengezählt werden, um ein Ziel zu erreichen. Das DSA5-System unterstützt Sammelproben als eigenen Gegenstandstyp.

![Sammelprobe Beispiel](de/images/de-aggregate-proben-beispiel.webp)

## Sammelproben erstellen

### Neuen Sammelproben-Gegenstand anlegen

1. Öffne den **Gegenstände**-Tab in der Seitenleiste
2. Klicke auf **Neuen Gegenstand erstellen**
3. Wähle als Typ **Sammelprobe** (Aggregated Test)
4. Vergib einen aussagekräftigen Namen

### Konfiguration

Im Gegenstandsblatt der Sammelprobe kannst du folgende Werte einstellen:

| Feld | Beschreibung |
|------|--------------|
| **Talent 1-3** | Die möglichen Talente für die Probe (z.B. Handwerk, Alchimie) |
| **Intervall** | Die Zeit zwischen den einzelnen Proben (z.B. "1 Stunde", "1 Tag") |
| **Erlaubte Versuche** | Maximale Anzahl an Proben (Standard: 7) |
| **Grundmodifikator** | Erschwerung oder Erleichterung für alle Proben |
| **Teilerfolg** | Text, der bei 6+ QS angezeigt wird |
| **Erfolg** | Text, der bei 10+ QS angezeigt wird |

![Sammelprobe konfigurieren](de/images/de-aggregate-proben-konfiguration.webp)

## Sammelproben durchführen

### Als Gruppenprobe starten

1. Öffne den Sammelproben-Gegenstand
2. Klicke auf **Als Gruppenprobe posten** (Würfel-Symbol)
3. Die Probe wird im Chat gepostet
4. Spieler können auf die Probe klicken, um teilzunehmen

### Ergebnisse sammeln

Bei jeder erfolgreichen Probe:
- Die **Qualitätsstufen (QS)** werden zur Gesamtsumme addiert
- Der Zähler für verwendete Versuche erhöht sich

Bei misslungenen Proben:
- Keine QS werden hinzugefügt
- Der Versuchszähler erhöht sich trotzdem

## Erfolgsstufen

| Gesammelte QS | Ergebnis |
|---------------|----------|
| 0-5 | Misserfolg |
| 6-9 | Teilerfolg |
| 10+ | Voller Erfolg |

Das Ergebnis wird automatisch im Chat angezeigt, sobald:
- Die Ziel-QS erreicht wurde, oder
- Alle erlaubten Versuche aufgebraucht sind

![Sammelprobe Ergebnis](de/images/de-aggregate-proben-ergebnis.webp)

## Herstellungsproben

Sammelproben können mit einem **eingebetteten Gegenstand** verknüpft werden:

1. Im Tab **Herstellung** kannst du einen Gegenstand hinterlegen
2. Bei erfolgreichem Abschluss kann der hergestellte Gegenstand direkt erstellt werden
3. Klicke auf **Gegenstand erstellen**, um das Ergebnis in den Chat zu posten

### Anwendungsbeispiele

- **Alchimie**: Trank brauen
- **Handwerk**: Gegenstand anfertigen
- **Heilkunde**: Langzeitbehandlung
- **Forschung**: Wissen sammeln

## Fortschritt verfolgen

Die Sammelprobe zeigt im Chat:

- **Gesammelte QS**: Aktueller Stand (z.B. "7 / 10")
- **Intervall**: Zeitabstand zwischen den Proben
- **Versuche**: Verwendete / Erlaubte Proben
- **Ergebnis**: Aktueller Status (Laufend, Teilerfolg, Erfolg, Misserfolg)

## Tipps

- **Talentauswahl**: Hinterlege mehrere Talente, wenn verschiedene Charaktere mit unterschiedlichen Fähigkeiten teilnehmen können
- **Intervall dokumentieren**: Notiere das Intervall als Erinnerung für die Zeitmessung
- **Modifikatoren**: Nutze den Grundmodifikator für besonders einfache oder schwierige Aufgaben
- **Journaleintrag**: Erstelle einen Journaleintrag mit der Sammelprobe für wiederkehrende Aufgaben

---

**Siehe auch:**
- [Gruppenproben](de-gruppenproben.md)
- [Alchimie](de-alchimie.md)
- [Eigene Inhalte erstellen](de-eigene_inhalte_erstellen.md)
