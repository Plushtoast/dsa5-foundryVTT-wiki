# Game configuration
To be able to play DSA in foundry you require a list of assets including advantages, special abilities, professions, cultures or items.
There are two options to obtain all necessary assets:
1. You can purchase prepared modules from Ulisses such as the [Das Schwarze Auge Grundregelwerk](https://ulisses-spiele.de/zum-f-shop/) and import the assets
1. You can create all assets manually for your system

## How do I create necessary assets for DSA in foundry?  

To create any assets in DSA for foundry go to the items Directory and create item. Select the category you want to create and enter a name and press ok.  

![Item Directory](https://github.com/PMFlint/Test/blob/main/Item%20directory.jpg)

Depending on the type of assets you have to enter the necessary details to the asset.

## What type of assets can be created?
DSA offers a variety of different assets for your game:
| Element  | Description | 
| ------------- | ------------- | 
| advantages / disadvantages | Advantages and disadvantages give your character an edge or a hindrance |
| cultures | Where your character is from in Aventurien. Each region |
| professions | The profession of your character describes, what he does for a living besides being an adventurer and what he/she learned in the past |
| special abilities | Special abilities enhance your character, e.g. give them a powerful attack. Special abilities are also all languages and reading skills of your character |
| spells, spelltricks or rituals | Magicians can cast spells, spelltricks or rituals |
| liturgies, ceremonies and blessings | Priests of the 12 gods can cast liturgies, ceremonies or bless people |
| items, weapons, armors, poisons | Everything you need as an adventurer |
| creatures, traits for creatures (attacks, armors, special abilities) | Animals, demons, other creatures and dragons |
 
![Item creation](https://github.com/PMFlint/Test/blob/main/New%20Item.jpg)

## What information do I need to create assets for DSA in foundry?  
Assets in DSA for foundry require different information to be created.
All assets require at least

| Element  | Description | 
| ------------- | ------------- | 
| Name | Name of the asset, will be entered in the item browser  |
| Category | Category of the item, e.g. advantages |
| Description  | Description of the esset  | 

![Item creation](https://github.com/PMFlint/Test/blob/main/New%20Item.jpg)

Depending on the kind of asset you want to create different information are required as well.

### What do I have to enter for advantages / disadvantages?
Advantages and disadvantages impact your character in many ways.
Choose them carefully. :)
To create advantages or disadvantages you need to enter the following details as well:
| Element  | Description | 
| ------------- | ------------- | 
| AP-value | AP cost or bonus when choosing this asset  | 
| maximum level  | Some advantages / disadvantages can have several levels, enter the amount of levels here. NOTE: if only one level is available leave 0  | 
| requirements* | Some advantages / disadvantages can only be selected when certain requirements are met, enter them here.  | 
| effect | If your advantage / disadvantage has an in-game modifcation you can enter them here.*  |  

*For details on how to enter effects / requirements, check out our effect how to: LINK

### What do I have to enter for special abilities?  
In DSA for foundry special abilities of all categories are created as special abilities.  
![Special Abilities](https://user-images.githubusercontent.com/75448500/106729253-92e4ac80-660d-11eb-9583-52b16a2e308c.jpg)  
![Special Abilities](https://user-images.githubusercontent.com/75448500/106729332-a3952280-660d-11eb-893c-27868ea9da49.jpg)  


| Element  | Description | 
| ------------- | ------------- | 
| AP-value | AP cost or bonus when choosing this asset  | 
| requirements* | Some special abilities can only be selected when certain requirements are met, enter them here.  | 
| category | ![Categories](https://user-images.githubusercontent.com/75448500/106729551-e35c0a00-660d-11eb-8e19-c6cb44fd9ebb.jpg) | 
| rule text | The rule text can be displayed in the chat window for all players / gm to be seen.  | 
| maximum level  | Some special abilities can have several levels, enter the amount of levels here. NOTE: if only one level is available leave 0  | 
| effect | If your special ability has an in-game modifcation you can enter them here.*  | 
| Combat skill | Combat special abilities can be linked to a combat skill   | 

*For details on how to enter effects / requirements, check out our effect how to: LINK


### What do I have to enter for cultures  
![Culture](https://user-images.githubusercontent.com/75448500/106729947-549bbd00-660e-11eb-9aa5-5c42f962dac8.jpg)
![Culture](https://user-images.githubusercontent.com/75448500/106729960-582f4400-660e-11eb-8289-1c38ac680f33.jpg)

| Element  | Description | 
| ------------- | ------------- | 
| AP-value | AP cost or bonus when choosing this asset  |
| language* | The language / languages spoken in this culture. If the character can choose between languages separate them with a ,  |
| writing* | The script available in the culture |
| local town knowledge** | The player can enter his local town knowledge |
| suitable professions*** | List all possible professions this culture knows |
| social status | Some cultures have slaves or noblemen |
| suitable advantages*** | Advantages usually recognized with this culture, e.g. Thorwals are tough |
| suitable disadvantages*** | Disadvantages usually recognized with this culture, e.g. Thorwals superstitious |
| unsuitable advantages*** | Advantages not recognized with this culture |
| unsuitable disadvantages*** | Disadvantages not recognized with this culture |
| suitable talents*** | Talents members of this culture usually possess |
| unsuitable talents*** | Talents members in this culture do not know |
| selected talents*** | Talents players will receive when selecting this culture |
 
*language / writing must be set up as special abilities earlier
**leave empty if player can enter text manually
***separate by ,

### What do I have to enter for professions/careers?
| Element  | Description | 
| ------------- | ------------- | 
| optional picture | To make your profession more recognizable you can upload a picture. If you purchase the Grundregelwerk, all professions will come with a picture |
| AP-value | AP cost or bonus when choosing this asset |
| language points included |  |
| suitable advantages*** | Advantages usually recognized with this profession |
| suitable disadvantages*** | Disadvantages usually recognized with this profession |
| unsuitable advantages*** | Advantages not recognized with this profession|
| unsuitable disadvantages*** | Disadvantages not recognized with this profession|
| talents*** | Talents a character receives when choosing this profession |
| combat skills*** | Combat skills a character receives when choosing this profession |
| special abilities**/*** | Special abilities  character receives when choosing this profession |
| Magical abilities | Select if this profession is magical/mundane/clerical |  

![Profession](https://user-images.githubusercontent.com/75448500/106730545-cc69e780-660e-11eb-9fab-71dc04823cbf.jpg)
   

Additional attributes for clerical professions:  
![Clerical Profession](https://user-images.githubusercontent.com/75448500/106730785-05a25780-660f-11eb-860a-63f52f7effa6.jpg)  
  

| Element  | Description | 
| ------------- | ------------- | 
| Primary attribute | Main attribute of the religion, e.g. strength  |
| Tradition | Tradition of the god, e.g. Rondrakirche |
| Aspect | Aspects of the god. Each god is assigned with several aspects |
| Favored skills | Talents the god approves of  |
| Liturgies | Liturgies the character will receive when choosing this profession |
| Blessings | List of all blessings the character receives when choosing this profession |
 

Additional attributes for magical professions
| Element  | Description | 
| ------------- | ------------- | 
| Primary attribute | Main attribute of the religion, e.g. strength |
| Tradition | Tradition of the magician, e.g. Elf |
| Property |  |
| Spells | Spells the character receives when choosing this profession |
| Spelltricks | Spelltricks the character receives / can choose from when choosing this profession |
| Number of Spelltricks | Usually characters only receive limited amount of spelltricks, enter the amount here. |  

![Magical Profession](https://user-images.githubusercontent.com/75448500/106730964-3aaeaa00-660f-11eb-8606-a624ed17d71b.jpg)
 

### What do I have to enter for spells, spelltricks or rituals?  

 Spells
| Element  | Description | 
| ------------- | ------------- | 
| Attribute 1 | Attribute to cast the spell |
| Attribute 2 | Attribute to cast the spell |
| Attribute 3 | Attribute to cast the spell |
| Range | Range in yard of the spell; with some spells the range can be modified: Modification (Yes or No) |
| Spell effect duration | How long does the spell last |
| Target category | The possible type of the target of the spell |
| Time to cast | KR to cast the spell, some spell cast durations can be modified: Modification (Yes or No) |
| AsP cost | AsP cost of the spell, some spells require an initial amount of AsPs and some to keep the spell running, the cost of spells can be modified: Modification (Yes or No) |
| AsP Detail |  |
| Up-keep| If the spell can be kept active for a time, enter additional AsP costs here |
| Effect description | Spell effect description to display in Chat for all to see |
| Effect | enter the effect details here, e.g. 2d6 damage |
| Traditions | Who knows the spell: (allgemein, Elfen, Gildenmagier, Hexen) |
| Resistance | How to resist the spell: SK or toughness |
| Improvement | Cost of AP to increase the level of the spell: A, B, C, D |  

![Spell](https://user-images.githubusercontent.com/75448500/106731547-e0faaf80-660f-11eb-8389-07372f62e0ef.jpg)
![Spell2](https://user-images.githubusercontent.com/75448500/106731552-e1934600-660f-11eb-9c07-4afbf65ff91b.jpg)
 

 Spelltricks
| Element  | Description | 
| ------------- | ------------- | 
| Range | Range in yard of the spelltrick |
| Spell effect duration | How long does the spelltrick last |
| Target category | Possible type of the target |
| Property | Enter the merkmal of the spell, e.g. Einfluss, Verwandlung |
  
![Spelltrick](https://user-images.githubusercontent.com/75448500/106731159-734e8380-660f-11eb-95bc-3e1ea510f709.jpg)
![Spelltrick2](https://user-images.githubusercontent.com/75448500/106731162-73e71a00-660f-11eb-8890-90a96306b38c.jpg)


 Ritual
| Element  | Description | 
| ------------- | ------------- | 
| Attribute 1 | Attribute to cast the ritual |
| Attribute 2 | Attribute to cast the ritual |
| Attribute 3 | Attribute to cast the ritual |
| Range | Range in yard of the ritual; with some spells the range can be modified: Modification (Yes or No)  |
| Spell effect duration |  |
| Target category | Possible type of the target |
| Time to cast | ROUNDS to cast the ritual, some ritual cast durations can be modified: Modification (Yes or No)  |
| AsP cost | AsP cost of the ritual, some ritual require an initial amount of AsPs and some to keep the spell running, the cost of rituals can be modified: Modification (Yes or No) |
| Permanent AsP cost | Some rituals require permanent sacrifice of AsP. Enter them here |
| AsP Detail | Description of the the spell cost |
| Maintain| If the ritual can be kept active for a time, enter additional AsP costs here |
| Effect description | Ritual effect description to display in Chat for all to see  |
| Effect | enter the effect details here, e.g. 2d6 damage |
| Distirbution | What traditions use this ritual |
| Resistance| How to resist the spell: SK or toughness |
| Improvement | Cost of AP to increase the level of the ritual: A, B, C, D |  

![Ritual](https://user-images.githubusercontent.com/75448500/106731684-0b4c6d00-6610-11eb-9824-e4ba2fbfa5c7.jpg)
![Ritual2](https://user-images.githubusercontent.com/75448500/106731687-0be50380-6610-11eb-95c0-2c1e4aab9f1f.jpg)
 

### What do I have to enter for liturgies, ceremonies and blessings?  

 Blessings
| Element  | Description | 
| ------------- | ------------- | 
| Range | Range in yard of the blessing |
| Duration |  |
| Target category | Possible types of the target |
| Aspect| Aspect of the blessing: e.g. general|  

![Blessing](https://user-images.githubusercontent.com/75448500/106736320-98de8b80-6615-11eb-80bf-3cc574ba74df.jpg)
![Blessing2](https://user-images.githubusercontent.com/75448500/106736322-99772200-6615-11eb-9c56-3f7b1ed1bfec.jpg)


 Liturgies
| Element  | Description | 
| ------------- | ------------- | 
| Attribute 1 | Attribute to cast the liturgy |
| Attribute 2 | Attribute to cast the liturgy |
| Attribute 3 | Attribute to cast the liturgy |
| Range | Range in yard of the liturgy; with some liturgies the range can be modified: Modification (Yes or No) |
| Spell effect duration |  |
| Target category | Some liturgies can be cast on only the character, some via touch, some to a distance: Self, touch, sight, etc. |
| Time to cast | KR to cast the spell, some spell cast durations can be modified: Modification (Yes or No) |
| KaP cost | KaP cost of the spell, some liturgies require an initial amount of KaPs and some to keep the liturgy running, the cost of liturgy can be modified: Modification (Yes or No) |
| AsP Detail |  |
| Maintain| If the liturgy can be kept active for a time, enter additional KaP costs here |
| Effect description | Liturgy effect description to display in Chat for all to see |
| Effect | enter the effect details here, e.g. 2d6 damage |
| Distribution| What traditions use this liturgy |
| Resistance| How to resist the spell: SK or toughness |
| Improvement | Cost of AP to increase the level of the Liturgy: A, B, C, D |  

![Liturgie](https://user-images.githubusercontent.com/75448500/106737078-8ca6fe00-6616-11eb-8483-2b0816ff8e74.jpg)
![Liturgie2](https://user-images.githubusercontent.com/75448500/106737082-8ca6fe00-6616-11eb-953e-ef9c13bf2507.jpg)
 

 Ceremonies
| Element  | Description | 
| ------------- | ------------- | 
| Attribute 1 | Attribute to cast the ceemony |
| Attribute 2 | Attribute to cast the ceemony |
| Attribute 3 | Attribute to cast the ceemony |
| Range | Range in yard of the ceremony; with some ceremonies the range can be modified: Modification (Yes or No) |
| Spell effect duration |  |
| Target category  | Some ceremonies can be cast on only the character, some via touch, some to a distance: Self, touch, sight, etc.  |
| Time to cast | Rounds to cast the ceremony, some ceremony cast durations can be modified: Modification (Yes or No) |
| KaP cost |  KaP cost of the ceremony, some ceremonies require an initial amount of KaPs and some to keep the ceremony running, the cost of ceremony can be modified: Modification (Yes or No) |
| Permanent KaP cost | Some ceremonies require permanent sacrifice of AsP. Enter them here  |
| KaP Detail |  |
| Maintain| If the ceremony can be kept active for a time, enter additional KaP costs here |
| Effect description | ceremony effect description to display in Chat for all to see |
| Effect |  enter the effect details here, e.g. 2d6 damage  |
| Tradition | Which church does know this ceremony, e.g. Phex (Schatten) |
| Resistance | How to resist the spell: SK or toughness |
| Improvement | Cost of AP to increase the level of the ceremony: A, B, C, D |  

![Ceremony](https://user-images.githubusercontent.com/75448500/106737253-bfe98d00-6616-11eb-9eaf-46ab5c03b52f.jpg)
![Ceremony2](https://user-images.githubusercontent.com/75448500/106737256-c0822380-6616-11eb-8b19-95302114b26d.jpg)
 

### What do I have to enter for items?
| Element  | Description | 
| ------------- | ------------- | 
| Price | Price in silver of the item |
| amount | How many do you purchase, e.g. 1 for a sword or 20 for arrows |
| weight | Weight of the item in stone, e.g. 0.05 |
| description | Description of the item |  

![Item](https://user-images.githubusercontent.com/75448500/106737408-e7d8f080-6616-11eb-8a19-1336d2b5d1a1.jpg)
 
On the details tab select the category of your item.

 Special attributes melee weapons: 
| Element  | Description | 
| ------------- | ------------- | 
| Damage | Damage value of the weapon, e.g. 1d6+4 |
| Attack modifier | Attack modifier for carrying the weapon in the right hand / in the off hand |
| Parade modifier | parade modifier for carrying the weapon in the right hand / in the off hand |
| Damage Threshold| Attribute level when the weapon makes more damage|
| Primary Attribute| Attribute for making more damage|
| combat skill | Talent with which the weapon is used with |
| Range | Short / Medium / Large |
| Efect | |
| Structure Points | Number of Structure points of the weapon |  
  
![Weapon](https://user-images.githubusercontent.com/75448500/106738706-90d41b00-6618-11eb-932b-99ccc57b4bc3.jpg)
![Weapon2](https://user-images.githubusercontent.com/75448500/106738710-92054800-6618-11eb-8066-ccd6cf17e29d.jpg)
 

 Special attributes range weapons: 
| Element  | Description | 
| ------------- | ------------- | 
| damage | Damage value of the weapon, e.g. 1d6+4|
| reload actions | Rounds it takes to reload the weapon|
| range short/mid/long | Range separated by /|
| type of ammunition  | arrow / bolts / bullets / stone|
| combat skill | Talent with which the weapon is used with|
| effect | |
| Structure Points | Number of Structure points of the weapon |  

![range weapon](https://user-images.githubusercontent.com/75448500/106739310-469f6980-6619-11eb-9531-20a19f8c1f85.jpg)
![range weapon2](https://user-images.githubusercontent.com/75448500/106739317-47380000-6619-11eb-8657-f47f7dbe0f0f.jpg) 

 Special attributes armors 
| Element  | Description | 
| ------------- | ------------- | 
| Protection| level of armor|
| Encumbrance| Level of how much Belastung the armor puts on |
| Effect | Additional Penealties e.g. -1 INI, -1 GE|  
| Structure Points | Number of Structure points of the armor |  

![Armor](https://user-images.githubusercontent.com/75448500/106739748-c4637500-6619-11eb-84ed-1253496355e5.jpg)
![Armor2](https://user-images.githubusercontent.com/75448500/106739750-c4fc0b80-6619-11eb-95d7-158bc21c05f7.jpg)

 
NOTE: Effects are currently only applicable for GE and INI

### What do I have to enter for creatures?  

Creatures are created on the Actors Directory.  
![ActorsDirectory](https://user-images.githubusercontent.com/75448500/106740030-32a83780-661a-11eb-9f79-94acc980c138.jpg)  

Afterwards create the creature as you would create a character:  

![Biest](https://user-images.githubusercontent.com/75448500/106745455-69ce1700-6621-11eb-80b4-1c6878393413.jpg)


Traits  

![trait](https://user-images.githubusercontent.com/75448500/106745393-5327c000-6621-11eb-95da-ecfb59c7a578.jpg)
![trait2](https://user-images.githubusercontent.com/75448500/106745397-53c05680-6621-11eb-8398-ba0edec5797a.jpg)

