#!/bin/bash


dfont=$1

cp -r ${dfont} /usr/share/fonts/

cd /usr/share/fonts/${dfont}
mkfontscale
mkfontdir
fc-cache
