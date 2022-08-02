.PHONY: all FORCE clean

all: test.pdf

 # Using latexmk to build the LaTeX document (see
 # https://tex.stackexchange.com/questions/40738/how-to-properly-make-a-latex-project )
 # it's not necessary to mention the dependency of test.pdf on acros.tex and
 # citeall.tex, since latexmk will take care of this when it finds that test.tex
 # includes these files.
 # The --use-make option will cause it to call back into make to build them.

test.pdf: test.tex FORCE
	latexmk --pdflatex --use-make --silent $<
	@echo -e Done\\n
	@grep ^Warning-- test.blg || true

FORCE:

acros.tex: ../acronyms.tex
	sed 's/^\\acrodef/\\acro/' $< > $@

citeall.tex: ../biblioncs.bib
	sed -n '/^@/s/@[[:alpha:]]*{\(.*\),/\\nocite{\1}/p' $< > $@

clean:
	latexmk -C --silent
	rm -f acros.tex citeall.tex test.bbl
