cd testF
./createSkeleton.sh $1 F #$pageNo
pageNo=`ls sourcePdf/*.pdf|wc -l`
pageNo=`expr $oldpageNo + $pageNo`
pageNo=`expr $pageNo \\* 2`
#pageNo=`expr $pageNo + 1`
oldpageNo=$pageNo

