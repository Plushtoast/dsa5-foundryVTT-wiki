---
layout: default
title: en-spezialmanöver
---
# Combat Special Abilities and Maneuvers

*Last updated: 01.2025*

The DSA5 system in Foundry VTT fully supports combat special abilities and maneuvers. These can be activated in the combat dialog and automatically affect check modifiers.

![Maneuvers in Combat Dialog](images/en-maneuvers-dialog.webp)

## Categories of Combat Special Abilities

The system distinguishes between different categories:

| Category | Description |
|----------|-------------|
| **Base Maneuver** | Basic combat techniques |
| **Special Maneuver** | Advanced combat techniques |
| **Combat Style** | Passive combat style bonuses |
| **Combat Style Extended** | Active combat style techniques |
| **Passive** | Permanently active effects |
| **General** | General combat abilities |
| **Brawling** | Unarmed combat techniques |

## Using Maneuvers in Combat

### 1. Open Combat Dialog

When you start an attack or parry, the combat dialog appears with available special abilities.

### 2. Activate Maneuvers

- **Left-click** on a maneuver: Activates it (or increases the level)
- **Right-click**: Deactivates it (or decreases the level)
- Activated maneuvers are displayed **highlighted**

### 3. Tiered Maneuvers

Some maneuvers have multiple levels (I, II, III):
- The current level is displayed as a Roman numeral
- Higher levels have stronger effects and higher penalties

![Maneuver Levels](images/en-maneuvers-levels.webp)

## Automatic Modifiers

Activated maneuvers automatically affect:
- **AT modifier** (Attack)
- **PA modifier** (Parry)
- **DP modifier** (Damage Points)
- **Range** and other values

The total modifier is displayed in the dialog and included in the check.

## Maneuver Restrictions

### System Setting: Limit Combat Special Abilities

There's an optional setting `limitCombatSpecAbs` that restricts which maneuvers can be combined:

- **Base maneuvers** are mutually exclusive
- **Special maneuvers** are mutually exclusive
- Only **one maneuver** per category can be active

When enabled, selecting a maneuver automatically deactivates an already active one from the same category.

### Opportunity Attack

When **Opportunity Attack** is enabled:
- All special abilities are automatically deactivated
- No new ones can be activated
- This simulates the limited options during a reactive attack

## Passive Combat Special Abilities

Some special abilities are **permanently active** and don't appear in the combat dialog:

- **Combat Styles** (COMBATSTYLE)
- **Passive Combat Style Extensions** (COMBATSTYLE_EXTENDED_PASSIVE)
- **Passive Abilities** (PASSIVE)

These are automatically applied as effects to the character and included in combat values.

## Common Maneuvers

| Maneuver | Effect | AT Mod | PA Mod |
|----------|--------|--------|--------|
| **Wuchtschlag I** | +2 DP | -2 | - |
| **Wuchtschlag II** | +4 DP | -4 | - |
| **Finte I** | -1 PA for defender | -2 | - |
| **Defensive Kampfweise** | +2 PA | -2 | +2 |
| **Gezielter Stich** | Bypass armor | -4 | - |

## Tips

- **Know Your Options**: Review available maneuvers before combat
- **Situational Use**: Different maneuvers suit different situations
- **Stack Wisely**: Consider the cumulative penalty when combining abilities
- **Character Build**: Some maneuvers require specific prerequisites

---

**See also:**
- [Combat](/dsa5-foundryVTT-wiki/en-kampf)
- [Character Sheet](/dsa5-foundryVTT-wiki/en-charakterbogen)
- [Hit and Armor Zones](/dsa5-foundryVTT-wiki/en-trefferzonen)
