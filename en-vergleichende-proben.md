# Comparative Checks & Combat

The DSA5 system for Foundry VTT automates many aspects of comparative checks, especially in combat.

## Combat (Attack & Parry)

The flow of an attack is highly automated to speed up gameplay.

### 1. Target Selection
The attacker must mark their target on the map (Targeting).
- Click on the target icon in the token HUD or press `T` (default) while hovering over the target.

### 2. Attack
The attacker rolls their attack (click on the weapon in the character sheet).
- The attack card appears in the chat.
- The system automatically recognizes that this is an attack against the marked target.

### 3. Reaction (Defender)
The player controlling the defending token now sees a dialog or buttons in the chat.
- **Parry / Dodge**: The defender chooses their reaction.
- The system rolls the defense.

### 4. Result
The system compares the quality levels (QL) of attack and defense.
- **Success**: If the attacker has more QL (or the defender botches/fails), damage is calculated.
- **Damage**: The damage is displayed (taking armor protection into account, if configured).
- **Apply**: The Game Master (or owner) can transfer the damage to the target token with a button press (`Apply Damage`).

![Comparative check in combat](images/en-vergleichende-proben-combat.webp)

## Skills and Spells

Comparative checks are also possible with skills and spells.

### Spells Against Attributes
Many spells (e.g., *Horriphobus*) work against an attribute (e.g., Spirit) of the target.
1. Target the enemy.
2. Roll the spell.
3. The system shows in the chat whether the spell overcame the target's Spirit/Toughness and calculates the effect (e.g., *Fear* status).

### Skill Against Skill
(e.g., *Stealth* against *Perception*)
There are various workflows for this, but it is often handled manually by the Game Master by comparing the QL of both parties.
- However, there is also the option to request reactions via the context menu of chat messages (right-click) (if supported by modules or macros).

---

**See also:**
- [Combat](en-kampf.md)
- [Damage Application](en-schadensanwendung.md)
- [Group Checks](en-gruppenproben.md)
- [Routine Checks](en-routineproben.md)
