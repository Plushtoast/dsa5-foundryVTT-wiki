---
layout: default
title: en-fallen
---
# Traps and Region Behavior

*Last updated: 2025-01*

The DSA5 system uses Foundry VTT's region system to place traps on maps. When tokens enter specific areas, traps can be triggered automatically.

![Trap on the map](images/en-fallen-map.webp)

## What are Regions?

Regions are invisible areas on the map that can trigger specific behaviors when tokens enter or leave them. The DSA5 system adds the special behavior type **DSA Trap**.

## Creating a Trap

### Method 1: Drag Trap from Library

1. Open the **Library** (key **L**)
2. Search for a trap in the compendium
3. **Drag the trap** directly onto the map
4. A region with trap behavior is automatically created

### Method 2: Create Region Manually

1. Switch to the **Region Layer** (icon in the left toolbar)
2. Draw a new region
3. Open the **Region Settings**
4. Add a new **Behavior**
5. Select **DSA Trap** as the behavior type
6. Configure the trap parameters

![Trap configuration](images/en-fallen-config.webp)

## Trap Parameters

### Basic Settings

| Parameter | Description |
|-----------|-------------|
| **Name** | Name of the trap |
| **Description (GM)** | Details visible only to the Game Master |
| **Description** | Description visible to players (after discovery) |

### Complexity

| Level | Name | Description |
|-------|------|-------------|
| 0 | **Primitive** | Simple pit traps, loose stones |
| 1 | **Simple** | Trip wires, simple mechanisms |
| 2 | **Complex** | Elaborate mechanisms, magical traps |

### Trap Type

| Type | Description |
|------|-------------|
| Trap (Default) | General trap |
| Stone | Falling stones |
| Arrow | Projectile launchers |
| Blade | Cutting mechanisms |
| Crushing | Slamming traps |
| Slide | Collapsing floors |
| Suffocation | Gas release |
| Magical | Spell-based traps |

### Trigger

| Trigger | Description |
|---------|-------------|
| **Pressure Plate** | When stepped on |
| **Trip Wire** | When walked through |
| **Lock** | When opened (doors, chests) |
| **Supernatural** | Magical detection |

### Additional Parameters

| Parameter | Description |
|-----------|-------------|
| **Difficulty** | Modifier for Perception/Disarm checks |
| **Concealment** | How well the trap is hidden |
| **Damage Formula** | Dice formula for damage (e.g., "2d6+4") |
| **Tools** | Required tools for disarming |
| **Charges** | How many times the trap can trigger (0 = unlimited) |

## Trigger Events

You can choose which events trigger the trap:

- **Token Enters Region** (default)
- **Token Leaves Region**
- **Round Start**
- **Round End**
- **Turn Start**
- **Turn End**

## Triggering a Trap

When a token enters the region:

1. The game is **paused** (optional)
2. The camera pans to the token
3. A **trap message** appears in the chat
4. The **sound effect** plays (if configured)

![Trap triggered](images/en-fallen-triggered.webp)

## The Trap Message

Buttons appear in the chat for various actions:

- **Perception**: Notice the trap
- **Dodge**: Avoid the damage
- **Damage**: Apply trap damage
- **Disarm**: Deactivate the trap

## Disarming a Trap

After successful disarming:
- The trap is marked as **disarmed**
- It will no longer trigger
- The status can be reset in the region behavior

## Tips

- **Preview**: Test traps before the session
- **Sound**: Use appropriate sound effects for atmosphere
- **Multiple Charges**: For repeatedly triggering traps
- **Magical Traps**: Use the supernatural trigger for magical guardians

---

**See also:**
- [Combat](/dsa5-foundryVTT-wiki/en-kampf)
- [Damage Application](/dsa5-foundryVTT-wiki/en-schadensanwendung)
- [Sight and Light](/dsa5-foundryVTT-wiki/en-sicht_und_licht)
