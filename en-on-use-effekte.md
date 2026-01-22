# On-Use Effects (Advanced Effect Functions)

*Last updated: 2025-01*

On-Use effects are advanced automations in the DSA5 system that can be automatically executed on certain events. They enable complex game mechanics through macro-based effects.

![On-Use Effect Configuration](images/en-on-use-effekte-config.webp)

## What are On-Use Effects?

On-Use effects extend normal effects with:

- **Automatic triggers** on certain events
- **Macro commands** for complex actions
- **System effects** like conditions
- **Damage modifications**
- **Creature summoning**

## Advanced Functions

In the Effect Editor, under **Advanced Functions**, you'll find various options:

| Function | Description |
|----------|-------------|
| **None** | Normal effect without automation |
| **System Effect** | Applies a condition |
| **Macro** | Executes a macro |
| **Creature** | Summons a creature |
| **Damage Transformation** | Modifies damage |
| **Armor Transformation** | Modifies armor protection |
| **After Check** | Executed after a check |
| **After Comparative Check** | Executed after a comparative check |

## Configuration

### Selecting a Function

1. Open an **Effect** on an item
2. Switch to the **Advanced Settings** tab
3. Select the desired **Advanced Function**
4. Configure the parameters

### Macro Code

For macro-based functions, you can enter JavaScript code:

```javascript
// Example: Add condition
await actor.addCondition("prone", 1);

// Example: Display message
ChatMessage.create({
  content: "The spell takes effect!"
});
```

![Macro Editor](images/en-on-use-effekte-macro.webp)

## Triggers

### After Check (Post Roll)

The effect is executed after a check is rolled:
- Skill checks
- Spell checks
- Liturgy checks

### After Comparative Check (Post Opposed)

The effect is executed after a comparative check:
- Combat checks
- Resistance checks
- Comparative skill checks

### Damage Transformation

Modifies damage before it is applied:
- Increase/decrease damage
- Change damage type
- Additional effects on damage

### Armor Transformation

Modifies armor values:
- Increase/decrease PRO
- Special resistances
- Protection against certain damage types

## Recipients

You can specify who sees the effect message:

| Option | Description |
|--------|-------------|
| **All Players** | Everyone sees the message |
| **Player Only** | Only the affected player |
| **Player + GM** | Player and Game Master |
| **GM Only** | Only the Game Master |

## Success/Failure Conditions

For poisons and diseases, there are additional options:

| Option | Description |
|--------|-------------|
| **On Success** | Effect only on successful check |
| **On Failure** | Effect only on failed check |

## Application Examples

### Flame Blade

A spell that causes additional fire damage:
- Function: Damage Transformation
- Macro: `options.damage += 1d6`

### Stunning Blow

A maneuver that stuns the opponent on success:
- Function: After Comparative Check
- Macro: `await actor.addCondition("stunned", 1)`

### Protection Rune

An artifact that reduces damage:
- Function: Armor Transformation
- Macro: `options.damage -= 2`

## Permissions

Macro execution requires:
- The setting **Players can edit effect macros** must be enabled (for players)
- Or the user must have **Macro Script Permission**

## Tips

- **Test**: Test new On-Use effects in a test scene
- **Use Console**: On errors, details are shown in the console (F12)
- **Start Simple**: Start with system effects before writing complex macros
- **Use Templates**: The internal macro compendium contains examples

## Technical Notes

- On-Use effects use asynchronous functions
- Available variables: `actor`, `item`, `args`, `ef`, `source`, `options`
- Errors are logged in the browser console

---

**See also:**
- [Status Effects - Self-Created Effects](en-status-selbst-erstellte-effekte.md)
- [Effects Field](en-effekt_feld.md)
- [Spells & Liturgies - Apply Effects](en-zauber-liturgie-effekt-anwenden.md)
