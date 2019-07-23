all: compile

compile:
	pdflatex cv.tex                                      && \
	pdftoppm cv.pdf cv -png -rx 300 -ry 300 -singlefile

clean:
	rm cv.{out,log,aux} vim-markdown-preview.html &> /dev/null

check:
	aspell -t check cv.tex
