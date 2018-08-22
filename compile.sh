#!/bin/bash
#rm gbjamtiles8000.asm
#rm gbjamtiles9000.asm
#./gb-convert -i -tiles gbjamtiles8000.png >> gbjamtiles8000.asm
#./gb-convert -i -tiles gbjamtiles9000.png >> gbjamtiles9000.asm
rgbasm -o game.o game.z80
rgblink -o game.gb -p 0xff game.o
rgbfix -p 0xff -v game.gb