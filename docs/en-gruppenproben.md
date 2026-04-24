---
layout: default
title: en-gruppenproben
---
# Group Checks

*Last updated: 01.2025*

Group Checks are an important component of DSA5 where multiple characters work together on a task. The DSA5 system for Foundry automates the management and evaluation of these checks.

> **Note:** This page describes Group Checks where multiple players roll together in real-time. For extended tests over a longer period (e.g., crafting), see [Aggregate Tests](/dsa5-foundryVTT-wiki/en-aggregate-proben).

## What are Group Checks?

In a Group Check, multiple characters roll on the same talent in succession. The achieved quality levels (QL) are added together to reach a common goal.

**Typical Use Cases:**
- Researching together in a library
- Group sneaking past guards
- Collaboration on craft projects
- Collective persuasion of an NPC

## Starting a Group Check

### Via the GM Menu

1. Open the **GM Menu** (key **M**)
2. Click on **Group Check**
3. Select the desired talent from the list
4. Set the modifier (if needed)
5. Click **OK**

![Starting Group Check](images/en-group-check-start.webp)

### Via Chat Command

You can also use the chat command `/gc`:

```
/gc Stealth
/gc Perception -2
/gc Treat Wounds +3
```

**Syntax:** `/gc [Talent Name] [Modifier]`

### Via Token Hotbar

If you have a talent in the Token Hotbar, you can start a Group Check for that talent with a **Shift+Click**.

## The Group Check Card

After starting, a Group Check card appears in chat with the following elements:

![Group Check Result](images/en-group-check-result.webp)

### Card Elements

| Element | Description |
|---------|-------------|
| **Talent** | The talent to roll with modifier |
| **Collected QL** | The quality levels achieved so far |
| **Rolls** | Number of rolls already made |
| **Open Rolls** | How many characters can still roll |
| **Results** | List of all previous rolls with QL |

### Check Results

Each roll is displayed in the list:
- **Green:** Successful check with QL
- **Red:** Failed check (0 QL)
- **Critical:** On critical success, QL is doubled
- **Botch:** Can jeopardize the entire check

## Participating in a Group Check

### As a Player

1. Click on the **dice button** next to the talent in the Group Check card
2. The normal check dialog opens
3. Roll your check
4. The result is automatically added to the Group Check

### Automatic Assignment

The system automatically assigns your roll to the Group Check if:
- You roll the same talent
- The Group Check is still open
- Your character hasn't rolled yet

## Evaluating Group Checks

### Success Threshold

The GM sets a target QL that the group must reach together:
- **Easy:** 10 QL total
- **Medium:** 15-20 QL total
- **Hard:** 25+ QL total

### Failed Rolls

Failed individual rolls contribute 0 QL but don't necessarily fail the group check. The group can still succeed if others roll well.

### Botches

A botch during a Group Check can have consequences:
- Subtract QL from the group total
- Add complications
- GM discretion

## Tips

- **Coordinate:** Discuss who has the best talent values
- **Support:** Characters with low skills might hinder more than help
- **Modifiers:** Remember advantage/disadvantage that apply to specific characters
- **Multiple Talents:** Some tasks allow rolling with different talents

---

**See also:**
- [GM Menu](/dsa5-foundryVTT-wiki/en-meister-menue)
- [Aggregate Tests](/dsa5-foundryVTT-wiki/en-aggregate-proben)
- [Comparative Checks](/dsa5-foundryVTT-wiki/en-vergleichende-proben)
- [Chat Commands](/dsa5-foundryVTT-wiki/en-chatbefehle)
