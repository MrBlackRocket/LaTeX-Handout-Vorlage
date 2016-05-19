all:
	pdflatex -file-line-error -synctex=1 -interaction=nonstopmode handout.tex
	bibtex handout
	pdflatex -file-line-error -synctex=1 -interaction=nonstopmode handout.tex
	pdflatex -file-line-error -synctex=1 -interaction=nonstopmode handout.tex

clean:
	rm -f *.aux *.log *.toc *.lof *.bak *.loa *.lot *.bbl *.blg *.idx *.ilg *.ind *.dvi *.out *.brf *.thm *.toc *.thumbs.db *.literatur-template.tex *.synctex.gz *.bcf *.run.xml *-blx.bib

rebuild: clean all
