# AP and Money Tracker

*Last updated: 01.2025*

The system offers an optional feature to automatically log all changes to Adventure Points (AP) and character wealth. This is particularly useful for Game Masters to keep track of group progress and expenses.

## Activation

These features must be enabled in the system settings:
- **Settings** → **System Settings** → **General**
- Check **Track Adventure Points** (`enableAPTracking`)
- Check **Track Money** (`enableMoneyTracking`)

![Tracker Settings](images/en-tracker-settings.webp)

## How It Works

Once enabled, the system automatically creates journal entries for each player character whenever their AP or money changes.

### Storage Location

You'll find the logs in the **Journal Directory** (book icon in the right sidebar).
- Folders are automatically created (e.g., "Adventure Points" and "Money")
- Each character has their own journal inside

![AP Tracker Journal](images/en-tracker-ap.webp)

![Money Tracker Journal](images/en-tracker-money.webp)

### Log Structure

- **Pages**: For each day on which changes were made, a new page is created in the journal (date as title)
- **Entries**: Each line documents a change:

| Column | Description |
|--------|-------------|
| **Description** | What was changed? (e.g., "Courage", "Bought sword", "Reward") |
| **Change** | The value of the change (e.g., "+1", "-5 Silver") |
| **Cost** | The cost in AP or money |
| **Total** | The new total after the change |

## Usage

### AP Tracker

Logs:
- Received AP (awarded by the GM)
- Spent AP (advancement of attributes, talents, special abilities)

This helps answer questions like:
- "How much AP has the party received this campaign?"
- "Where did the character spend their AP?"

### Money Tracker

Logs:
- Income (merchants, loot, rewards)
- Expenses (purchases, services, costs)

This helps answer questions like:
- "How much did we spend at that shop?"
- "What's the character's spending history?"

## Permissions

> **Note**: The journals have the same permissions as the character. Players can typically view their own log.

### GM Access

The Game Master can see all tracker journals and use them to:
- Audit character advancement
- Review economic balance
- Track campaign progression

## Tips

- **Regular Review**: Check journals periodically to catch any issues
- **Manual Entries**: You can manually add entries to the journals if needed
- **Export**: Journal contents can be exported for campaign records
- **Clean Up**: Old tracker journals can be archived or deleted

---

**See also:**
- [GM Menu](en-meister-menue)
- [Payment System](en-bezahlsystem)
- [Character Sheet](en-charakterbogen)
