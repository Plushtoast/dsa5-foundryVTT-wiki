# Regeneration

*Last updated: 01.2025*

With the regeneration system, characters can restore their Life Points (LP), Arcane Points (AE), and Karma Points (KP) after a rest period.

![Regeneration Dialog](images/en-regeneration-dialog.webp)

## Accessing Regeneration

There are several ways to perform a regeneration check:

### Via Character Sheet

1. Open your character's **Character Sheet**
2. Click on the **Regeneration icon** in the status bar (near the life points)
3. The Regeneration dialog opens

### Via the GM Menu

As a Game Master, you can trigger regeneration checks for multiple characters at once:

1. Select the desired tokens on the map
2. Open the **GM Menu** (shortcut: **M**)
3. Select **Regeneration** from the menu
4. Regeneration is performed in blind roll mode for all selected characters

![GM Menu Regeneration](images/en-regeneration-gm-menu.webp)

## The Regeneration Dialog

When you start a regeneration check, a dialog appears with the following options:

### Resting Location

Choose the quality of the resting location:

| Location | Modifier | Examples |
|----------|----------|----------|
| **Good** | +1 | Inn, own bed, comfortable camp |
| **Normal** | 0 | Simple tent, barn |
| **Poor** | -1 | Outdoors without shelter, damp cave |

### Interruption

Was the rest interrupted?

| Interruption | Modifier |
|--------------|----------|
| **None** | 0 |
| **Minor** | -1 |
| **Major** | -2 |

### Bad Environment

Activate this option if environmental conditions are particularly bad (e.g., cold, humidity). Regeneration is then **halved**.

### What Gets Regenerated?

For each energy type your character possesses, you can decide:

- **LP (Life Points)**: Available for all characters
- **AE (Arcane Energy)**: Only for spellcasters
- **KP (Karma Points)**: Only for blessed characters

Check the boxes for the energy types that should be regenerated, and adjust modifiers as needed.

![Regeneration Options](images/en-regeneration-options.webp)

## Regeneration Value

The base regeneration value for each energy type is displayed on the character sheet under **Status > Regeneration**. This value determines the maximum amount that can be restored per rest period.

### Influencing Factors

The final regeneration value can be influenced by:

- **Advantages and Disadvantages** (e.g., Fast Healing, Slow Healing)
- **Special rules** of certain species
- **Condition modifiers**
- **Equipment or effects**

## The Result

After rolling, the system displays in chat:

1. The rolled values for each energy type
2. The applied modifiers
3. The actual amount regenerated
4. The updated energy values of the character

![Regeneration Result](images/en-regeneration-result.webp)

## Automatic Modifiers

The system automatically considers all effects on the character that influence regeneration. These are displayed as situational modifiers in the dialog.

## Tips

- **Before Resting:** Make sure all wounds have been treated – open wounds can impair regeneration
- **Check Status Effects:** Conditions like "Poisoned" or "Sick" may affect regeneration
- **Group Rest:** As GM, use the multi-select feature to handle party rests efficiently
- **Automatic Tracking:** The system updates character values automatically

---

**See also:**
- [Damage Application](en-schadensanwendung)
- [GM Menu](en-meister-menue)
- [Character Sheet](en-charakterbogen)
