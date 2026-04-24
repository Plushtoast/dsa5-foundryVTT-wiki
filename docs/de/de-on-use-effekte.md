---
layout: default
title: de-on-use-effekte
---
# On-Use-Effekte (Erweiterte Effektfunktionen)

*Zuletzt bearbeitet: 2025-01*

On-Use-Effekte sind fortgeschrittene Automatisierungen im DSA5-System, die bei bestimmten Ereignissen automatisch ausgeführt werden können. Sie ermöglichen komplexe Spielmechaniken durch Makro-basierte Effekte.

![On-Use-Effekt konfigurieren](de/images/de-on-use-effekte-konfiguration.webp)

## Was sind On-Use-Effekte?

On-Use-Effekte erweitern normale Effekte um:

- **Automatische Auslöser** bei bestimmten Ereignissen
- **Makro-Befehle** für komplexe Aktionen
- **Systemeffekte** wie Zustände
- **Schadensmodifikationen**
- **Beschwörungen** von Kreaturen

## Erweiterte Funktionen

Im Effekt-Editor findest du unter **Erweiterte Funktionen** verschiedene Optionen:

| Funktion | Beschreibung |
|----------|--------------|
| **Keine** | Normaler Effekt ohne Automatisierung |
| **Systemeffekt** | Wendet einen Zustand an |
| **Makro** | Führt ein Makro aus |
| **Kreatur** | Beschwört eine Kreatur |
| **Schadenstransformation** | Modifiziert Schaden |
| **Rüstungstransformation** | Modifiziert Rüstungsschutz |
| **Nach Probe** | Wird nach einer Probe ausgeführt |
| **Nach Vergleichender Probe** | Wird nach einer vergleichenden Probe ausgeführt |

## Konfiguration

### Funktion auswählen

1. Öffne einen **Effekt** auf einem Gegenstand
2. Wechsle zum Tab **Erweiterte Einstellungen**
3. Wähle die gewünschte **Erweiterte Funktion**
4. Konfiguriere die Parameter

### Makro-Code

Für Makro-basierte Funktionen kannst du JavaScript-Code eingeben:

```javascript
// Beispiel: Zustand hinzufügen
await actor.addCondition("prone", 1);

// Beispiel: Nachricht anzeigen
ChatMessage.create({
  content: "Der Zauber wirkt!"
});
```

![Makro-Editor](de/images/de-on-use-effekte-makro.webp)

## Auslöser (Trigger)

### Nach Probe (Post Roll)

Der Effekt wird ausgeführt, nachdem eine Probe gewürfelt wurde:
- Talentproben
- Zauberproben
- Liturgieproben

### Nach Vergleichender Probe (Post Opposed)

Der Effekt wird nach einer vergleichenden Probe ausgeführt:
- Kampfproben
- Widerstandsproben
- Vergleichende Talentproben

### Schadenstransformation

Modifiziert den Schaden, bevor er angewendet wird:
- Schaden erhöhen/verringern
- Schadensart ändern
- Zusätzliche Effekte bei Schaden

### Rüstungstransformation

Modifiziert die Rüstungswerte:
- RS erhöhen/verringern
- Spezielle Resistenzen
- Schutz gegen bestimmte Schadensarten

## Empfänger

Du kannst festlegen, wer die Effekt-Nachricht sieht:

| Option | Beschreibung |
|--------|--------------|
| **Alle Spieler** | Jeder sieht die Nachricht |
| **Nur Spieler** | Nur der betroffene Spieler |
| **Spieler + SL** | Spieler und Spielleiter |
| **Nur SL** | Nur der Spielleiter |

## Erfolgs-/Misserfolgs-Bedingungen

Für Gift und Krankheiten gibt es zusätzliche Optionen:

| Option | Beschreibung |
|--------|--------------|
| **Bei Erfolg** | Effekt nur bei erfolgreicher Probe |
| **Bei Misserfolg** | Effekt nur bei misslungener Probe |

## Anwendungsbeispiele

### Flammenklinge

Ein Zauber, der zusätzlichen Feuerschaden verursacht:
- Funktion: Schadenstransformation
- Makro: `options.damage += 1d6`

### Betäubender Schlag

Ein Manöver, das bei Erfolg den Gegner betäubt:
- Funktion: Nach Vergleichender Probe
- Makro: `await actor.addCondition("stunned", 1)`

### Schutzrune

Ein Artefakt, das Schaden reduziert:
- Funktion: Rüstungstransformation
- Makro: `options.damage -= 2`

## Berechtigungen

Makro-Ausführung erfordert:
- Die Einstellung **Spieler können Effekt-Makros bearbeiten** muss aktiviert sein (für Spieler)
- Oder der Benutzer muss **Makro-Skript-Berechtigung** haben

## Tipps

- **Testen**: Teste neue On-Use-Effekte in einer Testszene
- **Konsole nutzen**: Bei Fehlern werden Details in der Konsole (F12) angezeigt
- **Einfach beginnen**: Starte mit Systemeffekten, bevor du komplexe Makros schreibst
- **Vorlagen nutzen**: Das interne Makro-Kompendium enthält Beispiele

## Technische Hinweise

- On-Use-Effekte nutzen asynchrone Funktionen
- Verfügbare Variablen: `actor`, `item`, `args`, `ef`, `source`, `options`
- Fehler werden in der Browser-Konsole protokolliert

---

**Siehe auch:**
- [Effektfeld](/dsa5-foundryVTT-wiki/de/de-Effekt_Feld)
- [Selbst erstellte Effekte](/dsa5-foundryVTT-wiki/de/de-Status-Selbst-erstellte-Effekte)
- [Makros](/dsa5-foundryVTT-wiki/de/de-Makro-Probe-anfordern)
