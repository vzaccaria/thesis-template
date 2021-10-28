SRC?= $(wildcard src/*.tex src/chapters/*.tex)

all: thesis.pdf 

thesis.pdf: thesis.tex  $(SRC)
	pdflatex -interaction=nonstopmode -halt-on-error -shell-escape $< > latex.log
	bibtex thesis >> latex.log
	pdflatex -interaction=nonstopmode -halt-on-error -shell-escape $<  >> latex.log
	pdflatex -interaction=nonstopmode -halt-on-error -shell-escape $< | egrep "arning|rror|ages"


example.pdf: thesis.pdf
	cp $< $@

clean: 
	@rm -f *.toc *.aux *.bbl *.blg *.dvi *.bak *.ps *bkup *.tcp *.tps *.log *.lof *.lot *.lol *~ *.backup thesis.pdf example.pdf
