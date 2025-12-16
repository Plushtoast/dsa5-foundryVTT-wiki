# Routine Checks

*Last updated: 01.2025*

Routine Checks allow experienced characters to automatically pass everyday tasks without rolling dice. The DSA5 system in Foundry VTT fully supports Routine Checks.

![Routine Check Button](images/en-routine-button.webp)

## What are Routine Checks?

A Routine Check is an automatically passed talent check. It can be used when:

1. The character has enough experience in the talent
2. The task is not too difficult
3. No aggravating circumstances exist

## Requirements

For the Routine Check button to be activated, the following conditions must be met:

### 1. Attribute Values

All three **attributes** belonging to the check must have a value of at least **13** (including all current modifiers).

### 2. Skill Value

The **Skill Rating (SR)** must be high enough, depending on the difficulty of the check:

| Difficulty | Required SR |
|------------|-------------|
| Very Easy (+6) | 1 |
| Easy (+3) | 1 |
| Normal (0) | 10 |
| Hard (-3) | 19 |
| Very Hard (-6) | 19+ |

The exact formula is: **SR ≥ 10 - (Modifier × 3)**

## How It Works

1. **Start a talent check**: Click on a talent in the character sheet
2. **Check the dialog**: The "Routine Check" button is displayed in the check dialog
3. **Button status**: 
   - If the button is **gray/disabled**, the requirements are not met
   - If the button is **active**, the achieved SR is also displayed, e.g., "Routine Check (SR 8)"
4. **Execute Routine Check**: Click the activated button

![Routine Check Dialog](images/en-routine-dialog.webp)

## The Result

In a Routine Check:

- The check is automatically **passed**
- The Quality Level (QL) is always **1**
- No dice are rolled
- The used **skill rating is halved** (rounded)

The result is displayed in chat, with a note that it was a Routine Check.

![Routine Check Result](images/en-routine-result.webp)

## Situational Modifiers

The system considers in its calculation:

- Current condition modifiers on attributes
- Skill rating modifiers from effects
- The selected difficulty level
- All active situational modifiers

If negative modifiers mean the requirements are no longer met, the Routine Check button is automatically disabled.

## When Routine Checks Are Not Possible

Routine Checks are **not possible** for:

- **Combat checks** (Attack, Parry, Ranged)
- **Spell checks** and **Liturgy checks**
- Checks under **time pressure** (at GM discretion)
- Checks with **external interference**
- **Group checks** (each participant must roll)

## Tips

- **Quick Resolution:** Use Routine Checks for mundane tasks to speed up gameplay
- **Higher QL:** If you need more than 1 QL, you must roll normally
- **Conditional:** The GM can always require a normal roll for dramatic situations
- **Modifiers Matter:** Check your current modifiers before relying on Routine Checks

---

**See also:**
- [Character Sheet](en-charakterbogen)
- [Group Checks](en-gruppenproben)
- [System Settings](en-systemeinstellungen)
