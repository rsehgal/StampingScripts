#for j in {1..5}
FILES=`pwd`/sourcePdf/*.pdf
pageNumberfilesPath=`pwd`/outputdir
for name in $FILES
do
  justName=$(basename $name)
  #justName=${justName%.*}
  echo "----"$name"----"
  pdftk $name burst output file_%03d.pdf
  pdftk $pageNumberfilesPath/pageNumber$justName burst output number_%03d.pdf
  time for i in $(seq -f %03g 1 2) ; do pdftk number_$i.pdf background file_$i.pdf output new-$i.pdf ; done
  justName=${justName%.*}
  pdftk new-???.pdf output new$justName.pdf
  mv new$justName.pdf outputdirFinal/
  rm -rf file_* number_* new*
done
