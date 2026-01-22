# Special Journal Pages

*Last updated: 2025-01*

The DSA5 system extends Foundry VTT with special journal page types that are particularly useful for role-playing campaigns.

## Available Page Types

| Type | Description |
|------|-------------|
| **Dramatis Personae** | NPC overview with relationships |
| **Calendar Entries** | Events with date linking |
| **Standard Pages** | Normal Foundry journal pages |

## Dramatis Personae

The Dramatis Personae page serves as an NPC directory for your campaign.

![Dramatis Personae](images/en-journal-seiten-dramatis.webp)

### Creating a Page

1. Create a new **Journal**
2. Add a new **Page**
3. Select **Dramatis Personae** as the type
4. Assign a name (e.g., "Important People")

### Adding People

1. Open the page in **Edit Mode**
2. **Drag an Actor** (NPC, creature, etc.) onto the person list
3. The person appears with image and name

### Person Details

For each person you can edit:

| Field | Description |
|-------|-------------|
| **Name** | Display name (can differ from Actor) |
| **Image** | Portrait or token image |
| **Description** | Free text for notes |
| **Visible** | Whether players can see the person |
| **Relationships** | Connections to other people |

### Display in Calendar

- Enable **Show in Calendar**
- Birthdays and important dates appear in the Aventurian calendar

### Actions

- **Edit Actor**: Opens the Actor sheet
- **Copy Description**: Takes text from the Actor
- **Copy Token**: Takes the token image
- **Copy Avatar**: Takes the portrait image

## Calendar Entries

Calendar entries link events to the Aventurian calendar.

![Calendar Entries](images/en-journal-seiten-calendar.webp)

### Creating an Entry

1. Create a Journal with a **Calendar Entries** page
2. Open the page in **Edit Mode**
3. Click on **New Entry**
4. Fill in the details

### Entry Fields

| Field | Description |
|-------|-------------|
| **Title** | Name of the event |
| **From/To** | Time period (date in Aventurian calendar) |
| **Description** | Details about the event |
| **Visible** | Visible to players |

### Linking to Calendar

1. Enable **Show in Calendar**
2. The event appears in the calendar widget
3. Clicking on the event opens the details

## Tips

- **NPC Database**: Use Dramatis Personae as a central resource for important NPCs
- **Campaign Chronicle**: Use calendar entries to document important events
- **Player Visibility**: Gradually unlock entries for players
- **Quick Access**: Pin important journals in the sidebar

## Permissions

- **Game Master**: Full access to all entries
- **Players**: Only see entries with the "Visible" checkbox
- **Editing**: Only Game Masters can edit entries

---

**See also:**
- [Calendar](en-kalender.md)
- [Create Personal Entries](en-eigene_inhalte_erstellen.md)
- [Library](en-bibliothek.md)
