# Botch Tables

*Last updated: 01.2025*

The DSA5 system in Foundry VTT supports automatic botch tables for combat checks. When a critical failure (botch) is rolled, the system can automatically roll on matching tables and display the effects.

![Botch Button in Chat](images/en-botch-button.webp)

## Available Botch Tables

The system includes the following botch tables:

| Table | Type | Can Be Enabled |
|-------|------|----------------|
| **Defense** | Parry botch | Yes |
| **Melee** | Attack botch | Yes |
| **Range** | Ranged botch | Yes |
| **Spell** | Magic botch | Always active |
| **Liturgy** | Karma botch | Always active |

## Enabling Tables

Combat botch tables can be enabled or disabled in the system settings:

1. Open **Game Settings** (gear icon)
2. Select **Configure Settings**
3. Under the **DSA5** tab, find the options:
   - **Enable Defense Botch**
   - **Enable Melee Botch**
   - **Enable Ranged Botch**

When enabled, a button appears automatically in chat when a botch occurs, allowing you to roll on the corresponding table.

![Botch Settings](images/en-botch-settings.webp)

## Rolling Botches

### Automatic

When a botch table is enabled:

1. A botch is rolled (e.g., double 20)
2. A **clickable link** with the table name appears in the chat result
3. Click the link to roll on the table
4. The result is displayed in chat

### Default Botch

If no table is enabled or the GM doesn't use tables:
- For combat botches: **1D6+2 self-damage** as the default result

## The Botch Result

After rolling on a botch table, the following is displayed:

1. **Table Name**: Which table was rolled on
2. **Dice Result**: The number rolled
3. **Effect**: The description from the table
4. **Effect Button**: If the effect has a game effect

![Botch Result](images/en-botch-result.webp)

### Applying Effects

Some botch results include automatically applicable effects:

- **Conditions** (e.g., "Prone", "Stunned")
- **Weapon damage** or loss
- **Time penalties** for certain actions

If an effect is available, a button appears to apply it to the affected character.

## Unarmed Adjustment

For unarmed fighters (Brawling), table results are adjusted:
- Results under 7 are automatically increased by 5
- This avoids results like "Drop weapon" or "Weapon damaged"

## Botch Confirmation

DSA5 uses a confirmation system for botches:
1. Initial botch (double 20 or similar)
2. Confirmation roll required
3. If confirmed, roll on botch table
4. If not confirmed, it's just a failure (not a critical failure)

## Tips for Game Masters

- **Narrative Flavor**: Use botch results as storytelling opportunities
- **Adjust Severity**: Some results can be modified for dramatic effect
- **Track Effects**: Make sure applied effects are properly removed later
- **Custom Tables**: Advanced users can create custom botch tables

---

**See also:**
- [Combat](en-kampf)
- [Self Created Effects](en-status-selbst-erstellte-effekte)
- [System Settings](en-systemeinstellungen)
