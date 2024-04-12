# Eigene Designs verwenden

Es gibt eine Einstellung, um den Skin zu ändern (Gesamtstil für Das Schwarze Auge).

Derzeit verfügbare Skins sind:

* "immersiv", war in allen bisherigen Versionen so
* "immersiv dsa4/5", Standard, beinhaltet die Layoutänderungen gemäß der neuen DSA5 RSHs
* "nackt (beta)", mehr wie der Foundry-Standard, der im Grunde ein abgespeckter Skin ist, damit Modder ihre Skins leichter hinzufügen können

Warum haben wir dies hinzugefügt? Es könnte ein "Dark Mode"-Skin in Zukunft geben. Außerdem kannst du jetzt deine eigenen CSS-Stylesheets einfacher hinzufügen und alle Ihre Spieler können ihren Lieblingsskin selbst auswählen.

Entwickler, die ihren eigenen Stil erstellen wollen, sollten im Grunde folgendes tun:

* Ein neues Modul erstellen
* Hinzufügen von gescopten CSS-Styles
* JS-Datei hinzufügen und den Stil über den Hook "registerDSAstyle" registrieren

Example:

```scss
//(s)css style file
.dsa5-myStyleName {
    p{ 
        color: darkblue; 
    }
    ...all my style code
}
```

```js
Hooks.on("registerDSAstyle", styles => {
    styles["dsa5-myStyleName"] = "Some fancy style name which can also be translated with lang files";
})
```
