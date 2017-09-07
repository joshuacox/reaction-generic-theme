# reaction-generic-theme
Generic Theme for Reaction Commerce

This is a very simple theme for you to get started with Reaction
Commerce.

### Usage

To get started fork this and create a new branch for your project.

Then choose whether or not you are using a dark
background or a light background, by editing this line from
[main.less](client/styles/main.less)

```
@import "./dark.less";
```

If using a dark theme you leave it alone, if light, comment out the
dark line (or delete it) like so:

```
//@import "./dark.less";
```

You can also delete the corresponding file.  The only difference between this file and the original
[variables.less](https://github.com/reactioncommerce/reaction/blob/master/imports/plugins/included/default-theme/client/styles/variables.less)
is that black/white, and lighten/darken are inversed in the [dark.less](client/styles/dark.less) file.

Now choose a color from the [colors](client/styles/colors) folder, and
replace [colors.less](client/styles/colors.less) with it, and/or edit it to your hearts content.

In this file there is one main color you need to choose:

```
// All other colors will be derived from this one
@primary: green;
```

From there we can derive the complementary, triadic, and a few
relatives, and 90 degress left and right:

```
//derived
@complementary: spin(@primary, 180);
@triadic-secondary: spin(@primary, 120);
@triadic-tertiary: spin(@primary, 240);
@brother: spin(@primary, 30);
@sister: spin(@primary, 330);
@father: spin(@primary, 60);
@mother: spin(@primary, 300);
@right: spin(@primary, 90);
@left: spin(@primary, 270);

// context
@warning: @left;
@danger: @right;
@disabled: #555;

@info: @father;
@success: @mother;
@hover: @brother;
@active: @sister;
```

That's it, all other colors should be derived from the those above.

### Design

I have a very minimalist approach of just copying in
[variables.less](https://github.com/reactioncommerce/reaction/blob/master/imports/plugins/included/default-theme/client/styles/variables.less)
from the default-theme in reaction iteslf, and swapping out the
`@body-bg` definition, and if a dark theme I also do the inversions.
See the [Makefile](client/styles/Makefile) if you want to see the sed
statements.

Then I copied the colors section out and put it in [overrides.less](client/styles/overrides.less)
and replaced everything there with a derived color from
[colors.less](client/styles/colors.less)

Ideally, eventually you will only edit
for any color changes you might want to make.  But we'll see how that
works out

And I have added a [custom.less](client/styles/custom.less) in which you
can add any customizations you like.  And to show you how to add it to
[main.less](client/styles/main.less)

### [colors](client/styles/colors)

This directory contains alternates for
[colors.less](client/styles/colors.less)

### fullcolors

This directory can be generated with the
[Makefile](client/styles/Makefile)
`make fullcolors` and like
[colors](client/styles/colors)
it contains many alternates for
[colors.less](client/styles/colors.less)

### [color.sh](client/styles/color.sh)

you can use this script to make a new color and add it to the `colors`
directory like so `./color.sh $COLOR_NAME #COLOR`  e.g.

```sh
./color.sh fuscia "#ff00ff"
```

or:

```sh
./color.sh pink pink
```

submit PRs with your favorites!
