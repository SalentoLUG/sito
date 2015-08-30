#!/bin/bash

OUTPUT_PATH="output_pandoc"
MD_PATH="md-files"
TEMPLATES_PATH="templates"

for file in $MD_PATH/*.md
do
if [ $(basename $file) = "00-Indice.md" ];
then
pandoc -V lang:italian --number-sections --smart --standalone -f markdown --template $TEMPLATES_PATH/template-sito.html --css css/custom.css -o $OUTPUT_PATH/$(basename $file).html $file -N
else
pandoc --toc -V lang:italian --number-sections --smart --standalone -f markdown --template $TEMPLATES_PATH/template-sito.html --css css/custom.css -o $OUTPUT_PATH/$(basename $file).html $file -N
fi
done

for files in $OUTPUT_PATH/*.md.html
do
 mv "$files" "${files%.md.html}.html"
done
