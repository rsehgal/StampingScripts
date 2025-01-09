#!/bin/sh
rm -rf Stamping
mkdir Stamping
volume=68

cp -rf scripts/* Stamping/
cp -rf dirStructure Stamping/test
cp -rf dirStructure Stamping/testB
cp -rf dirStructure Stamping/testC
cp -rf dirStructure Stamping/testD
cp -rf dirStructure Stamping/testE
cp -rf dirStructure Stamping/testF
cp -rf dirStructure Stamping/testG
cp -rf dirStructure Stamping/testI
cp -rf dirStructure Stamping/testT

cp -rf $volume Stamping/

echo "Copy SourcePDF files..."
cp Stamping/$volume/A*.pdf Stamping/test/sourcePdf/
cp Stamping/$volume/B*.pdf Stamping/testB/sourcePdf/
cp Stamping/$volume/C*.pdf Stamping/testC/sourcePdf/
cp Stamping/$volume/D*.pdf Stamping/testD/sourcePdf/
cp Stamping/$volume/E*.pdf Stamping/testE/sourcePdf/
cp Stamping/$volume/F*.pdf Stamping/testF/sourcePdf/
cp Stamping/$volume/G*.pdf Stamping/testG/sourcePdf/
cp Stamping/$volume/I*.pdf Stamping/testI/sourcePdf/
cp Stamping/$volume/T*.pdf Stamping/testT/sourcePdf/
echo "Copying done"

cd Stamping
./execute.sh $1 $2 $3 $4 $5 $6 $7 $8 $9 $10

cd test
./more.sh
./finalPapers.sh

cd ../testB
./more.sh
./finalPapers.sh

cd ../testC
./more.sh
./finalPapers.sh

cd ../testD
./more.sh
./finalPapers.sh

cd ../testE
./more.sh
./finalPapers.sh

cd ../testF
./more.sh
./finalPapers.sh

cd ../testG
./more.sh
./finalPapers.sh

cd ../testI
./more.sh
./finalPapers.sh

cd ../testT
./more.sh
./finalPapers.sh

cd ..
mkdir $volume"_Stamped"
cp test/finalPapers/*.pdf $volume"_Stamped"
cp testB/finalPapers/*.pdf $volume"_Stamped"
cp testC/finalPapers/*.pdf $volume"_Stamped"
cp testD/finalPapers/*.pdf $volume"_Stamped"
cp testE/finalPapers/*.pdf $volume"_Stamped"
cp testF/finalPapers/*.pdf $volume"_Stamped"
cp testG/finalPapers/*.pdf $volume"_Stamped"
cp testI/finalPapers/*.pdf $volume"_Stamped"
cp testT/finalPapers/*.pdf $volume"_Stamped"






