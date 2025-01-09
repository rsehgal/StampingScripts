#!/bin/sh
combineCommand="pdftk "
#I
for ((i=1; i < 10; i++ ))
do
combineCommand=$combineCommand" I"$i".pdf"
done
#A
for ((i=1; i < 10; i++ ))
do
combineCommand=$combineCommand" A"$i".pdf"
done
#B
for ((i=1; i < 10; i++ ))
do
combineCommand=$combineCommand" B"$i".pdf"
done
#C
for ((i=1; i < 10; i++ ))
do
combineCommand=$combineCommand" C"$i".pdf"
done
#D
for ((i=1; i < 10; i++ ))
do
combineCommand=$combineCommand" D"$i".pdf"
done
#E
for ((i=1; i < 10; i++ ))
do
combineCommand=$combineCommand" E"$i".pdf"
done
#F
for ((i=1; i < 10; i++ ))
do
combineCommand=$combineCommand" F"$i".pdf"
done
#G
for ((i=1; i < 10; i++ ))
do
combineCommand=$combineCommand" G"$i".pdf"
done
#T
for ((i=1; i < 10; i++ ))
do
combineCommand=$combineCommand" T"$i".pdf"
done

combineCommand=$combineCommand" cat output proceeding_68.pdf"
echo $combineCommand
