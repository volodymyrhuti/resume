all: compile

install_fonts:
	# Note: takes 300Mb+ of font package + ~700Mb of dependencies \
	# to display 2 icons ...
	sudo apt-get install texlive-fonts-extra

compile:
	pdflatex cv.tex                          && \
	pdftoppm cv.pdf cv -png -rx 300 -ry 300

clean:
	rm cv.{out,log,aux} vim-markdown-preview.html &> /dev/null

check:
	aspell -t check cv.tex
