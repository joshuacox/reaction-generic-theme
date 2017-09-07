#!/bin/bash

export COLOR_NAME=$1
export REPLACE_ME_COLOR=$2

envsubst < colors.less.tpl > colors.less
cp colors.less colors/$COLOR_NAME.less
