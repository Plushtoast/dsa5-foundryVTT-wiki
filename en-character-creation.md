# Character creation
**Attention**: There are still one or two bugs, which is why it's currently recommended to create the character externally and then transfer it to Foundry manually.
The character creation is relatively modular.  
To make it easier, you should roughly follow the flow of the basic rulebook, even tough there are some additional steps which have to be done in Foundry only.  
The chapters with (game master) can only to be carried out by the game master when the Foundry permission settings are set to the standard options.

**Note:** If you are looking for a external tool to create (and maintain) your characters, check out the [ressources section.](en-ressources)

1. [Create character (game master)](#1-create-character-game-master)  
2. [Enter experience](#2-enter-experience)  
3. [Choose species](#3-choose-species)  
4. [Choose culture](#4-choose-culture)  
5. [Distribute attribute points](#5-attribute-points)  
6. [Select Profession](#6-choose-profession)  
7. [Choose advantages and disadvantages](#7-select-advantages-and-disadvantages)  
8. [Make increases](#8-improvements)  
9. [Choose special skills](#9-choose-special-skills)  
10. [Make final adjustments (notes, equipment, name)](#10-make-last-adjustments-notes-equipment-name)  
11. [Portrait and token images (game master)](#11-portrait-and-token-images-game-master)  

Here you can find the whole thing as a video (german only): [Character creation](https://www.youtube.com/watch?v=NrqvByX3da0)

## General informations before we start
### [Using content from the library](en-library)
### [Create your own content (spells, special skills, equipment, etc.)](en-create-personal-entries)

## 1. create character (game master)
### The game master must create a character using the Actors menu:
1. create actor
2. set name, type "Character" and click on "create new" actor
![Create Actor](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/blob/master/images/en-character-creation-01.jpg)

### If the player should be able to edit and maintain his character (recommended), we have to adjust the permissions:
1. right click on the character  
2. configure permissions  
3. select the permission *owner* for the corresponding player  
4. save changes  
![Actor permissions](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/blob/master/images/en-character-creation-02.jpg)  

Now the player can edit this character himself.

## 2. enter experience
The experience (in form of adventure points) is entered on the character sheet, in the *Attributes* tab.   
![enter ap manually](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/blob/master/images/en-character-creation-03.jpg)  

If this step is skipped, there will be a query for the experience level (when adding the first item that costs AP), which then will add the right amount of adventure points to the sheet.  
![select ap by exp level](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/blob/master/images/en-character-creation-04.jpg)

## 3. choose species
After the species has been [dragged onto the character sheet](en-library), a window opens with the following tabs/information:
1. **Description**: Information, Flufftext and background information about the species  
![species description](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/blob/master/images/en-character-creation-05.jpg)

2. **General**: Selection of trait changes. Note: This does NOT change your attribute values, but it changes the allowed maximum values for these attributes, according to TDA rules for character generation.  
![species general](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/blob/master/images/en-character-creation-06.jpg)

3. **Advantages/Disadvantages**: The recommended or suitable advantages/disadvantages can be selected directly via check marks. They are then assigned to the character and costs (AP) are calculated accordingly.  
![species dis-advantages](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/blob/master/images/en-character-creation-07.jpg)

Based on your selections, the derived values are calculated (Life points, movement, initiative etc).  
They will automatically be updated when you change the character values later on (attributes, dis-/advantages, special abilities etc.), but please note that you **can't change the species after you set it**.  

## 4. choose culture
The culture is also simply dragged onto the character sheet. Tabs and information are similar to the [species](#3-choose-species) and the same rules apply.
Differences are:
1. Some entries are pre-selected and can't be de-selected (like languages)
2. Area Knowledge is a must-have entry. You can write any bogus entry and change it later if you don't know that detail right now.
3. You can get rid of must-have entries after character creation if they don't fit your char concept. Have an eye on your AP before you do that, and correct the values afterwards if necessary.  
![species culture](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/blob/master/images/en-character-creation-08.jpg)


## 5. attribute points  
In the Attributes tab, you can change the values by using the + and - buttons.  
**If you enter the values directly into the fields, there is no AP calculation. If you use the + / - buttons, there is AP calculation.**  

**CAUTION**: Currently, the attributes are not monitored or restricted according to the rules. This means that you can level them higher than the experience level, species or dis-/advantages would allow. The total points (usually 100 points for experience level "Experienced") are not checked, either.    
![char-attributes](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/blob/master/images/en-character-creation-09.jpg)

## 6. choose profession  
You should get the hang of it by now:  
1. choose a profession in the library, drag & drop it onto the character sheet.  
2. you receive some must-have entries, and you can select additional entries which are recommended by the TDE system.  
3. **Alternatively,** you can skip this step completely and create your own profession. Just write its name and then set skills, special abilites etc. as you see fit (Remember: Professions are just a collection of values and abilities, regularly paid with AP).   
![profession](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/blob/master/images/en-character-creation-10.jpg)

## 7. select advantages and disadvantages
Next, additional advantages and disadvantages for the character can be pulled from the library.  
Some entries allow different levels (like "Luck", "Darksight", "Good Looks" etc.). You can recognize them easily, because they have a number (roman numeral) behind them, even if they are only on level 1.  
To change the level, assign the dis-/advantage to the char. Then click to open it, and change the level in the tab "Details" tab of the entry (by using + and -).  
![char-dis-advantages](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/blob/master/images/en-character-creation-11.jpg)

## 8. Improvements
Change the values for skills, combat techniques, spells, liturgies etc.
1. **Use the + / - buttons** for AP calculation (as always)
2. You can buy Life / Karmal Energy / Astral Energy points, too
3. For combat techniques, you see the derived base values as well  
![char-improvements1](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/blob/master/images/en-character-creation-12.jpg)  
![char-improvements2](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/blob/master/images/en-character-creation-13.jpg)  
![char-improvements3](https://github.com/Plushtoast/dsa5-foundryVTT-wiki/blob/master/images/en-character-creation-14.jpg)

## 9. Choose special skills
Special skills can also be dragged from the library into the character sheet. They will then be listed where they belong by type:
* General Special Skills, Languages, Writings, Fate Point Special Skills -> Traits.
  * ![Allgemeine Sonderfertigkeiten](https://user-images.githubusercontent.com/80099175/112471275-f9638c80-8d6b-11eb-9a7e-b4237e026700.png)
* Clerical/Sanctified Special Skills, Traditions -> Religion
  * ![Klerikale Sonderfertigkeiten](https://user-images.githubusercontent.com/80099175/112471320-07b1a880-8d6c-11eb-834d-4a46cadc46c4.png)
* Magic Special Skills, Traditions -> Magic
  * ![Magische Sonderfertigkeiten](https://user-images.githubusercontent.com/80099175/112471050-b6091e00-8d6b-11eb-9753-5a07ed08f2f4.png) 
* Combat Special Skills -> Combat
  * ![Kampf Sonderfertigkeiten](https://user-images.githubusercontent.com/80099175/112471191-de911800-8d6b-11eb-944b-891abd205e40.png)

## 10. Make last adjustments (notes, equipment, name)
Make final adjustments in the hero document under [Equipment](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#5-ausr%C3%BCstung) and [Notes](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#7-notizen).

## 11. Portrait and token images (game master)
### Customize image
To customize the image click on the image in the [Header](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#1-kopfbereich) in the character sheet. The Foundry File Manager will open and you can search for and select an image.  

### Select standard token
It is important for this that the character sheet is opened from the side menu under.
1. via the menu under *Actors* (1) -> double click on the character (2) -> *Configure token* (3)  

![Token konfigurieren](https://user-images.githubusercontent.com/80099175/112472976-11d4a680-8d6e-11eb-803d-a9ccab15cb70.png)  

2. in the head of the opened window must be *prototype character*. Then select the token via Image (1) -> *Search files* and apply it.  
**Note**: If *Prototype-Figure* is not here, the character sheet was opened via a token in a scene. Then only the token in this scene changes. If the character is dragged into another scene, the old token appears again.   

![Token zuordnen](https://user-images.githubusercontent.com/80099175/112473291-73951080-8d6e-11eb-9618-975a933dc282.png)  

*Translation information*  
*[x] updated: 2021-06-03*  
*[x] german entry [linked](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charaktererstellung)*  
*[x] automatic translation*  
*[ ] proof read*  
*[ ] change pictures with EN version*  
