#/bin/bash

MASTERBIBFILE=biblioncs.bib

# Invoke bibtool to canonicalize biblioncs.bib according to the rules in
# bibtool_biblioncs_resourcefile.txt
# The result is written to biblioncs_new.bib for human inspection to determine
# whether iteration is required. See ncsbibtool.readme.txt

bibtool -r bibtool_biblioncs_resourcefile.txt $MASTERBIBFILE > \
						${MASTERBIBFILE%.bib}_new.bib

