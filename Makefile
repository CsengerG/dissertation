main:
	pdflatex main.tex
	pdflatex main.tex

junk = *.aux *.log *.lol *.lot *.sta *.toc *.out *.lof

clean:
	rm $(junk)
