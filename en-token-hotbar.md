# Token Hotbar and Token Hotbar Conversion

*Last updated: 01.2025*

## Token Hotbar

You can activate the Token Hotbar via the settings. This provides some buttons for the currently selected token for quick access to:

- Spells
- Consumable items
- Attacks
- Special abilities

This bar can be aligned and moved. When hovering, individual sections can be additionally filtered by typing a search term on the keyboard.

![Token Hotbar](images/en-token-hotbar-display.webp)

## GM Hotbar

There is now a new Master Menu Hotbar for the Game Master. Whenever no token is selected, it is displayed instead of the normal Token Hotbar. It contains frequently used functions from the GM menu in a more accessible form.

Currently it contains the following functions (in this order):

| Button | Function | Mouse Actions |
|--------|----------|---------------|
| **Main Menu** | Opens the main game menu | Left-click |
| **Random Victim** | Shows the victim's image briefly | Left-click: random, Right-click: includes "Bad Luck Magnet" |
| **Pay/Get Paid** | Sends /pay or /getPaid to chat | Uses value from number field |
| **Talents** | Shows all available talents on hover | Left-click: request roll, Right-click: group check, Ctrl+click: /ch roll |
| **Number Field** | Value for /pay or as modifier | Enter amount |
| **Darkness Threshold** | Quick scene darkness adjustment | Slider |

> **Tip**: If individual actors are selected in the main menu, the random victim roll only considers those actors.

## Token Hotbar Conversion

The Token Hotbar Conversion replaces all functions of the Token Hotbar but uses the normal Foundry hotbar at the bottom of the GUI.

![Token Hotbar Conversion](images/en-token-hotbar-conversion.webp)

### Additional Features

| Feature | Description |
|---------|-------------|
| **Quick Effect Removal** | Right-click to quickly delete effects on the currently selected actor |
| **Filter Functions** | Hover over the Token Hotbar and type to filter elements |
| **Alternative Functions** | Shift, Ctrl, Alt + click trigger different actions |
| **Detailed Tooltips** | Hover for detailed information about each element |

### Modifier Keys

| Key Combination | Action |
|-----------------|--------|
| **Left-click** | Normal use/roll |
| **Right-click** | Remove effect / Alternative action |
| **Shift + click** | Group check |
| **Ctrl + click** | /ch skill roll without token |
| **Alt + click** | Equip/unequip weapon |

## Configuration

### Enable Token Hotbar

1. Open **System Settings**
2. Find **Token Hotbar** setting
3. Enable the option

### Customize Position

- Drag the hotbar to reposition
- Adjust alignment in settings

## Purpose

The intention is to give the GM and players quick access to everything without the hero sheet blocking the GUI.

- **Speed**: No need to open character sheets for common actions
- **Accessibility**: All important functions at a glance
- **Efficiency**: Keyboard filtering for large inventories

---

**See also:**
- [GM Menu](en-meister-menue)
- [Character Sheet](en-charakterbogen)
- [Combat](en-kampf)
