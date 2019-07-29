
all: cover.pdf 

%.pdf: %.tex
	jslatex $<
