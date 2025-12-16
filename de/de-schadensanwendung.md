# Schadensanwendung

Das DSA5 System für Foundry VTT bietet verschiedene Möglichkeiten, Schaden auf Charaktere anzuwenden. Dieser Leitfaden erklärt alle Optionen und den typischen Arbeitsablauf.

## Schaden im Kampf

### Automatischer Ablauf

Der typische Schadensablauf im Kampf:

1. **Angriff:** Der Angreifer würfelt seine Attacke
2. **Verteidigung:** Der Verteidiger würfelt Parade oder Ausweichen
3. **Ergebnis:** Das System berechnet automatisch den Schaden
4. **Anwendung:** Der Schaden wird per Klick auf den Token übertragen

![Schaden Buttons](de/images/de-schaden-buttons.webp)

### Schadensberechnung

Das System berücksichtigt automatisch:
- **Waffenschaden** (inkl. Schadenswürfel)
- **Qualitätsstufen** des Angriffs
- **Rüstungsschutz** des Verteidigers
- **Schadensmodifikatoren** (z.B. durch Vorteile/Nachteile)

## Schaden anwenden

### Über die Chat-Nachricht

Nach einem erfolgreichen Angriff erscheinen in der Chat-Nachricht Buttons zum Anwenden des Schadens:

| Button | Funktion |
|--------|----------|
| **Schaden anwenden** | Wendet den berechneten Schaden an (nach RS) |
| **SP anwenden** | Wendet die Schadenspunkte vor Rüstung an |
| **x2** | Verdoppelt den Schaden (z.B. für kritische Treffer) |

![Schaden anwenden](de/images/de-schaden-apply.webp)

### Über das Kontextmenü

Du kannst auch mit **Rechtsklick** auf die Chat-Nachricht das Kontextmenü öffnen:

- **Schaden anwenden** / **Prügelpunkte anwenden** (im Prügelei-Modus)
- **SP anwenden** (Schadenspunkte vor Rüstung)
- **Schaden x2 anwenden**
- **SP x2 anwenden**

### Voraussetzungen

Damit Schaden angewendet werden kann:
1. Der Verteidiger muss vor dem Angriff als **Ziel markiert** worden sein
2. Der Besitzer des Tokens (oder der Spielleiter) muss den Schaden bestätigen

## Schadenstypen

### Normaler Schaden (LeP)

Reduziert die **Lebensenergie (LeP)** des Charakters.
- Bei 0 LeP ist der Charakter kampfunfähig
- Negative LeP können zum Tod führen

### Prügelpunkte (PP)

Im **Prügelei-Modus** wird statt LeP ein temporärer Wert reduziert:
- Prügelpunkte werden separat verwaltet
- Nach dem Kampf werden sie zurückgesetzt
- Verhindert versehentliche tödliche Verletzungen bei Kneipenschlägereien

## Wundeffekte

Wenn ein Charakter Schaden erleidet, können automatisch Wundeffekte angewendet werden:

![Wundeffekte](de/images/de-schaden-wounds.webp)

### Wundschwellen

| Schwelle | Effekt |
|----------|--------|
| **LeP < 75%** | Keine Auswirkung |
| **LeP < 50%** | 1 Stufe Schmerz |
| **LeP < 25%** | 2 Stufen Schmerz |
| **LeP < 5** | 3 Stufen Schmerz |

> **Hinweis:** Die genauen Schwellen können je nach Systemeinstellung variieren.

## Heilung anwenden

### Über den Charakterbogen

1. Öffne den Charakterbogen
2. Klicke auf den **LeP-Wert**
3. Erhöhe den Wert direkt

### Über Zauber/Liturgien

Heilzauber wie *Balsam Salabunde* oder *Heilung* haben oft einen **Effekt anwenden**-Button, der die geheilten LeP automatisch hinzufügt.

### Über Regeneration

Siehe [Regeneration](de-regeneration) für Details zur natürlichen Heilung.

## Schaden manuell eingeben

Falls du Schaden manuell anwenden möchtest:

### Methode 1: Token auswählen
1. Wähle den Token auf der Karte
2. Drücke die Taste **Enter** oder öffne das Token-HUD
3. Gib den Schadenswert ein (negativ für Heilung)

### Methode 2: Charakterbogen
1. Öffne den Charakterbogen
2. Klicke auf den LeP-Wert
3. Ändere den Wert direkt

### Methode 3: Chat-Befehl
```
/damage 10
```
Wendet 10 Schaden auf den ausgewählten Token an.

## Einstellungen

In den **Systemeinstellungen** findest du Optionen zur Schadensanwendung:

| Einstellung | Beschreibung |
|-------------|--------------|
| **Schaden im Chat anwenden** | Zeigt Schadensbuttons in der Chat-Nachricht |
| **Schadensauswahl verstecken** | Versteckt die Schadensoptionen vor Spielern |

## Tipps

> **Tipp:** Bei Flächenzaubern kannst du mehrere Token als Ziel markieren – der Schaden wird dann auf alle angewendet.

> **Tipp:** Nutze das Kontextmenü (Rechtsklick) für erweiterte Optionen wie halben oder doppelten Schaden.

> **Hinweis:** Im Prügelei-Modus ändert sich die Beschriftung automatisch zu "Prügelpunkte anwenden".

## Verwandte Themen

- [Kampf](de-kampf) - Vollständiger Kampfablauf
- [Trefferzonen](de-trefferzonen) - Optionale Trefferzonenregeln
- [Waffen- und Rüstungsbeschädigung](de-waffen-und-ruestungsbeschadigung) - Ausrüstungsschaden

---

*[x]Zuletzt bearbeitet: 14.12.2025*
