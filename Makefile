all: compile
TEX := lualatex # pdflatex

install_fonts:
	# Note: takes 300Mb+ of font package + ~700Mb of dependencies
	# to display 2 fontawesome icons ...
	sudo apt-get install texlive-fonts-extra

compile:
	${TEX} cv.tex                          && \
	pdftoppm cv.pdf cv -png -rx 300 -ry 300

clean:
	rm cv.{out,log,aux} vim-markdown-preview.html &> /dev/null

txt:
	pdftotext cv.pdf && vim cv.txt

check:
	aspell -t check cv.tex

# https://pdf2doc.com/
# https://www.online-convert.com/result/f8099309-b512-4cdb-a74a-5c09acba6c64
# https://smallpdf.com/pdf-to-word
