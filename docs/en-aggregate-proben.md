---
layout: default
title: en-aggregate-proben
---
# Aggregate Tests (Extended Checks)

*Last updated: 01.2025*

Aggregate Tests are extended checks where multiple attempts over a longer period are added together to reach a goal. The DSA5 system supports Aggregate Tests as their own item type.

![Aggregate Test Example](images/en-aggregate-example.webp)

## Creating Aggregate Tests

### Create a New Aggregate Test Item

1. Open the **Items** tab in the sidebar
2. Click **Create New Item**
3. Select **Aggregated Test** as the type
4. Give it a meaningful name

### Configuration

In the item sheet of the Aggregate Test, you can set the following values:

| Field | Description |
|-------|-------------|
| **Talent 1-3** | The possible talents for the check (e.g., Craft, Alchemy) |
| **Interval** | The time between individual checks (e.g., "1 hour", "1 day") |
| **Allowed Attempts** | Maximum number of checks (default: 7) |
| **Base Modifier** | Penalty or bonus for all checks |
| **Partial Success** | Text displayed at 6+ QL |
| **Success** | Text displayed at 10+ QL |

![Configure Aggregate Test](images/en-aggregate-config.webp)

## Performing Aggregate Tests

### Start as Group Check

1. Open the Aggregate Test item
2. Click **Post as Group Check** (dice icon)
3. The check is posted to chat
4. Players can click on the check to participate

### Collecting Results

For each successful check:
- The **Quality Levels (QL)** are added to the total
- The counter for used attempts increases

For failed checks:
- No QL are added
- The attempt counter still increases

## Success Levels

| Collected QL | Result |
|--------------|--------|
| 0-5 | Failure |
| 6-9 | Partial Success |
| 10+ | Full Success |

The result is automatically displayed in chat as soon as:
- The target QL has been reached, or
- All allowed attempts have been used

![Aggregate Test Result](images/en-aggregate-result.webp)

## Crafting Checks

Aggregate Tests can be linked with an **embedded item**:

1. In the **Crafting** tab, you can add an item
2. On successful completion, the crafted item can be created directly
3. Click **Create Item** to post the result to chat

### Application Examples

| Activity | Talent | Typical Interval |
|----------|--------|------------------|
| **Alchemy** | Alchemy | 1-4 hours |
| **Crafting** | Smithing, Woodworking | 1 day |
| **Healing** | Treat Disease/Poison | 1 day |
| **Research** | Various knowledge talents | 1 hour |

## Integration with Player Menu

The Player Menu provides specialized interfaces for common aggregate tests:

- **Alchemy**: Guided potion brewing
- **Smithing**: Weapon and armor crafting
- **Enchanting**: Artifact creation

See [Player Menu](/dsa5-foundryVTT-wiki/en-spieler-menue) for more details.

## Tips

- **Track Progress**: The system remembers the current state of aggregate tests
- **Multiple Talents**: Some tests allow choosing between different talents
- **Failure Effects**: Consider what happens if the test fails completely
- **Time Management**: Use aggregate tests to represent time-consuming activities

---

**See also:**
- [Group Checks](/dsa5-foundryVTT-wiki/en-gruppenproben)
- [Player Menu](/dsa5-foundryVTT-wiki/en-spieler-menue)
- [Alchemy](/dsa5-foundryVTT-wiki/en-alchimie)
