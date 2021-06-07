# Combat
Combat begins with the GM creating an [encounter and the initiative](https://github.com/Plushtoast/dsa5-foundryVTT/wiki/de-Begegnung_und_Initiative) is rolled.  

## Differences between the GM and the player
The combat process differs between player and GM in that the GM must also select the token to attack with beforehand. The easiest way to do this is to double-click the active player in the INI list. This selects the clicked token and opens the character sheet.  
Also, the **4. Apply Damage** on NPCs and creatures can only be done by people with the *Owner* right. This usually means that only the GM can apply damage to NPCs and creatures.

## 1. mark token to attack
**Player:** To select an enemy token as a target either double *right* click on the desired token, or mark it as a target via the left menu bar (select token (1) and click on the target (2)).  
**Note:** If you control multiple actors (familiars, animal companions, etc.) you have to select the attacking token beforehand.
  
  ![Ziel markieren](https://user-images.githubusercontent.com/80099175/113664976-fc844400-96ac-11eb-9495-3343ef85a55b.png)
  
**Game Master:** You use the token context menu of the tokens to mark your target. For this click once with the right mouse button on the token and then click with the left mouse button on the target 
    
  ![GM Mark Target](https://user-images.githubusercontent.com/80099175/113664250-b7134700-96ab-11eb-908a-f04368f3cf32.png)
  
The target will then be marked by 4 small orange arrows. The other players (GM) will see a dot in the color of the player (not the token) who marked this token.
  
  ![Markiert](https://user-images.githubusercontent.com/80099175/113664857-c941b500-96ac-11eb-8f82-c99a59523735.png)
  
**Tip:** It is also possible to mark several targets. (Keyword: all-around attack).
  
## 2.1 Action - Execute attack
Once the token is marked, perform the attack via the combat arc or else directly via the character's Combat Tracker (see below).  

### Attack via Combat Tracker
It is possible to attack the marked opponent directly with a melee or ranged attack with the actor whose turn it is according to the Combat Tracker.
1. click on the combat icon in the Combat Tracker
2. select action and click ok  
  
  ![Angriff Combat Tracker](https://user-images.githubusercontent.com/80099175/114890076-fdcf1280-9e0a-11eb-8b4b-aad8be13ab2e.png)
  
### Result
The result of the attack is displayed in the chat. This can be used to execute the reaction of the attacked actor.  
  
  ![Angriff](https://user-images.githubusercontent.com/80099175/113664761-a1525180-96ac-11eb-87c9-ed45d04dd0eb.png)
  
## 2.2 Perform action (spell, liturgy, reload, etc.)
Besides attacks, there are other actions you can perform: Cast a spell, cast a liturgy, reload, etc.  
So far, however, these actions have no game-mechanical effect on the combat and the result must be managed by you.   

## 3.1 Reaction 
To react to an attack, a *token to attack must have been marked* by the attacker beforehand. If this has not happened, you simply roll a reaction via the character sheet. However, the damage can then no longer be applied via chat.  
In the chat window, after a **successful** attack, a *reaction* button appears for all owners of the token. Clicking it opens the reaction window where you have access to all reaction options of the attacked actor:
  
  ![Reaktion](https://user-images.githubusercontent.com/80099175/113664454-0e191c00-96ac-11eb-8517-c29201d34cd6.png)
  
## 3.2 No reaction
You also have the option to not react to an attack. This can be necessary if you have no reactions left in this combat round, or if you prefer to react without aggravations to the opponent, who will probably cause more damage. To do this, select *no reaction* in the reaction window.
g if you have no more reactions in this combat round or you prefer to react without aggravations to the opponent 
  ![Keine Reaktion](https://user-images.githubusercontent.com/80099175/113666128-0a3ac900-96af-11eb-81c9-335d59962939.png)

## 4. apply damage
If the attack was successful and the reaction failed or was not reacted, you can right click on the damage calculation message in the chat and then choose between:
* Apply damage as TP
* Apply damage as SP
  
  ![Schaden anwenden](https://user-images.githubusercontent.com/80099175/113665400-b4b1ec80-96ad-11eb-8c14-26b1d3cd68dc.png)
  
**Tip:** whether the damage calculation message is seen by players can be set in the system settings.

## 5. end turn
To end his turn click as a player on *end turn* at the bottom of the *combat tracker*:
  
  ![Zug beenden](https://user-images.githubusercontent.com/80099175/113665819-723cdf80-96ae-11eb-8231-3fe98c61b67c.png)

As GM, click on the next or previous arrows in the *Combat Tracker*:
  
  ![End Turn GM](https://user-images.githubusercontent.com/80099175/113665923-9dbfca00-96ae-11eb-9b8b-28fbe446d549.png)

### Delay action
To implement the *delay* action, the GM can change the INI of the players as desired. To do this, right-click on the character in question in the *Combat Tracker* and click on *Edit Participants*. Here you can edit the chosen INI and the base value:
  
  ![INI bearbeiten](https://user-images.githubusercontent.com/80099175/113668704-ec6f6300-96b2-11eb-94e1-93c9abb1f049.png)



*Translation information*  
*[x] updated: 2021-06-05*  
*[x] german entry [linked](de/de-Kampf.md)*  
*[x] automatic translation*  
*[ ] proof read*  
*[ ] change pictures with EN version*
*[ ] change links*  