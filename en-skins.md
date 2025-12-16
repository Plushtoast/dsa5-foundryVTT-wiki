# Using Custom Designs (Skins)

There is a setting to change the skin (overall style for The Dark Eye).

![Skin Setting](images/en-skins-setting.webp)

Currently available skins are:

* "immersive" - the style used in all previous versions
* "immersive dsa4/5" - default, includes layout changes according to the new DSA5 RSH books
* "naked (beta)" - more like Foundry standard, essentially a stripped-down skin to make it easier for modders to add their own skins

![Immersive Skin](images/en-skins-immersive.webp)

![Naked Skin](images/en-skins-naked.webp)

Why did we add this? There might be a "Dark Mode" skin in the future. Also, you can now more easily add your own CSS stylesheets and all your players can choose their favorite skin themselves.

## For Developers

Developers who want to create their own style should basically do the following:

* Create a new module
* Add scoped CSS styles
* Add a JS file and register the style via the "registerDSAstyle" hook

### Example

```scss
// (s)css style file
.dsa5-myStyleName {
    p { 
        color: darkblue; 
    }
    // ...all my style code
}
```

```js
Hooks.on("registerDSAstyle", styles => {
    styles["dsa5-myStyleName"] = "Some fancy style name which can also be translated with lang files";
})
```

---

**See also:**
- [System Settings](en-systemeinstellungen.md)
- [Modules](en-module.md)
