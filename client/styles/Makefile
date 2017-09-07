SHELL:=/bin/bash

all: light.less dark.less

variables.less:
	wget -c https://raw.githubusercontent.com/reactioncommerce/reaction/master/imports/plugins/included/default-theme/client/styles/variables.less

light.less:
	cp variables.less light.less

dark.less:
	cp variables.less dark.less
	sed -i 's/#000/black_placeholder/' dark.less
	sed -i 's/#fff/white_placeholder/' dark.less
	sed -i 's/lighten/placeholder_lighten/' dark.less
	sed -i 's/darken/placeholder_darken/' dark.less
	sed -i 's/white_placeholder/@background/' dark.less
	sed -i 's/black_placeholder/@foreground/' dark.less
	sed -i 's/placeholder_lighten/darken/' dark.less
	sed -i 's/placeholder_darken/lighten/' dark.less
