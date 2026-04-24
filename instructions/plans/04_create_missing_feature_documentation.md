# Plan: Create New Documentation Pages

Goal: Document features that exist in the foundry13 system but are not yet covered in the German wiki.

---

## New Pages to Create

### 1. de-tastenkuerzel.md (Keyboard Shortcuts)
**Priority:** High
**Feature implemented in:** modules/hooks/keybindings.js

**Description:** Document all keyboard shortcuts available in the DSA5 system.

**Content to include:**
- [ ] M = Open GM Menu
- [ ] J = Open Journal
- [ ] L = Open Library
- [ ] B = Quick Attack Dialog
- [ ] Other system-specific shortcuts

**Dummy image links:**
```markdown
![Tastenkürzel Übersicht](images/de-tastenkuerzel-overview.webp)
```

**Implementation reference:** Check `modules/hooks/keybindings.js` for complete list.

---

### 2. de-regionenverhalten-fallen.md (Region Behaviors - Traps)
**Priority:** Medium
**Feature implemented in:** modules/system/regionbehavior_dsa.js

**Description:** Document the DSA trap region behavior system for creating traps on maps.

**Content to include:**
- [ ] What are region behaviors
- [ ] How to create trap regions
- [ ] Detection mechanics
- [ ] Disarm mechanics
- [ ] Configuration options

**Dummy image links:**
```markdown
![Falle erstellen](images/de-fallen-create.webp)
![Falle Konfiguration](images/de-fallen-config.webp)
![Falle ausgelöst](images/de-fallen-triggered.webp)
```

**Context needed:** ⚠️ Need to verify if this is a core system feature or requires a module.

---

### 3. de-auren.md (Aura System)
**Priority:** Medium
**Feature implemented in:** modules/system/aura.js

**Description:** Document the token aura system for area effects.

**Content to include:**
- [ ] What are auras
- [ ] How to configure auras on tokens/items
- [ ] Automatic effect application
- [ ] Visual aura display

**Dummy image links:**
```markdown
![Aura Konfiguration](images/de-auren-config.webp)
![Aura auf Token](images/de-auren-token.webp)
![Aura Effekt](images/de-auren-effect.webp)
```

---

### 4. de-schicksal-schips.md (Fate Points / Schips)
**Priority:** High
**Feature implemented in:** modules/actor/concerns/schips_handling.js

**Description:** Document the fate point (Schips) system for rerolls and luck.

**Content to include:**
- [ ] What are Schips
- [ ] How to spend Schips
- [ ] Reroll options
- [ ] GM group Schips
- [ ] Gaining and losing Schips

**Dummy image links:**
```markdown
![Schips Anzeige](images/de-schips-display.webp)
![Schips verwenden](images/de-schips-use.webp)
![Gruppen Schips](images/de-schips-group.webp)
```

---

### 5. de-regeneration.md (Regeneration System)
**Priority:** Medium
**Feature implemented in:** modules/actor/concerns/regeneration.js

**Description:** Document the regeneration mechanics for LeP, AsP, and KaP.

**Content to include:**
- [ ] How regeneration works
- [ ] Camp location modifiers
- [ ] Interruption effects
- [ ] Regeneration dialog

**Dummy image links:**
```markdown
![Regeneration Dialog](images/de-regeneration-dialog.webp)
![Rastort Auswahl](images/de-regeneration-location.webp)
```

---

### 6. de-on-use-effekte.md (On-Use Effect Macros)
**Priority:** Low (Advanced)
**Feature implemented in:** modules/hooks/on-use-effect.js

**Description:** Document custom macros that trigger when items are used.

**Content to include:**
- [ ] What are on-use effects
- [ ] How to configure them
- [ ] Trigger types (post roll, post opposed)
- [ ] Example macros

**Dummy image links:**
```markdown
![On-Use Konfiguration](images/de-on-use-config.webp)
![Trigger Auswahl](images/de-on-use-trigger.webp)
```

**Context needed:** ⚠️ This is an advanced feature - may need to determine if it should be documented for general users or kept as advanced topic.

---

### 7. de-abstandsmessung-dps.md (Distance Positioning System)
**Priority:** Medium
**Feature implemented in:** modules/system/derepositioningsystem.js

**Description:** Document the DPS system for range finding and distance measurement.

**Content to include:**
- [ ] What is DPS
- [ ] How distance affects combat
- [ ] Range bands (nah/mittel/weit/extrem)
- [ ] Light level detection
- [ ] Scene settings for DPS

**Dummy image links:**
```markdown
![DPS Entfernungsmessung](images/de-dps-distance.webp)
![Reichweitenbänder](images/de-dps-range-bands.webp)
```

---

### 8. de-botch-tabellen.md (Critical Failure Tables)
**Priority:** Medium
**Feature implemented in:** modules/tables/dsatables.js

**Description:** Document the optional botch/fumble tables.

**Content to include:**
- [ ] Available botch tables (Nahkampf, Fernkampf, Verteidigung, Zauber, Liturgie)
- [ ] How to enable/disable
- [ ] How effects are applied automatically

**Dummy image links:**
```markdown
![Patzer-Tabelle Einstellung](images/de-botch-setting.webp)
![Patzer Ergebnis](images/de-botch-result.webp)
```

---

### 9. de-gruppenproben.md (Group Checks)
**Priority:** High
**Feature implemented in:** modules/macros/group_check.js

**Description:** Document the group check system for collective skill tests.

**Content to include:**
- [ ] What are group checks
- [ ] How to initiate via GM menu
- [ ] How to initiate via chat command (/gc)
- [ ] Result interpretation
- [ ] Cumulative vs comparative modes

**Dummy image links:**
```markdown
![Gruppenprobe starten](images/de-gruppenprobe-start.webp)
![Gruppenprobe Ergebnis](images/de-gruppenprobe-result.webp)
```

---

### 10. de-routineproben.md (Routine Checks)
**Priority:** Medium
**Feature implemented in:** modules/dialog/dialog-skill-dsa5.js

**Description:** Document the routine check system for automatic successes.

**Content to include:**
- [ ] What are routine checks
- [ ] Prerequisites for routine checks
- [ ] How the system detects routine eligibility
- [ ] Dialog options

**Dummy image links:**
```markdown
![Routineprobe Option](images/de-routine-option.webp)
![Routineprobe Ergebnis](images/de-routine-result.webp)
```

---

### 11. de-aggregate-proben.md (Extended/Aggregated Tests)
**Priority:** Medium
**Feature implemented in:** modules/item/concerns/aggregate_test.js

**Description:** Document extended skill tests over multiple rounds.

**Content to include:**
- [ ] What are aggregated tests
- [ ] How to create them
- [ ] Tracking progress
- [ ] Interval settings

**Dummy image links:**
```markdown
![Sammelprobe erstellen](images/de-aggregate-create.webp)
![Sammelprobe Fortschritt](images/de-aggregate-progress.webp)
```

---

### 12. de-handel-tausch.md (Trading System)
**Priority:** Medium
**Feature implemented in:** modules/actor/trade.js

**Description:** Document player-to-player trading.

**Content to include:**
- [ ] How to initiate trades
- [ ] Drag & drop trading
- [ ] Trade confirmation
- [ ] GM oversight

**Dummy image links:**
```markdown
![Handel starten](images/de-handel-start.webp)
![Handel bestätigen](images/de-handel-confirm.webp)
```

---

### 13. de-schadensanwendung.md (Damage Application)
**Priority:** High
**Feature implemented in:** modules/chat/damage_handling.js

**Description:** Comprehensive guide to applying and managing damage.

**Content to include:**
- [ ] Damage buttons in chat
- [ ] Half damage, double damage options
- [ ] Armor penetration
- [ ] Automatic wound effects
- [ ] Healing

**Dummy image links:**
```markdown
![Schaden Buttons](images/de-schaden-buttons.webp)
![Schaden anwenden](images/de-schaden-apply.webp)
![Wundeffekte](images/de-schaden-wounds.webp)
```

---

### 14. de-journal-seiten.md (Journal Page Types)
**Priority:** Low
**Feature implemented in:** modules/journal/

**Description:** Document DSA-specific journal page types.

**Content to include:**
- [ ] Calendar event pages
- [ ] Dramatis Personae pages
- [ ] Book pages

**Dummy image links:**
```markdown
![Kalender Seite](images/de-journal-calendar.webp)
![Dramatis Personae](images/de-journal-dramatis.webp)
```

---

### 15. de-spezialmanöver.md (Combat Special Maneuvers)
**Priority:** Medium
**Feature implemented in:** modules/combat/

**Description:** Document combat special abilities and maneuvers.

**Content to include:**
- [ ] Available maneuvers
- [ ] How to use them in combat
- [ ] Automatic modifiers
- [ ] Requirements

**Dummy image links:**
```markdown
![Spezialmanöver Auswahl](images/de-maneuver-select.webp)
![Manöver Modifikatoren](images/de-maneuver-modifiers.webp)
```

---

### 16. de-gezielter-angriff.md (Called Shots / Hit Zones Attack)
**Priority:** Medium
**Feature implemented in:** modules/dialog/dialog-combat-dsa5.js

**Description:** Detailed guide on targeted attacks to specific body parts.

**Content to include:**
- [ ] How to select hit zones
- [ ] Zone modifiers
- [ ] Armor zone considerations

**Dummy image links:**
```markdown
![Gezielter Angriff Dialog](images/de-gezielt-dialog.webp)
![Trefferzone auswählen](images/de-gezielt-zone.webp)
```

---

### 17. de-bezahlsystem.md (Payment System)
**Priority:** Medium
**Feature implemented in:** modules/chat/payment.js

**Description:** Comprehensive guide to the payment system.

**Content to include:**
- [ ] /pay and /getPaid commands
- [ ] Chat payment buttons
- [ ] @Pay enrichers
- [ ] Currency conversion
- [ ] Payment tracking (links to tracker)

**Dummy image links:**
```markdown
![Bezahlung Chat](images/de-bezahl-chat.webp)
![Bezahlung Button](images/de-bezahl-button.webp)
```

---

## Context Needed / Unclear Features

The following features need clarification on whether they are core system features or module-dependent:

### Requires Clarification

1. **Token Magic FX Integration**
   - Used in: de-gestaltwandlung.md
   - Is this core or module-dependent?
   - Which features require it?

2. **Zuchtgrube (Breeding Pit) Generators**
   - Documented as requiring "Werkstatt des Meisters" module
   - Confirm module dependency for documentation clarity

3. **Light and Sight Macro**
   - Documented as part of core rulebook
   - Verify if this is the core DSA5 module or a separate addon

4. **Nahrungssuche/Pflanzensuche**
   - Referenced as requiring "Kompendium-I" / "Herbarium-I"
   - Confirm which modules are required

5. **Adventure Import Wizard**
   - Is this a general feature or adventure-specific?
   - What modules/products enable this?

---

## Implementation Priority Order

### Phase 1 (High Priority - Core Features)
1. de-tastenkuerzel.md
2. de-schicksal-schips.md
3. de-gruppenproben.md
4. de-schadensanwendung.md

### Phase 2 (Medium Priority - Common Features)
5. de-regeneration.md
6. de-routineproben.md
7. de-botch-tabellen.md
8. de-abstandsmessung-dps.md
9. de-handel-tausch.md
10. de-aggregate-proben.md

### Phase 3 (Lower Priority - Specialized Features)
11. de-auren.md
12. de-regionenverhalten-fallen.md
13. de-spezialmanöver.md
14. de-gezielter-angriff.md
15. de-bezahlsystem.md
16. de-journal-seiten.md
17. de-on-use-effekte.md

---

## Sidebar Update Required

After creating new pages, update `de/_sidebar.md` to include new navigation entries.
