#!/bin/bash

# From:
#	http://stackoverflow.com/questions/3466166/how-to-check-if-running-in-cygwin-mac-or-linux
for CODE in $@
do


#gcc -lGL -lglut $CODE.c -o $CODE
#g++ $CODE.cpp -o $CODE -lm -lGL -lGLU -lglut

#gcc -lGL -lglut test.c -o test
#g++ $CODE.cpp -o $CODE -I/opengl/downloads/OpenGL-tutorial_v0012_21 -lm -lGLEW -lGL -lGLU -lglut -lglfw 
#g++ $CODE.cpp -o $CODE -I../ -lm -lGLEW -lGL -lGLU -lglut -lglfw 
#gcc -o wand `pkg-config --cflags --libs MagickWand` wand.c
#chmod a+x $CODE

#cd ./Dropbox/cse3320/Assignment05/lab05
#cd ~/Dropbox/rt_proj/deadmau5
#./usr/share/doc/povray/examples/
	pdflatex $CODE.tex
#bibtex $CODE.aux
#pdflatex $CODE.tex
#pdflatex $CODE.tex
#evince $CODE.pdf

#export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig


	if [ "$(uname)" == "Darwin" ]; then
		# Do something under Mac OS X platform        
		echo "Operating system is $(uname)"
		open $CODE.pdf
	elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
		# Do something under GNU/Linux platform
		echo "Operating system is $(uname)"
		evince $CODE.pdf
	elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
		# Do something under Windows NT platform
		echo "Operating system is $(uname)"
	fi

done
#ls -l -r -t

