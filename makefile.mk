
all: cover.pdf thesis.pdf

cover.pdf: cover.tex src/preamble.tex 
	pdflatex -interaction=nonstopmode -halt-on-error -shell-escape $< > latex.log

thesis.pdf: thesis.tex src/preamble.tex 
	pdflatex -interaction=nonstopmode -halt-on-error -shell-escape $< > latex.log
	bibtex thesis >> latex.log
	pdflatex -interaction=nonstopmode -halt-on-error -shell-escape $<  >> latex.log
	pdflatex -interaction=nonstopmode -halt-on-error -shell-escape $< | egrep "arning|rror|ages"

complete.pdf: cover.pdf thesis.pdf
	pdftk $^ cat output $@

clean: 
	@rm -f *.toc *.aux *.bbl *.blg *.dvi *.bak *.ps *bkup *.tcp *.tps *.log *.lof *.lot *.lol *~ *.backup *.pdf
