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
2. then enter DSA or "dark eye* in the field *search packages*  
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
    - FXMaster (free / allows for some effects used in the introduction adventure
    - Game Audio Bundle 1 - 4 (free / allows for some effects used in the introduction adventure)
    - Tokenizer (free / allows to create nice token for TDE characters

# Create DSA 5 world
To create a new world, go to the Foundry Admin menu and select *Game Worlds* (1) -> *Create World* (2).
Here you have to enter the name of the world (3), the path in which the world will be saved (4) and the rules system (5). 
(Important: For DSA *The Dark Eye (5th Edition)*) must be selected (5).
![Welt erstellen](https://user-images.githubusercontent.com/80099175/111475867-d282d600-872d-11eb-814f-79482293ad78.png)

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
