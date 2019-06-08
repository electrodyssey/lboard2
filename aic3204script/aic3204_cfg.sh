#!/bin/bash

if (( $# != 2 )); then
    echo "       script accepts a two arguments: <path to a csv file> <size>"
    echo "       size shall be in a decimal format and must be power of 2 like 32 or 64"
    echo "       csv file must be in following format:"
    echo "       address_byte,data_byte,description"
    echo "       address_byte and data_byte must be in a 2 digit hexadecimal format with no prefix"
    echo "       example string: 0f,0e,write 0e into config register 0f"
    echo "       lines starting with # are reserved for comments"

    exit
fi


tempfile=`mktemp`



cat $1 | grep -v "^#" | grep . > $tempfile



line_cnt=0

while IFS=, read -r addr data comment
do
    echo "$addr"
    echo "$data"
   let "line_cnt=line_cnt+2"
done < $tempfile


#echo line_cnt: $line_cnt

while [ $line_cnt -lt $2 ]; do
      let "line_cnt=line_cnt+1"
      echo "00"
done


rm $tempfile
