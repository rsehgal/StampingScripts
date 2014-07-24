#!/bin/sh

echo "--------Cleaning SourceDirs--------"

rm -rf test/sourcePdf/* 
echo "cleaning A done"

rm -rf testB/sourcePdf/* 
echo "cleaning B done"

rm -rf testC/sourcePdf/* 
echo "cleaning C done"

rm -rf testD/sourcePdf/* 
echo "cleaning D done"

rm -rf testE/sourcePdf/* 
echo "cleaning E done"

rm -rf testF/sourcePdf/* 
echo "cleaning F done"

rm -rf testG/sourcePdf/* 
echo "cleaning G done"

rm -rf testI/sourcePdf/* 
echo "cleaning I done"

rm -rf testT/sourcePdf/* 
echo "cleaning T done"
echo "Source cleaning done"
echo "*******************************************"

echo "Copy SourcePDF files..."
cp 58/A*.pdf test/sourcePdf/
cp 58/B*.pdf testB/sourcePdf/
cp 58/C*.pdf testC/sourcePdf/
cp 58/D*.pdf testD/sourcePdf/
cp 58/E*.pdf testE/sourcePdf/
cp 58/F*.pdf testF/sourcePdf/
cp 58/G*.pdf testG/sourcePdf/
cp 58/I*.pdf testI/sourcePdf/
cp 58/T*.pdf testT/sourcePdf/
echo "Copying done"

echo "*******************************************"

echo "cleaning output directories"

rm -rf test/outputdir/* test/outputdirFinal/* test/finalPapers/*
echo "."
rm -rf testB/outputdir/* testB/outputdirFinal/* testB/finalPapers/*
echo "."
rm -rf testC/outputdir/* testC/outputdirFinal/* testC/finalPapers/*
echo "."
rm -rf testD/outputdir/* testD/outputdirFinal/* testD/finalPapers/*
echo "."
rm -rf testE/outputdir/* testE/outputdirFinal/* testE/finalPapers/*
echo "."
rm -rf testF/outputdir/* testF/outputdirFinal/* testF/finalPapers/*
echo "."
rm -rf testG/outputdir/* testG/outputdirFinal/* testG/finalPapers/*
echo "."
rm -rf testI/outputdir/* testI/outputdirFinal/* testI/finalPapers/*
echo "."
rm -rf testT/outputdir/* testT/outputdirFinal/* testT/finalPapers/*
echo "." 

echo "Output cleaning done"
cho "*******************************************"
