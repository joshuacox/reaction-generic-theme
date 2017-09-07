#!/bin/bash

export REPLACE_ME_COLOR=$1

envsubst < colors.less.tpl > colors.less
cp colors.less colors/$1.less
