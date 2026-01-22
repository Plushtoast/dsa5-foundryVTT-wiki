# Sight Automation

**Foreword by VTTom:** The settings in sight automation are quite complex. I find they cannot be easily explained in pure text. Here I will first provide a recommended setup and perhaps write a more detailed guide at some point.  
For support, you can also find a video here: [Foundry DSA Tutorial - Sight and Light](https://youtu.be/2WnYh1kpXrU)

Clicking on Sight Automation in the [GM Menu - Scene Settings](en-Meister-Menue-Szeneneinstellungen.md) leads to a menu with 3 sections:
* Token Light Configuration
* Sight Automation
* Presets

## Token Light Configuration

This section corresponds to the [Light Macro](en-licht-und-sicht-makro.md) and is explained there. Important here is that with active automation, the sight values are adjusted based on scene darkness. They therefore no longer correspond 1:1 to what is set in the [Presets](en-meister-menue-sichtautomatisierung.md#presets).

![Sight](images/en-meister-menue-sichtautomatisierung-sight.webp)

## Sight Automation

The sight automation is defined in more detail here. Whether the checkbox is set in the GM Menu or here at (1) doesn't matter; it's technically the same checkbox and therefore always identically configured.
1. Enable/disable sight automation
2. Mode determines which formula is used. Both are not uncomplicated but are explained further up in the window.
3. Token HUD for Light: when active, right-clicking on a token reveals a new button for quickly activating a light source.
4. Light Token HUD for Players: enables the token button for players as well, so they can activate a light source for themselves.
5. Darkness = 1: When this checkbox is set, all tokens on the scene become blind (having 0 dim and 0 bright sight) as soon as darkness on a scene rises to 1.
6. Default (No Sight): Specifies which value from the [Presets](en-meister-menue-sichtautomatisierung.md#presets) should be used if the actor has no advantage or similar.

![Sight Automation](images/en-meister-menue-sichtautomatisierung-settings.webp)

## Presets

The presets serve both as customization options for your own game and preferences regarding sight and lighting conditions. These values are also consulted when configuring sight automation.

Some of the points are already explained under [Light and Sight Macro - Presets](en-licht-und-sicht-makro.md#presets), so here only the points important for sight automation.
7. The compensation configuration only appears when the Mode (2) under [Sight Automation](en-meister-menue-sichtautomatisierung.md#sichtautomatisierung) is set to Compensation.

![Presets](images/en-meister-menue-sichtautomatisierung-presets.webp)

---

**See also:**
- [Light and Sight Macro](en-licht-und-sicht-makro.md)
- [Scene Settings](en-Meister-Menue-Szeneneinstellungen.md)
- [Sight and Light](en-sicht_und_licht.md)
- [GM Menu](en-meister-menue.md)
