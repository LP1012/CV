manuscript = main
references = $(wildcard *.bib)
latexopt   = -halt-on-error -file-line-error
latexmkopt = -pdf -use-make $(latexopt)
.DEFAULT_GOAL := pdf

pdf: $(manuscript).pdf

$(manuscript).pdf: $(manuscript).tex $(references)
	latexmk $(latexmkopt) $(manuscript)

clean:
	latexmk -c $(manuscript)
	rm -f *.spl *~ *.zip *.epub *.html *.4ct *.4tc *.idv *.lg *.tmp *.xref

distclean:
	latexmk -C $(manuscript)
	rm -f *.spl *~ *.zip *.epub *.html *.4ct *.4tc *.idv *.lg *.tmp *.xref

.PHONY: pdf clean distclean
