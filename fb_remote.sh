#!/bin/sh

CODE="__CODE_TELECOMMANDE__"
key="${1%+}"
if [ "$key+" = "$1" ]; then
  long="&long=true"
fi
repeat=${2:-1}

curl "http://hd1.freebox.fr/pub/remote_control?key=$key&code=$CODE$long&repeat=$repeat"

# Code des touches:
#
# red
# green
# yellow
# blue
# power
# list
# tv
# 0 à 9
# back
# swap
# info, mail, help, pip
# epg, media, options
# vol_inc, vol_dec
# prgm_inc, prgm_dec
# ok
# up, right, down, left
# mute
# home
# rec
# bwd
# prev
# play
# fwd
# next
