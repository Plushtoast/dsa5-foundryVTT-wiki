# Spezielle Journal-Seiten

*Zuletzt bearbeitet: 2025-01*

Das DSA5-System erweitert Foundry VTT um spezielle Journal-Seitentypen, die für Rollenspiel-Kampagnen besonders nützlich sind.

## Verfügbare Seitentypen

| Typ | Beschreibung |
|-----|--------------|
| **Dramatis Personae** | NSC-Übersicht mit Beziehungen |
| **Kalendereinträge** | Ereignisse mit Datumsverknüpfung |
| **Standard-Seiten** | Normale Foundry-Journalseiten |

## Dramatis Personae

Die Dramatis-Personae-Seite dient als NSC-Verzeichnis für deine Kampagne.

![Dramatis Personae](de/images/de-journal-seiten-dramatis.webp)

### Seite erstellen

1. Erstelle ein neues **Journal**
2. Füge eine neue **Seite** hinzu
3. Wähle als Typ **Dramatis Personae**
4. Vergib einen Namen (z.B. "Wichtige Personen")

### Personen hinzufügen

1. Öffne die Seite im **Bearbeitungsmodus**
2. **Ziehe einen Actor** (NSC, Kreatur, etc.) auf die Personenliste
3. Die Person erscheint mit Bild und Name

### Personendetails

Für jede Person kannst du bearbeiten:

| Feld | Beschreibung |
|------|--------------|
| **Name** | Anzeigename (kann vom Actor abweichen) |
| **Bild** | Portrait oder Token-Bild |
| **Beschreibung** | Freitext für Notizen |
| **Sichtbar** | Ob Spieler die Person sehen können |
| **Beziehungen** | Verbindungen zu anderen Personen |

### Im Kalender anzeigen

- Aktiviere **Im Kalender anzeigen**
- Geburtstage und wichtige Daten erscheinen im aventurischen Kalender

### Aktionen

- **Actor bearbeiten**: Öffnet den Actor-Bogen
- **Beschreibung kopieren**: Übernimmt Text vom Actor
- **Token kopieren**: Übernimmt Token-Bild
- **Avatar kopieren**: Übernimmt Portrait-Bild

## Kalendereinträge

Kalendereinträge verknüpfen Ereignisse mit dem aventurischen Kalender.

![Kalendereinträge](de/images/de-journal-seiten-kalender.webp)

### Eintrag erstellen

1. Erstelle ein Journal mit einer **Kalendereinträge**-Seite
2. Öffne die Seite im **Bearbeitungsmodus**
3. Klicke auf **Neuer Eintrag**
4. Fülle die Details aus

### Eintragsfelder

| Feld | Beschreibung |
|------|--------------|
| **Titel** | Name des Ereignisses |
| **Von/Bis** | Zeitraum (Datum im aventurischen Kalender) |
| **Beschreibung** | Details zum Ereignis |
| **Sichtbar** | Für Spieler sichtbar |

### Mit Kalender verknüpfen

1. Aktiviere **Im Kalender anzeigen**
2. Das Ereignis erscheint im Kalender-Widget
3. Klick auf das Ereignis öffnet die Details

## Tipps

- **NSC-Datenbank**: Nutze Dramatis Personae als zentrale Anlaufstelle für wichtige NSCs
- **Kampagnenchronik**: Nutze Kalendereinträge, um wichtige Ereignisse zu dokumentieren
- **Spieler-Sichtbarkeit**: Schalte Einträge nach und nach für Spieler frei
- **Schnellzugriff**: Pinne wichtige Journals in der Seitenleiste

## Berechtigungen

- **Spielleiter**: Voller Zugriff auf alle Einträge
- **Spieler**: Sehen nur Einträge mit "Sichtbar"-Häkchen
- **Bearbeiten**: Nur Spielleiter können Einträge bearbeiten

---

**Siehe auch:**
- [Kalender](de-kalender.md)
- [Journal Enricher](de-journal-probe_anfordern.md)
- [Journal-Styles](de-journal-dsa_icons_auge.md)
