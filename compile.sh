#!/bin/bash
#rm gbjamtiles8000.asm
#rm gbjamtiles9000.asm
#./gb-convert -i -tiles gbjamtiles8000.png >> gbjamtiles8000.asm
#./gb-convert -i -tiles gbjamtiles9000.png >> gbjamtiles9000.asm
echo "Compiling..."
rgbasm -o game.o game.z80
echo
echo 
echo "Linking..."
rgblink -o game.gb -p 0xff game.o
echo "Fixing ROM header..."
rgbfix -p 0xff -v game.gb
echo 
echo "game.gb successfully compiled and linked."