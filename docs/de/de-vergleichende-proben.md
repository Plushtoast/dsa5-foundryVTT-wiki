---
layout: default
title: de-vergleichende-proben
---
# Vergleichende Proben & Kampf

Das DSA5 System für Foundry VTT automatisiert viele Aspekte von vergleichenden Proben, insbesondere im Kampf.

## Kampf (Attacke & Parade)

Der Ablauf eines Angriffs ist hochgradig automatisiert, um das Spiel zu beschleunigen.

### 1. Zielwahl
Der Angreifer muss sein Ziel auf der Karte markieren (Targeting).
*   Klicke auf das Ziel-Icon im Token-HUD oder drücke `T` (Standard), während du mit der Maus über dem Ziel bist.

### 2. Angriff
Der Angreifer würfelt seine Attacke (Klick auf die Waffe im Charakterbogen).
*   Im Chat erscheint die Angriffskarte.
*   Das System erkennt automatisch, dass es sich um einen Angriff gegen das markierte Ziel handelt.

### 3. Reaktion (Verteidiger)
Der Spieler, der den verteidigenden Token kontrolliert, sieht nun einen Dialog oder Buttons im Chat.
*   **Parade / Ausweichen**: Der Verteidiger wählt seine Reaktion.
*   Das System würfelt die Verteidigung.

### 4. Ergebnis
Das System vergleicht die Qualitätsstufen (QS) von Angriff und Verteidigung.
*   **Erfolg**: Wenn der Angreifer mehr QS hat (oder der Verteidiger patzt/scheitert), wird der Schaden berechnet.
*   **Schaden**: Der Schaden wird (unter Berücksichtigung von Rüstungsschutz, falls konfiguriert) angezeigt.
*   **Anwenden**: Der Spielleiter (oder Besitzer) kann den Schaden per Knopfdruck (`Schaden anwenden`) auf den Ziel-Token übertragen.

![Vergleichende Probe im Kampf](de/images/de-vergleichende-proben-combat.webp)

## Talente und Zauber

Auch bei Talenten und Zaubern sind vergleichende Proben möglich.

### Zauber gegen Eigenschaften
Viele Zauber (z.B. *Horriphobus*) wirken gegen eine Eigenschaft (z.B. Seelenkraft) des Ziels.
1.  Ziel anvisieren.
2.  Zauber würfeln.
3.  Das System zeigt im Chat an, ob der Zauber die Seelenkraft/Zähigkeit des Ziels überwunden hat und berechnet die Wirkung (z.B. Status *Furcht*).

### Talent gegen Talent
(z.B. *Schleichen* gegen *Sinnesschärfe*)
Hierfür gibt es verschiedene Workflows, oft wird dies aber manuell durch den Spielleiter abgehandelt, indem er die QS der beiden Parteien vergleicht.
*   Es gibt jedoch auch die Möglichkeit, über das Kontextmenü von Chatnachrichten (Rechtsklick) Reaktionen einzufordern (falls durch Module oder Makros unterstützt).
