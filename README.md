# reaction-generic-theme
Generic Theme for Reaction Commerce

This is a very simple theme for you to get started with Reaction
Commerce.  To get started choose whether or not you are using a dark
background or a light background, by editing these lines from
[main.less](client/styles/main.less)

```
//@import "./light.less";
@import "./dark.less";
```

If using a dark theme you leave them alone, if light, comment out the
dark line (or delete it) and uncomment the light like so:

```
@import "./light.less";
//@import "./dark.less";
```

You can also delete the corresponding file.  The only difference between
these two is black/white, and lighten/darken are inversed in the `dark.less` file.

Now choose a color from the [colors](client/styles/colors) folder, and
replace [colors.less](client/styles/colors.less) with it, and/or edit it to your heats content.
