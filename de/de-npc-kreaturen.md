# NSCs und Kreaturen

In Foundry VTT unterscheidet das DSA5 System zwischen verschiedenen Arten von Akteuren, die jeweils eigene Charakterbögen und Funktionen haben.

## Akteur-Typen

### 1. Charakter (Held)
Der Standardbogen für Spielercharaktere.
*   Bietet die volle Detailtiefe (Eigenschaften, Talente, Sonderfertigkeiten, Ausrüstung, Magie/Götterwirken).
*   Ist auf langfristige Entwicklung (Steigerung) ausgelegt.

### 2. Nichtspielercharakter (NSC)
Für wichtige Meisterpersonen, die ähnlich detailliert wie Helden ausgearbeitet sind.
*   Nutzt technisch oft die gleiche Basis wie der Charakterbogen.
*   Kann je nach Konfiguration vereinfachte Ansichten bieten.

### 3. Kreatur (Monster & Tiere)
Ein spezialisierter Bogen für Gegner und Tiere.
*   **Kompaktes Layout**: Fokus auf kampfrelevante Werte (AT/PA, LeP, RS).
*   **Vereinfachte Fertigkeiten**: Statt einer langen Talentliste werden oft nur relevante Werte angezeigt.
*   **Beute (Loot)**: Ein spezieller Reiter für Beute, die Spieler finden können.

![Akteur-Typen Vergleich](de/images/de-npc-kreaturen-types.webp)

## Kreaturen-Typen & Automatisierung

Das System bietet eine mächtige Automatisierung für verschiedene Wesensklassen (z.B. Dämonen, Elementare, Untote).

### Funktionsweise
Wenn du im Kreaturenbogen den **Typus** (z.B. "Dämon (Niederer)") einträgst, erkennt das System dies automatisch.

![Kreaturentyp Konfiguration](de/images/de-npc-kreaturen-type-config.webp)

### Auswirkungen
*   **Immunitäten**: Das System setzt automatisch Haken für Immunitäten gegen Gifte, Krankheiten oder bestimmte Zaubermerkmale.
*   **Resistenzen**: Dämonen erhalten z.B. automatisch ihre Resistenz gegen profane Waffen (halber Schaden).
*   **Schwächen**: Empfindlichkeiten (z.B. gegen geweihte Waffen) werden berücksichtigt.

> **Tipp**: Achte auf die korrekte Schreibweise des Typus (oder nutze Drag & Drop aus dem Kompendium), damit die Automatisierung greift.

## Beute (Loot)

Kreaturen haben einen eigenen Inventar-Bereich für Beute.
*   Hier kannst du Gegenstände hinterlegen, die die Kreatur bei sich trägt.
*   Wenn die Kreatur besiegt ist, können Spieler (oder der SL) diese Gegenstände einfach looten (oft über ein Kontextmenü oder Modul-Unterstützung).
