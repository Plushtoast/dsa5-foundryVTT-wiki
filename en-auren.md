# Auras

*Last updated: 01.2025*

Auras are effects that are automatically applied to all tokens near a character. The DSA5 system supports auras as special effect types.

![Aura on Token](images/en-aura-token.webp)

## What are Auras?

An aura is a circular area around a token that:

- **Automatically applies effects** to tokens entering the area
- **Removes effects** when tokens leave the area
- **Moves with the token**
- **Can have different targets** (allies, enemies, all)

## Creating an Aura

### Making an Effect into an Aura

1. Open an existing **Effect** on a character
2. Enable the option **Is Aura** in the effect flags
3. Configure the aura settings

### Aura Configuration

| Setting | Description |
|---------|-------------|
| **Radius** | Range of the aura in paces (e.g., 5) |
| **Disposition** | Who the aura affects |
| **Border Color** | Color of the aura ring (optional) |
| **Border Width** | Thickness of the aura ring |

![Configure Aura](images/en-aura-config.webp)

### Target Selection (Disposition)

| Option | Description |
|--------|-------------|
| **All (2)** | Affects all tokens in the area |
| **Allied** | Only tokens with the same disposition (friendly/hostile) |
| **Hostile** | Only tokens with opposing disposition |

## Aura Behavior

### Entering the Aura

When a token enters the aura area:
1. The system checks the disposition
2. If matching, the aura effect is automatically applied to the token
3. The effect receives the suffix "(Aura)" in its name

### Leaving the Aura

When a token leaves the area:
1. The aura effect is automatically removed
2. Any modifiers caused by the effect end

### Token Movement

- The aura moves with the source token
- Affected tokens are recalculated with each movement
- The DPS (Dere Positioning System) is used for distance calculation

## Use Case Examples

### Protection Aura

A spell that protects all allies in the vicinity:
- Radius: 5 paces
- Disposition: Allied (friendly)
- Effect: RS +2

### Fear Aura

A creature that spreads fear:
- Radius: 10 paces
- Disposition: Hostile
- Effect: Condition "Fear" 1

### Leadership Aura

A commander inspiring nearby troops:
- Radius: 8 paces
- Disposition: Allied
- Effect: +1 to attack and morale

![Aura Display](images/en-aura-display.webp)

## Visual Representation

When auras are enabled:
- A colored ring appears around the source token
- The ring shows the aura radius
- Color can be customized per aura

## Tips

- **Combine with Conditions**: Auras work well with status conditions
- **Stack Carefully**: Multiple auras of the same type may not stack
- **Performance**: Very large auras with many tokens can impact performance
- **GM Override**: The GM can manually apply or remove aura effects

---

**See also:**
- [Effects Field](en-effekt_feld)
- [Self Created Effects](en-status-selbst-erstellte-effekte)
- [Distance Measurement (DPS)](en-abstandsmessung)
