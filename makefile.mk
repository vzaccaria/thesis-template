SRC?= $(wildcard src/*.tex src/chapters/*.tex src/frontmatter/*.tex)

all: complete.pdf 

cover.pdf: cover.tex $(SRC)
	pdflatex -interaction=nonstopmode -halt-on-error -shell-escape $< > latex.log

thesis.pdf: thesis.tex  $(SRC)
	pdflatex -interaction=nonstopmode -halt-on-error -shell-escape $< > latex.log
	bibtex thesis >> latex.log
	pdflatex -interaction=nonstopmode -halt-on-error -shell-escape $<  >> latex.log
	pdflatex -interaction=nonstopmode -halt-on-error -shell-escape $< | egrep "arning|rror|ages"

complete.pdf: cover.pdf thesis.pdf
	pdftk $^ cat output $@

example.pdf: complete.pdf
	cp $< $@

clean: 
	@rm -f *.toc *.aux *.bbl *.blg *.dvi *.bak *.ps *bkup *.tcp *.tps *.log *.lof *.lot *.lol *~ *.backup *.pdf
