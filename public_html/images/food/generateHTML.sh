#!/bin/bash

TENS_NUM=0
ONES_NUM=1
OUTPUT_FILE=./html.txt
echo "" > $OUTPUT_FILE

for image in ./*.jpg
do
	NAME=$(basename $image)
	echo "<img id=\"bg${NAME%.*}\" src=\"images/food/$(basename $image)\" class=\"bgimg\">"
done

echo ""

#for image in ./*.jpg
#do
#        NAME=$(basename $image)
#	echo "imgList.add(\$('#bg${NAME%.*}'));"
#done

IMG_ARRAY="["
for image in ./*.jpg
do
	NAME=$(basename $image)
	IMG_ARRAY="$(echo $IMG_ARRAY)\$('#bg${NAME%.*}'), "
done
IMG_ARRAY="${IMG_ARRAY%, }] "
echo $IMG_ARRAY



echo ""

for image in ./*.jpg
do
	NAME=$(basename $image)
	echo "<span id=\"desc${NAME%.*}\" class=\"bgdesc\">${NAME%.*}</span>"
done

echo ""

#for image in ./*.jpg
#do
#        NAME=$(basename $image)
#        echo "descList.add(\$('#desc${NAME%.*}'));"
#done

DESC_ARRAY="["
for image in ./*.jpg
do
        NAME=$(basename $image)
        DESC_ARRAY="$(echo $DESC_ARRAY)\$('#desc${NAME%.*}'), "
done
DESC_ARRAY="${DESC_ARRAY%, }] "
echo $DESC_ARRAY
