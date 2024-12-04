## Probe Anfordern

Als Spielleiter gibt es im Chatfenster über die Befehle /rq (einfache Probe) und /gc (Gruppenprobe) die Möglichkeit eine Nachricht zu erstellen, in der eine Schaltfläche angeklickt werden kann, um die gewünschte Probe direkt ausführen zu können.

Dies kann ebenfalls in Journaleinträgen verwendet werden.  
Befehl der in den Text eingebettet werden muss: @Rq[TALENT MODIFIKATOR] oder @Gc[TALENT MODIFIKATOR] 
Der Modifikator muss immer mit dazu geschrieben werden. Wird die Probe nicht modifiziert muss eine 0 eingetragen werden (Bsp.: `@Rq[Sinnesschärfe -1]`/`@Gc[Kraftakt -1]`). Ein positiver Modifikator wird immer ohne das Vorzeichen eingetragen (Bsp.: @Rq[Körperbeherrschung 2]/@Gc[Wildnisleben 2]/@Rq[Bekehren & Überzeugen 0]).

![Journal Request Code](de/images/de-journal-probe_anfordern_0.webp)
![Journal Request](de/images/de-journal-probe_anfordern_1.webp)

### Beispiel Spieleiter-Vorbereitung:
Dies ist nützlich um direkt zum Beispiel diesen Journaleintrag direkt auf der Karte in einem Raum zu platzieren.
Dort kann dann zum Beispiel eine verschlossene Truhe stehen die eine Schlösserknacken Probe verlangt.

Journal Eintrag: *Der Raum misst etwa 3x3 Schritt. In ihm stehen ein Bett, ein Nachtschrank, ein Kleiderschrank und ein kleiner Tisch mit einem Stuhl. 
Am Fußende des Bettes steht eine große Truhe.
Diese ist verschlossen und muss mit einer @Rq[Schlösserknacken -1] Probe geöffnet werden.*
![Verschlossene Truhe](de/images/de-journal-probe_anfordern_2.webp)

Klickt der Spielleiter auf die Schaltfläche erscheint ein Chat Eintrag welchen die Spieler direkt nutzen um den Wurf direkt abzulegen.
![grafik](de/images/de-journal-probe_anfordern_3.webp)

## Vorbereitete Probe würfeln
Analog zu dem `/ch` [Chat Befehl für die 3W20 Probe](de-chatbefehle#ch-3w20-probe) lassen sich Proben in das Journal integrieren.

```
@Ch[Sinnesschärfe 1 options={"attrs":"13,15,15","fw":6}]
```

Wobei die Zahl nach der Probe die Erschwernis ist, und die drei Ziffern im `attrs` Objekt den drei Attributen entrsprechen und `fw` dem Fertigkeitswert auf den gewürfelt wird. Dabei wird nicht überprüft, ob die Attribute Sinn ergeben (also die beiden Initiative Proben in diesem Beisipel denselben Wert haben).

## Weitere Journal Enricher

```
@AP[15] : 15 Abenteuerpunkte an Spieler auszahlen
@Pay[15] : 15 Silber von Spielern verlangen
@GetPaid[15] : 15 Silber an Spieler auszahlen
@EmbedItem[Item.mIgQ4hvCiqahFcrD] : Gegenstand in Journal einbetten
@PostChat[Geheimer text didelu] : Text and Spieler flüstern
@Info[uuid] : Informationsitem einbinden
```

*[x]Zuletzt bearbeitet: 04.11.2021*  
*Änderung: Inhalt kontrolliert und Bilder ausgetauscht*
