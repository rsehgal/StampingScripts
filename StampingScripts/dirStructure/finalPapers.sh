mkdir finalPapers
FILES=`pwd`/sourcePdf/*.pdf
for name in $FILES
do
  justName=$(basename $name)
  echo "----"$name"----"
  justName=${justName%.*}
  mv outputdirFinal/new$justName.pdf finalPapers/$justName.pdf
done
