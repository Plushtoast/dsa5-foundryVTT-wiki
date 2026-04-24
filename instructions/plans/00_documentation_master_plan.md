# Documentation Improvement Master Plan

## Overview

This master plan coordinates all documentation improvement efforts for the German DSA5 Foundry VTT wiki.

**Created:** December 14, 2025
**System Version:** Foundry 13

---

## Related Plans

| Plan | Description | Status |
|------|-------------|--------|
| [01_review_existing_pages.md](01_review_existing_pages.md) | Original review checklist | ✅ Completed (review done) |
| [02_create_new_pages.md](02_create_new_pages.md) | Original new pages list | ✅ Completed |
| [03_enhance_existing_documentation.md](03_enhance_existing_documentation.md) | Detailed enhancement tasks | 🆕 New |
| [04_create_missing_feature_documentation.md](04_create_missing_feature_documentation.md) | New features to document | 🆕 New |
| [05_missing_images_list.md](05_missing_images_list.md) | Images that need creation | 🆕 New |
| [06_module_dependencies_context_needed.md](06_module_dependencies_context_needed.md) | Unclear dependencies | 🆕 New |

---

## Current Documentation State Summary

### Statistics

| Metric | Count |
|--------|-------|
| Total German documentation files | 53 |
| Files with no images | 15 |
| Files with external/broken image URLs | 2 |
| Files last updated in 2021 | ~25 |
| Files that need content expansion | 12 |
| New pages to create | 17 |
| Total images needed | 73 |

### Documentation Coverage

| Feature Category | Documented | Partially | Missing |
|-----------------|------------|-----------|---------|
| Character Creation | ✅ | | |
| Character Sheet | ✅ | | |
| Combat System | ✅ | | |
| Spells/Liturgies | ✅ | | |
| Items & Equipment | ✅ | | |
| Merchants/Trading | ✅ | | |
| Status Effects | ✅ | | |
| Library/Compendiums | ✅ | | |
| GM Menu | ✅ | | |
| Player Menu | | ⚠️ No images | |
| Calendar | ✅ | | |
| Sight & Light | ✅ | | |
| Familiars | ✅ | | |
| Shapeshifting | ✅ | | |
| Mounted Combat | ✅ | | |
| Summoning | ✅ | | |
| Alchemy | ✅ | | |
| Equipment Damage | | ⚠️ No images | |
| Trefferzonen (Hit Zones) | ✅ | | |
| Schwarmregeln (Swarms) | ✅ | | |
| Prügelei (Brawling) | ✅ | | |
| Keyboard Shortcuts | | | ❌ |
| Schips/Fate Points | | | ❌ |
| Regeneration | | | ❌ |
| Group Checks | | | ❌ |
| Routine Checks | | | ❌ |
| Botch Tables | | | ❌ |
| DPS (Distance System) | | | ❌ |
| On-Use Effects | | | ❌ |
| Aura System | | | ❌ |
| Region Traps | | | ❌ |
| Combat Maneuvers | | | ❌ |

---

## Implementation Phases

### Phase 1: Critical Fixes (Week 1-2)
**Goal:** Fix broken/missing essential content

1. ~~Review existing pages~~ ✅
2. Fix external image URLs (de-kalender, de-zauber-liturgie-effekt-anwenden)
3. Fix typos (de-gift-und-krankheitsprobe, de-gestaltwandlung)
4. Expand severely incomplete pages (de-dies-und-das)
5. Add images to critical pages (de-home, de-npc-kreaturen)

### Phase 2: Image Creation (Week 2-4)
**Goal:** Add missing images to existing documentation

1. Create images for pages listed in 05_missing_images_list.md
2. Download and localize external images
3. Update markdown files with image references

### Phase 3: New Documentation (Week 4-8)
**Goal:** Create missing feature documentation

Priority order:
1. de-tastenkuerzel.md (Keyboard shortcuts)
2. de-schicksal-schips.md (Fate points)
3. de-gruppenproben.md (Group checks)
4. de-schadensanwendung.md (Damage application)
5. Remaining pages per priority in plan 04

### Phase 4: Content Updates (Week 8-12)
**Goal:** Update outdated 2021 content

1. Review each page against current implementation
2. Update screenshots with Foundry 13 UI
3. Add new features documented since 2021
4. Verify all steps still work correctly

### Phase 5: Quality Assurance (Ongoing)
**Goal:** Ensure consistent quality

1. Standardize page formats
2. Add last-edited dates to all pages
3. Update sidebar navigation
4. Cross-link related pages

---

## Questions for Maintainer

Before proceeding, please clarify:

1. **Content scope:**
   - Should documentation assume users have premium modules, or focus on free system only?
   - See [06_module_dependencies_context_needed.md](06_module_dependencies_context_needed.md) for specific questions

2. **de-dies-und-das.md:**
   - Should this page be expanded with miscellaneous tips, or removed?

3. **Priority adjustment:**
   - Are there specific features that should be prioritized differently?

4. **Module documentation:**
   - Should documentation for module-dependent features (Zuchtgrube, etc.) be kept separate or integrated?

5. **Screenshot style:**
   - Are there specific UI settings (skin, language) to use for screenshots?
   - Should annotations (arrows, highlights) be in a specific color/style?

---

## Quick Actions Available Now

These tasks can be done immediately without additional context:

### Text Fixes
- [ ] Fix typo "keien" → "keine" in de-gift-und-krankheitsprobe.md
- [ ] Fix typo "gepürft" → "geprüft" in de-gestaltwandlung.md
- [ ] Fix alt text "Nahrungssuche" → "Pflanzensuche" in de-pflanzensuche.md

### Structure Updates
- [ ] Add placeholder image references to pages missing images
- [ ] Add "last edited" dates to pages without them
- [ ] Update _sidebar.md with any missing page links

---

## Notes

- All plans use German language for user-facing content
- Technical terms should match the DSA5 rulebook terminology
- Keep documentation simple for non-technical users
- Prefer step-by-step instructions with numbered lists
- Use "Tipp:" and "Hinweis:" boxes for additional information
