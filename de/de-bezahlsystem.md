# Bezahlsystem

*Zuletzt bearbeitet: 2025-01*

Das DSA5-System bietet ein automatisiertes Bezahlsystem, mit dem Spieler und Spielleiter Geldbeträge einfach verwalten können. Zahlungen können über Chat-Befehle oder das Meister-Menü durchgeführt werden.

![Zahlung im Chat](de/images/de-bezahlsystem-chat.webp)

## Chat-Befehle für Zahlungen

### Geld bezahlen lassen

```
/pay [Betrag]
```

Erstellt eine Zahlungsaufforderung im Chat. Spieler können auf den Button klicken, um den Betrag zu bezahlen.

**Beispiele:**
- `/pay 5` - 5 Silbertaler
- `/pay 2.5` - 2 Silbertaler, 5 Heller
- `/pay 10 (Übernachtung)` - Mit Beschreibung

### Geld erhalten

```
/getPaid [Betrag]
```

Erstellt eine Nachricht, über die Spieler Geld erhalten können.

**Beispiele:**
- `/getPaid 100` - 100 Silbertaler Belohnung
- `/getPaid 50 (Quest-Belohnung)` - Mit Beschreibung

## Die Zahlungsnachricht

Nach einem Chat-Befehl erscheint eine Nachricht mit:

- **Betrag**: Der zu zahlende/erhaltende Betrag
- **Beschreibung**: Optional, in Klammern angegeben
- **Button**: "Bezahlen" oder "Erhalten"

![Zahlungsbutton](de/images/de-bezahlsystem-button.webp)

### Zahlung durchführen

1. Klicke auf den **Button** in der Chatnachricht
2. Das System prüft, ob genug Geld vorhanden ist
3. Bei Erfolg wird das Geld automatisch ab-/zugebucht
4. Eine Bestätigung erscheint im Chat
5. Der Button verschwindet für dich

### Nicht genug Geld

Wenn ein Charakter nicht genug Geld hat:
- Eine Warnung wird angezeigt
- Die Zahlung wird **nicht** durchgeführt
- Der Button bleibt aktiv

## Zahlungen über das Meister-Menü

Als Spielleiter kannst du Zahlungen über das Meister-Menü durchführen:

### Geld von Spielern abziehen

1. Öffne das **Meister-Menü** (Taste **M**)
2. Wähle die betroffenen Charaktere aus
3. Klicke auf **Bezahlen** (Münzsymbol mit Minus)
4. Gib den Betrag ein
5. Bestätige die Zahlung

### Geld an Spieler verteilen

1. Öffne das **Meister-Menü**
2. Wähle die empfangenden Charaktere aus
3. Klicke auf **Auszahlen** (Münzsymbol mit Plus)
4. Gib den Betrag ein
5. Bestätige die Auszahlung

### Einzelne vs. alle Spieler

- **Alle auswählen**: Der Betrag wird auf alle gleichmäßig aufgeteilt
- **Einzeln**: Jeder Charakter erhält/zahlt den vollen Betrag

## Automatische Münzumrechnung

Das System rechnet Beträge automatisch in verfügbare Münzen um:

| Eingabe | Entspricht |
|---------|------------|
| 1 | 1 Silbertaler |
| 0.1 | 1 Heller |
| 10 | 10 Silbertaler oder 1 Dukat |

Die genaue Umrechnung hängt von den verfügbaren Währungen im System ab.

## Geld-Tracker

Für detaillierte Finanzverwaltung siehe [AP- und Geld-Tracker](de-tracker-ap-geld.md), der alle Transaktionen protokolliert.

## Münz-Sound

Bei erfolgreichen Transaktionen wird ein passender **Münzklang** abgespielt, um die Aktion akustisch zu bestätigen.

## Tipps

- **Schnelle Zahlungen**: Nutze Chat-Befehle für wiederkehrende Beträge
- **Gruppenbelohnung**: Wähle alle Spieler aus und verteile Loot gleichmäßig
- **Beschreibungen**: Füge Beschreibungen hinzu, um Zahlungen nachvollziehbar zu machen
- **Preisprüfung**: Prüfe Preise in der Bibliothek, bevor du Beträge eingibst

---

**Siehe auch:**
- [Währungen](de-waehrungen.md)
- [Händler](de-haendler.md)
- [AP- und Geld-Tracker](de-tracker-ap-geld.md)
- [Chatbefehle](de-chatbefehle.md)
