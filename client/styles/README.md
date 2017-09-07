### main.less

This is the central less file I am organizing everything in.

### colors.less

the main color file

### overrides.less

stuff I have changed by hand from the original `variables.less`

### dark.less

file derived from the original `variables.less` using completely
automated methods.  Blow it away and `make dark.less`, should recreate it
again without changes.

### colors

This directory contains alternates for `color.less`

### Makefile

This file is left here to let you know how I created
`dark.less`.  If `variables.less` changes in the future it gives me a
headstart on doing it over again.

### experimental (mmany of these do not work YMMV)
`make fullcolors`  <-- will make directory called `fullcolors` that is
generated from all the html color names
