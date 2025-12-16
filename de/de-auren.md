# Auren

*Zuletzt bearbeitet: 2025-01*

Auren sind Effekte, die automatisch auf alle Token in der Nähe eines Charakters angewendet werden. Das DSA5-System unterstützt Auren als besondere Effekttypen.

![Aura auf Token](de/images/de-auren-token.webp)

## Was sind Auren?

Eine Aura ist ein kreisförmiger Bereich um einen Token herum, der:

- **Automatisch Effekte anwendet** auf Token, die den Bereich betreten
- **Effekte entfernt**, wenn Token den Bereich verlassen
- **Sich mit dem Token bewegt**
- **Verschiedene Zielgruppen** haben kann (Verbündete, Feinde, alle)

## Aura erstellen

### Einen Effekt zur Aura machen

1. Öffne einen bestehenden **Effekt** auf einem Charakter
2. Aktiviere die Option **Ist Aura** in den Effekt-Flags
3. Konfiguriere die Aura-Einstellungen

### Aura-Konfiguration

| Einstellung | Beschreibung |
|-------------|--------------|
| **Radius** | Reichweite der Aura in Schritt (z.B. 5) |
| **Disposition** | Auf wen die Aura wirkt |
| **Rahmenfarbe** | Farbe des Aura-Rings (optional) |
| **Rahmenstärke** | Dicke des Aura-Rings |

![Aura konfigurieren](de/images/de-auren-konfiguration.webp)

### Zielauswahl (Disposition)

| Option | Beschreibung |
|--------|--------------|
| **Alle (2)** | Wirkt auf alle Token im Bereich |
| **Gleichgesinnte** | Nur Token mit gleicher Gesinnung (freundlich/feindlich) |

## Aura-Verhalten

### Betreten der Aura

Wenn ein Token den Aura-Bereich betritt:
1. Das System prüft die Disposition
2. Falls passend, wird der Aura-Effekt automatisch auf den Token angewendet
3. Der Effekt erhält den Zusatz "(Aura)" im Namen

### Verlassen der Aura

Wenn ein Token den Bereich verlässt:
1. Der Aura-Effekt wird automatisch entfernt
2. Etwaige durch den Effekt verursachte Modifikatoren enden

### Token-Bewegung

- Die Aura bewegt sich mit dem Quell-Token
- Betroffene Token werden bei jeder Bewegung neu berechnet
- Das DPS (Dere Positioning System) wird für die Entfernungsberechnung genutzt

## Anwendungsbeispiele

### Schutzaura

Ein Zauber, der alle Verbündeten im Umkreis schützt:
- Radius: 5 Schritt
- Disposition: Gleichgesinnte (freundlich)
- Effekt: RS +2

### Furchtaura

Eine Kreatur, die Angst verbreitet:
- Radius: 10 Schritt
- Disposition: Feindlich
- Effekt: Zustand "Furcht" 1

### Segensaura

Ein Geweihter, der seine Gruppe stärkt:
- Radius: 3 Schritt
- Disposition: Alle
- Effekt: AT +1, PA +1

## Darstellung

Auren werden auf der Karte als **farbiger Ring** um den Token herum dargestellt:

- Die Farbe wird durch die **Rahmenfarbe** bestimmt
- Die Dicke durch die **Rahmenstärke**
- Der Ring ist halbtransparent, um die Karte nicht zu verdecken

![Aura Darstellung](de/images/de-auren-darstellung.webp)

## Automatische Animationen

Wenn das Modul **Automated Animations** installiert ist:
- Auren können mit animierten Effekten versehen werden
- Die Animation folgt dem Token
- Sequencer wird für die Darstellung verwendet

## Tipps

- **GM-only**: Aura-Berechnungen werden nur vom Spielleiter durchgeführt
- **Performance**: Viele aktive Auren können die Performance beeinträchtigen
- **Überlappung**: Ein Token kann von mehreren Auren gleichzeitig betroffen sein
- **Selbst ausschließen**: Der Token mit der Aura wird standardmäßig nicht vom eigenen Effekt betroffen

## Technische Hinweise

- Auren nutzen das **DPS-System** zur Entfernungsmessung
- Der Effekt wird als temporärer Effekt mit dem Flag `templateSource` angewendet
- Bei Löschung des Quell-Tokens werden alle zugehörigen Aura-Effekte entfernt

---

**Siehe auch:**
- [Effektfeld](de-effekt_feld.md)
- [Selbst erstellte Effekte](de-status-selbst-erstellte-effekte.md)
- [Abstandsmessung (DPS)](de-abstandsmessung.md)
