gb-convert -i -tiles tiles.png -map map.png >> output.txt

rgbasm -o game.o game.z80
rgblink -o game.gb -p 0xFF game.o
rgbfix -p 0xFF -v game.gb 