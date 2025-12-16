# Gruppenproben (Group Checks)

*Zuletzt bearbeitet: 2025-01*

Gruppenproben sind ein wichtiger Bestandteil von DSA5, bei dem mehrere Charaktere gemeinsam an einer Aufgabe arbeiten. Das DSA5 System für Foundry automatisiert die Verwaltung und Auswertung dieser Proben.

> **Hinweis:** Diese Seite beschreibt Gruppenproben, bei denen mehrere Spieler in Echtzeit gemeinsam würfeln. Für erweiterte Proben über einen längeren Zeitraum (z.B. Herstellung) siehe [Sammelproben](de-aggregate-proben.md).

## Was sind Gruppenproben?

Bei einer Gruppenprobe würfeln mehrere Charaktere nacheinander auf dasselbe Talent. Die erreichten Qualitätsstufen (QS) werden zusammengezählt, um ein gemeinsames Ziel zu erreichen.

**Typische Anwendungsfälle:**
- Gemeinsames Recherchieren in einer Bibliothek
- Gruppenweises Schleichen an Wachen vorbei
- Zusammenarbeit bei handwerklichen Projekten
- Kollektives Überzeugen eines NSCs

## Gruppenprobe starten

### Über das Meister-Menü

1. Öffne das **Meister-Menü** (Taste **M**)
2. Klicke auf **Gruppenprobe**
3. Wähle das gewünschte Talent aus der Liste
4. Stelle den Modifikator ein (falls benötigt)
5. Klicke auf **OK**

![Gruppenprobe starten](de/images/de-gruppenprobe-start.webp)

### Über den Chat-Befehl

Du kannst auch den Chat-Befehl `/gc` verwenden:

```
/gc Schleichen
/gc Sinnesschärfe -2
/gc Heilkunde Wunden +3
```

**Syntax:** `/gc [Talentname] [Modifikator]`

### Über die Token-Hotbar

Wenn du ein Talent in der Token-Hotbar hast, kannst du mit einem **Shift+Klick** eine Gruppenprobe für dieses Talent starten.

## Die Gruppenprobe-Karte

Nach dem Start erscheint eine Gruppenprobe-Karte im Chat mit folgenden Elementen:

![Gruppenprobe Ergebnis](de/images/de-gruppenprobe-result.webp)

### Elemente der Karte

| Element | Beschreibung |
|---------|--------------|
| **Talent** | Das zu würfelnde Talent mit Modifikator |
| **Gesammelte QS** | Die bisher erreichten Qualitätsstufen |
| **Würfe** | Anzahl der bereits gewürfelten Proben |
| **Offene Würfe** | Wie viele Charaktere noch würfeln können |
| **Ergebnisse** | Liste aller bisherigen Würfe mit QS |

### Probenergebnisse

Jeder Wurf wird in der Liste angezeigt:
- **Grün:** Erfolgreiche Probe mit QS
- **Rot:** Misslungene Probe (0 QS)
- **Kritisch:** Bei kritischem Erfolg wird die QS verdoppelt
- **Patzer:** Kann die gesamte Probe gefährden

## An einer Gruppenprobe teilnehmen

### Als Spieler

1. Klicke auf den **Würfel-Button** neben dem Talent in der Gruppenprobe-Karte
2. Der normale Probendialog öffnet sich
3. Würfle deine Probe
4. Das Ergebnis wird automatisch zur Gruppenprobe hinzugefügt

### Automatische Zuordnung

Das System erkennt automatisch, wenn ein Spieler das entsprechende Talent würfelt, und ordnet das Ergebnis der Gruppenprobe zu.

## Mehrere Talente kombinieren

Manchmal erfordert eine komplexe Aufgabe verschiedene Talente. Du kannst der Gruppenprobe weitere Talente hinzufügen:

1. Klicke auf das **+** Symbol in der Gruppenprobe-Karte
2. Wähle das zusätzliche Talent
3. Stelle den Modifikator ein
4. Klicke auf **OK**

Spieler können nun für jedes der aufgelisteten Talente würfeln.

## Konfigurationsoptionen

### Beim Start einer Gruppenprobe

| Option | Beschreibung | Standard |
|--------|--------------|----------|
| **Maximale Würfe** | Wie viele Proben insgesamt gewürfelt werden dürfen | 7 |
| **Ziel-QS** | Die benötigte Gesamtzahl an QS für den Erfolg | 10 |
| **Modifikator** | Erschwernis oder Erleichterung für alle Proben | 0 |

### Misserfolge und Erschwernis

Bei DSA5 erschweren misslungene Proben die nachfolgenden Würfe:
- Jede **misslungene Probe** erhöht die Erschwernis um 1
- Ein **kritischer Erfolg** setzt die angesammelten Misserfolgse zurück
- Diese Mechanik wird automatisch berechnet

## Tipps

> **Tipp:** Lasse zuerst die Charaktere mit den höchsten Talentwerten würfeln, um frühe Misserfolge zu vermeiden.

> **Tipp:** Bei einer Schleichen-Gruppenprobe sollten alle Charaktere würfeln – auch die ungeschickten!

> **Hinweis:** Gruppenproben eignen sich besonders für Situationen, in denen die Gruppe als Einheit handelt und nicht einzelne Charaktere im Fokus stehen.

## Verwandte Themen

- [Vergleichende Proben](de-vergleichende-proben) - Proben gegeneinander
- [Chat-Befehle](de-chatbefehle) - Alle verfügbaren Chat-Befehle
- [Meister-Menü](de-meister-menue) - Übersicht über SL-Werkzeuge

---

*[x]Zuletzt bearbeitet: 14.12.2025*
