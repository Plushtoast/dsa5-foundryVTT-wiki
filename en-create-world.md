There is also a video to go with this tutorial: [Installing The Dark Eye in Foundry VTT](https://www.youtube.com/watch?v=bzgb_pmw-bs) (german only)

# What is what
When you start up Foundry for the first time, you see the main GUI. Before we can start a TDE game, we have to install the needed parts  

![overview](images/en-create-world-01.jpg)  

**1. Game Worlds**  
   This is where you can create one (or many) worlds, based on a game system. Every world has ONE designated game system. A game system can have many worlds based on it. The world contains your scenes, characters, journal entries etc.
   It also contains a setup: selected options, player logins and password settings.  
   
**2. Game Systems**  
   Here, you can install and update game systems. They contain basic rules, character sheet templates etc.
   It's quite technical, what you have to know: you NEED at least one game system, in our case that's DSA/TDE.  
   
**3. Add-on Modules**  
   There are hundreds of modules available. They can contain functionalities, token, scenes, sounds etc.  
   - Learn to use Foundry without modules first
   - Test for compatibility before you use a module at all (in a separate test world)
   - Additional content may be available as "Premium" modules for money. That's the case for TDE modules like Magic. After you purchase them, you have to enter the license information on the Foundry website. Afterwards, you can download it in here.  

# Preparation: Install game system and modules  
## Game System  
Before creating a new world for DSA5, the game system must be installed.  
  
![install system](images/en-create-world-02.jpg)  
1. first *game systems* -> *install system*  
2. enter DSA or "dark eye" in the search field
3. click the install button next to the game system's entry.  

## Modules
**"The Dark Eye - Introduction Adventure"** is a free module for TDE. It comes with scenes, a story and pre-made characters. It can help you getting into the system, or to try out TDE as a system at all.  
If you purchased other modules, you can install them instead, or you can install them all together. The installation process is always the same.  

![module installation](images/en-create-world-03.jpg)  
1. *Add-on Modules* -> *Install Module*.
2. Enter text in the field *search packages* to find what you are looking for  
    - Purchased modules can be found in the "Premium Content" category
    - In general, you can search for "DSA" or "dark eye".  
3. These modules are good for a start
    - The Dark Eye - Introduction Adventure (free / perfect  to check out everything)
    - The Dark Eye 5th Ed. - Core Rules (purchase / all the base rules and entries from the base rule book)
      - additional modules can be bought from Ulisses, depending on what you want to do (Magic, Gods, Creatures etc.)
      - alternatively, you can create additional entries by hand. It takes time, but could suffice if you only need a few things.
    - FXMaster (free / allows for some effects used in the introduction adventure)  
    - Game Audio Bundle 1 - 4 (free / allows for some effects used in the introduction adventure)   
    - Tokenizer (free / allows to create nice token for TDE characters directly in Foundry)  

# Create the world
With the game system and possible modules installed, it's time to set up our playground, the place where players connect and play together. In Foundry, that's called a world, so let's create one.  

*Game Worlds* -> *Create World* will open a new window  
![create world](images/en-create-world-04.jpg)  

1. **World Title** - The Name of your World. Will be shown in your list of worlds, used to identify by humans. Our World is named after the groups name, but you could go for "Dere", "Live Server", "virtual table" etc.  
To test out modules, I have another world named "TEST ONLY".  
**Can be changed after creation**  
2. **Data Path** - will be the name of the folder on the harddrive where Foundry stores all world-related infos. Use this-kind-of-format to name things, no spaces, no capital letters, no special characters.  
**Can NOT be changed after creation**
3. **Game System** - choose The Dark Eye 5 which we downloaded for this  
**Can NOT be changed after creation**
4. **Background image** - choose whatever you like. Will be the background for the login-page of this world.
**Can be changed after creation**
5. **Next Session** - if you already know this, you can set the date and time for the next session. Can be seen on the login-page of this world.
**Can be changed after creation**
6. **World description** - Use the editor to write some flavour text, summarize the adventure, you can write whatever you want and use links, embedd images (from URLs only) etc. Be aware, you can see this on the login-page of your world, but the window is rather small, so don't go overboard with big pictures and dozens of lines of text. Save that effort for in-world :).  
Warning: When you hit the SAVE button in that text editor, it instantly creates the server (Foundry 0.8.6). This may be a bug, but do this as a last step in the process.  
**Can be changed after creation**
7. **Create World** - click the magic button and feel the power of creation running trough your fingertips!  
In reality, it's quite underwhelming, but if everything went well, you should see your world in the list now.  

![launch world](images/en-create-world-05.jpg)  
Click "Launch World", and...

... voilà, welcome to the login screen.  
![launch world](images/en-create-world-06.jpg)  

Login as GM (default password is empty). 
The very first thing you should do within Foundry is go and set a GM password.


# Initialize DSA 5 Quickstarter and Rulebook
After starting a world, you can log in as Gamemaster (*Select Player*) (*Join Game Session*).
After that you may get the message Language settings. Here you can choose between *de* for German and *en* for English.
![Auswahl Sprache](https://user-images.githubusercontent.com/80099175/111479150-001d4e80-8731-11eb-9b5c-753ad24bd892.png)

Next the Quickstarter module must be activated. Otherwise the DSA 5 character sheets and a few compendium contents are available, 
but everything has to be rebuilt.
1. click on the cogwheel (*game settings*) -> *manage modules*.
2. check the box in front of *The Dark Eye - Introduction Adventure* and click on *Update Modules*.  
![DSA Introducion aktivieren](https://user-images.githubusercontent.com/80099175/111480273-1aa3f780-8732-11eb-941c-07547fe1f1b3.png)
3. when setting the checkmark a dependency message may appear. This should always be confirmed with *Yes*:  
![Abhängigkeiten](https://user-images.githubusercontent.com/80099175/111480895-bd5c7600-8732-11eb-8fe8-554389cd4839.png)
4. as soon as the world has reloaded, a window appears with short instructions and an initialization. Here click on *Initialize*. 
This will copy all the contents of the module into the respective categories (scenes, actors, notes, etc.).  
![Initialisieren](https://user-images.githubusercontent.com/80099175/111483176-db2ada80-8734-11eb-9600-5dc837899aa4.png)
The initialization can also be repeated via the gear wheel (*Settings*) on the top right -> *Customize Settings* -> *Module Settings* 
-> *The Dark Eye - Introduction Adventure* -> *Initialize*.  
This is only necessary if you clicked away the dialog the first time. 
If you just do this again, the entries will be copied to the categories again and will be duplicated.
![Manuell Initialisieren](https://user-images.githubusercontent.com/80099175/111482945-a7e84b80-8734-11eb-8ed0-247b453de842.png)


*Translation information*  
*[x] updated: 2021-06-07*  
*[x] german entry [linked](de/de-DSA_5_Welt_erstellen.md)*  
*[x] automatic translation*  
*[ ] proof read*  
*[ ] change pictures with EN version*
*[ ] change links*  
