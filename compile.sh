#!/bin/bash
rm gbjamtiles.asm
./gb-convert -i -tiles tiles.png >> gbjamtiles.asm
rgbasm -o game.o game.z80
rgblink -o game.gb -p 0xff game.o
rgbfix -p 0xff -v game.gb