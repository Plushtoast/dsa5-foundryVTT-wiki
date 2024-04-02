## The following should be familiar to any game master using Foundry with the DSA modules.

## DSA specific  
 - **Language  
   - The modules are language dependent. Decide **before initializing / importing,** which language you want to use (when creating the world in Foundry).
     Do not change the language afterwards.
   - Entries should only be imported/exported between worlds that use the same language, else you will run into problems.  


## Foundry specific
 - **Compendium vs. directory vs. character sheet**  
   - **Compendium (1)**  
     - A compendium is a container that can contain a variety of entries. The entries are predetermined by the compendium creator and should not be modified by the user.
       - Compendiums can be opened and individual entries can be imported into the Foundry directories by right-clicking (3). Alternatively, a complete compendium can be imported by right-clicking on the main folder (instead of an entry in it).
       - *This data resides on the server, but is not actively loaded by Foundry - and thus does not consume resources.  
    - **Directories (2)**  
        - The directories contain the active entries, sorted by category (Scenes, Characters, Items, Journal Entries, Rollable Tables, Playlists).
        - Importing from a compendium creates a **independent copy**. After updates, the entries may have to be re-imported and replaced, or added manually.
    - **Character sheet (3)**  
      - Entries in a character sheet are **independent copies**. For example, if you drag an advantage from the directory into a character, the advantage can be changed in the character sheet afterwards. The entry in the directory (and compendium) is not affected by this change.
![Vergleich-Komp-Verz-Char](images/en-important-concepts_0.png)

 - **Characters & Tokens**
   - A character ("actor") is any entry in the "Actors Directory" in Foundry. This includes player characters as well as NPCs, animals - anything that uses a character sheet.
   - When a character is dragged onto a scene, a token is generated based on the settings in the Prototype token (see below).
     - A token can be linked to the entry (in the "Actors Directory"), or unlinked, via "Link Actor Data".
       - Linked tokens "share" the character sheet with the entry in the Actors Directory. Changes are transferred immediately. If you add e.g. an armor to the character entry, all linked tokens have the same state immediately.
       - Unlinked tokens are a copy of the entry in the Actors Directory. No matter what you do with them, the changes only happen to the token, the character itself remains unaffected.  
     - A token can be configured to show, for example, the character's name and LeP, whether it is linked, and so on.
    It is important to know the difference between a token on the scene (=Token Configuration) and a prototype token (=basic setting to the token in the character sheet itself).
       - By double-clicking on a token, the character sheet (of the TOKEN, not of the character) opens. By clicking on the button for the token settings (top right in the charsheet) the settings for this one token will open. Changes only affect this one token that was clicked.
       - Clicking on the character in the directory opens the character sheet (of the character, not of a token). Clicking on the token settings button (top right of the charsheet) opens the settings for the PROTOTYPE token. This prototype is used to generate a token when dragging the character onto a scene.
       - More information about this, directly on the [Foundry Website](https://foundryvtt.com/article/tokens/)
![Token-settings](images/en-important-concepts_1.png)


*Translation information*  
*[x] updated: 2021-06-09*  
*[x] german entry [linked](de/de-wichtige-Konzepte.md)*  
*[x] automatic translation*  
*[x] proof read (kind of)*  
*[x] change pictures with EN version (not necessary)*
*[x] change links (not necessary)*  

