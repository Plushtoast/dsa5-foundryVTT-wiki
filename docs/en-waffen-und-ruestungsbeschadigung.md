---
layout: default
title: en-waffen-und-ruestungsbeschadigung
---
# Weapon and Armor Damage

The DSA5 system for Foundry VTT offers an optional rule mechanic to automatically manage the damage and wear of equipment (weapons and armor).

## Activation

This feature is disabled by default. It can be enabled by the Game Master in the system settings:
- **Settings** -> **System Settings** -> **Combat** -> **Armor and Weapon Damage**.

## How It Works

When the rule is active, the system checks during each combat maneuver whether damage could occur.

### Triggers

The system suggests a check (breakage factor check) in the following situations:

- **Weapons**:
  - On a **botch** during attack or parry (especially with poor QL).
  - When the opponent parries extremely well (high QL).
- **Armor**:
  - When the received **damage exceeds 14 DP**.
  - When the attacker lands a particularly good hit (> 2 QL).

![Breakage factor dialog](images/en-waffen-und-ruestungsbeschadigung-dialog.webp)

### The Breakage Factor Check

When such a case occurs, a prompt for the **breakage factor check** appears (usually in chat or as a dialog).
- Roll **1D20** against the breakage factor (structure value) of the item.
- If you roll **higher** than the value, the item suffers damage.

### Damage & Wear

A damaged item loses structure points (typically 25% of maximum structure per damage instance). Based on the remaining structure value, the system calculates the **wear level** (stage 0 to 4).

#### Effects of Wear

The penalties are **automatically** applied to the character's values as long as the item is equipped.

| Wear Level | Weapon (AT / PA) | Armor (PRO) |
|:-----------|:-----------------|:------------|
| **Stage 1** (approx. 75% structure) | -1 / -1 | -1 |
| **Stage 2** (approx. 50% structure) | -2 / -2 | -1 |
| **Stage 3** (approx. 25% structure) | Unusable (values set to 0) | Unusable (PRO 0) |
| **Stage 4** (0% structure) | Destroyed | Destroyed |

![Damaged item](images/en-waffen-und-ruestungsbeschadigungd-item.webp)

> **Note**: For armor, encumbrance may also increase from stage 2 onwards (depending on configuration).

## Repair

To repair an item, a craftsman (or magic) must restore the structure.
- Open the character sheet.
- Click on the item to see the details.
- In the "Details" or "Values" tab, you'll find the **Structure**.
- Increase the current value back to the maximum to remove the penalties.

![Repair process](images/en-weapon-armor-repair.webp)

---

**See also:**
- [Combat](/dsa5-foundryVTT-wiki/en-kampf)
- [Damage Application](/dsa5-foundryVTT-wiki/en-schadensanwendung)
- [Combat Special Abilities](/dsa5-foundryVTT-wiki/en-spezialmanöver)
