#!/usr/bin/env bash

# make CapsLock behave like Ctrl:
[ -x /usr/bin/setxkbmap ] && /usr/bin/setxkbmap -option ctrl:nocaps

# make short-pressed Ctrl behave like Escape:
/usr/bin/pkill -f xcape
[ -x /usr/bin/xcape ] && /usr/bin/xcape -e 'Control_L=Escape'
