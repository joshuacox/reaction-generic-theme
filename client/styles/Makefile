SHELL:=/bin/bash

all: dark.less colors

variables.less:
	wget -c https://raw.githubusercontent.com/reactioncommerce/reaction/master/imports/plugins/included/default-theme/client/styles/variables.less

dark.less: variables.less
	cp variables.less dark.less
	sed -i 's/#000/black_placeholder/' dark.less
	sed -i 's/#fff/white_placeholder/' dark.less
	sed -i 's/lighten/placeholder_lighten/' dark.less
	sed -i 's/darken/placeholder_darken/' dark.less
	sed -i 's/white_placeholder/@background/' dark.less
	sed -i 's/black_placeholder/@foreground/' dark.less
	sed -i 's/placeholder_lighten/darken/' dark.less
	sed -i 's/placeholder_darken/lighten/' dark.less

orange:
	./color.sh orange

purple:
	./color.sh purple

green:
	./color.sh green

lightgreen:
	./color.sh lightgreen

darkgreen:
	./color.sh darkgreen

yellow:
	./color.sh yellow

blue:
	./color.sh blue

lightblue:
	./color.sh lightblue

darkblue:
	./color.sh darkblue

red:
	./color.sh red

darkred:
	./color.sh darkred

pink:
	./color.sh pink

black:
	./color.sh black

white:
	./color.sh white

colordir:
	mkdir -p colors

colors: colordir white orange purple green lightgreen darkgreen yellow blue lightblue darkblue red darkred pink black

fullcolors:
	$(eval PWD := $(shell pwd))
	$(eval TMP := $(shell mktemp -d --suffix=DOCKERTMP))
	mkdir -p .tmp
	wget -c https://raw.githubusercontent.com/codebrainz/color-names/master/output/colors.csv -O .tmp/colors.csv
	cp color.sh $(TMP)/
	cp colors.less $(TMP)/
	cp colors.less.tpl $(TMP)/
	cp .tmp/colors.csv $(TMP)/
	cd $(TMP) \
	&& mkdir colors \
	&& cut -f1 -d, colors.csv | xargs -n1 -I{} ./color.sh {} \
	&& cp -a colors $(PWD)/fullcolors
	cd $(PWD)
	rm -Rf $(TMP)
