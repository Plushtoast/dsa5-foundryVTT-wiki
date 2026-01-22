# NPCs and Creatures

*Last updated: 01.2025*

In Foundry VTT, the DSA5 system distinguishes between different types of actors, each with their own character sheets and functions.

## Actor Types

### 1. Character (Hero)
The standard sheet for player characters.
- Offers full detail depth (attributes, talents, special abilities, equipment, magic/divine works)
- Designed for long-term development (advancement)

### 2. Non-Player Character (NPC)
For important GM characters that are elaborated similarly to heroes.
- Technically often uses the same base as the character sheet
- Can offer simplified views depending on configuration

### 3. Creature (Monsters & Animals)
A specialized sheet for opponents and animals.
- **Compact layout**: Focus on combat-relevant values (AT/PA, LP, RS)
- **Simplified skills**: Instead of a long talent list, only relevant values are shown
- **Loot**: A special tab for loot that players can find

![Actor Types Comparison](images/en-npc-types.webp)

## Creature Types & Automation

The system offers powerful automation for different creature classes (e.g., Demons, Elementals, Undead).

### How It Works

When you enter the **Type** (e.g., "Demon (Lesser)") in the creature sheet, the system recognizes this automatically.

![Creature Type Configuration](images/en-npc-type-config.webp)

### Effects

| Creature Type | Automatic Effects |
|---------------|-------------------|
| **Demons** | Resistance to profane weapons (half damage) |
| **Undead** | Immunity to poison, disease |
| **Elementals** | Type-specific immunities |
| **Golems** | No fatigue, poison immunity |

- **Immunities**: The system automatically sets flags for immunities against poisons, diseases, or certain spell traits
- **Resistances**: Demons automatically receive their resistance against profane weapons (half damage)
- **Weaknesses**: Vulnerabilities (e.g., against consecrated weapons) are considered

> **Tip**: Pay attention to the correct spelling of the type (or use drag & drop from the compendium) so that automation takes effect.

## Loot

Creatures have their own inventory area for loot.
- You can store items here that the creature carries
- When the creature is defeated, players (or the GM) can easily loot these items (often via context menu or module support)

![Creature Loot Tab](images/en-npc-loot.webp)

## Creating NPCs & Creatures

### From Scratch
1. Click **Create Actor** in the actor directory
2. Select the type (Character, NPC, or Creature)
3. Fill in the required values

### From Compendium
1. Open the **Library** 
2. Search for the creature
3. Drag it to the actor directory or directly onto the scene

### Modifying Creatures

Use the **Breeding Pit** (Zuchtgrube) feature to modify existing creatures:
- Adjust size (Tiny to Giant)
- Add special abilities
- Modify stats

See [Breeding Pit](en-meister-menue-zuchtgrube) for more details.

## Tips

- **Token Settings**: Configure token settings for each actor type (disposition, vision, etc.)
- **Prototype Token**: Set up default token configurations in the actor sheet
- **Creature Sheets**: You can switch between different sheet layouts in settings

---

**See also:**
- [Character Sheet](en-charakterbogen)
- [Combat](en-kampf)
- [Library](en-bibliothek)
