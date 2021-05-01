# Folgende Konzepte sollten jedem Spielleiter bekannt sein, der Foundry mit den DSA Modulen bedient

## DSA spezifisch
 - **Sprache**  
   - Die Module sind sprachabhängig. Entscheidet euch **vor dem Initialisieren,** welche Sprache ihr nutzen wollt (beim Erstellen der Welt in Foundry). Stellt die Sprache danach nicht mehr um.
   - Einträge lassen sich nur zwischen Welten importieren/exportieren, welche die gleiche Sprache verwenden.  

## Foundry spezifisch
 - **Kompendium vs. Verzeichnis vs. Charaktersheet**  
   - **Kompendium (1)** 
     - Ein Kompendium ist ein Container, der eine Vielzahl von Einträgen enthalten kann. Die Einträge werden durch den Ersteller der Kompendiums vorgegeben und sollten durch den Benutzer nicht verändert werden.
       - Kompendien können geöffnet und individuelle Einträge über Rechtsklick in die Foundry Verzeichnisse importiert werden (3). Alternativ kann ein komplettes Kompendium importiert werden, durch Rechtsklick auf den Hauptordner (anstatt auf einen Eintrag darin).
       - *Diese Daten liegen auf dem Server, werden jedoch nicht aktiv von Foundry geladen - und verbrauchen somit keine Ressourcen.*  
    - **Verzeichnisse (2)**
        - In den Verzeichnissen sind die aktiven Einträge zu finden, sortiert nach Kategorie (Szenen, Charaktere, Items, Journal Entries, Rollable Tables, Playlists).
        - Durch den Import aus einem Kompendium entsteht eine **unabhängige Kopie**. Nach Updates müssen die Einträge ggf. erneut importiert und ersetzt werden, oder manuell nachgetragen werden.
    - **Charaktersheet**
      - Einträge in einem Charaktersheet sind wiederum **unabhängige Kopien**. Wenn man zB einen Vorteil aus dem Verzeichnis in einen Charakter zieht, kann der Vorteil danach im Charaktersheet verändert werden. Der Eintrag im Verzeichnis (und Kompendium) ist von dieser Änderung nicht betroffen.
![Vergleich-Komp-Verz-Char](https://user-images.githubusercontent.com/62849695/116784133-e17dd780-aa92-11eb-9aef-f989914b7f38.png)
