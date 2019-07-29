
all: cover.pdf thesis.pdf

%.pdf: %.tex src/preamble.tex 
	jslatex $<

clean: 
	rm -f *.pdf *.lof *.lol
