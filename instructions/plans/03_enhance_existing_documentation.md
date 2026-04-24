# Plan: Enhance Existing Documentation

Goal: Improve existing documentation files to be more comprehensive, add missing images, fix errors, and ensure content is up-to-date with the foundry13 implementation.

## Priority 1: Critical Issues (Missing/Broken)

### de-dies-und-das.md
**Status:** ⚠️ SEVERELY INCOMPLETE
**Current state:** Only 5 lines with a single tip about showing journal images
**Action required:**
- [ ] DECISION NEEDED: Should this file be expanded with miscellaneous tips, or removed entirely?
- [ ] If kept: Add tips about common workflows, shortcuts, quality-of-life features
- [ ] Add screenshots showing the features described

**Suggested content to add:**
- Drag & drop tips
- Right-click context menus
- Keyboard shortcuts summary
- Quick access tips

---

### de-home.md
**Status:** ⚠️ No images
**Current state:** Basic introduction to DSA5/TDE system
**Action required:**
- [ ] Add a hero image or system logo screenshot
- [ ] Add visual overview of system features
- [ ] Create quick-start navigation section with icons
- [ ] Add version information display

**Dummy image links to add:**
```markdown
![DSA5 System Übersicht](images/de-home-overview.webp)
![Schnellstart Icons](images/de-home-quickstart.webp)
```

---

### de-faq.md
**Status:** ⚠️ No images
**Current state:** Text-only FAQ
**Action required:**
- [ ] Add screenshots for visual answers where helpful
- [ ] Update with common questions from support channels
- [ ] Add troubleshooting section with error screenshots

**Dummy image links to add:**
```markdown
![Aktivierung im F-Shop](images/de-faq-fshop.webp)
![Zauberkundige Einstellung](images/de-faq-spellcaster.webp)
![Ausrüstung sichtbar machen](images/de-faq-equipment-visibility.webp)
```

---

### de-npc-kreaturen.md
**Status:** ⚠️ No images
**Current state:** Good text content about actor types and creature automation
**Action required:**
- [ ] Add screenshot of Character vs NPC vs Creature sheet comparison
- [ ] Add screenshot of creature type dropdown
- [ ] Add screenshot showing creature immunities in action
- [ ] Add loot actor configuration screenshot

**Dummy image links to add:**
```markdown
![Akteur-Typen Vergleich](images/de-npc-kreaturen-types.webp)
![Kreaturenbogen](images/de-npc-kreaturen-sheet.webp)
![Kreaturentyp Konfiguration](images/de-npc-kreaturen-type-config.webp)
![Beute-Akteur](images/de-npc-kreaturen-loot.webp)
```

---

### de-skins.md
**Status:** ⚠️ No images showing the different skins
**Current state:** Text description and CSS code example
**Action required:**
- [ ] Add comparison screenshots of immersive vs naked skins
- [ ] Add screenshot showing the setting location
- [ ] Consider before/after comparison

**Dummy image links to add:**
```markdown
![Skin Einstellung](images/de-skins-setting.webp)
![Immersive Skin](images/de-skins-immersive.webp)
![Naked Skin](images/de-skins-naked.webp)
```

---

### de-spieler-menue.md
**Status:** ⚠️ No images
**Current state:** Good text description of player menu features
**Action required:**
- [ ] Add screenshot of player menu dialog
- [ ] Add screenshots of each sub-menu (summoning, alchemy, etc.)

**Dummy image links to add:**
```markdown
![Spieler-Menü Übersicht](images/de-spieler-menue-overview.webp)
![Beschwörung](images/de-spieler-menue-summoning.webp)
![Alchimie](images/de-spieler-menue-alchemy.webp)
![Schmiedekunst](images/de-spieler-menue-smithing.webp)
![Artefakte](images/de-spieler-menue-artifacts.webp)
```

---

### de-touren.md
**Status:** ⚠️ No images
**Current state:** Text-only description of tours
**Action required:**
- [ ] Add screenshot of tour selection menu
- [ ] Add screenshot of a tour in progress

**Dummy image links to add:**
```markdown
![Tour Auswahl](images/de-touren-selection.webp)
![Tour in Aktion](images/de-touren-active.webp)
```

---

### de-tracker-ap-geld.md
**Status:** ⚠️ No images
**Current state:** Text-only description
**Action required:**
- [ ] Add screenshot of AP tracker journal
- [ ] Add screenshot of money tracker journal
- [ ] Add screenshot showing setting activation

**Dummy image links to add:**
```markdown
![AP Tracker Einstellung](images/de-tracker-setting.webp)
![AP Tracker Journal](images/de-tracker-ap.webp)
![Geld Tracker Journal](images/de-tracker-money.webp)
```

---

### de-tutorials.md
**Status:** ⚠️ No images (only external links)
**Current state:** Just links to YouTube channels
**Action required:**
- [ ] Consider adding video thumbnails or preview images
- [ ] Add short descriptions of what each tutorial series covers
- [ ] Update link status (check if videos still exist)

**Dummy image links to add:**
```markdown
![VTTom Tutorials](images/de-tutorials-vttom.webp)
![Ulisses Tutorials](images/de-tutorials-ulisses.webp)
```

---

### de-vergleichende-proben.md
**Status:** ⚠️ No images
**Current state:** Good text workflow descriptions
**Action required:**
- [ ] Add screenshot of comparative roll dialog
- [ ] Add screenshot of comparative roll result in chat
- [ ] Add screenshot showing "Vergleichen" button

**Dummy image links to add:**
```markdown
![Vergleichende Probe Dialog](images/de-vergleichende-proben-dialog.webp)
![Vergleichende Probe Chat](images/de-vergleichende-proben-chat.webp)
![Vergleichen Button](images/de-vergleichende-proben-button.webp)
```

---

### de-waehrungen.md
**Status:** ⚠️ No images, very brief
**Current state:** Only ~10 lines
**Action required:**
- [ ] Add screenshot of currency setting
- [ ] Expand with examples of alternative currencies
- [ ] Add info about coin weight settings

**Dummy image links to add:**
```markdown
![Währungs-Einstellung](images/de-waehrungen-setting.webp)
![Münzgewicht Einstellung](images/de-waehrungen-weight.webp)
```

---

### de-waffen-und-ruestungsbeschadigung.md
**Status:** ⚠️ No images
**Current state:** Good content about equipment damage rules
**Action required:**
- [ ] Add screenshot of damage dialog
- [ ] Add screenshot of item sheet showing damage status
- [ ] Add screenshot of repair process

**Dummy image links to add:**
```markdown
![Bruchfaktor Dialog](images/de-waffen-ruestung-damage-dialog.webp)
![Beschädigter Gegenstand](images/de-waffen-ruestung-damaged-item.webp)
![Reparatur Prozess](images/de-waffen-ruestung-repair.webp)
```

---

## Priority 2: External Image URLs (Need Fixing)

### de-kalender.md
**Issue:** Uses external GitHub URL for calendar_widget.webp
**Action required:**
- [ ] Download image and save to de/images/ folder
- [ ] Update markdown to use relative path
- [ ] Add more screenshots (configuration, events)

---

### de-zauber-liturgie-effekt-anwenden.md
**Issue:** Uses external GitHub user-content URLs
**Action required:**
- [ ] Download images and save locally
- [ ] Update markdown references
- [ ] Expand content with more examples

---

## Priority 3: Content Quality Improvements

### de-pflanzensuche.md
**Issue:** Alt text says "Nahrungssuche" instead of "Pflanzensuche"
**Action required:**
- [ ] Fix alt text on all images

---

### de-meister-menue.md
**Issue:** Same image referenced twice
**Action required:**
- [ ] Verify if intentional or error
- [ ] Add distinct images for different sections

---

### de-gift-und-krankheitsprobe.md
**Issue:** Contains typo "keien" (should be "keine")
**Action required:**
- [ ] Fix typo

---

### de-gestaltwandlung.md
**Issue:** Contains typo "gepürft" (should be "geprüft")
**Action required:**
- [ ] Fix typo

---

## Priority 4: Outdated Content (Last Updated 2021)

The following files were last edited in November 2021 and may contain outdated information or screenshots. They should be reviewed against the current Foundry 13 implementation:

### High-Impact Pages (Review First)
- [ ] de-charakterbogen.md - Character sheet may have changed significantly
- [ ] de-kampf.md - Combat mechanics may have new features
- [ ] de-bibliothek.md - Library interface may be updated
- [ ] de-haendler.md - Merchant system may have new features
- [ ] de-status-selbst-erstellte-effekte.md - Effect system may have new options
- [ ] de-systemeinstellungen.md - System settings list likely outdated

### Standard Pages
- [ ] de-artefakte-und-talismane.md
- [ ] de-begegnung_und_initiative.md
- [ ] de-behaelter-rucksack-oder-tasche.md
- [ ] de-dsa_5_Welt_erstellen.md
- [ ] de-effekt_feld.md
- [ ] de-eigene_inhalte_erstellen.md
- [ ] de-import-funktion.md
- [ ] de-journal-dsa_icons_auge.md
- [ ] de-Journal-Probe_anfordern.md
- [ ] de-makro-probe-anfordern.md
- [ ] de-sicht_und_licht.md
- [ ] de-vertrautentiere.md
- [ ] de-zauber-liturgie-effekt-anwenden.md

---

## Implementation Notes

### Image Naming Convention
All new images should follow the pattern: `de-[pagename]-[description].webp`

### Content Guidelines
- Keep language simple and non-technical
- Use step-by-step numbered instructions
- Include visual cues (arrows, highlights) in screenshots
- Add "Tipp:" boxes for additional helpful information
- Add "Hinweis:" boxes for important warnings

### Quality Checklist for Each Page
- [ ] All images load correctly
- [ ] All links are valid
- [ ] Content matches current implementation
- [ ] Language is clear and non-technical
- [ ] Includes practical examples
- [ ] Has last-edited date
