cd testC
./createSkeleton.sh $1 # $pageNo
pageNo=`ls sourcePdf/*.pdf|wc -l`
pageNo=`expr $oldpageNo + $pageNo`
pageNo=`expr $pageNo \\* 2`
#pageNo=`expr $pageNo + 1`
oldpageNo=$pageNo

