#!/bin/bash

export COLOR_NAME=$1
export REPLACE_ME_COLOR=$2

envsubst < bgcolors.less.tpl > colors.less
cp colors.less bgcolors/$COLOR_NAME.less
