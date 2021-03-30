# Active Effects
 You can now add any custom effect to actors, which can alter the actors base stats. This is an important upgrade for future improvements regarding spell automation and effects of items. 
 
**You can change any underlying data value of actors!**. But keep in mind that some of them are calcualted and will be overriden and some of them should not be messed with.
Unfortunately this requires some understanding of the base data scheme of actors. We will work on further faciliating improvements and on tutorials on how to do stuff like that. 
Also we plan to incorporate those effects in spells and items so they get applied automatically.


## Actor Effects
To add a custom effect to a character open the character sheet and go to the status tab. Add a new status with the plus button inside the add effect menu.
You can then edit the new status. Change its name and set the desired alterations to you character.

![grafik](https://user-images.githubusercontent.com/44941845/112887103-0d442100-90d3-11eb-8ee5-aa056fcbe8e7.png)

### Examples
#### Armatrutz
Edit the new effect. Go to the "Effects" tab and add a new attribute key labeled "data.totalArmor". Set the mode to "Add" and set the effect value to the number of the resulting armor of the spell armatrutz f.e. 1.
Save the changes and close the Active Effect Window. You can then enable or disable the effect whenever the spell is active. (This is planned to occur automatically at some point in the future).
You could also create several Armatrutz effects each with a different armor value and only the enable the proper one on each encounter. You should see the changed armor value on the combat tab.

![grafik](https://user-images.githubusercontent.com/44941845/112887203-264cd200-90d3-11eb-8acd-901577120573.png)



#### Permanent loss of Arcane Energy
If your character lost arcane energy through a ritual or a magical binding you could track the loss with a Active Effect. To do so, create a new effect, edit it, go to the Effects tab, then add a new Attribute Key labeled "data.status.astralenergy.gearmodifier", set the mode to "Add" and the value to f.e. -2.
Save the effect and enable it until you regained your lost points.

![grafik](https://user-images.githubusercontent.com/44941845/112887282-441a3700-90d3-11eb-8d86-58271d4275eb.png)


## ToDo
We plan to faciliate the selection of the right attribute key. Also spells, items, specialabilities and so one will gain that feature too.
