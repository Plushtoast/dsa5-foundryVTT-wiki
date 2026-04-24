# English Documentation Synchronization Plan

**Created:** December 2025  
**Goal:** Synchronize German (de) documentation to English (en), using consistent file naming

---

## Current State Analysis

### German Documentation (de/)
- **Total files:** 69 markdown files
- **Location:** `de/` folder
- **Naming:** `de-[topic].md`
- **Images:** `de/images/`

### English Documentation (root)
- **Total files:** 27 markdown files
- **Location:** Root folder (mixed with other files)
- **Naming:** `en-[topic].md`
- **Images:** `images/` (root)

---

## Proposed Changes

### 1. File Naming Convention

**Recommendation: YES - Use matching file names**

| Language | Current | Proposed |
|----------|---------|----------|
| German | `de/de-[topic].md` | `de/de-[topic].md` (keep) |
| English | `en-[topic].md` | `en/en-[topic].md` (move to folder) |

**Benefits:**
- Cleaner repository structure
- Easy to identify missing translations
- Consistent folder organization
- Simpler maintenance

### 2. Folder Structure

**Keep current structure (GitHub Wiki requirement):**
```
wiki/
├── de/
│   ├── de-home.md
│   ├── de-faq.md
│   ├── images/
│   └── ...
├── en-home.md          (root level)
├── en-faq.md           (root level)
├── images/             (English images)
├── Home.md             (keep for compatibility)
├── _sidebar.md         (English)
└── instructions/
```

**Note:** GitHub Wiki requires English files to remain in the root folder.

---

## File Mapping Table

### Existing Files - Consistent Naming (Keep in Root)

| German File | Current English File | Proposed English File |
|-------------|---------------------|----------------------|
| de-home.md | Home.md | en-home.md (+ keep Home.md) |
| de-wichtige-konzepte.md | en-important-concepts.md | en-important-concepts.md ✓ |
| de-dsa_5_welt_erstellen.md | en-create-world.md | en-create-world.md ✓ |
| de-tutorials.md | en-tutorials.md | en-tutorials.md ✓ |
| de-faq.md | en-faq.md | en-faq.md ✓ |
| de-charakterbogen.md | en-charactersheet.md | en-charactersheet.md ✓ |
| de-charaktererstellung.md | en-character-creation.md | en-character-creation.md ✓ |
| de-vertrautentiere.md | en-familiar.md | en-familiar.md ✓ |
| de-behaelter-rucksack-oder-tasche.md | en-containers-backpacks-bags.md | en-containers.md |
| de-begegnung_und_initiative.md | en-encounter-initiative.md | en-encounter-initiative.md ✓ |
| de-kampf.md | en-combat.md | en-combat.md ✓ |
| de-sicht_und_licht.md | en-sight-light.md | en-sight-light.md ✓ |
| de-chatbefehle.md | en-chat-commands.md | en-chat-commands.md ✓ |
| de-haendler.md | en-merchant.md | en-merchant.md ✓ |
| de-gestaltwandlung.md | en-shapeshifting.md | en-shapeshifting.md ✓ |
| de-eigene_inhalte_erstellen.md | en-create-personal-entries.md | en-create-personal-entries.md ✓ |
| de-bibliothek.md | en-library.md | en-library.md ✓ |
| de-gift-und-krankheitsprobe.md | en-poison-sickness-checks.md | en-poison-sickness-checks.md ✓ |
| de-systemeinstellungen.md | en-system-settings.md | en-system-settings.md ✓ |
| de-journal-probe_anfordern.md | en-journals-request-checks.md | en-journals-request-checks.md ✓ |
| de-journal-dsa_icons_auge.md | en-journals-TDA-icons-list.md | en-journals-tda-icons.md |
| de-effekt_feld.md | en-effects-field.md | en-effects-field.md ✓ |
| de-status-selbst-erstellte-effekte.md | en-status-self-created-effects.md | en-self-created-effects.md |
| de-makro-probe-anfordern.md | en-macro-request-checks.md | en-macro-request-checks.md ✓ |
| de-module.md | en-modules.md | en-modules.md ✓ |
| N/A | en-ressources.md | en-resources.md (fix typo) |
| de-zauber-liturgie-effekt-anwenden.md | en-spells-liturgies-apply-effects.md | en-spells-liturgies-effects.md |

---

## Missing English Translations (Priority Order)

### Priority 1: Core Pages (Must Have) ✅ COMPLETED

| German File | English File to Create | Topic | Status |
|-------------|----------------------|-------|--------|
| de-touren.md | en-tours.md | Interactive Tours | ✅ Done |
| de-import-funktion.md | en-migration.md | Character Migration | ✅ Done |
| de-npc-kreaturen.md | en-npc-creatures.md | NPCs and Creatures | ✅ Done |
| de-meister-menue.md | en-gm-menu.md | GM Menu | ✅ Done |
| de-spieler-menue.md | en-player-menu.md | Player Menu | ✅ Done |
| de-token-hotbar.md | en-token-hotbar.md | Token Hotbar | ✅ Done |

### Priority 2: Game Mechanics ✅ COMPLETED

| German File | English File to Create | Topic | Status |
|-------------|----------------------|-------|--------|
| de-abstandsmessung.md | en-distance-measurement.md | DPS (Distance Positioning System) | ✅ Done |
| de-tracker-ap-geld.md | en-tracker-ap-money.md | AP and Money Tracker | ✅ Done |
| de-artefakte-und-talismane.md | en-artifacts-talismans.md | Artifacts and Talismans | ✅ Done |
| de-bezahlsystem.md | en-payment-system.md | Payment System | ✅ Done |
| de-gruppenproben.md | en-group-checks.md | Group Checks | ✅ Done |
| de-handel-tausch.md | en-trading.md | Trading System | ✅ Done |
| de-kalender.md | en-calendar.md | Aventurian Calendar | ✅ Done |
| de-regeneration.md | en-regeneration.md | Regeneration | ✅ Done |
| de-routineproben.md | en-routine-checks.md | Routine Checks | ✅ Done |
| de-aggregate-proben.md | en-aggregate-tests.md | Aggregate/Extended Tests | ✅ Done |
| de-schadensanwendung.md | en-damage-application.md | Damage Application | ✅ Done |
| de-schicksal-schips.md | en-fate-points.md | Fate Points (Schips) | ✅ Done |
| de-vergleichende-proben.md | en-comparative-checks.md | Comparative Checks | ✅ Done |
| de-waffen-und-ruestungsbeschadigung.md | en-weapon-armor-damage.md | Weapon/Armor Damage | ✅ Done |
| de-botch-tabellen.md | en-botch-tables.md | Botch Tables | ✅ Done |
| de-spezialmanöver.md | en-combat-maneuvers.md | Combat Special Maneuvers | ✅ Done |
| de-berittener-kampf.md | en-mounted-combat.md | Mounted Combat | ✅ Done |
| de-beschwoerung.md | en-summoning.md | Summoning | ✅ Done |
| de-gegenstaende-verschleiern.md | en-item-concealment.md | Item Concealment | ✅ Done |
| de-pruegelei.md | en-brawling.md | Brawling | ✅ Done |
| de-schwarmregeln.md | en-swarm-rules.md | Swarm Rules | ✅ Done |
| de-dies-und-das.md | en-tips-tricks.md | Tips and Tricks | ✅ Done |

### Priority 3: Module Mechanics ✅ COMPLETED

| German File | English File to Create | Topic | Status |
|-------------|----------------------|-------|--------|
| de-licht-und-sicht-makro.md | en-light-sight-macro.md | Light and Sight Macro | ✅ Done |
| de-meister-menue-sichtautomatisierung.md | en-sight-automation.md | Sight Automation | ✅ Done |
| de-meister-menue-szeneneinstellungen.md | en-scene-settings.md | Scene Settings | ✅ Done |
| de-meister-menue-zuchtgrube.md | en-breeding-pit.md | Breeding Pit (Creature Modifier) | ✅ Done |
| de-alchimie.md | en-alchemy.md | Alchemy | ✅ Done |
| de-nahrungssuche.md | en-foraging.md | Foraging and Hunting | ✅ Done |
| de-pflanzensuche.md | en-herbalism.md | Plant Search/Herbalism | ✅ Done |
| de-trefferzonen.md | en-hit-zones.md | Hit and Armor Zones | ✅ Done |
| de-umstaende.md | en-adverse-conditions.md | Adverse Conditions | ✅ Done |
| de-artefakte-verzaubern.md | en-enchanting.md | Artifact Enchanting | ✅ Done |

### Priority 4: Advanced Mechanics ✅ COMPLETED

| German File | English File to Create | Topic | Status |
|-------------|----------------------|-------|--------|
| de-auren.md | en-auras.md | Auras | ✅ Done |
| de-fallen.md | en-traps.md | Traps and Region Behaviors | ✅ Done |
| de-journal-seiten.md | en-journal-pages.md | Special Journal Pages | ✅ Done |
| de-on-use-effekte.md | en-on-use-effects.md | On-Use Effects | ✅ Done |
| de-skins.md | en-skins.md | UI Skins | ✅ Done |
| de-waehrungen.md | en-currencies.md | Currency System | ✅ Done |

---

## Summary Statistics (Updated January 2025)

| Category | Count |
|----------|-------|
| **German pages (total)** | 69 |
| **Existing English pages (before sync)** | 27 |
| **New English pages created** | 44 |
| **Total English pages after sync** | 71 |
| **Priority 1 (Core Pages)** | ✅ 6/6 Complete |
| **Priority 2 (Game Mechanics)** | ✅ 22/22 Complete |
| **Priority 3 (Module Mechanics)** | ✅ 10/10 Complete |
| **Priority 4 (Advanced Mechanics)** | ✅ 6/6 Complete |

**Translation Status: ✅ ALL PRIORITIES COMPLETE**

---

## English Screenshot Requirements

Since files stay in root, images go in `images/` folder (root level).

| File | Images Needed | Description |
|------|---------------|-------------|
| en-charactersheet.md | 3-5 | Character sheet tabs |
| en-character-creation.md | 4-6 | Creation wizard steps |
| en-combat.md | 3-4 | Combat dialogs |
| en-merchant.md | 2-3 | Merchant interface |
| en-encounter-initiative.md | 2-3 | Combat tracker |
| en-effects-field.md | 3-4 | Effect configuration |

### New Pages Requiring Screenshots

Each new English page will need equivalent screenshots to the German version, but with English UI.

**Estimated total new English screenshots: ~80-100**

| Category | Pages | Est. Images |
|----------|-------|-------------|
| Core Pages | 6 | 15 |
| Game Mechanics | 22 | 50 |
| Module Mechanics | 10 | 25 |
| Advanced Mechanics | 6 | 15 |
| **Total** | **44** | **~105** |

---

## Implementation Phases

### Phase 1: Rename Files for Consistency (First)
1. Rename 4 files with inconsistent names
2. Update `_sidebar.md` (root) with new paths
3. Update all internal links in affected files
4. Create en-home.md (copy of Home.md content)

### Phase 2: Priority 1 - Core Pages (Week 1)
1. Translate 6 core pages
2. Create basic screenshots
3. Update sidebar

### Phase 3: Priority 2 - Game Mechanics (Week 2-3)
1. Translate 22 game mechanics pages
2. Create screenshots as content is translated

### Phase 4: Priority 3 & 4 - Module & Advanced (Week 4-5)
1. Translate remaining 16 pages
2. Complete screenshot creation

### Phase 5: Review & Polish
1. Cross-check all translations
2. Verify all links work
3. Ensure image consistency
4. Update sidebars

---

## Detailed Image List for English Documentation

### Priority 1: Core Pages Images

#### en-tours.md
| Filename | Description |
|----------|-------------|
| en-tours-menu.webp | Tour selection menu |
| en-tours-active.webp | Active tour display |

#### en-migration.md
| Filename | Description |
|----------|-------------|
| en-migration-dialog.webp | Import dialog |
| en-migration-sources.webp | Available sources |

#### en-npc-creatures.md
| Filename | Description |
|----------|-------------|
| en-npc-types.webp | Actor type comparison |
| en-npc-config.webp | Creature configuration |

#### en-gm-menu.md
| Filename | Description |
|----------|-------------|
| en-gm-menu-overview.webp | GM menu main view |
| en-gm-menu-sections.webp | Menu sections |
| en-gm-menu-controls.webp | Control buttons |

#### en-player-menu.md
| Filename | Description |
|----------|-------------|
| en-player-menu-overview.webp | Player menu |
| en-player-menu-summoning.webp | Summoning submenu |
| en-player-menu-alchemy.webp | Alchemy submenu |

#### en-token-hotbar.md
| Filename | Description |
|----------|-------------|
| en-token-hotbar-display.webp | Token hotbar |
| en-token-hotbar-config.webp | Configuration |

### Priority 2: Game Mechanics Images

#### en-distance-measurement.md (DPS)
| Filename | Description |
|----------|-------------|
| en-dps-active.webp | DPS active display |
| en-dps-settings.webp | DPS settings |
| en-dps-ranged.webp | Ranged combat with DPS |
| en-dps-targeting.webp | Target selection |

#### en-fate-points.md (Schips)
| Filename | Description |
|----------|-------------|
| en-schips-display.webp | Schips in header |
| en-schips-use.webp | Using schips dialog |
| en-schips-group.webp | Group schips |

#### en-group-checks.md
| Filename | Description |
|----------|-------------|
| en-group-check-start.webp | Starting check |
| en-group-check-collect.webp | Collecting results |
| en-group-check-result.webp | Final result |

#### en-damage-application.md
| Filename | Description |
|----------|-------------|
| en-damage-buttons.webp | Damage buttons |
| en-damage-chat.webp | Chat message |
| en-damage-wounds.webp | Wound display |

#### en-regeneration.md
| Filename | Description |
|----------|-------------|
| en-regen-dialog.webp | Regeneration dialog |
| en-regen-gm-menu.webp | GM menu option |
| en-regen-options.webp | Options |
| en-regen-result.webp | Result |

#### en-routine-checks.md
| Filename | Description |
|----------|-------------|
| en-routine-button.webp | Routine check button |
| en-routine-dialog.webp | Dialog |
| en-routine-result.webp | Result |

#### en-botch-tables.md
| Filename | Description |
|----------|-------------|
| en-botch-button.webp | Button in chat |
| en-botch-settings.webp | Settings |
| en-botch-result.webp | Result |

#### en-aggregate-tests.md
| Filename | Description |
|----------|-------------|
| en-aggregate-example.webp | Test example |
| en-aggregate-config.webp | Configuration |
| en-aggregate-result.webp | Result |

#### en-trading.md
| Filename | Description |
|----------|-------------|
| en-trade-window.webp | Trade window |
| en-trade-overview.webp | Trade overview |

#### en-payment-system.md
| Filename | Description |
|----------|-------------|
| en-payment-chat.webp | Payment in chat |
| en-payment-gm.webp | GM menu payment |
| en-payment-dialog.webp | Payment dialog |

#### en-combat-maneuvers.md
| Filename | Description |
|----------|-------------|
| en-maneuvers-dialog.webp | Maneuvers dialog |
| en-maneuvers-levels.webp | Maneuver levels |

#### en-calendar.md
| Filename | Description |
|----------|-------------|
| en-calendar-widget.webp | Calendar widget |
| en-calendar-settings.webp | Settings |

#### en-tracker-ap-money.md
| Filename | Description |
|----------|-------------|
| en-tracker-ap.webp | AP tracker |
| en-tracker-money.webp | Money tracker |
| en-tracker-settings.webp | Settings |

*(Continue for all remaining pages...)*

---

## Total Image Summary

| Category | English Images Needed |
|----------|----------------------|
| **Core Pages (6)** | ~15 images |
| **Game Mechanics (22)** | ~55 images |
| **Module Mechanics (10)** | ~25 images |
| **Advanced Mechanics (6)** | ~15 images |
| **Existing pages update** | ~20 images |
| **Total** | **~130 images** |

---

## Notes

1. **Screenshot Language:** All English screenshots must show English UI
2. **System Setting:** Change Foundry language to English before taking screenshots
3. **Skin:** Use immersive skin for consistency with German docs
4. **Premium Modules:** Assume premium modules are installed
5. **File Naming:** Use `en-[topic]-[description].webp` pattern

---

## Next Steps

1. ✅ Create this plan
2. ⬜ Create `en/` folder structure
3. ⬜ Move and rename existing English files
4. ⬜ Update sidebar and internal links
5. ⬜ Begin translation of Priority 1 pages
6. ⬜ Take screenshots as pages are created
