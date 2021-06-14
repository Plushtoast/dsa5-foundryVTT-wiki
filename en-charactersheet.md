# Character Sheet - Structure
The structure of the character sheet is as similar as the sheet of the rulebook.
There are the categories in it:  
1. [Header](#1-header)  
2. [Skills](#2-skills)  
3. [Combat](#3-combat)  
4. [Attributes](#4-attributes)  
5. [Equipment](#5-equipment)  
6. [State](#6-state)  
7. [Notes](#7-notes)  
8. [Magic](#8-magic)  
9. [Religion](#9-religion)  
  
**Note**: The *magic* and *religion* tabs only appear if the character has at least one magical or karmal special skill/spell/ritual/liturgy/ceremony assigned. Also, only then do AE (astral energy) or KP (karma points) appear in the character sheet.
  
![Charakterbogen](https://user-images.githubusercontent.com/80099175/112130343-adc4ad80-8bc8-11eb-8953-1f82cd10fbf8.png)

## 1. Header
This part of the sheet is always visible and is influenced, among other things, by the entries in [Attributes](#4-attributes). These are the current values of the character.  
In addition, a profession can be entered here - either a [predefined profession](en-character-creation.md#6-choose-profession), or the name for your own profession.
  
![Charakterbogen Kopfbereich](https://user-images.githubusercontent.com/80099175/112131586-faf54f00-8bc9-11eb-887a-8c8cf417bf9f.png)

## 2. Skills
On the talent sheet, the character's talent values are recorded and checks can be taken. Also, the [skill value can be improved](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charaktererstellung#8-steigerungen-vornehmen) or changed.  
1. **Search talents**: searches the entered term in the talents
1. **Filter**: Hides all talents that have a Fw of 0.  
  
![Charakterbogen Talente](https://user-images.githubusercontent.com/80099175/112131981-6c350200-8bca-11eb-9f89-005632ce6e50.png)

## 3. Combat
The combat sheet contains all data used for [Combat](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Kampf) in DSA 5.
1. **Melee, Ranged Weapons and Armor**: Lists all weapons and armor that are **and have been equipped** (=activated for the combat sheet) in the [Equipment](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#5-ausr%C3%BCstung) tab. This requires a check mark next to the item on the equipment page, see [Equipment](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#5-ausr%C3%BCstung).

   1.1 **Dodge, unarmed attack and parry**: Behind the symbols hide the dodge and the unarmed attack and parry.  

   1.2 **Ammunition**: here you can select ammunition for the weapon. However, this must be stored in the [Equipment bar](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#5-ausr%C3%BCstung). Then the system will automatically draw the ammunition after an attack. For throwing weapons, the weapon itself counts as ammunition, i.e. if you equip 3 throwing knives, it reduces the number of throwing knives after the attack to 2 etc., if the number is 0, no more attacks can be made. 
 
   1.3 **Details**: Clicking on the arrow shows details like range and charge time.
2. **Combat Special Skills**: Lists all of the character's combat special skills.
3. **Combat Techniques**: If a roll on the basic combat technique value is required, the values and dice can be found here. Improving works the same as with skills.
  
![Character Sheet Combat](https://user-images.githubusercontent.com/80099175/112133821-5e807c00-8bcc-11eb-836a-ec9431cb011a.png)

## 4. Attributes
In this sheet the basic values of the character are set and improved. Some of the values here are calculated completely automatically.
1st **Properties**: If the AP calculation is to be used, 8 must be entered in the basic value and improved via + and -.
1. **Advantages, Disadvantages, Special Skills, Language and Fate Point Special Skills**: Here are listed the items assigned to the hero
which are dragged from the library onto the hero at creation or later. 
1. **Basic Values**: Everything in the *Value* column is automatically calculated according to DSA 5 rules. The Astral and Karma Energy values only appear if the character has a magic, karmic special skill, spell, liturgy, or similar assigned. The benefits Wizard and Consecrated are not enough for this.
1. **Experience level**: here the available and spent adventure points are managed. Details about this in the [Character Creation](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charaktererstellung)
  
![Eigenschaften](https://user-images.githubusercontent.com/80099175/112108651-c759fb00-8bb0-11eb-9854-697551f5f667.png)  

## 5. Equipment
In the equipment sheet the inventory of the character is administered. All items assigned to the character are visible here.
To add new items, they can be dragged from the library onto the character sheet. Alternatively, [ content can be created.](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Eigene_Inhalte_erstellen)
1. **Equipment**: All items equipped by the character sorted into categories (melee weapon, armor, container, ammo, etc.).
1.1 **Use in combat**: Only if checked here, the item can be used in combat (Only: melee weapons, ranged weapons and armor). Armor that is not equipped for combat (=dressed), its weight must be carried around. For heavy armor, this can lead to deductions, due to load.
1.2 **Number**: Left-click to increase the number, right-click to decrease it.
1.3 **Weight**: Calculated based on the number and the individual weight.
1.4 **Edit, Split, Details**: The edit icon opens the item for editing. The speech bubble shares the item's info in the chat. 
The arrow can be used to expand and collapse the details.
2. **Carrying Power**: The carrying power is automatically calculated according to DSA 5 rules. As soon as the carrying power is exceeded, the character receives load levels.
3. **Money Bag**: This is where the character's money is used. (SL Tip: via the chat command /getPaid the SL can pay all characters (mark tokens!) money as a reward).  
  
![Charakterbogen Ausrüstung](https://user-images.githubusercontent.com/80099175/112141398-86281200-8bd5-11eb-8e58-b2aa7633b982.png)

## 6. State
The status window contains all the states and statuses active for the character. A few of them are handled automatically (Ex: pain from health,
Burden by armor and equipment). If you want to remove a state or status, just right-click on its name. However, this only works if the trigger of an automatic state is no longer present (Ex: If the life points are below 1/2, the two levels of pain cannot be removed simply like that).
1. **Value**: For statuses, only indicates that this status is activated (check mark). For states, the level of the state is indicated here.  
2. **Mod.**: Here the state can be increased by a left click or decreased by a right click. Negative values are possible.  
3. **Plus (Add)**: opens a context menu that can be used to search for a status/state and add it to the character. In addition, [own statuses can be created.](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Status-Selbst-erstellte-Effekte)
  
![Charakterbogen Status](https://user-images.githubusercontent.com/80099175/112144638-c7222580-8bd9-11eb-9696-3aff6af5e145.png)  
  
**Context menu**: this menu can be opened via the + in the character sheet status or directly in the context menu of the token. 
 - Via the context menu of the token known statuses/states can be added very quickly.
 - Via the symbol in the character sheet entries can be searched/filtered, furthermore one can [create own entries](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Status-Selbst-erstellte-Effekte) (+ symbol next to the search field).
  
![Charakterbogen Status Kontextmenü](https://user-images.githubusercontent.com/62849695/116782005-f0f72380-aa86-11eb-91e9-1ceefe799deb.png)  
 
## 7. Notes
In the notes you will find various things that can be entered about the character. This is also where the culture is put if it is pulled into the character during character building. The **GM Notes** are only visible to game masters.
![Charakterbogen Notizen](https://user-images.githubusercontent.com/80099175/112149840-b4125400-8bdf-11eb-9577-1d78333392ad.png)

## 8. Magic
The magic sheet does not appear until a magic special skill, spell, ritual, or magic trick has been assigned to the character. The Wizard advantage is not enough for this!  
1st **Spells and Rituals**: All of the character's spells and rituals are listed here.  
   1.1 The speech bubble divides the spell/ritual over the chat, the arrow opens details (duration of effect, costs) and the barrel deletes the spell/ritual.   
2nd **Magical Special Skills**: All special magic skills assigned to the character.
3. **Tradition, Leiteigenschaft, Merkmal, Leiteig. Multiplier**: the leadership trait must be specified here, since the AsP in the [Traits](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#4-eigenschaften) are also calculated via it. In addition, the influence of the trait on the astral points can be set via the *trait multiplier* (e.g.: Spellbard 0.5).
4. **Magic tricks** !  
  
![Magie](https://user-images.githubusercontent.com/80099175/114888610-b1370780-9e09-11eb-92e3-3b3a7efe629f.png)

## 9. Religion
1. **Liturgies and Ceremonies**: All of the character's liturgies and ceremonies are listed here.  
   1.1 The speech bubble shares the liturgy/ceremony via chat, the arrow opens details (effect duration, cost), and the barrel deletes the liturgy/ceremony.   
2nd **Carmic Special Skills**: All karmic special skills assigned to the character.
3. **Tradition, Leadership Trait, Aspect, Benevolent Talents**: the Leadership Trait must be specified here, as it is also used to calculate the KaP in the [Traits](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#4-eigenschaften).  
   - Benevolent talents should definitely be entered here. Pay attention to correct spelling. The state "Rapture" takes these entries into account.
5. **Blessings**  
  
![Religion](https://user-images.githubusercontent.com/80099175/112478313-29af2900-8d74-11eb-8344-d68b8f35dbe6.png)

*Translation information*  
*[x] updated: 2021-06-05*  
*[x] german entry [linked](de/de-Charakterbogen.md)*  
*[x] automatic translation*  
*[ ] proof read*  
*[ ] change pictures with EN version*  
*[ ] change links and anchors
