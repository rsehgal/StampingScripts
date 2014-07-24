#!/bin/bash
in=1
#for i in {1..5} 
i=$1
paperNameNo=0
FILES=`pwd`/sourcePdf/*.pdf
#echo $FILES
#FILES=A11.pdf
for name in $FILES 
do
  name=$(basename $name)
  name=${name%.*}
  echo "---"$name"----"
  i=`expr $i + 1`
  f=`expr $i \\* $in`
  paperNameNo=`expr $paperNameNo + 1`
  name=B$paperNameNo
  #name=B$i
  sed s/startpage/$f/g pageNumbers.temp > pageNumber$name.tex
  pdflatex pageNumber$name
  mv pageNumber$name.pdf outputdir/
  rm -rf pageNumber$name.tex pageNumber$name.log pageNumber$name.aux
  i=`expr $i + 1`
done
rm -rf pageNumberA*.tex pageNumberA*.log pageNumberA*.aux
