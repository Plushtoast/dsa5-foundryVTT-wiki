---
layout: default
title: en-kalender
---
# Calendar & Moon Phases

*Last updated: 01.2025*

The DSA5 system for Foundry VTT features a fully integrated Aventurian calendar. It manages not only the date and time but also calculates moon phases, holidays, and can even automatically control scene lighting.

## The Calendar Widget

On the user interface (by default at the top center), you'll find the calendar widget. It provides a quick overview and basic controls.

![Calendar Widget](images/en-kalender-widget.webp)

### Widget Functions

- **Display**: Shows the current date (e.g., "1st Praios 1040 BF") and time
- **Moon Phase**: An icon visualizes the current moon phase (e.g., full moon, new moon)
- **Time Controls**:
  - `<` / `>`: Jump one day back / forward
  - `<<` / `>>`: Jump one month back / forward
  - Small arrows or clicking on the time allows finer adjustments
- **Automatic Lighting (Sun/Moon Icon)**: Clicking this icon enables or disables automatic scene brightness adjustment (see below)
- **Edit (Pencil/Gear)**: Opens the detailed calendar window

## The Calendar Window

The main calendar window offers deeper insights and configuration options. It's divided into several tabs:

### 1. Calendar

The classic month view.
- Here you see all days of the current month
- Moon phases are graphically displayed for each day
- Clicking on a day sets the date to that day

### 2. Holidays (Events)

A list of all holidays stored in the system plus custom events.
- **Custom Events**: You can add new events via the `+` symbol. These are technically stored as journal entries
- **Categories**: Events can be categorized (e.g., Religious, Secular)

### 3. Dramatis Personae

This tool serves for managing important personalities (NPCs) in your campaign.
- It allows creating profiles for important characters
- You can add descriptions, notes (public), and GM notes (secret)
- Relationships and contacts can be linked

### 4. Settings (Configuration)

Here the Game Master can adjust the calendar's behavior.
- **Calendar Choice**: Selection of the calendar system used (default: Aventurian Calendar)
- **Moon**: Settings for the moon cycle

## Automatic Lighting

One of the most powerful features is dynamic lighting (`Auto Day Light`).

### How It Works

- The system calculates the sun's position based on the current time
- Accordingly, the `Darkness Level` of the current scene is adjusted
- **Time of Day**: There are smooth transitions between dawn, day, dusk, and night
- **Moonlight**: In the settings, you can enable the moon to brighten the night (a full moon makes the night brighter than a new moon)

> **Note**: For this to work, global illumination or appropriate light sources must be correctly configured in the scene settings for the `Darkness Level` to have a visible effect.

## Integration with DSA5 Atlas

If the **DSA5 Atlas** module is installed and activated, the calendar becomes even more precise.
- Sunrise and sunset times are then calculated based on the geographical position of the hero group on the Aventuria map
- In the far north, days in winter are actually shorter than in the south

## Tips

- **Session Management**: Use the calendar to track campaign time
- **Weather Planning**: Combine with weather effects for immersion
- **Event Reminders**: Add important campaign events to the calendar
- **Player View**: Players can see the current date but typically not all events

---

**See also:**
- [Journal Pages](/dsa5-foundryVTT-wiki/en-journal-seiten)
- [Scene Settings](/dsa5-foundryVTT-wiki/en-Meister-Menue-Szeneneinstellungen)
- [Sight and Light](/dsa5-foundryVTT-wiki/en-sicht_und_licht)
