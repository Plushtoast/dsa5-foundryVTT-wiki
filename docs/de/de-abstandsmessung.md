---
layout: default
title: de-abstandsmessung
---
# Abstandsmessung (DPS - Dere Positioning System)

*Zuletzt bearbeitet: 2025-01*

Das Dere Positioning System (DPS) ist ein automatisches Abstandsmessungssystem im DSA5-System für Foundry VTT. Es berechnet automatisch Entfernungen zwischen Token und wendet entsprechende Modifikatoren an.

![DPS aktiv](de/images/de-abstandsmessung-aktiv.webp)

## Funktionen des DPS

Das System bietet folgende automatische Berechnungen:

- **Entfernungsmodifikatoren** für Fernkampfwaffen
- **Sichtmodifikatoren** basierend auf Lichtverhältnissen
- **Reichweitenprüfungen** für Nahkampf und Zauber
- **Höhenunterschiede** bei der Entfernungsberechnung

## DPS aktivieren

Das DPS kann global oder pro Szene aktiviert werden:

### Globale Einstellung

1. Öffne die **Spieleinstellungen** (Zahnrad-Symbol)
2. Wähle **Einstellungen anpassen**
3. Suche unter **DSA5** die Option **DPS aktivieren**
4. Aktiviere die Checkbox

### Pro Szene

Das DPS kann auch für einzelne Szenen überschrieben werden:

1. Öffne die **Szeneneinstellungen** (Rechtsklick auf Szene > Konfigurieren)
2. Im DSA5-Bereich findest du die Option **DPS für diese Szene**
3. Wähle zwischen:
   - **Standard** (globale Einstellung verwenden)
   - **Aktiviert**
   - **Deaktiviert**

![DPS Einstellungen](de/images/de-abstandsmessung-einstellungen.webp)

## Entfernungsberechnung

Das DPS berechnet Entfernungen automatisch:

### Grundlagen

- Die Entfernung wird zwischen den Token-Mittelpunkten gemessen
- Das Raster der Szene (Schritt/Meter) wird berücksichtigt
- **Höhenunterschiede** (Elevation) fließen in die Berechnung ein

### Formel

Die tatsächliche Entfernung wird berechnet als:
$$\text{Gesamtentfernung} = \sqrt{\text{Bodenentfernung}^2 + \text{Höhenunterschied}^2}$$

## Fernkampf-Modifikatoren

Bei aktiviertem DPS werden Fernkampfmodifikatoren automatisch berechnet:

| Reichweite | Modifikator |
|------------|-------------|
| Nah | +2 |
| Mittel | 0 |
| Fern | -2 |
| Sehr fern | -4 |
| Außer Reichweite | Nicht möglich |

Die konkreten Reichweiten hängen von der verwendeten Fernkampfwaffe ab.

![Fernkampf mit DPS](de/images/de-abstandsmessung-fernkampf.webp)

## Lichtverhältnisse

Das DPS arbeitet mit der Sichtautomatisierung zusammen:

### Dunkelheit

Das System erkennt automatisch, wie dunkel es am Zielort ist:
- **Volle Beleuchtung**: Kein Malus
- **Dämmerlicht**: Leichter Malus
- **Dunkelheit**: Starker Malus

### Lichtquellen

Token in der Nähe von Lichtquellen erhalten bessere Sichtverhältnisse:
- Im **hellen Bereich** einer Lichtquelle: -2 Stufen Dunkelheit
- Im **gedimmten Bereich**: -1 Stufe Dunkelheit

## Zielauswahl

Mit aktiviertem DPS werden Ziele automatisch geprüft:

- **Nahkampf**: Nur Token in Nahkampfreichweite (≤2 Felder) können als Ziel gewählt werden
- **Fernkampf**: Die Entfernungsmodifikatoren werden automatisch angewandt

![Zielauswahl](de/images/de-abstandsmessung-zielauswahl.webp)

## Tipps

- **Theater of the Mind**: Deaktiviere das DPS für Szenen ohne präzises Raster
- **Große Token**: Bei großen Kreaturen wird der Mittelpunkt verwendet
- **Bewegung**: Die Modifikatoren werden bei jeder Token-Bewegung neu berechnet
- **Mehrere Ziele**: Bei mehreren Zielen wird das am weitesten entfernte für den Modifikator verwendet

---

**Siehe auch:**
- [Fernkampf](/dsa5-foundryVTT-wiki/de/de-Kampf#fernkampf)
- [Sicht und Licht](de-sicht-und-licht.md)
- [Szeneneinstellungen](de-szene.md)
