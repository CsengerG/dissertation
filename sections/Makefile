main:
	pdflatex introduction.tex
	pdflatex introduction.tex
	
	pdflatex preparation.tex
	pdflatex preparation.tex
	
	pdflatex implementation.tex
	pdflatex implementation.tex
	
	pdflatex evaluation.tex
	pdflatex evaluation.tex
	
	pdflatex conclusion.tex
	pdflatex conclusion.tex

intro:
	pdflatex introduction.tex
	pdflatex introduction.tex

prep:	
	pdflatex preparation.tex
	pdflatex preparation.tex

imp:	
	pdflatex implementation.tex
	pdflatex implementation.tex

eval:	
	pdflatex evaluation.tex
	pdflatex evaluation.tex

conc:	
	pdflatex conclusion.tex
	pdflatex conclusion.tex

junk = *.aux *.log *.lol *.lot *.sta *.toc *.out *.lof

.PHONY: clean
clean:
	rm $(junk)
