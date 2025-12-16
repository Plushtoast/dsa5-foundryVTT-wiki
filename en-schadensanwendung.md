# Damage Application

*Last updated: 01.2025*

The DSA5 system for Foundry VTT offers various options for applying damage to characters. This guide explains all options and the typical workflow.

## Damage in Combat

### Automatic Process

The typical damage flow in combat:

1. **Attack:** The attacker rolls their attack
2. **Defense:** The defender rolls parry or dodge
3. **Result:** The system automatically calculates damage
4. **Application:** Damage is transferred to the token via click

![Damage Buttons](images/en-damage-buttons.webp)

### Damage Calculation

The system automatically considers:
- **Weapon damage** (incl. damage dice)
- **Quality levels** of the attack
- **Armor protection** of the defender
- **Damage modifiers** (e.g., from advantages/disadvantages)

## Applying Damage

### Via Chat Message

After a successful attack, buttons appear in the chat message for applying damage:

| Button | Function |
|--------|----------|
| **Apply Damage** | Applies calculated damage (after armor) |
| **Apply SP** | Applies damage points before armor |
| **x2** | Doubles the damage (e.g., for critical hits) |

![Apply Damage](images/en-damage-apply.webp)

### Via Context Menu

You can also open the context menu by **right-clicking** on the chat message:

- **Apply Damage** / **Apply Brawl Points** (in brawl mode)
- **Apply SP** (damage points before armor)
- **Apply Damage x2**
- **Apply SP x2**

### Requirements

For damage to be applied:
1. The defender must have been **targeted** before the attack
2. The token owner (or GM) must confirm the damage

## Damage Types

### Normal Damage (LP)

Reduces the character's **Life Points (LP)**.
- At 0 LP, the character is incapacitated
- Negative LP can lead to death

### Brawl Points (BP)

In **Brawl Mode**, a temporary value is reduced instead of LP:
- Brawl points are managed separately
- They reset after combat
- Prevents accidental fatal injuries during bar fights

## Wound Effects

When a character takes damage, wound effects can be automatically applied:

![Wound Effects](images/en-damage-wounds.webp)

### Wound Thresholds

| Threshold | Effect |
|-----------|--------|
| **LP < 75%** | No effect |
| **LP < 50%** | Pain Level 1 |
| **LP < 25%** | Pain Level 2 |
| **LP < 5 or 0** | Incapacitated |

### Automatic Wound Tracking

The system can automatically:
- Apply pain conditions based on LP thresholds
- Track wound penalties
- Apply bleeding effects

## Manual Damage

### Direct Editing

You can also apply damage manually:

1. Open the **Character Sheet**
2. Click on the **LP value**
3. Enter the new value or use +/- notation

### Chat Commands

Use chat commands for quick damage:

```
/damage 5 LP
/heal 3 LP
```

## Tips

- **Target First:** Always target before attacking for automatic damage application
- **Armor Bypass:** Use "Apply SP" for attacks that ignore armor
- **Healing:** Use regeneration for proper healing mechanics
- **Conditions:** Check for pain and other conditions after damage

---

**See also:**
- [Combat](en-kampf)
- [Regeneration](en-regeneration)
- [Hit and Armor Zones](en-trefferzonen)
- [Weapon and Armor Damage](en-waffen-und-ruestungsbeschadigung)
