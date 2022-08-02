#/bin/bash

#copy the acronym list
cp ./acronyms.tex ./acronyms_list.tex

sed -i '1s/^/\\begin{acronym}\n/' ./acronyms_list.tex
echo '\end{acronym}' >> ./acronyms_list.tex

sed -i -e 's/acrodef/acro/g' ./acronyms_list.tex

