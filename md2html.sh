#!/bin/bash

OUTPUT_PATH="output_pandoc"
MD_PATH="md-files"
TEMPLATES_PATH="templates"

cd $MD_PATH
for dir in $(find -type d)
do
  if [ ! -d "../$OUTPUT_PATH/$dir" ]; then
    mkdir -p ../$OUTPUT_PATH/$dir
  fi
done

cd ..

for DIR_TEMP in $( find $MD_PATH -type d )
do
  DIR_TEMP=$(basename $DIR_TEMP)
  if [ $DIR_TEMP == $MD_PATH ]; then
    DIR_TEMP="."
  fi

  for file in $MD_PATH/$DIR_TEMP/*.md
  do
    if [ $(basename $file) == "index.md" ] || [ $(basename $file) == "OldNews.md" ] && [ "$DIR_TEMP" == "." ];
    then
        pandoc --toc -V lang:italian --smart --section-divs -f markdown --template $TEMPLATES_PATH/template-sito-home.html --css css/custom.css --css css/home.css -o $OUTPUT_PATH/$(basename $file).html $file -N
    elif [ "$DIR_TEMP" == "." ];
    then
        pandoc --toc -V lang:italian --smart -f markdown --template $TEMPLATES_PATH/template-sito.html --css css/custom.css -o $OUTPUT_PATH/$DIR_TEMP/$(basename $file).html $file -N
    else
        pandoc --toc --variable return_path="../" -V lang:italian --smart -f markdown --template $TEMPLATES_PATH/template-sito.html --css ../css/custom.css -o $OUTPUT_PATH/$DIR_TEMP/$(basename $file).html $file -N
    fi
  done

  for files in $OUTPUT_PATH/$DIR_TEMP/*.md.html
  do
   mv "$files" "${files%.md.html}.html"
  done

done
