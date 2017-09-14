### main.less

This is the central less file I am organizing everything in.

### [colors.less](./colors.less)

the main color file

Change this [line](https://github.com/joshuacox/reaction-generic-theme/blob/master/client/styles/colors.less#L2) to set the color of the font, all other colors are derived from this one.

### overrides.less

stuff I have changed by hand from the original
[variables.less](https://github.com/reactioncommerce/reaction/blob/master/imports/plugins/included/default-theme/client/styles/variables.less)

### dark.less

file derived from the original
[variables.less](https://github.com/reactioncommerce/reaction/blob/master/imports/plugins/included/default-theme/client/styles/variables.less)
using completely automated methods.  Blow it away and `make dark.less`, should recreate it
again without changes.

### colors

This directory contains alternates for
[colors.less](./colors.less)

### Makefile

This file is left here to let you know how I created [dark.less](./dark.less).
If
[variables.less](https://github.com/reactioncommerce/reaction/blob/master/imports/plugins/included/default-theme/client/styles/variables.less)
changes in the future it gives me a
headstart on doing it over again.

### experimental (mmany of these do not work YMMV)
`make fullcolors`  <-- will make directory called `fullcolors` that is
generated from all the html color names
