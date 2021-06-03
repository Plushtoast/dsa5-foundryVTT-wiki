# Character creation
**Attention**: Currently there are still one or two bugs, which is why it is currently recommended to create the character by hand or tool and then transfer it to Foundry 
manually!
The character creation is relatively modular. But to make it easy you should roughly follow the flow of the basic rulebook. But there are some additional steps which have to be done in Foundry only. In addition, the points with (game master) in the standard rights setting are only to be carried out by the game master:
1. [Create character (game master)](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charaktererstellung#1-charakter-anlegen-spielleiter)
2. [Enter experience](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charaktererstellung#2-erfahrung-eingeben)
3. [Select species](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charaktererstellung#3-spezies-w%C3%A4hlen)
4. [Select culture](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charaktererstellung#4-kultur-w%C3%A4hlen)
5 [Distribute attribute points](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charaktererstellung#5-eigenschaftspunkte-verteilen)
6. [Select Profession](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charaktererstellung#6-profession-w%C3%A4hlen)
7 [Choose advantages and disadvantages](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charaktererstellung#7-vor--und-nachteile-w%C3%A4hlen)
8. [Make increases](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charaktererstellung#8-steigerungen-vornehmen)
9 [Choose special skills](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charaktererstellung#9-sonderfertigkeiten-aussuchen)
10 [Make final adjustments (notes, equipment, name)](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charaktererstellung#10-letzte-anpassungen-vornehmen-notizen-ausr%C3%BCstung-name)
11. [Picture and token (game master)](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charaktererstellung#11-bild-und-token-spielleiter)  

Here you can find the whole thing as a video: [Character creation](https://www.youtube.com/watch?v=NrqvByX3da0)

## Basics
### [Using content from the library](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Bibliothek) 
### [Create your own content (spells, special skills, equipment, etc.)](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Eigene-Inhalte-erstellen)

## 1. create character (game master)
The game master must create a character using the Actors menu:
1. create actor
2. set name, type character and click on create actor  
    
![Akteur erstellen](https://user-images.githubusercontent.com/80099175/112155744-e32bc400-8be5-11eb-97ba-02d49c812720.png)  

After that the rights over the actor have to be given to the player: 
1. right click on the character -> *Customize rights*.
2. select the right *owner* for the player and *save changes  
  
![Akteur Rechte](https://user-images.githubusercontent.com/80099175/112156197-4ddcff80-8be6-11eb-8fbf-676be85cb2c4.png)  

Now the player can edit this character himself.

## 2. enter experience
The experience is set on the character sheet under *Properties*.  
  
![Erfahrungsgrad](https://user-images.githubusercontent.com/80099175/112157133-30f4fc00-8be7-11eb-8aed-4d167ffb4ae1.png)

If this step is skipped, there will be a query for the experience level when adding species, culture, etc.. This will automatically add the adventure points to the arc. 
  
![Abenteuerpunkte hinzufügen](https://user-images.githubusercontent.com/80099175/112157700-c7c1b880-8be7-11eb-8f16-56b24cc9e6af.png)

## 3. choose species
After the species has been dragged onto the character sheet, a window opens in which the following things can be selected:
1. **Description**: Information about the species
2. **General**: Selection of trait changes
3. **Advantages/Disadvantages**: The recommended or suitable advantages/disadvantages can be selected directly via a check mark. They are then directly assigned to the character and automatically calculated in the adventure points. 
After assigning all other values from the species are automatically calculated with: LeP, soul power, toughness, speed, etc.  
   
![Spezies Allgemein](https://user-images.githubusercontent.com/80099175/112458313-f319e400-8d5c-11eb-8e0d-53171c5dc38c.png)
![Spezies VorNachteile](https://user-images.githubusercontent.com/80099175/112458128-c239af00-8d5c-11eb-9d56-b43085d061e7.png)

## 4. choose culture
The culture is also simply dragged onto the character sheet. Then the following window opens:
1. **Description**: Information about the culture
2. **General**: Input of local knowledge, selection of languages and scripts.
3. **Advantages/Disadvantages**: The recommended or suitable advantages/disadvantages can be selected directly via a check mark. They are then directly assigned to the character and automatically calculated in the adventure points.  
  
![Kultur Allgemein](https://user-images.githubusercontent.com/80099175/112459951-adf6b180-8d5e-11eb-876d-7fda17f45033.png)
![Kultur VorNachteile](https://user-images.githubusercontent.com/80099175/112460234-f4e4a700-8d5e-11eb-88e0-383c9c9c9de7.png)

## 5. distribute attribute points
In the [trait tab of the character sheet](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#4-eigenschaften) the trait values can be set. To use an AP calculation correctly here the traits must be increased via the + and -.  
**CAUTION**: Currently, the property values are not limited according to the rules. This means that they can be increased above the value of 14. Also, there is no limit to the 100 attribute points that can be distributed according to the rules.  
  
![Eigenschaften](https://user-images.githubusercontent.com/80099175/112467092-e601f280-8d66-11eb-8b62-916bca0cc4d0.png)

## 6. choose profession
After dragging the profession onto the character sheet, a window appears.
1. **Description**: Information about the profession
2. **Advantages/Disadvantages**: Again, recommended or suitable advantages are suggested and can be selected by ticking them.  
All other values are automatically transferred to the character and offset against the adventure points.  
  
![Profession](https://user-images.githubusercontent.com/80099175/112469186-76d9cd80-8d69-11eb-85a6-0d4be54ecdbb.png)  

## 7. select advantages and disadvantages
Next, additional advantages and disadvantages for the character can be pulled from the library into the character sheet.  
  
![VorNachteile](https://user-images.githubusercontent.com/80099175/112469777-24e57780-8d6a-11eb-8b6b-4e9f4c6920df.png)   

## 8. make increases
In order to increase skills, combat skills, spells, liturgies, etc. To increase the skills, combat skills, spells, liturgies, etc., the + and - must be used. Only then will the increases or decreases be deducted from the adventure points. If you simply enter a value, this will not happen!  
  
![Liturgien](https://user-images.githubusercontent.com/80099175/112470154-9c1b0b80-8d6a-11eb-992f-2b38d0efee6e.png) ![Kampftechnik](https://user-images.githubusercontent.com/80099175/112470221-b3f28f80-8d6a-11eb-9264-38ef37412532.png) ![Fertigkeit](https://user-images.githubusercontent.com/80099175/112470303-cbca1380-8d6a-11eb-9267-3051b1505747.png) ![EigenschaftLebenspunkte](https://user-images.githubusercontent.com/80099175/112470404-e7cdb500-8d6a-11eb-9f56-24482e90e764.png)  

## 9. select special skills
Special skills can also be dragged from the library into the character sheet. They will then be listed where they belong by type:
* General Special Skills, Languages, Writings, Fate Point Special Skills -> Traits.
  * ![Allgemeine Sonderfertigkeiten](https://user-images.githubusercontent.com/80099175/112471275-f9638c80-8d6b-11eb-9a7e-b4237e026700.png)
* Clerical/Sanctified Special Skills, Traditions -> Religion
  * ![Klerikale Sonderfertigkeiten](https://user-images.githubusercontent.com/80099175/112471320-07b1a880-8d6c-11eb-834d-4a46cadc46c4.png)
* Magic Special Skills, Traditions -> Magic
  * ![Magische Sonderfertigkeiten](https://user-images.githubusercontent.com/80099175/112471050-b6091e00-8d6b-11eb-9753-5a07ed08f2f4.png) 
* Combat Special Skills -> Combat
  * ![Kampf Sonderfertigkeiten](https://user-images.githubusercontent.com/80099175/112471191-de911800-8d6b-11eb-944b-891abd205e40.png)

## 10. make last adjustments (notes, equipment, name)
Make final adjustments in the hero document under [Equipment](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#5-ausr%C3%BCstung) and [Notes](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Charakterbogen#7-notizen).

## 11. picture and tokens (game master)
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