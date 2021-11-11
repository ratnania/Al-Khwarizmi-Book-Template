.suffixes: .lhs .tex .bib .bbl .dvi .fig .eps .ps .gz .pdf

all: 
	pdflatex main
	makeindex main.idx -s StyleInd.ist
	biber main
	pdflatex main
	pdflatex main

clean:
	@rm -f *~ *.bak *.log *.toc *.aux */*.aux *.ilg \#*\# *.dvi 
	@rm -f *.ind *.idx *.bbl *.blg *.ptb *.pdf *.lof *.out *.lot *.dot *.bcf *.ptc *.run.xml 
