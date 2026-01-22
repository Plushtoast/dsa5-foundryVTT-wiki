# Routineproben

*Zuletzt bearbeitet: 2025-01*

Routineproben ermöglichen es erfahrenen Charakteren, alltägliche Aufgaben automatisch zu bestehen, ohne würfeln zu müssen. Das DSA5-System in Foundry VTT unterstützt Routineproben vollständig.

![Routineprobe Button](de/images/de-routineproben-button.webp)

## Was sind Routineproben?

Eine Routineprobe ist eine automatisch bestandene Talentprobe. Sie kann verwendet werden, wenn:

1. Der Charakter genug Erfahrung im Talent hat
2. Die Aufgabe nicht zu schwierig ist
3. Keine erschwerenden Umstände vorliegen

## Voraussetzungen

Damit der Routineprobe-Button aktiviert wird, müssen folgende Bedingungen erfüllt sein:

### 1. Eigenschaftswerte

Alle drei zur Probe gehörenden **Eigenschaften** müssen einen Wert von mindestens **13** haben (inklusive aller aktuellen Modifikatoren).

### 2. Fertigkeitswert

Der **Fertigkeitswert (FW)** muss hoch genug sein, abhängig von der Schwierigkeit der Probe:

| Schwierigkeit | Benötigter FW |
|---------------|---------------|
| Sehr leicht (+6) | 1 |
| Leicht (+3) | 1 |
| Normal (0) | 10 |
| Schwer (-3) | 19 |
| Sehr schwer (-6) | 19+ |

Die genaue Formel lautet: **FW ≥ 10 - (Modifikator × 3)**

## So funktioniert es

1. **Talentprobe starten**: Klicke auf ein Talent im Charakterbogen
2. **Dialog prüfen**: Im Probendialog wird der "Routineprobe"-Button angezeigt
3. **Button-Status**: 
   - Ist der Button **grau/deaktiviert**, sind die Voraussetzungen nicht erfüllt
   - Ist der Button **aktiv**, wird zusätzlich der erreichte FW angezeigt, z.B. "Routineprobe (FW 8)"
4. **Routineprobe ausführen**: Klicke auf den aktivierten Button

![Routineprobe Dialog](de/images/de-routineproben-dialog.webp)

## Das Ergebnis

Bei einer Routineprobe:

- Die Probe gilt automatisch als **bestanden**
- Der Qualitätsstufe (QS) beträgt immer **1**
- Es wird nicht gewürfelt
- Der verwendete **Fertigkeitswert wird halbiert** (gerundet)

Das Ergebnis wird im Chat angezeigt, mit dem Hinweis, dass es sich um eine Routineprobe handelte.

![Routineprobe Ergebnis](de/images/de-routineproben-ergebnis.webp)

## Situative Modifikatoren

Das System berücksichtigt bei der Berechnung:

- Aktuelle Zustandsmodifikatoren auf den Eigenschaften
- Fertigkeitswert-Modifikatoren aus Effekten
- Die gewählte Schwierigkeitsstufe
- Alle aktiven situativen Modifikatoren

Wenn durch negative Modifikatoren die Voraussetzungen nicht mehr erfüllt sind, wird der Routineprobe-Button automatisch deaktiviert.

## Wann keine Routineprobe möglich ist

Routineproben sind **nicht möglich** bei:

- **Kampfproben** (Attacke, Parade, Fernkampf)
- **Zauberproben** und **Liturgieproben**
- Proben unter **Zeitdruck** (nach Ermessen des SL)
- Wenn der Charakter **verletzt** oder **gestört** ist
- **Vergleichenden Proben**
- **Sammelproben** (Gruppenproben)

## Tipps

- **Vor dem Würfeln prüfen**: Schau immer, ob der Routineprobe-Button verfügbar ist, bevor du würfelst
- **Modifikatoren beachten**: Situative Mali können die Routineprobe deaktivieren
- **QS bedenken**: Routineproben ergeben immer nur QS 1 – wenn du mehr QS brauchst, würfle normal

---

**Siehe auch:**
- [Proben](de-proben.md)
- [Vergleichende Proben](de-vergleichende-proben.md)
- [Gruppenproben](de-gruppenproben.md)
