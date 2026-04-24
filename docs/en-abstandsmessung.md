---
layout: default
title: en-abstandsmessung
---
# Distance Measurement (DPS - Dere Positioning System)

*Last updated: 01.2025*

The Dere Positioning System (DPS) is an automatic distance measurement system in the DSA5 system for Foundry VTT. It automatically calculates distances between tokens and applies corresponding modifiers.

![DPS Active](images/en-dps-active.webp)

## DPS Functions

The system provides the following automatic calculations:

- **Distance modifiers** for ranged weapons
- **Vision modifiers** based on lighting conditions
- **Range checks** for melee and spells
- **Height differences** in distance calculation

## Activating DPS

DPS can be activated globally or per scene:

### Global Setting

1. Open **Game Settings** (gear icon)
2. Select **Configure Settings**
3. Under **DSA5**, find the option **Enable DPS**
4. Activate the checkbox

### Per Scene

DPS can also be overridden for individual scenes:

1. Open **Scene Configuration** (right-click on scene > Configure)
2. In the DSA5 section, find the option **DPS for this scene**
3. Choose between:
   - **Default** (use global setting)
   - **Enabled**
   - **Disabled**

![DPS Settings](images/en-dps-settings.webp)

## Distance Calculation

DPS calculates distances automatically:

### Basics

- Distance is measured between token centers
- The scene grid (step/meter) is taken into account
- **Height differences** (elevation) are included in the calculation

### Formula

The actual distance is calculated as:
$$\text{Total Distance} = \sqrt{\text{Ground Distance}^2 + \text{Height Difference}^2}$$

## Ranged Combat Modifiers

With DPS enabled, ranged modifiers are calculated automatically:

| Range | Modifier |
|-------|----------|
| Close | +2 |
| Medium | 0 |
| Far | -2 |
| Very Far | -4 |
| Out of Range | Not possible |

The specific ranges depend on the ranged weapon being used.

![Ranged Combat with DPS](images/en-dps-ranged.webp)

## Lighting Conditions

DPS works together with sight automation:

### Darkness

The system automatically detects how dark it is at the target location:
- **Full illumination**: No penalty
- **Dim light**: Light penalty
- **Darkness**: Severe penalty

### Light Sources

Tokens near light sources receive better visibility conditions:
- In the **bright area** of a light source: -2 darkness levels
- In the **dim area**: -1 darkness level

## Target Selection

With DPS enabled, targets are automatically checked:

- **Melee**: Only tokens in melee range (≤2 squares) can be selected as targets
- **Ranged**: Distance modifiers are automatically applied

![Target Selection](images/en-dps-targeting.webp)

## Tips

- **Terrain**: DPS doesn't account for walls or obstacles - only straight-line distance
- **Token Size**: Large tokens may affect range calculations
- **Elevation**: Use the token elevation controls for flying creatures or multi-level maps
- **Manual Override**: You can always manually adjust modifiers in the combat dialog

---

**See also:**
- [Combat](/dsa5-foundryVTT-wiki/en-kampf)
- [Sight and Light](/dsa5-foundryVTT-wiki/en-sicht_und_licht)
- [Scene Settings](/dsa5-foundryVTT-wiki/en-Meister-Menue-Szeneneinstellungen)
