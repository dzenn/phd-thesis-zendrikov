## NCS Shared Bibliography

This holds the _bibtex_ bibliography file `biblioncs.bib` intended to be used to
provide the references in all papers written in the NCS group using _LaTeX_.

To include this as a submodule in your project, run the script
`init_papers.sh` from
https://code.ini.uzh.ch/ncs/maintenance/raw/master/init_papers.sh
in your new empty project's working directory.
This will also copy the `ncs_papers.gitignore` file from here to become the
`.gitignore` file in your project.

The `ncsbib.sh` script is intended to be used to keep the format of the
`biblioncs.bib` file tidy using _bibtool_. To do this, the _bibtool_
resource file `bibtool_biblioncs_resourcefile.txt` is used, see
`ncsbibtool.readme.txt` for details.

`acronyms.tex` is also included in this project, as this is also intended to be
used as a shared resource in the same way as `biblioncs.bib`.

**{+ New experimental feature +}**

The `test` directory contains `test.tex` and a `Makefile`[^1] which can be used to
build a `test.pdf` file that contains all of the acronyms from `acronyms.tex`
and a bibliography that cites every entry in `biblioncs.bib` (over 3500 at the
time of writing).

Changing to the test directory and running `make` will build `test.pdf`.
The idea is _not_ that you then have to read `test.pdf`, though you can if you
like :smiley:, but rather that building it will find any errors that you may
have accidentally introduced into `biblioncs.bib` or `acronyms.tex`.
When the build is error-free, warnings will be summarized at the end.
Please correct any errors, and ideally warnings too, before you push your
changes to the server.
(While fixing errors and warnings, looking at the output in `test.pdf` may of
course help.)
Common mistakes that lead to warnings include using wrong combinations of entry
types (e.g. `InBook`, `InCollection`, `InProceedings`) and fields (e.g.
`author`, `editor`). `InBook` for instance cannot have both an `author` and an
`editor`, and is almost never what you want.
See e.g. https://www.openoffice.org/bibliographic/bibtex-defs.html for
descriptions of the various entry types and fields, and which fields are
**required**, **optional**, and **ignored** in which entry type.

Please send feedback on this 'test' feature to
[amw@ini.uzh.ch](mailto://amw@ini.uzh.ch)

The intention is to add this as a CI (Continuous Integration) step at some
point that will automatically be run on every push to the repository.

##### Footnotes

[^1]: Requires `latexmk` which, on Ubuntu, can be installed with `sudo apt install latexmk`.
