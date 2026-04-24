# Module Dependencies & Context Needed

Goal: Document features where it's unclear if they are part of the core DSA5 system or require additional modules. These need clarification before documentation can be completed accurately.

## ✅ Decision Made: Assume Premium Modules

**As of 14.12.2025:** Documentation should assume users have access to premium modules from the F-Shop. This simplifies documentation and covers the full feature set.

---

## Features Requiring Clarification

### 1. Zuchtgrube (Breeding Pit / Generators)

**Documentation:** de-meister-menue-zuchtgrube.md

**Current statement:** Requires "Werkstatt des Meisters" module

**Questions:**
- [ ] Is this feature part of the core DSA5 system?
- [ ] Is "Werkstatt des Meisters" a premium module from F-Shop?
- [ ] Which generators are available without the module?
- [ ] Should documentation specify exact module name and where to get it?

**Impact on documentation:**
- May need module installation instructions
- May need prerequisite section
- Unclear what to document as "core" feature

---

### 2. Light and Sight Macro

**Documentation:** de-licht-und-sicht-makro.md

**Current statement:** "Wird ein Makro benötigt, welches über das Grundregelwerk zu finden ist"

**Questions:**
- [ ] Is this macro part of the core DSA5 system?
- [ ] Is it part of the "Grundregelwerk" premium module?
- [ ] What happens if user doesn't have the module?

**Impact on documentation:**
- Need to clarify if this is premium content
- May need alternative instructions for users without the module

---

### 3. Nahrungssuche (Food Search)

**Documentation:** de-nahrungssuche.md

**Current statement:** References "Kompendium-I" module

**Questions:**
- [ ] Is the food search feature core or module-dependent?
- [ ] What is the exact module name (Kompendium I, Kompendium-I, etc.)?
- [ ] Is this a free or premium module?

**Impact on documentation:**
- Need module prerequisite section
- Need to specify module acquisition

---

### 4. Pflanzensuche (Herb/Plant Search)

**Documentation:** de-pflanzensuche.md

**Current statement:** References "Herbarium-I" module

**Questions:**
- [ ] Is the plant search feature core or module-dependent?
- [ ] What is the exact module name?
- [ ] Is this a free or premium module?

**Impact on documentation:**
- Need module prerequisite section
- Need to specify module acquisition

---

### 5. Token Magic FX Integration

**Documentation:** de-gestaltwandlung.md

**Current statement:** "Ist das Modul 'Token Magic FX' installiert..."

**Questions:**
- [ ] Is this a recommended third-party module?
- [ ] What features specifically require it?
- [ ] Is it required or just enhances visuals?

**Impact on documentation:**
- Need to clarify as optional enhancement
- Should link to module documentation

---

### 6. Artefaktverzaubern (Artifact Enchanting)

**Documentation:** de-artefakte-verzaubern.md

**Current statement:** References "core rulebook" for assisted creation

**Questions:**
- [ ] Is the enchanting assistant part of core or premium module?
- [ ] What can users do without the assistant?
- [ ] How does manual enchanting work?

**Impact on documentation:**
- Need to separate core vs. module features
- Provide manual alternatives

---

### 7. Adventure Import Wizard

**Implementation:** modules/wizards/adventure_wizard.js

**Not documented in German wiki**

**Questions:**
- [ ] Is this a general feature or adventure-specific?
- [ ] Which modules/products enable this?
- [ ] What can be imported?

**Impact on documentation:**
- Need to understand scope before documenting
- May be module-dependent

---

### 8. Optolith Import

**Documentation:** de-faq.md, de-charaktererstellung.md

**Questions:**
- [ ] Is Optolith import still supported in Foundry 13?
- [ ] Is the import module (Optolith-To-Foundry) still maintained?
- [ ] Any changes in the import process?

**Impact on documentation:**
- May need to update import instructions
- May need to note deprecation if applicable

---

## Module Categories

### Premium Modules (F-Shop)
These are paid modules from the official Ulisses F-Shop:

1. **Grundregelwerk (Core Rulebook)**
   - Contains: Base rules, macros, content
   - Used in: Light/Sight macro, various features

2. **Werkstatt des Meisters**
   - Contains: Zuchtgrube generators
   - Used in: NPC generation, tavern generation

3. **Kompendium I/II**
   - Contains: Nahrungssuche, additional content
   - Used in: Food search, survival rules

4. **Herbarium I**
   - Contains: Pflanzensuche, herbs
   - Used in: Plant search, alchemy

5. **Aventurisches Götterwirken (AG)**
6. **Aventurische Magie (AM)**
   - Used in: Gestaltwandlung, advanced magic

### Third-Party Modules (Free)
Community modules from Foundry VTT package browser:

1. **Token Magic FX**
   - Visual effects for tokens
   - Enhances: Shapeshifting visuals

2. **Dice So Nice**
   - 3D dice animations
   - Enhances: Roll visualization

3. **Simple Calendar / SmallTime**
   - Calendar functionality
   - Enhances: Time tracking

4. **Tokenizer**
   - Token creation
   - Enhances: Character images

---

## Recommended Documentation Approach

### For Module-Dependent Features

Each documentation page should include:

```markdown
## Voraussetzungen

Diese Funktion erfordert folgendes Modul:
- **[Modulname]** (erhältlich im [F-Shop/Foundry Package Browser])

Ohne dieses Modul ist die Funktion nicht verfügbar.
```

### For Enhanced Features

When a module enhances but isn't required:

```markdown
## Optionale Verbesserungen

Mit dem Modul **[Modulname]** können zusätzliche Effekte aktiviert werden:
- [Feature 1]
- [Feature 2]

Die Grundfunktion ist auch ohne dieses Modul verfügbar.
```

---

## Questions for System Maintainer

Please clarify the following to complete accurate documentation:

1. **Which features are 100% core DSA5 system (no modules required)?**

2. **Which premium modules are considered "essential" vs "optional"?**

3. **Should documentation assume users have:**
   - [ ] Only free system
   - [ ] Core rulebook
   - [ ] Full premium package

4. **Are there alternative workflows for users without premium modules?**

5. **Is there an official list of supported/recommended modules?**

---

## Action Items

- [ ] Get confirmation on each unclear feature
- [ ] Update affected documentation with prerequisite sections
- [ ] Create module dependency table for reference
- [ ] Add module installation guide if needed
