---
layout: default
title: de-botch-tabellen
---
# Patzer-Tabellen (Botch Tables)

*Zuletzt bearbeitet: 2025-01*

Das DSA5-System in Foundry VTT unterstützt automatische Patzer-Tabellen für Kampfproben. Wenn ein kritischer Fehlschlag (Patzer) gewürfelt wird, kann das System automatisch aus passenden Tabellen würfeln und die Auswirkungen anzeigen.

![Patzer-Button im Chat](de/images/de-botch-tabellen-button.webp)

## Verfügbare Patzer-Tabellen

Das System enthält folgende Patzer-Tabellen:

| Tabelle | Typ | Aktivierbar |
|---------|-----|-------------|
| **Verteidigung** (Defense) | Parade-Patzer | Ja |
| **Nahkampf** (Melee) | Angriffs-Patzer | Ja |
| **Fernkampf** (Range) | Fernkampf-Patzer | Ja |
| **Zaubersprüche** (Spell) | Magische Patzer | Fest aktiv |
| **Liturgien** (Liturgy) | Karmal-Patzer | Fest aktiv |

## Tabellen aktivieren

Die Kampf-Patzertabellen können in den Systemeinstellungen aktiviert oder deaktiviert werden:

1. Öffne die **Spieleinstellungen** (Zahnrad-Symbol)
2. Wähle **Einstellungen anpassen**
3. Unter dem Reiter **DSA5** findest du die Optionen:
   - **Verteidigungs-Patzer aktivieren**
   - **Nahkampf-Patzer aktivieren**
   - **Fernkampf-Patzer aktivieren**

Wenn aktiviert, erscheint bei einem Patzer automatisch ein Button im Chat, um auf der entsprechenden Tabelle zu würfeln.

![Patzer Einstellungen](de/images/de-botch-tabellen-einstellungen.webp)

## Patzer würfeln

### Automatisch

Wenn eine Patzertabelle aktiviert ist:

1. Ein Patzer wird gewürfelt (z.B. Doppel-20)
2. Im Chat-Ergebnis erscheint ein **klickbarer Link** mit der Tabellenbezeichnung
3. Klicke auf den Link, um auf der Tabelle zu würfeln
4. Das Ergebnis wird im Chat angezeigt

### Standard-Patzer

Wenn keine Tabelle aktiviert ist oder der Spielleiter die Tabellen nicht verwendet:
- Bei Kampf-Patzern: **1W6+2 Selbstschaden** als Standardergebnis

## Das Patzerergebnis

Nach dem Würfeln auf einer Patzertabelle wird angezeigt:

1. **Tabellenname**: Aus welcher Tabelle gewürfelt wurde
2. **Würfelergebnis**: Die gewürfelte Zahl
3. **Auswirkung**: Die Beschreibung aus der Tabelle
4. **Effekt-Button**: Falls die Auswirkung einen Spieleffekt hat

![Patzer Ergebnis](de/images/de-botch-tabellen-ergebnis.webp)

### Effekte anwenden

Manche Patzerergebnisse beinhalten automatisch anwendbare Effekte:

- **Zustände** (z.B. "Liegend", "Betäubt")
- **Waffenschaden** oder -verlust
- **Zeitstrafen** für bestimmte Aktionen

Wenn ein Effekt verfügbar ist, erscheint ein Button, mit dem er auf den betroffenen Charakter angewendet werden kann.

## Waffenlose Anpassung

Bei waffenlosen Kämpfern (Raufen) werden die Tabellenergebnisse angepasst:
- Ergebnisse unter 7 werden automatisch um 5 erhöht
- Dies vermeidet Ergebnisse wie "Waffe fallen lassen" oder "Waffe beschädigt"

## Tipps für Spielleiter

- **Tabellen anpassen**: Die Rollentabellen können im Kompendium bearbeitet werden, um eigene Patzerergebnisse zu erstellen
- **Schnelles Spiel**: Aktiviere die Tabellen für automatisches Würfeln bei Patzern
- **Narratives Spiel**: Deaktiviere die Tabellen und beschreibe Patzer selbst

## Kritische Treffer

Ähnlich wie bei Patzern können auch kritische Treffer (Doppel-1) besondere Effekte haben:

- **Halbierte Verteidigung**: Der Gegner verteidigt nur mit halben Werten
- **Doppelter Schaden**: Bei bestätigtem Krit wird der Schaden verdoppelt

---

**Siehe auch:**
- [Kampf](/dsa5-foundryVTT-wiki/de/de-Kampf)
- [Waffenbeschädigung](/dsa5-foundryVTT-wiki/de/de-waffen-und-ruestungsbeschadigung)
- [Zustände](de-status-selbst-erstellen.md)
