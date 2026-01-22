# Kampfsonderfertigkeiten und Manöver

*Zuletzt bearbeitet: 2025-01*

Das DSA5-System in Foundry VTT unterstützt Kampfsonderfertigkeiten und Manöver vollständig. Diese können im Kampfdialog aktiviert werden und beeinflussen automatisch die Probenmodifikatoren.

![Manöver im Kampfdialog](de/images/de-spezialmanöver-dialog.webp)

## Kategorien von Kampfsonderfertigkeiten

Das System unterscheidet verschiedene Kategorien:

| Kategorie | Beschreibung |
|-----------|--------------|
| **Basismanöver** | Grundlegende Kampftechniken |
| **Spezialmanöver** | Fortgeschrittene Kampftechniken |
| **Kampfstil** | Passive Kampfstil-Boni |
| **Kampfstil Erweitert** | Aktive Kampfstil-Techniken |
| **Passiv** | Dauerhaft aktive Effekte |
| **Allgemein** | Generelle Kampffähigkeiten |
| **Raufen** | Waffenlose Kampftechniken |

## Manöver im Kampf einsetzen

### 1. Kampfdialog öffnen

Wenn du einen Angriff oder eine Parade startest, erscheint der Kampfdialog mit verfügbaren Sonderfertigkeiten.

### 2. Manöver aktivieren

- **Linksklick** auf ein Manöver: Aktiviert es (oder erhöht die Stufe)
- **Rechtsklick**: Deaktiviert es (oder verringert die Stufe)
- Aktivierte Manöver werden **hervorgehoben** angezeigt

### 3. Stufenmanöver

Manche Manöver haben mehrere Stufen (I, II, III):
- Die aktuelle Stufe wird als römische Zahl angezeigt
- Höhere Stufen haben stärkere Effekte und höhere Mali

![Manöver Stufen](de/images/de-spezialmanöver-stufen.webp)

## Automatische Modifikatoren

Aktivierte Manöver beeinflussen automatisch:
- **AT-Modifikator** (Attacke)
- **PA-Modifikator** (Parade)
- **TP-Modifikator** (Trefferpunkte)
- **Reichweite** und andere Werte

Der Gesamtmodifikator wird im Dialog angezeigt und in der Probe berücksichtigt.

## Manöver-Einschränkungen

### Systemeinstellung: Kampfsonderfertigkeiten begrenzen

Es gibt eine optionale Einstellung `limitCombatSpecAbs`, die einschränkt, welche Manöver kombiniert werden können:

- **Basismanöver** schließen sich gegenseitig aus
- **Spezialmanöver** schließen sich gegenseitig aus
- Pro Kategorie kann nur **ein Manöver** aktiv sein

Wenn aktiviert, wird beim Auswählen eines Manövers automatisch ein bereits aktives der gleichen Kategorie deaktiviert.

### Gegnerangriff (Opportunity Attack)

Wenn **Gegnerangriff** aktiviert ist:
- Alle Sonderfertigkeiten werden automatisch deaktiviert
- Keine neuen können aktiviert werden
- Dies simuliert die eingeschränkten Optionen bei einem reaktiven Angriff

## Passive Kampfsonderfertigkeiten

Einige Sonderfertigkeiten sind **dauerhaft aktiv** und erscheinen nicht im Kampfdialog:

- **Kampfstile** (COMBATSTYLE)
- **Passive Kampfstil-Erweiterungen** (COMBATSTYLE_EXTENDED_PASSIVE)
- **Passive Fähigkeiten** (PASSIVE)

Diese werden automatisch als Effekte auf den Charakter angewendet und in den Kampfwerten berücksichtigt.

## Kampfsonderfertigkeiten erwerben

### Über die Bibliothek

1. Öffne die **Bibliothek** (Tastenkürzel: **L**)
2. Navigiere zu **Sonderfertigkeiten > Kampf**
3. Ziehe die gewünschte Sonderfertigkeit auf den Charakterbogen

### Voraussetzungen

Viele Kampfsonderfertigkeiten haben Voraussetzungen:
- Mindest-Kampftechnikwert
- Andere Sonderfertigkeiten
- Bestimmte Vor-/Nachteile

Das System prüft automatisch, ob die Voraussetzungen erfüllt sind.

## Tooltips

Fahre mit der Maus über ein Manöver im Kampfdialog, um zusätzliche Informationen anzuzeigen:
- Name und Beschreibung
- Modifikatoren
- Aktuelle Stufe

## Tipps

- **Vor dem Kampf**: Prüfe, welche Manöver dein Charakter beherrscht
- **Situativ einsetzen**: Nicht jedes Manöver ist in jeder Situation sinnvoll
- **Kombinationen**: Manche Manöver lassen sich gut kombinieren
- **AP beachten**: Höherstufige Manöver kosten mehr Abenteuerpunkte

---

**Siehe auch:**
- [Kampf](de-kampf.md)
- [Trefferzonen](de-trefferzonen.md)
- [Berittener Kampf](de-berittener-kampf.md)
