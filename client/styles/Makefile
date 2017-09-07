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
	./color.sh orange orange

purple:
	./color.sh purple purple

green:
	./color.sh green green

lightgreen:
	./color.sh lightgreen lightgreen

darkgreen:
	./color.sh darkgreen darkgreen

yellow:
	./color.sh yellow yellow

blue:
	./color.sh blue blue

lightblue:
	./color.sh lightblue lightblue

darkblue:
	./color.sh darkblue darkblue

red:
	./color.sh red red

darkred:
	./color.sh darkred darkred

pink:
	./color.sh pink pink

olive:
	./color.sh olive olive

lightyellow:
	./color.sh lightyellow lightyellow

colordir:
	mkdir -p colors

bgcolordir:
	mkdir -p bgcolors

colors: colordir orange purple green lightgreen darkgreen yellow blue lightblue darkblue red darkred pink olive lightyellow

bgcolors: bgcolordir orangebg purplebg greenbg lightgreenbg darkgreenbg yellowbg bluebg lightbluebg darkbluebg redbg darkredbg pinkbg olivebg lightyellowbg

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

.tmp:
	mkdir -p .tmp

.tmp/colors.csv: .tmp
	wget -c https://raw.githubusercontent.com/codebrainz/color-names/master/output/colors.csv -O .tmp/colors.csv

ngfullcolors: .tmp/colors.csv
	$(eval PWD := $(shell pwd))
	$(eval TMP := $(shell mktemp -d --suffix=DOCKERTMP))
	cp color.sh $(TMP)/
	cp colors.less $(TMP)/
	cp colors.less.tpl $(TMP)/
	cp .tmp/colors.csv $(TMP)/
	cd $(TMP) \
	&& mkdir colors \
	&& cut -s -f3,1 -d, --output-delimiter=' ' colors.csv \
	| sed 's/^/.\/color.sh\ /' \
	| sed 's/#\(.*\)/"#\1"/' \
	| bash \
	&& cp -a colors $(PWD)/fullcolors
	cd $(PWD)
	rm -Rf $(TMP)

orangebg:
	./bgcolor.sh orange orange

purplebg:
	./bgcolor.sh purple purple

greenbg:
	./bgcolor.sh green green

lightgreenbg:
	./bgcolor.sh lightgreen lightgreen

darkgreenbg:
	./bgcolor.sh darkgreen darkgreen

yellowbg:
	./bgcolor.sh yellow yellow

bluebg:
	./bgcolor.sh blue blue

lightbluebg:
	./bgcolor.sh lightblue lightblue

darkbluebg:
	./bgcolor.sh darkblue darkblue

redbg:
	./bgcolor.sh red red

darkredbg:
	./bgcolor.sh darkred darkred

pinkbg:
	./bgcolor.sh pink pink

olivebg:
	./bgcolor.sh olive olive

lightyellowbg:
	./bgcolor.sh lightyellow lightyellow

