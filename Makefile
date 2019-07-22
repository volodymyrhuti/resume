all: compile

compile:
	pdflatex cv.tex

clean:
	rm cv.{pdf,out,log,aux}


