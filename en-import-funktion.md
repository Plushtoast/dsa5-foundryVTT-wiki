# Migration Function

*Last updated: 01.2025*

Since the system and modules are constantly being improved, content - especially automations - in the compendiums also changes and improves. The migration function makes it easy to update existing actors with new content.

It is recommended to migrate regularly after major patches.

**Important:** Migration overwrites items in the actor. This matching works via the item's name. If you have created something with the same name as an item in the compendium, it will be overwritten by the compendium item!

**You must always open the character sheet via the Actor menu and not via a token on the scene (otherwise you're only working on a token copy)**

## How to Migrate

1. Open the Import Menu via the character sheet of the actor you want to migrate
2. You have the following options:
   - Migrate Spells
   - Migrate Special Abilities/Advantages/Disadvantages
   - Migrate Talents
   - Migrate Combat Techniques
3. A warning appears asking if you want to overwrite all items of the previously selected type. Click *Yes* to perform the import.

![Migration Function](images/en-import-funktion-dialog.webp)

## Example

The spell "Armatrutz" received a new effect with an update. If you use the *Migrate Spells* function, the old Armatrutz (1) will be replaced by the new Armatrutz (2).

![Migration Example](images/en-import-funktion-example.webp)

## What Gets Migrated

| Type | What's Updated |
|------|----------------|
| **Spells** | Effects, descriptions, modifiers |
| **Special Abilities** | Automation effects, rules text |
| **Talents** | Linked attributes, descriptions |
| **Combat Techniques** | Attack/Parry modifiers, effects |

## Tips

- **Backup first:** Create a backup of your world before major migrations
- **Check names:** Renamed items won't be found for migration
- **Custom items:** If you've modified compendium items, consider renaming them to preserve your changes
- **Actor tokens:** Always use the actor directory, not placed tokens

---

**See also:**
- [Character Sheet](en-charakterbogen)
- [Create Personal Entries](en-eigene_inhalte_erstellen)
- [Library](en-bibliothek)
